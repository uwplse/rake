#ifndef HALIDE_SKETCH_PRINTER_H
#define HALIDE_SKETCH_PRINTER_H

/** \file
 * An IRVisitor that compiles the IR AST to the Sketch synthesis language
 */

#include <ostream>
#include <set>
#include <exception>

#include "IRVisitor.h"
#include "Module.h"

namespace Halide {

namespace Internal {

/** An IRVisitor that emits IR to the given output stream in the Sketch
 * language syntax.
 */
class SketchPrinter : public IRVisitor {
public:
    virtual ~SketchPrinter();

    /** Construct an SketchwPrinter pointed at a given output stream
     * (e.g. std::cout, or a std::ofstream) */
    SketchPrinter(std::ostream &w);

    /** emit an expression on the output stream */
    void print(Expr);

    /** emit a statement on the output stream */
    void print(Stmt);

    /** emit a comma delimited list of exprs, without any leading or
     * trailing punctuation. */
    void print_list(const std::vector<Expr> &exprs);

protected:
    /** The stream we're outputting on */
    std::ostream &stream;

    /** The current indentation level, useful for pretty-printing
     * statements */
    int indent;

    /** Emit spaces according to the current indentation level */
    void do_indent();

    void visit(const IntImm *) override;
    void visit(const UIntImm *) override;
    void visit(const FloatImm *) override;
    void visit(const StringImm *) override;
    void visit(const Cast *) override;
    void visit(const Variable *) override;
    void visit(const Add *) override;
    void visit(const Sub *) override;
    void visit(const Mul *) override;
    void visit(const Div *) override;
    void visit(const Mod *) override;
    void visit(const Min *) override;
    void visit(const Max *) override;
    void visit(const EQ *) override;
    void visit(const NE *) override;
    void visit(const LT *) override;
    void visit(const LE *) override;
    void visit(const GT *) override;
    void visit(const GE *) override;
    void visit(const And *) override;
    void visit(const Or *) override;
    void visit(const Not *) override;
    void visit(const Select *) override;
    void visit(const Load *) override;
    void visit(const Ramp *) override;
    void visit(const Broadcast *) override;
    void visit(const Call *) override;
    void visit(const Let *) override;
    void visit(const LetStmt *) override;
    void visit(const AssertStmt *) override;
    void visit(const ProducerConsumer *) override;
    void visit(const For *) override;
    void visit(const Acquire *) override;
    void visit(const Store *) override;
    void visit(const Provide *) override;
    void visit(const Allocate *) override;
    void visit(const Free *) override;
    void visit(const Realize *) override;
    void visit(const Block *) override;
    void visit(const Fork *) override;
    void visit(const IfThenElse *) override;
    void visit(const Evaluate *) override;
    void visit(const Shuffle *) override;
    void visit(const Prefetch *) override;
};

class FindLiveVars : public IRVisitor {
public:
    std::set<std::pair<std::string, Type>> getVars();

protected:
    using IRVisitor::visit;

    std::set<std::pair<std::string, Type>> live_vars;

    void visit(const Variable *op) override;
    void visit(const Load *op) override;
};

class FindIndexExprs : public IRVisitor {
public:
    std::set<Expr,ExprCompare> getExprs();

protected:
    using IRVisitor::visit;

    std::set<Expr,ExprCompare> exprs;

    void visit(const Load *op) override;
};

class FindScalarExprs : public IRGraphVisitor {
public:
    std::set<Expr,ExprCompare> getExprs();

    using IRGraphVisitor::include;
    using IRGraphVisitor::visit;

    void include(const Expr &e) override;

protected:
    std::set<Expr,ExprCompare> exprs;
};

}  // namespace Internal
}  // namespace Halide

#endif
