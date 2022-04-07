#lang rosette/safe

(require
  ;(only-in racket/base for for/list exit values object-name)
  (only-in racket/base for values)
  (only-in racket/base make-hash hash-set! hash-has-key? hash-ref)
  (only-in racket/list range)
  ;(only-in racket/set mutable-set set set-union! list->set set->list)
  (only-in racket/set list->set set->list)
  ;rosette/lib/match
  ;rosette/lib/destruct
  rake/internal/error
  rake/cpp
  rake/halide
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
  rake/x86/ast/types
  rake/synthesis/lowering/algorithm
  ; rake/synthesis/swizzling/x86
  ; rake/synthesis/lowering/synthesizer/x86
  )

(provide synthesize-x86-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

(define (synthesize-x86-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f])
  (values #f (void)))
