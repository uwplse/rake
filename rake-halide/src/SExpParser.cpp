#include "SExpParser.h"
#include "IR.h"
#include "IROperator.h"

using namespace std;

namespace Halide {

namespace Internal {

namespace {

inline bool is_binop(char a) {
    return (a == '+' ||
            a == '-' ||
            a == '*' ||
            a == '%' ||
            a == '/');
}

bool is_cast_op(const string &str) {
    // first, find the underlying type (uint, int, float)
    auto pos = str.find_first_of("0123456789");
    if (pos == string::npos)
        return false;
    auto type_str = str.substr(0, pos);

    // There must be an x, for scalar casts, we use the form uint8x1
    auto x_pos = str.find_first_of('x');
    if (x_pos == string::npos) {
        return false;
    }
    
    if (starts_with(type_str, "uint")) {
        return true;
    } else if (starts_with(type_str, "int")) {
        return true;
    } else if (starts_with(type_str, "float")) {
        return true;
    } else {
        return false;
    }
}

bool get_token(string &sexp, Token &token) {
    token.type = TokenType::Unknown;
    while (isspace(sexp[0])) {
      sexp = sexp.substr(1);
    }

    if (starts_with(sexp, "(")) {
        token.type = TokenType::LeftParen;
        sexp = sexp.substr(1);
        return true;
    } else if (starts_with(sexp, ")")) {
        token.type = TokenType::RightParen;
        sexp = sexp.substr(1);
        return true;
    } else if (isalpha(sexp[0]) || (is_binop(sexp[0]) && isspace(sexp[1]))) {
        auto it = sexp.begin();
        while (it != sexp.end() && !isspace(*it) && *it !=')') {
            it++;
        }
        if (it == sexp.end()) {
            return false;
        } else {
            token.type = TokenType::Symbol;
            token.str = sexp.substr(0, it - sexp.begin());
            sexp = sexp.substr(it - sexp.begin());
            return true;
        }
    } else if (isdigit(sexp[0]) || (sexp[0] == '-' && isdigit(sexp[1]))) {
        bool found_x = false;
        bool found_dot = false;
        auto it = sexp.begin();
        while (it != sexp.end() && *it != ' ' && *it !=')') {
            found_dot = found_dot || (*it == '.');
            found_x = found_x || (*it == 'x');
            it++;
        }
        if (found_dot) {
            // floating point number
            token.type = TokenType::FloatNumber;
            token.dbl = stod(sexp.substr(0, it - sexp.begin()));
            sexp = sexp.substr(it - sexp.begin());
            return true;
        } else {
            // Integer
            token.type = TokenType::Number;
            if (found_x) {
                token.num = (int) stol(sexp.substr(0, it - sexp.begin()), nullptr, 16);
            } else {
                token.num = stoi(sexp.substr(0, it - sexp.begin()));
            }
            sexp = sexp.substr(it - sexp.begin());
            return true;
        }
    }

    // Error state
    return false;
}

} // anonymous namespace

inline void SExpParser::close_sexp(string &sexp) {
    // ensure closing token
    Token final_token;
    user_assert(get_token(sexp, final_token));
    user_assert(final_token.type == TokenType::RightParen);
}

Expr SExpParser::parse_binop(Token &tok, string &sexp, Type expected_type) {
    if (getenv("RAKE_PARSER_DEBUG"))
        debug(0) << "parsing binop " << tok.str << "\n";

    auto a = parse(sexp, expected_type);
    auto b = parse(sexp, expected_type);
    
    close_sexp(sexp);

    if (tok.str == "+") {
        return Add::make(a, b);
    } else if (tok.str == "-") {
        return Sub::make(a, b);
    } else if (tok.str == "*") {
        return Mul::make(a, b);
    } else if (tok.str == "/") {
        return Div::make(a, b);
    } else if (tok.str == "%") {
        return Mod::make(a, b);
    } else if (tok.str == "min") {
        return Min::make(a, b);
    } else if (tok.str == "max") {
        return Max::make(a, b);
    } else {
      user_assert(false);
      return Expr();
    }
}

Type SExpParser::parse_type(const string &str) {
    if (getenv("RAKE_PARSER_DEBUG")) 
        debug(0) << "parsing type " << str << "\n";

    // first, find the underlying type (uint, int, float)
    auto pos = str.find_first_of("0123456789");
    user_assert(pos != string::npos);
    auto type_str = str.substr(0, pos);

    // check if there's an x to see if there's more than one lane
    int lanes = 1;
    auto x_pos = str.find_first_of('x');
    auto bits = stoi(str.substr(pos, x_pos-pos));
    if (x_pos != string::npos) {
      lanes = stoi(str.substr(x_pos+1, string::npos));
    }

    if (starts_with(type_str, "uint")) {
      return UInt(bits, lanes);
    } else if (starts_with(type_str, "int")) {
      return Int(bits, lanes);
    } else if (starts_with(type_str, "float")) {
      return Float(bits, lanes);
    } else {
      user_assert(false) << "Unknown type: " << str << "\n";
      return Type();
    }
}

vector<Expr> SExpParser::parse_param_list(string &sexp) {
    if (getenv("RAKE_PARSER_DEBUG")) 
        debug(0) << "parsing param list"
                                              << "\n";

    vector<Expr> params;

    // the first two tokens here need to be LeftParen
    // and "list"
    Token tok;
    user_assert(get_token(sexp, tok)); 
    user_assert(tok.type == TokenType::LeftParen);
    user_assert(get_token(sexp, tok));
    user_assert(tok.type == TokenType::Symbol &&
                tok.str == "list");


    // now we have (type val)
    user_assert(get_token(sexp, tok));
    while (tok.type == TokenType::LeftParen) {
        Token tp_token;
        user_assert(get_token(sexp, tp_token));
        user_assert(tp_token.type == TokenType::Symbol);
        Type t = parse_type(tp_token.str);
        params.push_back(parse(sexp, t));
        close_sexp(sexp);
        // get the next token
        // if it's another param, this loop will continue; otherwise,
        // it'll be the close paren
        user_assert(get_token(sexp, tok));
        user_assert(tok.type == TokenType::LeftParen ||
                    tok.type == TokenType::RightParen);
    }

    if (getenv("RAKE_PARSER_DEBUG")) 
        debug(0) << params[0] << "\n";

    return params;

}

Expr SExpParser::parse_intrinsic(Token &tok, string &sexp) {
    if (getenv("RAKE_PARSER_DEBUG")) 
        debug(0) << "parsing intrinsic " << tok.str << "\n";

    // we'll create a Call node here
    auto func_name = tok.str;
    user_assert(get_token(sexp, tok));
    user_assert(tok.type == TokenType::Symbol);
    auto return_type = parse_type(tok.str);

    auto params = parse_param_list(sexp);

    close_sexp(sexp);
    if(func_name.find("vread") != std::string::npos){
      Expr index = (return_type.lanes() == 1 ? params[1] : Ramp::make(params[1], 1, return_type.lanes()));
      return Load::make(
        return_type, 
        params[0].as<Variable>()->name, 
        index, 
        Buffer<>(), 
        Parameter(), 
        const_true(return_type.lanes()),
        (params.size() == 4? 
          ModulusRemainder(params[2].as<IntImm>()->value, params[3].as<IntImm>()->value) :
          ModulusRemainder())
        );
    }
    else if (func_name.find("load.scalar") != std::string::npos) {
        Expr index = (return_type.lanes() == 1 ? params[1] : Ramp::make(params[1], 1, return_type.lanes()));
        return Load::make(
            return_type, 
            params[0].as<Variable>()->name, 
            index, 
            Buffer<>(),
            Parameter(),
            const_true(return_type.lanes()),
            ModulusRemainder()
        );
    }
    else if(func_name.find("concat_vectors") != std::string::npos){
      return Shuffle::make_concat(params);
    } 
    else if (func_name.find("x128") != std::string::npos) {
        return Broadcast::make(params[0], 128);
    } else if (func_name.find("x64") != std::string::npos) {
        return Broadcast::make(params[0], 64);
    } else if (func_name.find("reinterpret") != std::string::npos) {
        return reinterpret(return_type, params[0]);
    } else if (func_name.find("rounding_shift_right") != std::string::npos) {
        return rounding_shift_right(params[0], params[1]);
    }

    // Not sure about the call type here
    return Call::make(return_type, func_name, params, Call::CallType::PureExtern);
}

Expr SExpParser::parse_cast(Token &tok, string &sexp) {
    if (getenv("RAKE_PARSER_DEBUG")) 
        debug(0) << "parsing cast " << tok.str << "\n";

    // we'll create a Cast node here
    user_assert(get_token(sexp, tok));
    user_assert(tok.type == TokenType::Symbol);
    auto return_type = parse_type(tok.str);

    auto params = parse_param_list(sexp);

    close_sexp(sexp);

    if (getenv("RAKE_PARSER_DEBUG")) 
        debug(0) << Cast::make(return_type, params[0]) << "\n";
    
    return Cast::make(return_type, params[0]);
}

Expr SExpParser::parse(string &sexp, Type expected_type) {
    Token token;
    while (!sexp.empty()) {
        auto result = get_token(sexp, token);
        user_assert(result);
        if (token.type == TokenType::LeftParen) {
            // next token dictates which kind of expression
            // we're parsing
            result = get_token(sexp, token);
            user_assert(result && token.type == TokenType::Symbol);
            if (starts_with(token.str, "llvm") || starts_with(token.str, "halide")) {
                // this is an intrinsic
                 return parse_intrinsic(token, sexp);
            } else if (token.str == "+"   ||
                       token.str == "-"   ||
                       token.str == "*"   ||
                       token.str == "/"   ||
                       token.str == "%" ||
                       token.str == "min" ||
                       token.str == "max" ) {
                return parse_binop(token, sexp, expected_type);
            } else if (is_cast_op(token.str)) {
                return parse_cast(token, sexp);
            }
            else {
                // For now, assume this must be a (type value) pair
                Token tp_token = token;
                user_assert(tp_token.type == TokenType::Symbol);
                Type t = parse_type(tp_token.str);
                Expr p = parse(sexp, t);
                close_sexp(sexp);
                return p;
            }
        } else if (token.type == TokenType::FloatNumber) {
            user_assert(expected_type.is_float()) << "Expected float type at " << sexp << "\n";
            return FloatImm::make(expected_type, token.dbl);
        } else if (token.type == TokenType::Number) {
            user_assert(expected_type.is_int() || expected_type.is_uint()) << "Expected int/uint type at " << sexp << "\n";
            if (expected_type.is_int())
                return IntImm::make(expected_type, token.num);
            else
                return UIntImm::make(expected_type, token.num);
        } else if (token.type == TokenType::Symbol) {
            // For now, assume a Var
            user_assert(expected_type != Type()) << "Unknown type for var (" << token.str << ") at " << sexp << "\n";
            return Variable::make(expected_type, token.str);
        } else {
            // error
            user_assert(false) << "Unknown token at " << sexp << "\n";
            return Expr();
        }
    }
    user_assert(false);
    return Expr();
}

void sexp_parser_test() {
    SExpParser p;

    string s = R"((llvm.hexagon.V6.vread.128B
                       int32
                       (list (int32 mask) (int32 8)))))))";

    string gaussian3x3 = R"((llvm.hexagon.V6.vasrhubrndsat.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vaddh.128B
          int32x32
          (list
           (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 x))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 2 x))))))))
        (int32x32
         (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 1 x)))))
        (int32 2))))
     (int32x32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vaddh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 64 x)))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 66 x))))))))
        (int32x32
         (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 65 x)))))
        (int32 2))))
     (int32 4))))";
    
    string gaussian5x5 = R"((llvm.hexagon.V6.vshuffoh.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vmpyihb.acc.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vaddh.128B
             int32x32
             (list
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 64 x)))))
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 66 x))))))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 65 x)))))
           (int32 6))))
        (int32x32
         (llvm.hexagon.V6.vaddh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 64 x)))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 66 x))))))))
        (int32 4))))
     (int32x32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vmpyihb.acc.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vaddh.128B
             int32x32
             (list
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 64 x)))))
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 66 x))))))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 65 x)))))
           (int32 6))))
        (int32x32
         (llvm.hexagon.V6.vaddh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 64 x)))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 66 x))))))))
        (int32 4)))))))";

    string gaussian7x7 = R"(`(llvm.hexagon.V6.vshuffeh.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vasrw.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.hi.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 64 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 66 x))))))))
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
                (list
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x))))))))
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32x32
         (llvm.hexagon.V6.lo.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 64 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 66 x))))))))
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
                (list
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x))))))))
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32 12))))
     (int32x32
      (llvm.hexagon.V6.vasrw.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.hi.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 64 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 66 x))))))))
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
                (list
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x))))))))
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32x32
         (llvm.hexagon.V6.lo.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 64 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 66 x))))))))
                    (int32x32
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
                (list
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x))))))))
                 (int32x32
                  (llvm.hexagon.V6.vaddh.128B
                   int32x32
                   (list
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 64 x)))))
                    (int32x32
                     (llvm.hexagon.V6.vread.128B
                      int32x32
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32 12)))))))";

    string conv3x3a16 = R"((llvm.hexagon.V6.vasrhsat.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.hi.128B
       int32x32
       (list
        (int32x64
         (llvm.hexagon.V6.vmpybus.acc.128B
          int32x64
          (list
           (int32x64
            (llvm.hexagon.V6.vdmpybus.dv.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vdmpybus.dv.acc.128B
                   int32x64
                   (list
                    (int32x64
                     (llvm.hexagon.V6.vdmpybus.dv.128B
                      int32x64
                      (list (int32x64 VuVu) (int32 0x02020202))))
                    (int32x64
                     (llvm.hexagon.V6.vcombine.128B
                      int32x64
                      (list (int32x32 Vu) (int32x32 Vu))))
                    (int32 0x02020202))))
                 (int32x64 VuVu)
                 (int32 0x02020202))))
              (int32x64 VuVu)
              (int32 0x02020202))))
           (int32x32 Vu)
           (int32 2)))))))
     (int32x32
      (llvm.hexagon.V6.lo.128B
       int32x32
       (list
        (int32x64
         (llvm.hexagon.V6.vmpybus.acc.128B
          int32x64
          (list
           (int32x64
            (llvm.hexagon.V6.vdmpybus.dv.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vdmpybus.dv.acc.128B
                   int32x64
                   (list
                    (int32x64
                     (llvm.hexagon.V6.vdmpybus.dv.128B
                      int32x64
                      (list (int32x64 VuVu) (int32 0x02020202))))
                    (int32x64
                     (llvm.hexagon.V6.vcombine.128B
                      int32x64
                      (list (int32x32 Vu) (int32x32 Vu))))
                    (int32 0x02020202))))
                 (int32x64 VuVu)
                 (int32 0x02020202))))
              (int32x64 VuVu)
              (int32 0x02020202))))
           (int32x32 Vu)
           (int32 2)))))))
     (int32 4))))";

    string conv3x3a32 = R"((llvm.hexagon.V6.vlalignbi.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vsathub.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vasrwsat.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 0))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 0)))))))
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 0))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 0)))))))
           (int32 4))))
        (int32x32
         (llvm.hexagon.V6.vasrwsat.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 1))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 1)))))))
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 1))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 1)))))))
           (int32 4)))))))
     (int32x32 Vu)
     (int32 0x01010101))))";

    string sobel3x3 = R"((llvm.hexagon.V6.vsathub.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vaddh.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list (int32x64 VuVu) (int32x64 VuVu) (int32 0x02020202))))))))))
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64 VuVu)
                 (int32x64 VuVu)
                 (int32 0x02020202)))))))))))))
     (int32x32
      (llvm.hexagon.V6.vaddh.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list (int32x64 VuVu) (int32x64 VuVu) (int32 0x02020202))))))))))
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64 VuVu)
                 (int32x64 VuVu)
                 (int32 0x02020202))))))))))))))))";

    string gaussian7x7p1 = R"((llvm.hexagon.V6.vmpahb.acc.128B int32x64 (list (int32x64 (llvm.hexagon.V6.vmpahb.128B int32x32 (list (int32x64 (llvm.hexagon.V6.vcombine.128B int32x64 (list (int32x32 (llvm.hexagon.V6.vaddh.128B int32x32 (list (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 64 x))))) (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 66 x)))))))) (int32x32 (llvm.hexagon.V6.vaddh.128B int32x32 (list (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 65 x))))) (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 67 x))))))))))) (int32 0x140f140f)))) (int32x64 (llvm.hexagon.V6.vcombine.128B int32x64 (list (int32x32 (llvm.hexagon.V6.vaddh.128B int32x32 (list (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 64 x))))) (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 66 x)))))))) (int32x32 (llvm.hexagon.V6.vaddh.128B int32x32 (list (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 64 x))))) (int32x32 (llvm.hexagon.V6.vread.128B int32x32 (list (int32 buf) (int32 (+ 66 x))))))))))) (int32 0x140f140f))))";
    string gaussian7x7p2 = R"((llvm.hexagon.V6.vshuffeh.128B int32x32 (list (int32x32 (llvm.hexagon.V6.vasrw.128B int32x32 (list (int32x32 (llvm.hexagon.V6.hi.128B int32x32 (list (int32x64 VuVu)))) (int32x32 (llvm.hexagon.V6.lo.128B int32x32 (list (int32x64 VuVu)))) (int32 12)))) (int32x32 (llvm.hexagon.V6.vasrw.128B int32x32 (list (int32x32 (llvm.hexagon.V6.hi.128B int32x32 (list (int32x64 VuVu)))) (int32x32 (llvm.hexagon.V6.lo.128B int32x32 (list (int32x64 VuVu)))) (int32 12))))))";
    string vasrw = R"((llvm.hexagon.V6.vasrw.128B int32x32 (list (int32x32 (llvm.hexagon.V6.hi.128B int32x32 (list (int32x64 VuVu)))) (int32x32 (llvm.hexagon.V6.lo.128B int32x32 (list (int32x64 VuVu)))) (int32 12))))";
    string neg_number_issue = R"((llvm.hexagon.V6.vshuffvdd.128B
 int16x128
 (list
  (int32x32
   (llvm.hexagon.V6.hi.128B
    int16x64
    (list
     (int32x64
      (llvm.hexagon.V6.vmpabus.acc.128B
       int16x128
       (list
        (int32x64
         (llvm.hexagon.V6.vmpybus.acc.128B
          int32x64
          (list
           (int32x64
            (llvm.hexagon.V6.vmpabus.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                uint8x256
                (list
                 (int32x32
                  (llvm.hexagon.V6.vread.128B
                   uint8x128
                   (list
                    (int32 input)
                    (int32
                     (+
                      -2
                      (+
                       (+
                        (* 128 rows.s0.x.x)
                        (+ (* output.s0.y.y input.stride.1) (- 0 t20)))
                       (- 0 input.stride.1)))))))
                 (int32x32
                  (llvm.hexagon.V6.vread.128B
                   uint8x128
                   (list
                    (int32 input)
                    (int32
                     (+
                      -2
                      (+
                       (+
                        (* 128 rows.s0.x.x)
                        (+ (* output.s0.y.y input.stride.1) (- 0 t20)))
                       (* 2 input.stride.1))))))))))
              (int32 0x01040104))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             uint8x128
             (list
              (int32 input)
              (int32
               (+
                -2
                (+
                 (+
                  (* 128 rows.s0.x.x)
                  (+ (* output.s0.y.y input.stride.1) (- 0 t20)))
                 (* -2 input.stride.1)))))))
           (int32 1))))
        (int32x64
         (llvm.hexagon.V6.vcombine.128B
          uint8x256
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B
             uint8x128
             (list
              (int32 input)
              (int32
               (+
                -2
                (+
                 (* 128 rows.s0.x.x)
                 (+ (* output.s0.y.y input.stride.1) (- 0 t20))))))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             uint8x128
             (list
              (int32 input)
              (int32
               (+
                -2
                (+
                 input.stride.1
                 (+
                  (* 128 rows.s0.x.x)
                  (+ (* output.s0.y.y input.stride.1) (- 0 t20))))))))))))
        (int32 0x04060406)))))))
  (int32x32
   (llvm.hexagon.V6.lo.128B
    int16x64
    (list
     (int32x64
      (llvm.hexagon.V6.vmpabus.acc.128B
       int16x128
       (list
        (int32x64
         (llvm.hexagon.V6.vmpybus.acc.128B
          int32x64
          (list
           (int32x64
            (llvm.hexagon.V6.vmpabus.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                uint8x256
                (list
                 (int32x32
                  (llvm.hexagon.V6.vread.128B
                   uint8x128
                   (list
                    (int32 input)
                    (int32
                     (+
                      -2
                      (+
                       (+
                        (* 128 rows.s0.x.x)
                        (+ (* output.s0.y.y input.stride.1) (- 0 t20)))
                       (- 0 input.stride.1)))))))
                 (int32x32
                  (llvm.hexagon.V6.vread.128B
                   uint8x128
                   (list
                    (int32 input)
                    (int32
                     (+
                      -2
                      (+
                       (+
                        (* 128 rows.s0.x.x)
                        (+ (* output.s0.y.y input.stride.1) (- 0 t20)))
                       (* 2 input.stride.1))))))))))
              (int32 0x01040104))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             uint8x128
             (list
              (int32 input)
              (int32
               (+
                -2
                (+
                 (+
                  (* 128 rows.s0.x.x)
                  (+ (* output.s0.y.y input.stride.1) (- 0 t20)))
                 (* -2 input.stride.1)))))))
           (int32 1))))
        (int32x64
         (llvm.hexagon.V6.vcombine.128B
          uint8x256
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B
             uint8x128
             (list
              (int32 input)
              (int32
               (+
                -2
                (+
                 (* 128 rows.s0.x.x)
                 (+ (* output.s0.y.y input.stride.1) (- 0 t20))))))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             uint8x128
             (list
              (int32 input)
              (int32
               (+
                -2
                (+
                 input.stride.1
                 (+
                  (* 128 rows.s0.x.x)
                  (+ (* output.s0.y.y input.stride.1) (- 0 t20))))))))))))
        (int32 0x04060406)))))))
  (int32 Rt))))";
    debug(0) << p.parse(s) << "\n";
    debug(0) << p.parse(gaussian3x3) << "\n";
    debug(0) << p.parse(gaussian5x5) << "\n";
    //debug(0) << p.parse(gaussian7x7) << "\n";
    debug(0) << p.parse(conv3x3a16) << "\n";
    debug(0) << p.parse(conv3x3a32) << "\n";
    debug(0) << p.parse(sobel3x3) << "\n";
    debug(0) << p.parse(neg_number_issue) << "\n";

    //debug(0) << p.parse(gaussian7x7p1) << "\n";
    //debug(0) << p.parse(gaussian7x7p2) << "\n";
    //debug(0) << p.parse(vasrw) << "\n";
}

}
}