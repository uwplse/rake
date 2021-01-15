#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/llvm)
(require rake/util)

(require rackunit)

(test-case
  "Test: Gaussian 7x7"

  (define-symbolic x integer?)
  (define-symbolic buf (~> integer? (bitvector 16)))
  (init-var-types (make-hash (list (cons buf 'int16))))

  (define dSum13
    (vmpa-acc
     (vmpa
      (vcombine
       (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f)
       (vadd
        (vread buf (+ x 65))
        (vread buf (+ x 67))
        #f))
      (cons (int8_t (bv #x0F 8)) (int8_t (bv #x14 8))))
     (vcombine
       (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f)
       (vadd
        (vread buf (+ x 64))
        (vread buf (+ x 66))
        #f))
     (cons (int8_t (bv #x0F 8)) (int8_t (bv #x14 8)))))

    
  (define program
    (vshuffe
     (vasr-n
      (hi dSum13)
      (lo dSum13)
      (int8_t (bv #x0C 8))
      #f
      #f
      #f)
     (vasr-n
      (hi dSum13)
      (lo dSum13)
      (int8_t (bv #x0C 8))
      #f
      #f
      #f)))

  
  (define out-exp `(llvm.hexagon.V6.vshuffeh.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vasrw.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.hi.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
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
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
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
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32x32
         (llvm.hexagon.V6.lo.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
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
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
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
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32 12))))
     (int32x32
      (llvm.hexagon.V6.vasrw.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.hi.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
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
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
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
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32x32
         (llvm.hexagon.V6.lo.128B
          int32x32
          (list
           (int32x64
            (llvm.hexagon.V6.vmpahb.acc.128B
             int32x64
             (list
              (int32x64
               (llvm.hexagon.V6.vmpahb.128B
                int32x32
                (list
                 (int32x64
                  (llvm.hexagon.V6.vcombine.128B
                   int32x64
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
                     (llvm.hexagon.V6.vaddh.128B
                      int32x32
                      (list
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 65 x)))))
                       (int32x32
                        (llvm.hexagon.V6.vread.128B
                         int32x32
                         (list (int32 buf) (int32 (+ 67 x)))))))))))
                 (int32 0x140f140f))))
              (int32x64
               (llvm.hexagon.V6.vcombine.128B
                int32x64
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
                      (list (int32 buf) (int32 (+ 66 x)))))))))))
              (int32 0x140f140f)))))))
        (int32 12)))))))
  
  (check-equal? (llvm-codegen program) out-exp)
  (printf "Test Passed: Gaussian 7x7\n"))