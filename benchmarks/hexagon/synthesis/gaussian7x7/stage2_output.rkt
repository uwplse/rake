#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake)
(require rake/halide/ir/interpreter)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 32)))
(define-symbolic c1 (~> integer? (bitvector 32)))

(init-var-types (make-hash (list (cons rows 'int32) (cons c1 'int32))))

;; Model indexing variables as integers
(define-symbolic output.s0.x.x integer?)
(define-symbolic input.stride.1 integer?)

(define t135 (ramp c1 0 1 32))
(define t136 (ramp rows (+ (* output.s0.x.x 256) 32) 1 32))
(define t137 (concat_vectors t135 t136))
(define t138 (ramp rows (+ (* output.s0.x.x 256) 64) 1 32))
(define t139 (concat_vectors t136 t138))
(define t140 (ramp rows (+ (* output.s0.x.x 256) 96) 1 32))
(define t141 (concat_vectors t138 t140))
(define t142 (ramp rows (+ (* output.s0.x.x 256) 128) 1 32))
(define t143 (concat_vectors t140 t142))
(define t144 (ramp rows (+ (* output.s0.x.x 256) 160) 1 32))
(define t145 (concat_vectors t142 t144))
(define t146 (ramp rows (+ (* output.s0.x.x 256) 192) 1 32))
(define t147 (concat_vectors t144 t146))
(define t148 (ramp rows (+ (* output.s0.x.x 256) 224) 1 32))
(define t149 (concat_vectors t146 t148))
(define t150.s (ramp c1 32 1 32))

(define halide-expr
  (uint8x256
   (vec-max
    (vec-min
     (vec-div
      (vec-add
       (vec-mul
        (concat_vectors
         (concat_vectors
          (concat_vectors (slice_vectors t137 1 1 32) (slice_vectors t139 1 1 32))
          (concat_vectors (slice_vectors t141 1 1 32) (slice_vectors t143 1 1 32)))
         (concat_vectors
          (concat_vectors (slice_vectors t145 1 1 32) (slice_vectors t147 1 1 32))
          (concat_vectors (slice_vectors t149 1 1 32) (slice_vectors (concat_vectors t148 t150.s) 1 1 32))))
        (x256 (int32_t (bv 6 32))))
       (vec-add
        (concat_vectors
         (concat_vectors
          (concat_vectors t135 t136)
          (concat_vectors t138 t140))
         (concat_vectors
          (concat_vectors t142 t144)
          (concat_vectors t146 t148)))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (concat_vectors (slice_vectors t137 2 1 32) (slice_vectors t139 2 1 32))
            (concat_vectors (slice_vectors t141 2 1 32) (slice_vectors t143 2 1 32)))
           (concat_vectors
            (concat_vectors (slice_vectors t145 2 1 32) (slice_vectors t147 2 1 32))
            (concat_vectors (slice_vectors t149 2 1 32) (slice_vectors (concat_vectors t148 t150.s) 2 1 32))))
          (x256 (int32_t (bv 15 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (concat_vectors (slice_vectors t137 3 1 32) (slice_vectors t139 3 1 32))
             (concat_vectors (slice_vectors t141 3 1 32) (slice_vectors t143 3 1 32)))
            (concat_vectors
             (concat_vectors (slice_vectors t145 3 1 32) (slice_vectors t147 3 1 32))
             (concat_vectors (slice_vectors t149 3 1 32) (slice_vectors (concat_vectors t148 t150.s) 3 1 32))))
           (x256 (int32_t (bv 20 32))))
          (vec-add
           (vec-mul
            (concat_vectors
             (concat_vectors
              (concat_vectors (slice_vectors t137 4 1 32) (slice_vectors t139 4 1 32))
              (concat_vectors (slice_vectors t141 4 1 32) (slice_vectors t143 4 1 32)))
             (concat_vectors
              (concat_vectors (slice_vectors t145 4 1 32) (slice_vectors t147 4 1 32))
              (concat_vectors (slice_vectors t149 4 1 32) (slice_vectors (concat_vectors t148 t150.s) 4 1 32))))
            (x256 (int32_t (bv 15 32))))
           (vec-add
            (concat_vectors
             (concat_vectors
              (concat_vectors (slice_vectors t137 6 1 32) (slice_vectors t139 6 1 32))
              (concat_vectors (slice_vectors t141 6 1 32) (slice_vectors t143 6 1 32)))
             (concat_vectors
              (concat_vectors (slice_vectors t145 6 1 32) (slice_vectors t147 6 1 32))
              (concat_vectors (slice_vectors t149 6 1 32) (slice_vectors (concat_vectors t148 t150.s) 6 1 32))))
            (vec-mul
             (concat_vectors
              (concat_vectors
               (concat_vectors (slice_vectors t137 5 1 32) (slice_vectors t139 5 1 32))
               (concat_vectors (slice_vectors t141 5 1 32) (slice_vectors t143 5 1 32)))
              (concat_vectors
               (concat_vectors (slice_vectors t145 5 1 32) (slice_vectors t147 5 1 32))
               (concat_vectors (slice_vectors t149 5 1 32) (slice_vectors (concat_vectors t148 t150.s) 5 1 32))))
             (x256 (int32_t (bv 6 32))))))))))
      (x256 (int32_t (bv 4096 32))))
     (x256 (int32_t (bv 255 32)))) 
    (x256 (int32_t (bv 0 32))))))

(println ((interpret-halide halide-expr) 0))

;; Define the specification for the synthesizer
;(define spec (synthesis-spec halide-expr (list input input.stride.1) (list)))

;(define hvx-expr (synthesize-hvx spec))

;(basic-expr-cost hvx-expr)

;(println hvx-expr)