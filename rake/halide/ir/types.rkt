#lang rosette

(require rosette/lib/match)

;; Define Halide's IR

;; Constructors
(struct x32 (sca) #:transparent)
(struct x64 (sca) #:transparent)
(struct x128 (sca) #:transparent)
(struct x256 (sca) #:transparent)

(struct ramp (base stride len) #:transparent)
(struct load (buf idxs) #:transparent)

;; Type Casts
(struct uint8x32 (vec) #:transparent)
(struct uint8x64 (vec) #:transparent)
(struct uint8x128 (vec) #:transparent)
(struct uint8x256 (vec) #:transparent)

(struct uint16x32 (vec) #:transparent)
(struct uint16x64 (vec) #:transparent)
(struct uint16x128 (vec) #:transparent)

(struct uint32x32 (vec) #:transparent)
(struct uint32x64 (vec) #:transparent)
(struct uint32x128 (vec) #:transparent)

(struct int8x32 (vec) #:transparent)
(struct int8x64 (vec) #:transparent)
(struct int8x128 (vec) #:transparent)

(struct int16x32 (vec) #:transparent)
(struct int16x64 (vec) #:transparent)
(struct int16x128 (vec) #:transparent)

(struct int32x32 (vec) #:transparent)
(struct int32x64 (vec) #:transparent)
(struct int32x128 (vec) #:transparent)

;; Operations
(struct sca-add (v1 v2) #:transparent)
(struct sca-sub (v1 v2) #:transparent)
(struct sca-mul (v1 v2) #:transparent)
(struct sca-div (v1 v2) #:transparent)
(struct sca-min (v1 v2) #:transparent)
(struct sca-max (v1 v2) #:transparent)

(struct vec-add (v1 v2) #:transparent)
(struct vec-sub (v1 v2) #:transparent)
(struct vec-mul (v1 v2) #:transparent)
(struct vec-div (v1 v2) #:transparent)
(struct vec-max (v1 v2) #:transparent)
(struct vec-min (v1 v2) #:transparent)

;; Shuffles
(struct slice_vectors (vec base stride len) #:transparent)
(struct concat_vectors (v1 v2) #:transparent)
(struct dynamic_shuffle (vec idx st end) #:transparent)

;; Utility functions
(define (vec-len expr)
  (match expr
    ;; Constructors
    [(x32 sca) 32]
    [(x64 sca) 64]
    [(x128 sca) 128]
    [(x256 sca) 256]

    [(ramp base stride len) len]
    [(load buf idxs) (vec-len idxs)]

    ;; Type Casts
    [(uint8x32 vec) 32]
    [(uint16x32 vec) 32]
    [(uint32x32 vec) 32]
    [(int8x32 vec) 32]
    [(int16x32 vec) 32]
    [(int32x32 vec) 32]
    [(uint8x64 vec) 64]
    [(uint16x64 vec) 64]
    [(uint32x64 vec) 64]
    [(int8x64 vec) 64]
    [(int16x64 vec) 64]
    [(int32x64 vec) 64]
    [(uint8x128 vec) 128]
    [(uint16x128 vec) 128]
    [(uint32x128 vec) 128]
    [(int8x128 vec) 128]
    [(int16x128 vec) 128]
    [(int32x128 vec) 128]
    [(uint8x256 vec) 256]

    ;; Operations
    [(vec-add v1 v2) (vec-len v1)]
    [(vec-sub v1 v2) (vec-len v1)]
    [(vec-mul v1 v2) (vec-len v1)]
    [(vec-div v1 v2) (vec-len v1)]

    ;; Shuffles
    [(slice_vectors vec base stride len) len]
    [(concat_vectors v1 v2) (+ (vec-len v1) (vec-len v2))]
    [(dynamic_shuffle vec idxs st end) (vec-len idxs)]
    
    ;; Base case
    [_ (error "Don't know how to get vector length from:" expr)]))

(provide (except-out (all-defined-out)) (rename-out [vec-len num-elems-hal]))