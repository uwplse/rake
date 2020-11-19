#include "SExpParser.h"
#include "IR.h"

using namespace std;

namespace Halide {

namespace Internal {

namespace {
enum class TokenType {
    Unknown,
    LeftParen,
    RightParen,
    Symbol,
    Number,
    FloatNumber
};

struct Token  {
    // If we had C++17, we could do something nicer
    // using std::variant
    string str;
    int num;
    double dbl;
    TokenType type;
    Token() : str("") { }
};

inline bool is_binop(char a) {
    return (a == '+' ||
            a == '-' ||
            a == '*' ||
            a == '/');
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
    } else if (isalpha(sexp[0]) || is_binop(sexp[0])) {
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
    } else if (isdigit(sexp[0])) {
        // This is somewhat complicated.  Right now, types are
        // <nn>x<type>, and we also need to deal with both int
        // and float types.
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
        } else if (found_x) {
            // symbol (a type)
            token.type = TokenType::Symbol;
            token.str = sexp.substr(0, it - sexp.begin());
            sexp = sexp.substr(it - sexp.begin());
            return true;
        } else {
            // Integer
            token.type = TokenType::Number;
            token.num = stoi(sexp.substr(0, it - sexp.begin()));
            sexp = sexp.substr(it - sexp.begin());
            return true;
        }
    }

    // Error state
    return false;
}

} // anonymous namespace

struct SExpParser {

    inline void close_sexp(string &sexp) {
        // ensure closing token
        Token final_token;
        user_assert(get_token(sexp, final_token));
        user_assert(final_token.type == TokenType::RightParen);
    }

    Expr parse_binop(Token &tok, string &sexp, Type expected_type) {
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
        } else {
            user_assert(false);
            return Expr();
        }
    }

    Type parse_type(const string &str) {
        // currently, types are expressed as <lanes>x<u|i><bits>
        int lanes = 1;
        auto x_pos = str.find_first_of('x');
        if (x_pos != string::npos) {
            lanes = stoi(str.substr(0, x_pos));
            x_pos++;
        } else {
            x_pos = 0; // where to start parsing the type
        }
        user_assert(str[x_pos] == 'i') << "Expected str[x_pos] to be 'i' but is " << str[x_pos] << " | full: " << str << "\n";
        auto bits = stoi(str.substr(x_pos+1));
        return Int(bits, lanes);
    }

    vector<Expr> parse_param_list(string &sexp) {
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

        return params;

    }

    Expr parse_intrinsic(Token &tok, string &sexp) {
        // we'll create a Call node here
        auto func_name = tok.str;
        user_assert(get_token(sexp, tok));
        user_assert(tok.type == TokenType::Symbol);
        auto return_type = parse_type(tok.str);

        auto params = parse_param_list(sexp);

        close_sexp(sexp);

        // Not sure about the call type here
        return Call::make(return_type, func_name, params, Call::CallType::PureIntrinsic);
    }

    Expr parse(string &sexp, Type expected_type = Type()) {
        Token token;
        while (!sexp.empty()) {
            auto result = get_token(sexp, token);
            user_assert(result);

            if (token.type == TokenType::LeftParen) {
                // next token dictates which kind of expression
                // we're parsing
                result = get_token(sexp, token);
                user_assert(result && token.type == TokenType::Symbol);
                if (starts_with(token.str, "llvm")) {
                    // this is an intrinsic
                     return parse_intrinsic(token, sexp);
                } else if (token.str == "+" ||
                           token.str == "-" ||
                           token.str == "*" ||
                           token.str == "/") {
                    return parse_binop(token, sexp, expected_type);
                }
            } else if (token.type == TokenType::FloatNumber) {
                user_assert(expected_type.is_float()) << "Expected float type at " << sexp << "\n";
                return FloatImm::make(expected_type, token.dbl);
            } else if (token.type == TokenType::Number) {
                user_assert(expected_type.is_int() || expected_type.is_uint()) << "Expected int/uint type at " << sexp << "\n";
                return IntImm::make(expected_type, token.num);
            } else if (token.type == TokenType::Symbol) {
                // For now, assume a Var
                user_assert(expected_type != Type()) << "Unknown type for var at " << sexp << "\n";
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

};

    void sexp_parser_test() {
        SExpParser p;
        string s = "(llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 2 x))))";
        string s2 = R"((llvm.hexagon.V6.vasrhubrndsat.128B
    32xi32
    (list
     (32xi32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       32xi32
       (list
        (32xi32
         (llvm.hexagon.V6.vaddh.128B
          32xi32
          (list
           (32xi32 (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 x))))
           (32xi32
            (llvm.hexagon.V6.vread.128B
             32xi32
             (list (i32 buf) (i32 (+ 2 x))))))))
        (32xi32
         (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 1 x)))))
        (i32 2))))
     (32xi32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       32xi32
       (list
        (32xi32
         (llvm.hexagon.V6.vaddh.128B
          32xi32
          (list
           (32xi32
            (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 64 x)))))
           (32xi32
            (llvm.hexagon.V6.vread.128B
             32xi32
             (list (i32 buf) (i32 (+ 66 x))))))))
        (32xi32
         (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 65 x)))))
        (i32 2))))
     (i32 4))))";
        debug(0) << p.parse(s) << "\n";
        debug(0) << p.parse(s2) << "\n";
    }

}
}
