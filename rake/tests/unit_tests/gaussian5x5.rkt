#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/llvm)
(require rake/util)

(require rackunit)

(test-case
  "Test: Gaussian 5x5"

  (define-symbolic x integer?)
  (define-symbolic buf (~> integer? (bitvector 16)))
  (init-var-types (make-hash (list (cons buf 'int16))))
  
  (define program
    (vshuffo-n
     (vmpyi-acc
      (vmpyi-acc
       (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f)
       (vread buf (+ x 65))
       (int8_t (bv #x06 8)))
      (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f)
      (int8_t (bv #x04 8)))
     (vmpyi-acc
      (vmpyi-acc
       (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f)
       (vread buf (+ x 65))
       (int8_t (bv #x06 8)))
      (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f)
      (int8_t (bv #x04 8)))
     #t))

  (define out-exp '(llvm.hexagon.V6.vshuffoh.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vmpyihb.acc.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vaddh.128B
             int32x32
             (list
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 64 x)))))
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 66 x))))))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 65 x)))))
           (int32 6))))
        (int32x32
         (llvm.hexagon.V6.vaddh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 64 x)))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 66 x))))))))
        (int32 4))))
     (int32x32
      (llvm.hexagon.V6.vmpyihb.acc.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vmpyihb.acc.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vaddh.128B
             int32x32
             (list
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 64 x)))))
              (int32x32
               (llvm.hexagon.V6.vread.128B
                int32x32
                (list (int32 buf) (int32 (+ 66 x))))))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 65 x)))))
           (int32 6))))
        (int32x32
         (llvm.hexagon.V6.vaddh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 64 x)))))
           (int32x32
            (llvm.hexagon.V6.vread.128B
             int32x32
             (list (int32 buf) (int32 (+ 66 x))))))))
        (int32 4)))))))
  (check-equal? (llvm-codegen program) out-exp)

  (printf "Test Passed: Gaussian 5x5\n"))