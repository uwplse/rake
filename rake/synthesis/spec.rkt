#lang rosette

(struct synthesis-spec (expr axioms))

(struct ir-expr-spec (expr ctx axioms buff-reads live-ops add-consts sub-consts mul-consts div-consts))
(struct hvx-expr-spec (expr sol ctx axioms invalid-sketches))

(provide (all-defined-out))