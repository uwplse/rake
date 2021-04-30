#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct)

(provide (all-defined-out))
         
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define Halide's IR

;; Constructors
(struct x32 (sca) #:transparent)
(struct x64 (sca) #:transparent)
(struct x128 (sca) #:transparent)
(struct x256 (sca) #:transparent)
(struct x512 (sca) #:transparent)

(struct buffer (data elemT) #:transparent)
(struct load (buf idxs alignment) #:transparent)
(struct ramp (base stride len) #:transparent)
(struct aligned (mod rem) #:transparent)
(struct load-sca (buf idx) #:transparent)

;; Type Casts
(struct uint8x1 (sca) #:transparent)
(struct uint16x1 (sca) #:transparent)
(struct uint32x1 (sca) #:transparent)
(struct uint64x1 (sca) #:transparent)

(struct int8x1 (sca) #:transparent)
(struct int16x1 (sca) #:transparent)
(struct int32x1 (sca) #:transparent)
(struct int64x1 (sca) #:transparent)

(struct uint1x32 (vec) #:transparent)
(struct uint1x64 (vec) #:transparent)
(struct uint1x128 (vec) #:transparent)
(struct uint1x256 (vec) #:transparent)

(struct uint8x32 (vec) #:transparent)
(struct uint8x64 (vec) #:transparent)
(struct uint8x128 (vec) #:transparent)
(struct uint8x256 (vec) #:transparent)

(struct uint16x32 (vec) #:transparent)
(struct uint16x64 (vec) #:transparent)
(struct uint16x128 (vec) #:transparent)
(struct uint16x256 (vec) #:transparent)

(struct uint32x32 (vec) #:transparent)
(struct uint32x64 (vec) #:transparent)
(struct uint32x128 (vec) #:transparent)
(struct uint32x256 (vec) #:transparent)

(struct uint64x32 (vec) #:transparent)
(struct uint64x64 (vec) #:transparent)
(struct uint64x128 (vec) #:transparent)
(struct uint64x256 (vec) #:transparent)

(struct int8x32 (vec) #:transparent)
(struct int8x64 (vec) #:transparent)
(struct int8x128 (vec) #:transparent)
(struct int8x256 (vec) #:transparent)

(struct int16x32 (vec) #:transparent)
(struct int16x64 (vec) #:transparent)
(struct int16x128 (vec) #:transparent)
(struct int16x256 (vec) #:transparent)

(struct int32x32 (vec) #:transparent)
(struct int32x64 (vec) #:transparent)
(struct int32x128 (vec) #:transparent)
(struct int32x256 (vec) #:transparent)

(struct int64x32 (vec) #:transparent)
(struct int64x64 (vec) #:transparent)
(struct int64x128 (vec) #:transparent)
(struct int64x256 (vec) #:transparent)

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
(struct vec-mod (v1 v2) #:transparent)
(struct vec-max (v1 v2) #:transparent)
(struct vec-min (v1 v2) #:transparent)

(struct vec-if (v1 v2 v3) #:transparent)
(struct vec-lt (v1 v2) #:transparent)
(struct vec-le (v1 v2) #:transparent)

(struct vec-absd (v1 v2) #:transparent)
(struct vec-shl (v1 v2) #:transparent)
(struct vec-shr (v1 v2) #:transparent)

;; Shuffles
(struct slice_vectors (vec base stride len) #:transparent)
(struct concat_vectors (v1 v2) #:transparent)
(struct interleave (v1 v2) #:transparent)
(struct dynamic_shuffle (vec idx st end) #:transparent)