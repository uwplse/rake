#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/llvm)
(require rake/util)

(require rackunit)

;; Individual Op tests
(test-case
  "Test: Gaussian 3x3 stage 2"

  (define-symbolic x integer?)
  (define-symbolic buf (~> integer? (bitvector 16)))
  (init-var-types (make-hash (list (cons buf 'int16))))
  
  (define program
    (vasr-n
     (vmpyi-acc
      (vadd
       (vread buf x)
       (vread buf (+ x 2))
       #f)
      (vread buf (+ x 1))
      (int8_t (bv #x02 8)))
     (vmpyi-acc
      (vadd
       (vread buf (+ x 64))
       (vread buf (+ x 66))
       #f)
      (vread buf (+ x 65))
      (int8_t (bv #x02 8)))
     (int8_t (bv #x04 8))
     #t
     #t
     #t))

  (define out-exp '(llvm.hexagon.V6.vasrhubrndsat.128B
    32xi32
    (list
     (32xi32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       32xi32
       (list
        (32xi32
         (llvm.hexagon.V6.vaddh.128B
          32xi32
          (list
           (32xi32 (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 x))))
           (32xi32
            (llvm.hexagon.V6.vread.128B
             32xi32
             (list (i32 buf) (i32 (+ 2 x))))))))
        (32xi32
         (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 1 x)))))
        (i32 2))))
     (32xi32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       32xi32
       (list
        (32xi32
         (llvm.hexagon.V6.vaddh.128B
          32xi32
          (list
           (32xi32
            (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 64 x)))))
           (32xi32
            (llvm.hexagon.V6.vread.128B
             32xi32
             (list (i32 buf) (i32 (+ 66 x))))))))
        (32xi32
         (llvm.hexagon.V6.vread.128B 32xi32 (list (i32 buf) (i32 (+ 65 x)))))
        (i32 2))))
     (i32 4))))
  (check-equal? (llvm_codegen program) out-exp)

  (printf "Test Passed: Gaussian 3x3 stage 2\n"))