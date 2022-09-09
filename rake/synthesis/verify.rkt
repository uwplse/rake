#lang rosette

(require
  (only-in rosette/solver/smt/smtlib2 enable-custom-tactics disable-custom-tactics)
  rosette/solver/smt/z3
  rake/internal/log
  rake/cpp
  rake/halide
  rake/hvx/ast/types
  rake/hvx/interpreter)

(define (verification-lanes type)
  (cond
    [(eq? type 'i8x128) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127)]
    [(eq? type 'u8x128) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127)]
    [(eq? type 'i16x64) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63)]
    [(eq? type 'u16x64) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63)]
    [(eq? type 'i32x32) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)]
    [(eq? type 'u32x32) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)]
    [(eq? type 'i8x128x2) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255)]
    [(eq? type 'u8x128x2) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255)]
    [(eq? type 'i16x64x2) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127)]
    [(eq? type 'u16x64x2) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127)]
    [(eq? type 'i32x32x2) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63)]
    [(eq? type 'u32x32x2) '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63)]
    [else (error (format "What is happening? type: ~a" type))]
  ))

(define (verify-equivalence halide-expr hvx-expr axioms)
  (display "Verifying expression equivalence over full-length vectors...\n")
  (display "============================================================\n\n")
  (display "Progress: [")

  (define elem-count-hal (halide:vec-len halide-expr))
  (define elem-count-hvx (hvx-vec-len (if (concat-tiles? hvx-expr) (concat-tiles-vecs hvx-expr) (list hvx-expr))))

  (define st (current-milliseconds))

  ;; Save default solver
  (define z3-base (current-solver))
  
  ;; Set solver timeout of 1 second
  (define z3-with-timeout (z3 #:options (hash-set (solver-options (current-solver)) ':timeout 1000)))
  (current-solver z3-with-timeout)
  (disable-custom-tactics)
  
  (define correct?
    (cond
      [(not (eq? elem-count-hal elem-count-hvx))
        #f]
      [(concat-tiles? hvx-expr)
        (verify-equiv-tiles halide-expr (concat-tiles-vecs hvx-expr) axioms)]
      [else
        (define halide-output (halide:interpret halide-expr))
        (define hvx-output (hvx:interpret hvx-expr))
        (define is-hvx-pair? (hvx:vec-pair? hvx-output))
        (define offset (quotient (hvx:num-elems hvx-output) 2))
        (verify-equiv halide-output hvx-output (verification-lanes (hvx:type hvx-output)) (symbolics halide-expr) axioms is-hvx-pair? offset)]))

  (define runtime (- (current-milliseconds) st))
  (display (format "]\n\nVerification time: ~a ms\n\n" runtime))

  ;; Reset tactics and solver
  (enable-custom-tactics)
  (current-solver z3-base)
  
  correct?)

(define (verify-equiv-tiles halide-expr hvx-tiles axioms)
  (cond
    [(empty? hvx-tiles) #t]
    [else
      (define hvx-tile (first hvx-tiles))
      (define halide-output (halide:interpret halide-expr))
      (define hvx-output (hvx:interpret hvx-tile))
      (define is-hvx-pair? (hvx:vec-pair? hvx-output))
      (define offset (quotient (hvx:num-elems hvx-output) 2))
      (define correct? (verify-equiv halide-output hvx-output (verification-lanes (hvx:type hvx-output)) (symbolics halide-expr) axioms is-hvx-pair? offset))
      (cond
        [correct?
         (define elems-in-hvx-tile (hvx:num-elems (hvx:interpret hvx-tile)))
         (define elems-in-hal-tile (halide:vec-len halide-expr))
         (verify-equiv-tiles (slice_vectors halide-expr elems-in-hvx-tile 1 (- elems-in-hal-tile elems-in-hvx-tile)) (rest hvx-tiles) axioms)]
        [else #f])]))

(define (verify-equiv halide-output hvx-output lanes ctx axioms is-hvx-pair? offset)
  (cond
    [(empty? lanes) #t]
    [else
     (define lane (first lanes))
     (display "=")
     (define sol (verify-lane halide-output hvx-output lane ctx axioms is-hvx-pair? offset))
     (cond
       [(or (unsat? sol) (unknown? sol)) (verify-equiv halide-output hvx-output (rest lanes) ctx axioms is-hvx-pair? offset)]
       [else #f])]))

(define (verify-lane halide-output hvx-output lane ctx axioms is-hvx-pair? offset)
  (clear-vc!)
  (for-each (lambda (axiom) (assume axiom)) axioms)
  (define st (current-milliseconds))
  (define sol
    (verify (cond
              [is-hvx-pair?
               (assert
                (eq?
                 (halide-output lane)
                 (if (< lane offset)
                     (hvx:v0-elem hvx-output lane)
                     (hvx:v1-elem hvx-output (- lane offset)))))]
              [else
               (assert (eq? (halide-output lane) (hvx:elem hvx-output lane)))])))
  (define runtime (- (current-milliseconds) st))
  (log (format "Verification query: ~a ms\n" runtime))
  sol)

(define (hvx-vec-len hvx-tiles)
  (cond
    [(empty? hvx-tiles) 0]
    [else
      (define hvx-tile (first hvx-tiles))
      (+ (hvx:num-elems (hvx:interpret hvx-tile)) (hvx-vec-len (rest hvx-tiles)))]))

(provide verify-equivalence)