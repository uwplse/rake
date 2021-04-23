#lang rosette/safe

(provide synthesis-spec
         spec-lang spec-expr spec-axioms)

(struct synthesis-spec (lang expr axioms))

(define (spec-lang spec) (synthesis-spec-lang spec))
(define (spec-expr spec) (synthesis-spec-expr spec))
(define (spec-axioms spec) (synthesis-spec-axioms spec))

(struct ir-expr-spec (expr ctx axioms buff-reads live-ops add-consts sub-consts mul-consts div-consts))
(struct hvx-expr-spec (expr sol annot ctx axioms invalid-sketches))
(struct arm-expr-spec (expr sol ctx axioms invalid-sketches))