#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/llvm)
(require rake/util)

(require rackunit)

;; Individual Op tests
(test-case
  "Test: Conv3x3a16"
  (define sX32 (u8x128 "Vu"))
  (define dX32X30 (u8x128x2 "Vu" "Vv"))
  (define m1m0 (int8_t (bv #x02 8)))
  (define m2m5 (cons (int8_t (bv #x02 8)) (int8_t (bv #x02 8))))
  (define dSum0 (vmpy-acc
       (vdmpy-sw-acc
        (vmpa-acc
         (vdmpy-sw-acc
          (vdmpy-sw dX32X30 m2m5)
          (vcombine sX32 sX32)          
          m2m5)
         dX32X30
         m2m5)
        dX32X30
        m2m5)
       sX32
       m1m0))

  (define program
    (vasr-n
     (hi dSum0)
     (lo dSum0)
     (int8_t (bv #x04 8))
     #f
     #t
     #f))


  (define out-exp  '(llvm.hexagon.V6.vasrhsat.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.hi.128B
       int32x32
       (int32x64
        (llvm.hexagon.V6.vmpybus.acc.128B
         int32x64
         (list
          (int32x64
           (llvm.hexagon.V6.vdmpybus.dv.acc.128B
            int32x64
            (list
             (int32x64
              (llvm.hexagon.V6.vmpabus.acc.128B
               int32x64
               (list
                (int32x64
                 (llvm.hexagon.V6.vdmpybus.dv.acc.128B
                  int32x64
                  (list
                   (int32x64
                    (llvm.hexagon.V6.vdmpybus.dv.128B
                     int32x64
                     (list
                      (int32x64 #(struct:u8x128x2 Vu Vv))
                      (int32 0x02020202))))
                   (int32x64
                    (llvm.hexagon.V6.vcombine.128B
                     int32x64
                     (list
                      (int32x32 #(struct:u8x128 Vu))
                      (int32x32 #(struct:u8x128 Vu)))))
                   (int32 0x02020202))))
                (int32x64 #(struct:u8x128x2 Vu Vv))
                (int32 0x02020202))))
             (int32x64 #(struct:u8x128x2 Vu Vv))
             (int32 0x02020202))))
          (int32x32 #(struct:u8x128 Vu))
          (int32 2))))))
     (int32x32
      (llvm.hexagon.V6.lo.128B
       int32x32
       (int32x64
        (llvm.hexagon.V6.vmpybus.acc.128B
         int32x64
         (list
          (int32x64
           (llvm.hexagon.V6.vdmpybus.dv.acc.128B
            int32x64
            (list
             (int32x64
              (llvm.hexagon.V6.vmpabus.acc.128B
               int32x64
               (list
                (int32x64
                 (llvm.hexagon.V6.vdmpybus.dv.acc.128B
                  int32x64
                  (list
                   (int32x64
                    (llvm.hexagon.V6.vdmpybus.dv.128B
                     int32x64
                     (list
                      (int32x64 #(struct:u8x128x2 Vu Vv))
                      (int32 0x02020202))))
                   (int32x64
                    (llvm.hexagon.V6.vcombine.128B
                     int32x64
                     (list
                      (int32x32 #(struct:u8x128 Vu))
                      (int32x32 #(struct:u8x128 Vu)))))
                   (int32 0x02020202))))
                (int32x64 #(struct:u8x128x2 Vu Vv))
                (int32 0x02020202))))
             (int32x64 #(struct:u8x128x2 Vu Vv))
             (int32 0x02020202))))
          (int32x32 #(struct:u8x128 Vu))
          (int32 2))))))
     (int32 4))))
  (check-equal? (llvm-codegen program) out-exp)
  (printf "Test Passed: Conv3x3a16\n"))