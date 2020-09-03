#lang rosette

(struct synthesis-spec (expr context axioms))

(struct ir-expr-spec (expr ctx axioms buff-reads live-ops add-consts sub-consts mul-consts div-consts))
(struct hvx-expr-spec (expr sol ctx axioms))

(provide (all-defined-out))