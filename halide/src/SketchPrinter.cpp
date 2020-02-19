#include <iostream>
#include <sstream>

#include "IROperator.h"
#include "SketchPrinter.h"

namespace Halide {

using std::ostream;
using std::ostringstream;
using std::string;
using std::vector;

namespace Internal {

SketchPrinter::~SketchPrinter() {
}

SketchPrinter::SketchPrinter(ostream &s) : stream(s), indent(0) {
    s.setf(std::ios::fixed, std::ios::floatfield);
}

void SketchPrinter::print(Expr ir) {
    ir.accept(this);
}

void SketchPrinter::print(Stmt ir) {
    ir.accept(this);
}

void SketchPrinter::print_list(const std::vector<Expr> &exprs) {
    for (size_t i = 0; i < exprs.size(); i++) {
        print(exprs[i]);
        if (i < exprs.size() - 1) {
            stream << ", ";
        }
    }
}

void SketchPrinter::do_indent() {
    for (int i = 0; i < indent; i++) stream << ' ';
}

void SketchPrinter::visit(const IntImm *op) {
    if (op->type == Int(32)) {
        stream << op->value;
    } else {
        if (true)
            stream << "cast_int32_to_" << op->type << "(" << op->value << ")";
        else
            stream << "(" << op->type << ")" << op->value;
    }
}

void SketchPrinter::visit(const UIntImm *op) {
    if (true)
        stream << "cast_int32_to_" << op->type << "(" << op->value << ")";
    else
        stream << "(" << op->type << ")" << op->value;
}

void SketchPrinter::visit(const FloatImm *op) {
    debug(0) << "NYI: FloatImm\n";
    exit(1);
    switch (op->type.bits()) {
        case 64:
            stream << op->value;
            break;
        case 32:
            stream << op->value << 'f';
            break;
        case 16:
            stream << op->value << 'h';
            break;
        default:
            internal_error << "Bad bit-width for float: " << op->type << "\n";
    }
}

void SketchPrinter::visit(const StringImm *op) {
    debug(0) << "NYI: StringImm\n";
    exit(1);
    stream << '"';
    for (size_t i = 0; i < op->value.size(); i++) {
        unsigned char c = op->value[i];
        if (c >= ' ' && c <= '~' && c != '\\' && c != '"') {
            stream << c;
        } else {
            stream << '\\';
            switch (c) {
            case '"':
                stream << '"';
                break;
            case '\\':
                stream << '\\';
                break;
            case '\t':
                stream << 't';
                break;
            case '\r':
                stream << 'r';
                break;
            case '\n':
                stream << 'n';
                break;
            default:
                string hex_digits = "0123456789ABCDEF";
                stream << 'x' << hex_digits[c >> 4] << hex_digits[c & 0xf];
            }
        }
    }
    stream << '"';
}

void SketchPrinter::visit(const Cast *op) {
    if (true) {
        stream << "cast_"
               << (op->value.type().is_vector() ? op->value.type().element_of() : op->value.type())
               << (op->value.type().is_vector() ? "vec" : "")
               << "_to_"
               << (op->type.is_vector() ? op->type.element_of() : op->type)
               << (op->type.is_vector() ? "vec" : "")
               << '(';
        print(op->value);
        stream << ')';
    }
    else {
        stream << op->type << '(';
        print(op->value);
        stream << ')';
    }
}

void SketchPrinter::visit(const Variable *op) {
    // omit the type
    // stream << op->name << "." << op->type;
    stream << op->name;
}

void SketchPrinter::visit(const Add *op) {
    if (op->a.type().is_vector() || op->b.type().is_vector()) {
        stream << "vec_add(";
        print(op->a);
        stream << ", ";
        print(op->b);
        stream << ')';
    }
    else {
        stream << '(';
        print(op->a);
        stream << " + ";
        print(op->b);
        stream << ')';
    }
}

void SketchPrinter::visit(const Sub *op) {
    if (op->a.type().is_vector() || op->b.type().is_vector()) {
        stream << "vec_sub(";
        print(op->a);
        stream << ", ";
        print(op->b);
        stream << ')';
    }
    else {
        stream << '(';
        print(op->a);
        stream << " - ";
        print(op->b);
        stream << ')';
    }
}

void SketchPrinter::visit(const Mul *op) {
    if (op->a.type().is_vector() || op->b.type().is_vector()) {
        stream << "vec_mul(";
        print(op->a);
        stream << ", ";
        print(op->b);
        stream << ')';
    }
    else {
        stream << '(';
        print(op->a);
        stream << "*";
        print(op->b);
        stream << ')';
    }
}

void SketchPrinter::visit(const Div *op) {
    debug(0) << "NYI: Div\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << "/";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const Mod *op) {
    debug(0) << "NYI: Mod\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " % ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const Min *op) {
    debug(0) << "NYI: Min\n";
    exit(1);
    stream << "min(";
    print(op->a);
    stream << ", ";
    print(op->b);
    stream << ")";
}

void SketchPrinter::visit(const Max *op) {
    debug(0) << "NYI: Max\n";
    exit(1);
    stream << "max(";
    print(op->a);
    stream << ", ";
    print(op->b);
    stream << ")";
}

void SketchPrinter::visit(const EQ *op) {
    debug(0) << "NYI: EQ\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " == ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const NE *op) {
    debug(0) << "NYI: NE\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " != ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const LT *op) {
    debug(0) << "NYI: LT\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " < ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const LE *op) {
    debug(0) << "NYI: LE\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " <= ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const GT *op) {
    debug(0) << "NYI: GT\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " > ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const GE *op) {
    debug(0) << "NYI: GE\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " >= ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const And *op) {
    debug(0) << "NYI: And\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " && ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const Or *op) {
    debug(0) << "NYI: Or\n";
    exit(1);
    stream << '(';
    print(op->a);
    stream << " || ";
    print(op->b);
    stream << ')';
}

void SketchPrinter::visit(const Not *op) {
    debug(0) << "NYI: Not\n";
    exit(1);
    stream << '!';
    print(op->a);
}

void SketchPrinter::visit(const Select *op) {
    debug(0) << "NYI: Select\n";
    exit(1);
    stream << "select(";
    print(op->condition);
    stream << ", ";
    print(op->true_value);
    stream << ", ";
    print(op->false_value);
    stream << ")";
}

void SketchPrinter::visit(const Load *op) {
    const bool has_pred = !is_one(op->predicate);
    const bool show_alignment = op->type.is_vector() && op->alignment.modulus > 1;
    if (has_pred) {
        debug(0) << "NYI: Load with predicate\n";
        exit(1);
        stream << "(";
    }

    if (const Ramp *ramp = op->index.as<Ramp>()) {
        stream << "ramp(" << op->name << ", ";
        print(ramp->base);
        stream << ", ";
        print(ramp->stride);
        stream << ", ";
        print(ramp->lanes);
        stream <<  ")";
    }
    else {
        stream << op->name << "[";
        print(op->index);
        if (show_alignment) {
            debug(0) << "NYI: Load with show alignment\n";
            exit(1);
            stream << " aligned(" << op->alignment.modulus << ", " << op->alignment.remainder << ")";
        }
        stream << "]";
    }

    if (has_pred) {
        stream << " if ";
        print(op->predicate);
        stream << ")";
    }
}

void SketchPrinter::visit(const Ramp *op) {
    stream << "ramp(";
    print(op->base);
    stream << ", ";
    print(op->stride);
    stream << ", " << op->lanes << ")";
}

void SketchPrinter::visit(const Broadcast *op) {
    if (true) {
        stream << "broadcast(";
        print(op->value);
        stream << ", ";
        print(op->lanes);
        stream << ")";
    }
    else {
        stream << "x" << op->lanes << "(";
        print(op->value);
        stream << ")";
    }
}

void SketchPrinter::visit(const Call *op) {
    debug(0) << "NYI: Call\n";
    exit(1);
    // TODO: Print indication of C vs C++?
    stream << op->name << "(";
    if (op->is_intrinsic(Call::reinterpret) ||
        op->is_intrinsic(Call::make_struct)) {
        // For calls that define a type that isn't just a function of
        // the types of the args, we also print the type.
        stream << op->type << ", ";
    }
    print_list(op->args);
    stream << ")";
}

void SketchPrinter::visit(const Let *op) {
    debug(0) << "NYI: Let\n";
    exit(1);
    stream << "(let " << op->name << " = ";
    print(op->value);
    stream << " in ";
    print(op->body);
    stream << ")";
}

void SketchPrinter::visit(const LetStmt *op) {
    debug(0) << "NYI: LetStmt\n";
    exit(1);
    do_indent();
    stream << "let " << op->name << " = ";
    print(op->value);
    stream << '\n';

    print(op->body);
}

void SketchPrinter::visit(const AssertStmt *op) {
    debug(0) << "NYI: Assert\n";
    exit(1);
    do_indent();
    stream << "assert(";
    print(op->condition);
    stream << ", ";
    print(op->message);
    stream << ")\n";
}

void SketchPrinter::visit(const ProducerConsumer *op) {
    debug(0) << "NYI: ProducerConsumer\n";
    exit(1);
    do_indent();
    if (op->is_producer) {
        stream << "produce " << op->name << " {\n";
    } else {
        stream << "consume " << op->name << " {\n";
    }
    indent += 2;
    print(op->body);
    indent -= 2;
    do_indent();
    stream << "}\n";
}

void SketchPrinter::visit(const For *op) {
    debug(0) << "NYI: For\n";
    exit(1);
    do_indent();
    //stream << op->for_type << op->device_api << " (" << op->name << ", ";
    print(op->min);
    stream << ", ";
    print(op->extent);
    stream << ") {\n";

    indent += 2;
    print(op->body);
    indent -= 2;

    do_indent();
    stream << "}\n";
}

void SketchPrinter::visit(const Acquire *op) {
    debug(0) << "NYI: Acquire\n";
    exit(1);
    do_indent();
    stream << "acquire (";
    print(op->semaphore);
    stream << ", ";
    print(op->count);
    stream << ") {\n";
    indent += 2;
    print(op->body);
    indent -= 2;
    do_indent();
    stream << "}\n";
}

void SketchPrinter::visit(const Store *op) {
    debug(0) << "NYI: Store\n";
    exit(1);
    do_indent();
    const bool has_pred = !is_one(op->predicate);
    const bool show_alignment = op->value.type().is_vector() && (op->alignment.modulus > 1);
    if (has_pred) {
        stream << "predicate (" << op->predicate << ")\n";
        indent += 2;
        do_indent();
    }
    stream << op->name << "[";
    print(op->index);
    if (show_alignment) {
        stream << " aligned("
               << op->alignment.modulus
               << ", "
               << op->alignment.remainder << ")";
    }
    stream << "] = ";
    print(op->value);
    stream << '\n';
    if (has_pred) {
        indent -= 2;
    }
}

void SketchPrinter::visit(const Provide *op) {
    debug(0) << "NYI: Provide\n";
    exit(1);
    do_indent();
    stream << op->name << "(";
    print_list(op->args);
    stream << ") = ";
    if (op->values.size() > 1) {
        stream << "{";
    }
    print_list(op->values);
    if (op->values.size() > 1) {
        stream << "}";
    }

    stream << '\n';
}

void SketchPrinter::visit(const Allocate *op) {
    debug(0) << "NYI: Allocate\n";
    exit(1);
    do_indent();
    stream << "allocate " << op->name << "[" << op->type;
    for (size_t i = 0; i < op->extents.size(); i++) {
        stream  << " * ";
        print(op->extents[i]);
    }
    stream << "]";
    if (op->memory_type != MemoryType::Auto) {
        //stream << " in " << op->memory_type;
    }
    if (!is_one(op->condition)) {
        stream << " if ";
        print(op->condition);
    }
    if (op->new_expr.defined()) {
        stream << "\n";
        do_indent();
        stream << " custom_new { " << op->new_expr << " }";
    }
    if (!op->free_function.empty()) {
        stream << "\n";
        do_indent();
        stream << " custom_delete { " << op->free_function << "(" << op->name << "); }";
    }
    stream << "\n";
    print(op->body);
}

void SketchPrinter::visit(const Free *op) {
    debug(0) << "NYI: Free\n";
    exit(1);
    do_indent();
    stream << "free " << op->name;
    stream << '\n';
}

void SketchPrinter::visit(const Realize *op) {
    debug(0) << "NYI: Realize\n";
    exit(1);
    do_indent();
    stream << "realize " << op->name << "(";
    for (size_t i = 0; i < op->bounds.size(); i++) {
        stream << "[";
        print(op->bounds[i].min);
        stream << ", ";
        print(op->bounds[i].extent);
        stream << "]";
        if (i < op->bounds.size() - 1) stream << ", ";
    }
    stream << ")";
    if (op->memory_type != MemoryType::Auto) {
        //stream << " in " << op->memory_type;
    }
    if (!is_one(op->condition)) {
        stream << " if ";
        print(op->condition);
    }
    stream << " {\n";

    indent += 2;
    print(op->body);
    indent -= 2;

    do_indent();
    stream << "}\n";
}

void SketchPrinter::visit(const Prefetch *op) {
    debug(0) << "NYI: Prefetch\n";
    exit(1);
    do_indent();
    const bool has_cond = !is_one(op->condition);
    if (has_cond) {
        stream << "if (" << op->condition << ") {\n";
        indent += 2;
        do_indent();
    }
    stream << "prefetch " << op->name << "(";
    for (size_t i = 0; i < op->bounds.size(); i++) {
        stream << "[";
        print(op->bounds[i].min);
        stream << ", ";
        print(op->bounds[i].extent);
        stream << "]";
        if (i < op->bounds.size() - 1) stream << ", ";
    }
    stream << ")\n";
    if (has_cond) {
        indent -= 2;
        do_indent();
        stream << "}\n";
    }
    print(op->body);
}

void SketchPrinter::visit(const Block *op) {
    debug(0) << "NYI: Block\n";
    exit(1);
    print(op->first);
    print(op->rest);
}

void SketchPrinter::visit(const Fork *op) {
    debug(0) << "NYI: Fork\n";
    exit(1);
    vector<Stmt> stmts;
    stmts.push_back(op->first);
    Stmt rest = op->rest;
    while (const Fork *f = rest.as<Fork>()) {
        stmts.push_back(f->first);
        rest = f->rest;
    }
    stmts.push_back(rest);

    do_indent();
    stream << "fork ";
    for (Stmt s : stmts) {
        stream << "{\n";
        indent += 2;
        print(s);
        indent -= 2;
        do_indent();
        stream << "} ";
    }
    stream << "\n";
}

void SketchPrinter::visit(const IfThenElse *op) {
    debug(0) << "NYI: IfThenElse\n";
    exit(1);
    do_indent();
    while (1) {
        stream << "if (" << op->condition << ") {\n";
        indent += 2;
        print(op->then_case);
        indent -= 2;

        if (!op->else_case.defined()) {
            break;
        }

        if (const IfThenElse *nested_if = op->else_case.as<IfThenElse>()) {
            do_indent();
            stream << "} else ";
            op = nested_if;
        } else {
            do_indent();
            stream << "} else {\n";
            indent += 2;
            print(op->else_case);
            indent -= 2;
            break;
        }
    }

    do_indent();
    stream << "}\n";

}

void SketchPrinter::visit(const Evaluate *op) {
    debug(0) << "NYI: Evaluate\n";
    exit(1);
    do_indent();
    print(op->value);
    stream << "\n";
}

void SketchPrinter::visit(const Shuffle *op) {
    debug(0) << "NYI: Shuffle\n";
    exit(1);
    if (op->is_concat()) {
        stream << "concat_vectors(";
        print_list(op->vectors);
        stream << ")";
    } else if (op->is_interleave()) {
        stream << "interleave_vectors(";
        print_list(op->vectors);
        stream << ")";
    } else if (op->is_extract_element()) {
        stream << "extract_element(";
        print_list(op->vectors);
        stream << ", " << op->indices[0];
        stream << ")";
    } else if (op->is_slice()) {
        stream << "slice_vectors(";
        print_list(op->vectors);
        stream << ", " << op->slice_begin() << ", " << op->slice_stride() << ", " << op->indices.size();
        stream << ")";
    } else {
        stream << "shuffle(";
        print_list(op->vectors);
        stream << ", ";
        for (size_t i = 0; i < op->indices.size(); i++) {
            print(op->indices[i]);
            if (i < op->indices.size() - 1) {
                stream << ", ";
            }
        }
        stream << ")";
    }
}

std::set<std::pair<std::string, Type>> FindLiveVars::getVars() {
    return live_vars;
}

void FindLiveVars::visit(const Variable *op) {
    live_vars.insert(std::make_pair(op->name, op->type));
    IRVisitor::visit(op);
}

void FindLiveVars::visit(const Load *op) {
    if (op->type.is_vector())
        live_vars.insert(std::make_pair(op->name, op->type));
    IRVisitor::visit(op);
}

}  // namespace Internal
}  // namespace Halide
