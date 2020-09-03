#lang rosette

(struct halide-spec (expr ctx buff-reads live-ops add-consts sub-consts mul-consts div-consts))
(struct ir-spec (expr sol ctx req-elems))

(provide (all-defined-out))