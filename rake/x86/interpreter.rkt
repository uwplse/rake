#lang rosette/safe

(require
  rosette/lib/destruct
  rake/x86/types
  rake/x86/builtins)

(provide (prefix-out avx: (all-defined-out)))

(define (get-elem avx-vec idx)
  1)

(define (set-elem! avx-vec idx val)
  1)

(define (interpret p)
  (destruct p
    ;;;;;;;;;;;;;;;;;;;;;;;;;; VNNI INTRINSICS ;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;; Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit
    ;; integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the
    ;; corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results
    ;; in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    [(_mm512_maskz_dpwssds_epi32 k src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 0))) (avx:builtins:sat32 (get-elem b (* 2 0)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 0) 1)))))
        (set-elem! dst 0 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 0) tmp1) tmp2)))]
       [else
        (set-elem! dst 0 0)])
     (cond
       [(get-elem k 1)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 1))) (avx:builtins:sat32 (get-elem b (* 2 1)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 1) 1)))))
        (set-elem! dst 1 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 1) tmp1) tmp2)))]
       [else
        (set-elem! dst 1 0)])
     (cond
       [(get-elem k 2)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 2))) (avx:builtins:sat32 (get-elem b (* 2 2)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 2) 1)))))
        (set-elem! dst 2 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 2) tmp1) tmp2)))]
       [else
        (set-elem! dst 2 0)])
     (cond
       [(get-elem k 3)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 3))) (avx:builtins:sat32 (get-elem b (* 2 3)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 3) 1)))))
        (set-elem! dst 3 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 3) tmp1) tmp2)))]
       [else
        (set-elem! dst 3 0)])
     (cond
       [(get-elem k 4)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 4))) (avx:builtins:sat32 (get-elem b (* 2 4)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 4) 1)))))
        (set-elem! dst 4 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 4) tmp1) tmp2)))]
       [else
        (set-elem! dst 4 0)])
     (cond
       [(get-elem k 5)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 5))) (avx:builtins:sat32 (get-elem b (* 2 5)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 5) 1)))))
        (set-elem! dst 5 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 5) tmp1) tmp2)))]
       [else
        (set-elem! dst 5 0)])
     (cond
       [(get-elem k 6)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 6))) (avx:builtins:sat32 (get-elem b (* 2 6)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 6) 1)))))
        (set-elem! dst 6 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 6) tmp1) tmp2)))]
       [else
        (set-elem! dst 6 0)])
     (cond
       [(get-elem k 7)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 7))) (avx:builtins:sat32 (get-elem b (* 2 7)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 7) 1)))))
        (set-elem! dst 7 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 7) tmp1) tmp2)))]
       [else
        (set-elem! dst 7 0)])
     (cond
       [(get-elem k 8)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 8))) (avx:builtins:sat32 (get-elem b (* 2 8)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 8) 1)))))
        (set-elem! dst 8 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 8) tmp1) tmp2)))]
       [else
        (set-elem! dst 8 0)])
     (cond
       [(get-elem k 9)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 9))) (avx:builtins:sat32 (get-elem b (* 2 9)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 9) 1)))))
        (set-elem! dst 9 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 9) tmp1) tmp2)))]
       [else
        (set-elem! dst 9 0)])
     (cond
       [(get-elem k 10)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 10))) (avx:builtins:sat32 (get-elem b (* 2 10)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 10) 1)))))
        (set-elem! dst 10 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 10) tmp1) tmp2)))]
       [else
        (set-elem! dst 10 0)])
     (cond
       [(get-elem k 11)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 11))) (avx:builtins:sat32 (get-elem b (* 2 11)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 11) 1)))))
        (set-elem! dst 11 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 11) tmp1) tmp2)))]
       [else
        (set-elem! dst 11 0)])
     (cond
       [(get-elem k 12)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 12))) (avx:builtins:sat32 (get-elem b (* 2 12)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 12) 1)))))
        (set-elem! dst 12 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 12) tmp1) tmp2)))]
       [else
        (set-elem! dst 12 0)])
     (cond
       [(get-elem k 13)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 13))) (avx:builtins:sat32 (get-elem b (* 2 13)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 13) 1)))))
        (set-elem! dst 13 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 13) tmp1) tmp2)))]
       [else
        (set-elem! dst 13 0)])
     (cond
       [(get-elem k 14)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 14))) (avx:builtins:sat32 (get-elem b (* 2 14)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 14) 1)))))
        (set-elem! dst 14 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 14) tmp1) tmp2)))]
       [else
        (set-elem! dst 14 0)])
     (cond
       [(get-elem k 15)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 15))) (avx:builtins:sat32 (get-elem b (* 2 15)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 15) 1)))))
        (set-elem! dst 15 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 15) tmp1) tmp2)))]
       [else
        (set-elem! dst 15 0)])
     dst]

    ;; Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit
    ;; integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the
    ;; corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results
    ;; in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not
    ;; set).
    [(_mm512_mask_dpwssds_epi32 src k a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 0))) (avx:builtins:sat32 (get-elem b (* 2 0)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 0) 1)))))
        (set-elem! dst 0 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 0) tmp1) tmp2)))]
       [else
        (set-elem! dst 0 (get-elem src 0))])
     (cond
       [(get-elem k 1)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 1))) (avx:builtins:sat32 (get-elem b (* 2 1)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 1) 1)))))
        (set-elem! dst 1 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 1) tmp1) tmp2)))]
       [else
        (set-elem! dst 1 (get-elem src 1))])
     (cond
       [(get-elem k 2)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 2))) (avx:builtins:sat32 (get-elem b (* 2 2)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 2) 1)))))
        (set-elem! dst 2 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 2) tmp1) tmp2)))]
       [else
        (set-elem! dst 2 (get-elem src 2))])
     (cond
       [(get-elem k 3)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 3))) (avx:builtins:sat32 (get-elem b (* 2 3)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 3) 1)))))
        (set-elem! dst 3 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 3) tmp1) tmp2)))]
       [else
        (set-elem! dst 3 (get-elem src 3))])
     (cond
       [(get-elem k 4)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 4))) (avx:builtins:sat32 (get-elem b (* 2 4)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 4) 1)))))
        (set-elem! dst 4 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 4) tmp1) tmp2)))]
       [else
        (set-elem! dst 4 (get-elem src 4))])
     (cond
       [(get-elem k 5)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 5))) (avx:builtins:sat32 (get-elem b (* 2 5)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 5) 1)))))
        (set-elem! dst 5 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 5) tmp1) tmp2)))]
       [else
        (set-elem! dst 5 (get-elem src 5))])
     (cond
       [(get-elem k 6)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 6))) (avx:builtins:sat32 (get-elem b (* 2 6)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 6) 1)))))
        (set-elem! dst 6 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 6) tmp1) tmp2)))]
       [else
        (set-elem! dst 6 (get-elem src 6))])
     (cond
       [(get-elem k 7)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 7))) (avx:builtins:sat32 (get-elem b (* 2 7)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 7) 1)))))
        (set-elem! dst 7 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 7) tmp1) tmp2)))]
       [else
        (set-elem! dst 7 (get-elem src 7))])
     (cond
       [(get-elem k 8)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 8))) (avx:builtins:sat32 (get-elem b (* 2 8)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 8) 1)))))
        (set-elem! dst 8 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 8) tmp1) tmp2)))]
       [else
        (set-elem! dst 8 (get-elem src 8))])
     (cond
       [(get-elem k 9)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 9))) (avx:builtins:sat32 (get-elem b (* 2 9)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 9) 1)))))
        (set-elem! dst 9 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 9) tmp1) tmp2)))]
       [else
        (set-elem! dst 9 (get-elem src 9))])
     (cond
       [(get-elem k 10)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 10))) (avx:builtins:sat32 (get-elem b (* 2 10)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 10) 1)))))
        (set-elem! dst 10 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 10) tmp1) tmp2)))]
       [else
        (set-elem! dst 10 (get-elem src 10))])
     (cond
       [(get-elem k 11)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 11))) (avx:builtins:sat32 (get-elem b (* 2 11)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 11) 1)))))
        (set-elem! dst 11 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 11) tmp1) tmp2)))]
       [else
        (set-elem! dst 11 (get-elem src 11))])
     (cond
       [(get-elem k 12)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 12))) (avx:builtins:sat32 (get-elem b (* 2 12)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 12) 1)))))
        (set-elem! dst 12 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 12) tmp1) tmp2)))]
       [else
        (set-elem! dst 12 (get-elem src 12))])
     (cond
       [(get-elem k 13)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 13))) (avx:builtins:sat32 (get-elem b (* 2 13)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 13) 1)))))
        (set-elem! dst 13 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 13) tmp1) tmp2)))]
       [else
        (set-elem! dst 13 (get-elem src 13))])
     (cond
       [(get-elem k 14)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 14))) (avx:builtins:sat32 (get-elem b (* 2 14)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 14) 1)))))
        (set-elem! dst 14 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 14) tmp1) tmp2)))]
       [else
        (set-elem! dst 14 (get-elem src 14))])
     (cond
       [(get-elem k 15)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 15))) (avx:builtins:sat32 (get-elem b (* 2 15)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 15) 1)))))
        (set-elem! dst 15 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 15) tmp1) tmp2)))]
       [else
        (set-elem! dst 15 (get-elem src 15))])
     dst]

    ;; Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit
    ;; integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the
    ;; corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results
    ;; in "dst".
    [(_mm512_dpwssds_epi32 src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 0))) (avx:builtins:sat32 (get-elem b (* 2 0)))))
     (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 0) 1)))))
     (set-elem! dst 0 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 0) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 1))) (avx:builtins:sat32 (get-elem b (* 2 1)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 1) 1)))))
     (set-elem! dst 1 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 1) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 2))) (avx:builtins:sat32 (get-elem b (* 2 2)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 2) 1)))))
     (set-elem! dst 2 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 2) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 3))) (avx:builtins:sat32 (get-elem b (* 2 3)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 3) 1)))))
     (set-elem! dst 3 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 3) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 4))) (avx:builtins:sat32 (get-elem b (* 2 4)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 4) 1)))))
     (set-elem! dst 4 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 4) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 5))) (avx:builtins:sat32 (get-elem b (* 2 5)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 5) 1)))))
     (set-elem! dst 5 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 5) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 6))) (avx:builtins:sat32 (get-elem b (* 2 6)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 6) 1)))))
     (set-elem! dst 6 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 6) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 7))) (avx:builtins:sat32 (get-elem b (* 2 7)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 7) 1)))))
     (set-elem! dst 7 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 7) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 8))) (avx:builtins:sat32 (get-elem b (* 2 8)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 8) 1)))))
     (set-elem! dst 8 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 8) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 9))) (avx:builtins:sat32 (get-elem b (* 2 9)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 9) 1)))))
     (set-elem! dst 9 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 9) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 10))) (avx:builtins:sat32 (get-elem b (* 2 10)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 10) 1)))))
     (set-elem! dst 10 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 10) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 11))) (avx:builtins:sat32 (get-elem b (* 2 11)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 11) 1)))))
     (set-elem! dst 11 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 11) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 12))) (avx:builtins:sat32 (get-elem b (* 2 12)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 12) 1)))))
     (set-elem! dst 12 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 12) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 13))) (avx:builtins:sat32 (get-elem b (* 2 13)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 13) 1)))))
     (set-elem! dst 13 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 13) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 14))) (avx:builtins:sat32 (get-elem b (* 2 14)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 14) 1)))))
     (set-elem! dst 14 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 14) tmp1) tmp2)))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 15))) (avx:builtins:sat32 (get-elem b (* 2 15)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 15) 1)))))
     (set-elem! dst 15 (avx:builtins:sat32 (bvadd (bvadd (get-elem src 15) tmp1) tmp2)))
     dst]

    ;; Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit
    ;; integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the
    ;; corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using zeromask
    ;; "k" (elements are zeroed out when the corresponding mask bit is not set).
    [(_mm512_maskz_dpwssd_epi32 k src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 0))) (avx:builtins:sat32 (get-elem b (* 2 0)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 0) 1)))))
        (set-elem! dst 0 (bvadd (bvadd (get-elem src 0) tmp1) tmp2))]
       [else
        (set-elem! dst 0 0)])
     (cond
       [(get-elem k 1)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 1))) (avx:builtins:sat32 (get-elem b (* 2 1)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 1) 1)))))
        (set-elem! dst 1 (bvadd (bvadd (get-elem src 1) tmp1) tmp2))]
       [else
        (set-elem! dst 1 0)])
     (cond
       [(get-elem k 2)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 2))) (avx:builtins:sat32 (get-elem b (* 2 2)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 2) 1)))))
        (set-elem! dst 2 (bvadd (bvadd (get-elem src 2) tmp1) tmp2))]
       [else
        (set-elem! dst 2 0)])
     (cond
       [(get-elem k 3)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 3))) (avx:builtins:sat32 (get-elem b (* 2 3)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 3) 1)))))
        (set-elem! dst 3 (bvadd (bvadd (get-elem src 3) tmp1) tmp2))]
       [else
        (set-elem! dst 3 0)])
     (cond
       [(get-elem k 4)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 4))) (avx:builtins:sat32 (get-elem b (* 2 4)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 4) 1)))))
        (set-elem! dst 4 (bvadd (bvadd (get-elem src 4) tmp1) tmp2))]
       [else
        (set-elem! dst 4 0)])
     (cond
       [(get-elem k 5)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 5))) (avx:builtins:sat32 (get-elem b (* 2 5)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 5) 1)))))
        (set-elem! dst 5 (bvadd (bvadd (get-elem src 5) tmp1) tmp2))]
       [else
        (set-elem! dst 5 0)])
     (cond
       [(get-elem k 6)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 6))) (avx:builtins:sat32 (get-elem b (* 2 6)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 6) 1)))))
        (set-elem! dst 6 (bvadd (bvadd (get-elem src 6) tmp1) tmp2))]
       [else
        (set-elem! dst 6 0)])
     (cond
       [(get-elem k 7)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 7))) (avx:builtins:sat32 (get-elem b (* 2 7)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 7) 1)))))
        (set-elem! dst 7 (bvadd (bvadd (get-elem src 7) tmp1) tmp2))]
       [else
        (set-elem! dst 7 0)])
     (cond
       [(get-elem k 8)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 8))) (avx:builtins:sat32 (get-elem b (* 2 8)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 8) 1)))))
        (set-elem! dst 8 (bvadd (bvadd (get-elem src 8) tmp1) tmp2))]
       [else
        (set-elem! dst 8 0)])
     (cond
       [(get-elem k 9)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 9))) (avx:builtins:sat32 (get-elem b (* 2 9)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 9) 1)))))
        (set-elem! dst 9 (bvadd (bvadd (get-elem src 9) tmp1) tmp2))]
       [else
        (set-elem! dst 9 0)])
     (cond
       [(get-elem k 10)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 10))) (avx:builtins:sat32 (get-elem b (* 2 10)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 10) 1)))))
        (set-elem! dst 10 (bvadd (bvadd (get-elem src 10) tmp1) tmp2))]
       [else
        (set-elem! dst 10 0)])
     (cond
       [(get-elem k 11)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 11))) (avx:builtins:sat32 (get-elem b (* 2 11)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 11) 1)))))
        (set-elem! dst 11 (bvadd (bvadd (get-elem src 11) tmp1) tmp2))]
       [else
        (set-elem! dst 11 0)])
     (cond
       [(get-elem k 12)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 12))) (avx:builtins:sat32 (get-elem b (* 2 12)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 12) 1)))))
        (set-elem! dst 12 (bvadd (bvadd (get-elem src 12) tmp1) tmp2))]
       [else
        (set-elem! dst 12 0)])
     (cond
       [(get-elem k 13)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 13))) (avx:builtins:sat32 (get-elem b (* 2 13)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 13) 1)))))
        (set-elem! dst 13 (bvadd (bvadd (get-elem src 13) tmp1) tmp2))]
       [else
        (set-elem! dst 13 0)])
     (cond
       [(get-elem k 14)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 14))) (avx:builtins:sat32 (get-elem b (* 2 14)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 14) 1)))))
        (set-elem! dst 14 (bvadd (bvadd (get-elem src 14) tmp1) tmp2))]
       [else
        (set-elem! dst 14 0)])
     (cond
       [(get-elem k 15)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 15))) (avx:builtins:sat32 (get-elem b (* 2 15)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 15) 1)))))
        (set-elem! dst 15 (bvadd (bvadd (get-elem src 15) tmp1) tmp2))]
       [else
        (set-elem! dst 15 0)])
     dst]

    ;; Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit
    ;; integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the
    ;; corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using writemask
    ;; "k" (elements are copied from "src" when the corresponding mask bit is not set).
    [(_mm512_mask_dpwssd_epi32 src k a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 0))) (avx:builtins:sat32 (get-elem b (* 2 0)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 0) 1)))))
        (set-elem! dst 0 (bvadd (bvadd (get-elem src 0) tmp1) tmp2))]
       [else
        (set-elem! dst 0 (get-elem src 0))])
     (cond
       [(get-elem k 1)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 1))) (avx:builtins:sat32 (get-elem b (* 2 1)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 1) 1)))))
        (set-elem! dst 1 (bvadd (bvadd (get-elem src 1) tmp1) tmp2))]
       [else
        (set-elem! dst 1 (get-elem src 1))])
     (cond
       [(get-elem k 2)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 2))) (avx:builtins:sat32 (get-elem b (* 2 2)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 2) 1)))))
        (set-elem! dst 2 (bvadd (bvadd (get-elem src 2) tmp1) tmp2))]
       [else
        (set-elem! dst 2 (get-elem src 2))])
     (cond
       [(get-elem k 3)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 3))) (avx:builtins:sat32 (get-elem b (* 2 3)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 3) 1)))))
        (set-elem! dst 3 (bvadd (bvadd (get-elem src 3) tmp1) tmp2))]
       [else
        (set-elem! dst 3 (get-elem src 3))])
     (cond
       [(get-elem k 4)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 4))) (avx:builtins:sat32 (get-elem b (* 2 4)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 4) 1)))))
        (set-elem! dst 4 (bvadd (bvadd (get-elem src 4) tmp1) tmp2))]
       [else
        (set-elem! dst 4 (get-elem src 4))])
     (cond
       [(get-elem k 5)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 5))) (avx:builtins:sat32 (get-elem b (* 2 5)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 5) 1)))))
        (set-elem! dst 5 (bvadd (bvadd (get-elem src 5) tmp1) tmp2))]
       [else
        (set-elem! dst 5 (get-elem src 5))])
     (cond
       [(get-elem k 6)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 6))) (avx:builtins:sat32 (get-elem b (* 2 6)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 6) 1)))))
        (set-elem! dst 6 (bvadd (bvadd (get-elem src 6) tmp1) tmp2))]
       [else
        (set-elem! dst 6 (get-elem src 6))])
     (cond
       [(get-elem k 7)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 7))) (avx:builtins:sat32 (get-elem b (* 2 7)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 7) 1)))))
        (set-elem! dst 7 (bvadd (bvadd (get-elem src 7) tmp1) tmp2))]
       [else
        (set-elem! dst 7 (get-elem src 7))])
     (cond
       [(get-elem k 8)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 8))) (avx:builtins:sat32 (get-elem b (* 2 8)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 8) 1)))))
        (set-elem! dst 8 (bvadd (bvadd (get-elem src 8) tmp1) tmp2))]
       [else
        (set-elem! dst 8 (get-elem src 8))])
     (cond
       [(get-elem k 9)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 9))) (avx:builtins:sat32 (get-elem b (* 2 9)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 9) 1)))))
        (set-elem! dst 9 (bvadd (bvadd (get-elem src 9) tmp1) tmp2))]
       [else
        (set-elem! dst 9 (get-elem src 9))])
     (cond
       [(get-elem k 10)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 10))) (avx:builtins:sat32 (get-elem b (* 2 10)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 10) 1)))))
        (set-elem! dst 10 (bvadd (bvadd (get-elem src 10) tmp1) tmp2))]
       [else
        (set-elem! dst 10 (get-elem src 10))])
     (cond
       [(get-elem k 11)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 11))) (avx:builtins:sat32 (get-elem b (* 2 11)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 11) 1)))))
        (set-elem! dst 11 (bvadd (bvadd (get-elem src 11) tmp1) tmp2))]
       [else
        (set-elem! dst 11 (get-elem src 11))])
     (cond
       [(get-elem k 12)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 12))) (avx:builtins:sat32 (get-elem b (* 2 12)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 12) 1)))))
        (set-elem! dst 12 (bvadd (bvadd (get-elem src 12) tmp1) tmp2))]
       [else
        (set-elem! dst 12 (get-elem src 12))])
     (cond
       [(get-elem k 13)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 13))) (avx:builtins:sat32 (get-elem b (* 2 13)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 13) 1)))))
        (set-elem! dst 13 (bvadd (bvadd (get-elem src 13) tmp1) tmp2))]
       [else
        (set-elem! dst 13 (get-elem src 13))])
     (cond
       [(get-elem k 14)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 14))) (avx:builtins:sat32 (get-elem b (* 2 14)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 14) 1)))))
        (set-elem! dst 14 (bvadd (bvadd (get-elem src 14) tmp1) tmp2))]
       [else
        (set-elem! dst 14 (get-elem src 14))])
     (cond
       [(get-elem k 15)
        (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 15))) (avx:builtins:sat32 (get-elem b (* 2 15)))))
        (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 15) 1)))))
        (set-elem! dst 15 (bvadd (bvadd (get-elem src 15) tmp1) tmp2))]
       [else
        (set-elem! dst 15 (get-elem src 15))])
     dst]

    ;; Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit
    ;; integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the
    ;; corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".
    [(_mm512_dpwssd_epi32 src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (define tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 0))) (avx:builtins:sat32 (get-elem b (* 2 0)))))
     (define tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 0) 1)))))
     (set-elem! dst 0 (bvadd (bvadd (get-elem src 0) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 1))) (avx:builtins:sat32 (get-elem b (* 2 1)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 1) 1)))))
     (set-elem! dst 1 (bvadd (bvadd (get-elem src 1) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 2))) (avx:builtins:sat32 (get-elem b (* 2 2)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 2) 1)))))
     (set-elem! dst 2 (bvadd (bvadd (get-elem src 2) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 3))) (avx:builtins:sat32 (get-elem b (* 2 3)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 3) 1)))))
     (set-elem! dst 3 (bvadd (bvadd (get-elem src 3) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 4))) (avx:builtins:sat32 (get-elem b (* 2 4)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 4) 1)))))
     (set-elem! dst 4 (bvadd (bvadd (get-elem src 4) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 5))) (avx:builtins:sat32 (get-elem b (* 2 5)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 5) 1)))))
     (set-elem! dst 5 (bvadd (bvadd (get-elem src 5) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 6))) (avx:builtins:sat32 (get-elem b (* 2 6)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 6) 1)))))
     (set-elem! dst 6 (bvadd (bvadd (get-elem src 6) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 7))) (avx:builtins:sat32 (get-elem b (* 2 7)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 7) 1)))))
     (set-elem! dst 7 (bvadd (bvadd (get-elem src 7) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 8))) (avx:builtins:sat32 (get-elem b (* 2 8)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 8) 1)))))
     (set-elem! dst 8 (bvadd (bvadd (get-elem src 8) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 9))) (avx:builtins:sat32 (get-elem b (* 2 9)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 9) 1)))))
     (set-elem! dst 9 (bvadd (bvadd (get-elem src 9) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 10))) (avx:builtins:sat32 (get-elem b (* 2 10)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 10) 1)))))
     (set-elem! dst 10 (bvadd (bvadd (get-elem src 10) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 11))) (avx:builtins:sat32 (get-elem b (* 2 11)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 11) 1)))))
     (set-elem! dst 11 (bvadd (bvadd (get-elem src 11) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 12))) (avx:builtins:sat32 (get-elem b (* 2 12)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 12) 1)))))
     (set-elem! dst 12 (bvadd (bvadd (get-elem src 12) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 13))) (avx:builtins:sat32 (get-elem b (* 2 13)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 13) 1)))))
     (set-elem! dst 13 (bvadd (bvadd (get-elem src 13) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 14))) (avx:builtins:sat32 (get-elem b (* 2 14)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 14) 1)))))
     (set-elem! dst 14 (bvadd (bvadd (get-elem src 14) tmp1) tmp2))
     (set! tmp1 (bvmul (avx:builtins:sat32 (get-elem a (* 2 15))) (avx:builtins:sat32 (get-elem b (* 2 15)))))
     (set! tmp2 (bvmul (avx:builtins:sat32 (get-elem a (+ (* 2 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 2 15) 1)))))
     (set-elem! dst 15 (bvadd (bvadd (get-elem src 15) tmp1) tmp2))
     dst]

    ;; Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed
    ;; 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the
    ;; corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results
    ;; in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    [(_mm512_maskz_dpbusds_epi32 k src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 0))) (avx:builtins:sat32 (get-elem b (* 4 0))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 3))))))
        (set-elem! dst 0 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 0) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 0 0)])
     (cond
       [(get-elem k 1)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 1))) (avx:builtins:sat32 (get-elem b (* 4 1))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 3))))))
        (set-elem! dst 1 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 1) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 1 0)])
     (cond
       [(get-elem k 2)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 2))) (avx:builtins:sat32 (get-elem b (* 4 2))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 3))))))
        (set-elem! dst 2 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 2) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 2 0)])
     (cond
       [(get-elem k 3)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 3))) (avx:builtins:sat32 (get-elem b (* 4 3))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 3))))))
        (set-elem! dst 3 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 3) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 3 0)])
     (cond
       [(get-elem k 4)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 4))) (avx:builtins:sat32 (get-elem b (* 4 4))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 3))))))
        (set-elem! dst 4 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 4) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 4 0)])
     (cond
       [(get-elem k 5)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 5))) (avx:builtins:sat32 (get-elem b (* 4 5))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 3))))))
        (set-elem! dst 5 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 5) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 5 0)])
     (cond
       [(get-elem k 6)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 6))) (avx:builtins:sat32 (get-elem b (* 4 6))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 3))))))
        (set-elem! dst 6 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 6) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 6 0)])
     (cond
       [(get-elem k 7)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 7))) (avx:builtins:sat32 (get-elem b (* 4 7))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 3))))))
        (set-elem! dst 7 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 7) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 7 0)])
     (cond
       [(get-elem k 8)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 8))) (avx:builtins:sat32 (get-elem b (* 4 8))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 3))))))
        (set-elem! dst 8 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 8) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 8 0)])
     (cond
       [(get-elem k 9)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 9))) (avx:builtins:sat32 (get-elem b (* 4 9))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 3))))))
        (set-elem! dst 9 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 9) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 9 0)])
     (cond
       [(get-elem k 10)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 10))) (avx:builtins:sat32 (get-elem b (* 4 10))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 3))))))
        (set-elem! dst 10 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 10) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 10 0)])
     (cond
       [(get-elem k 11)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 11))) (avx:builtins:sat32 (get-elem b (* 4 11))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 3))))))
        (set-elem! dst 11 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 11) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 11 0)])
     (cond
       [(get-elem k 12)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 12))) (avx:builtins:sat32 (get-elem b (* 4 12))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 3))))))
        (set-elem! dst 12 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 12) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 12 0)])
     (cond
       [(get-elem k 13)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 13))) (avx:builtins:sat32 (get-elem b (* 4 13))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 3))))))
        (set-elem! dst 13 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 13) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 13 0)])
     (cond
       [(get-elem k 14)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 14))) (avx:builtins:sat32 (get-elem b (* 4 14))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 3))))))
        (set-elem! dst 14 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 14) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 14 0)])
     (cond
       [(get-elem k 15)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 15))) (avx:builtins:sat32 (get-elem b (* 4 15))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 3))))))
        (set-elem! dst 15 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 15) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 15 0)])
     dst]

    ;; Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed
    ;; 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the
    ;; corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results
    ;; in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not
    ;; set).
    [(_mm512_mask_dpbusds_epi32 src k a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 0))) (avx:builtins:sat32 (get-elem b (* 4 0))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 3))))))
        (set-elem! dst 0 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 0) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 0 (get-elem src 0))])
     (cond
       [(get-elem k 1)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 1))) (avx:builtins:sat32 (get-elem b (* 4 1))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 3))))))
        (set-elem! dst 1 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 1) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 1 (get-elem src 1))])
     (cond
       [(get-elem k 2)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 2))) (avx:builtins:sat32 (get-elem b (* 4 2))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 3))))))
        (set-elem! dst 2 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 2) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 2 (get-elem src 2))])
     (cond
       [(get-elem k 3)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 3))) (avx:builtins:sat32 (get-elem b (* 4 3))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 3))))))
        (set-elem! dst 3 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 3) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 3 (get-elem src 3))])
     (cond
       [(get-elem k 4)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 4))) (avx:builtins:sat32 (get-elem b (* 4 4))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 3))))))
        (set-elem! dst 4 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 4) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 4 (get-elem src 4))])
     (cond
       [(get-elem k 5)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 5))) (avx:builtins:sat32 (get-elem b (* 4 5))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 3))))))
        (set-elem! dst 5 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 5) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 5 (get-elem src 5))])
     (cond
       [(get-elem k 6)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 6))) (avx:builtins:sat32 (get-elem b (* 4 6))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 3))))))
        (set-elem! dst 6 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 6) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 6 (get-elem src 6))])
     (cond
       [(get-elem k 7)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 7))) (avx:builtins:sat32 (get-elem b (* 4 7))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 3))))))
        (set-elem! dst 7 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 7) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 7 (get-elem src 7))])
     (cond
       [(get-elem k 8)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 8))) (avx:builtins:sat32 (get-elem b (* 4 8))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 3))))))
        (set-elem! dst 8 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 8) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 8 (get-elem src 8))])
     (cond
       [(get-elem k 9)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 9))) (avx:builtins:sat32 (get-elem b (* 4 9))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 3))))))
        (set-elem! dst 9 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 9) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 9 (get-elem src 9))])
     (cond
       [(get-elem k 10)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 10))) (avx:builtins:sat32 (get-elem b (* 4 10))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 3))))))
        (set-elem! dst 10 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 10) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 10 (get-elem src 10))])
     (cond
       [(get-elem k 11)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 11))) (avx:builtins:sat32 (get-elem b (* 4 11))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 3))))))
        (set-elem! dst 11 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 11) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 11 (get-elem src 11))])
     (cond
       [(get-elem k 12)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 12))) (avx:builtins:sat32 (get-elem b (* 4 12))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 3))))))
        (set-elem! dst 12 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 12) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 12 (get-elem src 12))])
     (cond
       [(get-elem k 13)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 13))) (avx:builtins:sat32 (get-elem b (* 4 13))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 3))))))
        (set-elem! dst 13 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 13) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 13 (get-elem src 13))])
     (cond
       [(get-elem k 14)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 14))) (avx:builtins:sat32 (get-elem b (* 4 14))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 3))))))
        (set-elem! dst 14 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 14) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 14 (get-elem src 14))])
     (cond
       [(get-elem k 15)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 15))) (avx:builtins:sat32 (get-elem b (* 4 15))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 3))))))
        (set-elem! dst 15 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 15) tmp1) tmp2) tmp3) tmp4)))]
       [else
        (set-elem! dst 15 (get-elem src 15))])
     dst]

    ;; Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed
    ;; 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the
    ;; corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results
    ;; in "dst".
    [(_mm512_dpbusds_epi32 src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 0))) (avx:builtins:sat32 (get-elem b (* 4 0))))))
     (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 1))))))
     (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 2))))))
     (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 3))))))
     (set-elem! dst 0 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 0) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 1))) (avx:builtins:sat32 (get-elem b (* 4 1))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 3))))))
     (set-elem! dst 1 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 1) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 2))) (avx:builtins:sat32 (get-elem b (* 4 2))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 3))))))
     (set-elem! dst 2 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 2) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 3))) (avx:builtins:sat32 (get-elem b (* 4 3))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 3))))))
     (set-elem! dst 3 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 3) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 4))) (avx:builtins:sat32 (get-elem b (* 4 4))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 3))))))
     (set-elem! dst 4 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 4) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 5))) (avx:builtins:sat32 (get-elem b (* 4 5))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 3))))))
     (set-elem! dst 5 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 5) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 6))) (avx:builtins:sat32 (get-elem b (* 4 6))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 3))))))
     (set-elem! dst 6 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 6) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 7))) (avx:builtins:sat32 (get-elem b (* 4 7))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 3))))))
     (set-elem! dst 7 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 7) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 8))) (avx:builtins:sat32 (get-elem b (* 4 8))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 3))))))
     (set-elem! dst 8 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 8) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 9))) (avx:builtins:sat32 (get-elem b (* 4 9))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 3))))))
     (set-elem! dst 9 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 9) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 10))) (avx:builtins:sat32 (get-elem b (* 4 10))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 3))))))
     (set-elem! dst 10 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 10) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 11))) (avx:builtins:sat32 (get-elem b (* 4 11))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 3))))))
     (set-elem! dst 11 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 11) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 12))) (avx:builtins:sat32 (get-elem b (* 4 12))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 3))))))
     (set-elem! dst 12 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 12) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 13))) (avx:builtins:sat32 (get-elem b (* 4 13))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 3))))))
     (set-elem! dst 13 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 13) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 14))) (avx:builtins:sat32 (get-elem b (* 4 14))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 3))))))
     (set-elem! dst 14 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 14) tmp1) tmp2) tmp3) tmp4)))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 15))) (avx:builtins:sat32 (get-elem b (* 4 15))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 3))))))
     (set-elem! dst 15 (avx:builtins:sat32 (bvadd (bvadd (bvadd (bvadd (get-elem src 15) tmp1) tmp2) tmp3) tmp4)))
     dst]

    ;; Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed
    ;; 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the
    ;; corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using zeromask
    ;; "k" (elements are zeroed out when the corresponding mask bit is not set).
    [(_mm512_maskz_dpbusd_epi32 k src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 0))) (avx:builtins:sat32 (get-elem b (* 4 0))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 3))))))
        (set-elem! dst 0 (bvadd (bvadd (bvadd (bvadd (get-elem src 0) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 0 0)])
     (cond
       [(get-elem k 1)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 1))) (avx:builtins:sat32 (get-elem b (* 4 1))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 3))))))
        (set-elem! dst 1 (bvadd (bvadd (bvadd (bvadd (get-elem src 1) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 1 0)])
     (cond
       [(get-elem k 2)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 2))) (avx:builtins:sat32 (get-elem b (* 4 2))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 3))))))
        (set-elem! dst 2 (bvadd (bvadd (bvadd (bvadd (get-elem src 2) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 2 0)])
     (cond
       [(get-elem k 3)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 3))) (avx:builtins:sat32 (get-elem b (* 4 3))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 3))))))
        (set-elem! dst 3 (bvadd (bvadd (bvadd (bvadd (get-elem src 3) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 3 0)])
     (cond
       [(get-elem k 4)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 4))) (avx:builtins:sat32 (get-elem b (* 4 4))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 3))))))
        (set-elem! dst 4 (bvadd (bvadd (bvadd (bvadd (get-elem src 4) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 4 0)])
     (cond
       [(get-elem k 5)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 5))) (avx:builtins:sat32 (get-elem b (* 4 5))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 3))))))
        (set-elem! dst 5 (bvadd (bvadd (bvadd (bvadd (get-elem src 5) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 5 0)])
     (cond
       [(get-elem k 6)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 6))) (avx:builtins:sat32 (get-elem b (* 4 6))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 3))))))
        (set-elem! dst 6 (bvadd (bvadd (bvadd (bvadd (get-elem src 6) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 6 0)])
     (cond
       [(get-elem k 7)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 7))) (avx:builtins:sat32 (get-elem b (* 4 7))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 3))))))
        (set-elem! dst 7 (bvadd (bvadd (bvadd (bvadd (get-elem src 7) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 7 0)])
     (cond
       [(get-elem k 8)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 8))) (avx:builtins:sat32 (get-elem b (* 4 8))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 3))))))
        (set-elem! dst 8 (bvadd (bvadd (bvadd (bvadd (get-elem src 8) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 8 0)])
     (cond
       [(get-elem k 9)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 9))) (avx:builtins:sat32 (get-elem b (* 4 9))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 3))))))
        (set-elem! dst 9 (bvadd (bvadd (bvadd (bvadd (get-elem src 9) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 9 0)])
     (cond
       [(get-elem k 10)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 10))) (avx:builtins:sat32 (get-elem b (* 4 10))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 3))))))
        (set-elem! dst 10 (bvadd (bvadd (bvadd (bvadd (get-elem src 10) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 10 0)])
     (cond
       [(get-elem k 11)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 11))) (avx:builtins:sat32 (get-elem b (* 4 11))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 3))))))
        (set-elem! dst 11 (bvadd (bvadd (bvadd (bvadd (get-elem src 11) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 11 0)])
     (cond
       [(get-elem k 12)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 12))) (avx:builtins:sat32 (get-elem b (* 4 12))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 3))))))
        (set-elem! dst 12 (bvadd (bvadd (bvadd (bvadd (get-elem src 12) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 12 0)])
     (cond
       [(get-elem k 13)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 13))) (avx:builtins:sat32 (get-elem b (* 4 13))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 3))))))
        (set-elem! dst 13 (bvadd (bvadd (bvadd (bvadd (get-elem src 13) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 13 0)])
     (cond
       [(get-elem k 14)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 14))) (avx:builtins:sat32 (get-elem b (* 4 14))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 3))))))
        (set-elem! dst 14 (bvadd (bvadd (bvadd (bvadd (get-elem src 14) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 14 0)])
     (cond
       [(get-elem k 15)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 15))) (avx:builtins:sat32 (get-elem b (* 4 15))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 3))))))
        (set-elem! dst 15 (bvadd (bvadd (bvadd (bvadd (get-elem src 15) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 15 0)])
     dst]

    ;; Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed
    ;; 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the
    ;; corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using writemask
    ;; "k" (elements are copied from "src" when the corresponding mask bit is not set).
    [(_mm512_mask_dpbusd_epi32 src k a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (cond
       [(get-elem k 0)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 0))) (avx:builtins:sat32 (get-elem b (* 4 0))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 3))))))
        (set-elem! dst 0 (bvadd (bvadd (bvadd (bvadd (get-elem src 0) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 0 (get-elem src 0))])
     (cond
       [(get-elem k 1)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 1))) (avx:builtins:sat32 (get-elem b (* 4 1))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 3))))))
        (set-elem! dst 1 (bvadd (bvadd (bvadd (bvadd (get-elem src 1) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 1 (get-elem src 1))])
     (cond
       [(get-elem k 2)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 2))) (avx:builtins:sat32 (get-elem b (* 4 2))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 3))))))
        (set-elem! dst 2 (bvadd (bvadd (bvadd (bvadd (get-elem src 2) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 2 (get-elem src 2))])
     (cond
       [(get-elem k 3)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 3))) (avx:builtins:sat32 (get-elem b (* 4 3))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 3))))))
        (set-elem! dst 3 (bvadd (bvadd (bvadd (bvadd (get-elem src 3) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 3 (get-elem src 3))])
     (cond
       [(get-elem k 4)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 4))) (avx:builtins:sat32 (get-elem b (* 4 4))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 3))))))
        (set-elem! dst 4 (bvadd (bvadd (bvadd (bvadd (get-elem src 4) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 4 (get-elem src 4))])
     (cond
       [(get-elem k 5)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 5))) (avx:builtins:sat32 (get-elem b (* 4 5))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 3))))))
        (set-elem! dst 5 (bvadd (bvadd (bvadd (bvadd (get-elem src 5) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 5 (get-elem src 5))])
     (cond
       [(get-elem k 6)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 6))) (avx:builtins:sat32 (get-elem b (* 4 6))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 3))))))
        (set-elem! dst 6 (bvadd (bvadd (bvadd (bvadd (get-elem src 6) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 6 (get-elem src 6))])
     (cond
       [(get-elem k 7)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 7))) (avx:builtins:sat32 (get-elem b (* 4 7))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 3))))))
        (set-elem! dst 7 (bvadd (bvadd (bvadd (bvadd (get-elem src 7) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 7 (get-elem src 7))])
     (cond
       [(get-elem k 8)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 8))) (avx:builtins:sat32 (get-elem b (* 4 8))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 3))))))
        (set-elem! dst 8 (bvadd (bvadd (bvadd (bvadd (get-elem src 8) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 8 (get-elem src 8))])
     (cond
       [(get-elem k 9)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 9))) (avx:builtins:sat32 (get-elem b (* 4 9))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 3))))))
        (set-elem! dst 9 (bvadd (bvadd (bvadd (bvadd (get-elem src 9) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 9 (get-elem src 9))])
     (cond
       [(get-elem k 10)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 10))) (avx:builtins:sat32 (get-elem b (* 4 10))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 3))))))
        (set-elem! dst 10 (bvadd (bvadd (bvadd (bvadd (get-elem src 10) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 10 (get-elem src 10))])
     (cond
       [(get-elem k 11)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 11))) (avx:builtins:sat32 (get-elem b (* 4 11))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 3))))))
        (set-elem! dst 11 (bvadd (bvadd (bvadd (bvadd (get-elem src 11) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 11 (get-elem src 11))])
     (cond
       [(get-elem k 12)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 12))) (avx:builtins:sat32 (get-elem b (* 4 12))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 3))))))
        (set-elem! dst 12 (bvadd (bvadd (bvadd (bvadd (get-elem src 12) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 12 (get-elem src 12))])
     (cond
       [(get-elem k 13)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 13))) (avx:builtins:sat32 (get-elem b (* 4 13))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 3))))))
        (set-elem! dst 13 (bvadd (bvadd (bvadd (bvadd (get-elem src 13) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 13 (get-elem src 13))])
     (cond
       [(get-elem k 14)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 14))) (avx:builtins:sat32 (get-elem b (* 4 14))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 3))))))
        (set-elem! dst 14 (bvadd (bvadd (bvadd (bvadd (get-elem src 14) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 14 (get-elem src 14))])
     (cond
       [(get-elem k 15)
        (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 15))) (avx:builtins:sat32 (get-elem b (* 4 15))))))
        (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 1))))))
        (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 2))))))
        (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 3))))))
        (set-elem! dst 15 (bvadd (bvadd (bvadd (bvadd (get-elem src 15) tmp1) tmp2) tmp3) tmp4))]
       [else
        (set-elem! dst 15 (get-elem src 15))])
     dst]

    ;; Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed
    ;; 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the
    ;; corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".
    [(_mm512_dpbusd_epi32 src a b)
     (define dst (__m512i_si32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
     (define tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 0))) (avx:builtins:sat32 (get-elem b (* 4 0))))))
     (define tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 1))))))
     (define tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 2))))))
     (define tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 0) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 0) 3))))))
     (set-elem! dst 0 (bvadd (bvadd (bvadd (bvadd (get-elem src 0) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 1))) (avx:builtins:sat32 (get-elem b (* 4 1))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 1) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 1) 3))))))
     (set-elem! dst 1 (bvadd (bvadd (bvadd (bvadd (get-elem src 1) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 2))) (avx:builtins:sat32 (get-elem b (* 4 2))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 2) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 2) 3))))))
     (set-elem! dst 2 (bvadd (bvadd (bvadd (bvadd (get-elem src 2) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 3))) (avx:builtins:sat32 (get-elem b (* 4 3))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 3) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 3) 3))))))
     (set-elem! dst 3 (bvadd (bvadd (bvadd (bvadd (get-elem src 3) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 4))) (avx:builtins:sat32 (get-elem b (* 4 4))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 4) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 4) 3))))))
     (set-elem! dst 4 (bvadd (bvadd (bvadd (bvadd (get-elem src 4) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 5))) (avx:builtins:sat32 (get-elem b (* 4 5))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 5) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 5) 3))))))
     (set-elem! dst 5 (bvadd (bvadd (bvadd (bvadd (get-elem src 5) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 6))) (avx:builtins:sat32 (get-elem b (* 4 6))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 6) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 6) 3))))))
     (set-elem! dst 6 (bvadd (bvadd (bvadd (bvadd (get-elem src 6) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 7))) (avx:builtins:sat32 (get-elem b (* 4 7))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 7) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 7) 3))))))
     (set-elem! dst 7 (bvadd (bvadd (bvadd (bvadd (get-elem src 7) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 8))) (avx:builtins:sat32 (get-elem b (* 4 8))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 8) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 8) 3))))))
     (set-elem! dst 8 (bvadd (bvadd (bvadd (bvadd (get-elem src 8) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 9))) (avx:builtins:sat32 (get-elem b (* 4 9))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 9) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 9) 3))))))
     (set-elem! dst 9 (bvadd (bvadd (bvadd (bvadd (get-elem src 9) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 10))) (avx:builtins:sat32 (get-elem b (* 4 10))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 10) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 10) 3))))))
     (set-elem! dst 10 (bvadd (bvadd (bvadd (bvadd (get-elem src 10) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 11))) (avx:builtins:sat32 (get-elem b (* 4 11))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 11) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 11) 3))))))
     (set-elem! dst 11 (bvadd (bvadd (bvadd (bvadd (get-elem src 11) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 12))) (avx:builtins:sat32 (get-elem b (* 4 12))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 12) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 12) 3))))))
     (set-elem! dst 12 (bvadd (bvadd (bvadd (bvadd (get-elem src 12) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 13))) (avx:builtins:sat32 (get-elem b (* 4 13))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 13) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 13) 3))))))
     (set-elem! dst 13 (bvadd (bvadd (bvadd (bvadd (get-elem src 13) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 14))) (avx:builtins:sat32 (get-elem b (* 4 14))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 14) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 14) 3))))))
     (set-elem! dst 14 (bvadd (bvadd (bvadd (bvadd (get-elem src 14) tmp1) tmp2) tmp3) tmp4))
     (set! tmp1 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (* 4 15))) (avx:builtins:sat32 (get-elem b (* 4 15))))))
     (set! tmp2 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 1))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 1))))))
     (set! tmp3 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 2))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 2))))))
     (set! tmp4 (avx:builtins:signed (bvmul (avx:builtins:sat32 (get-elem a (+ (* 4 15) 3))) (avx:builtins:sat32 (get-elem b (+ (* 4 15) 3))))))
     (set-elem! dst 15 (bvadd (bvadd (bvadd (bvadd (get-elem src 15) tmp1) tmp2) tmp3) tmp4))
     dst]

    [_ p]))