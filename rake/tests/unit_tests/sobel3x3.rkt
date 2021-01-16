#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/llvm)
(require rake/util)
(require rake/hvx/interpreter)

(require rackunit)

;; Individual Op tests
(test-case
  "Test: Sobel3x3"

  (define-symbolic x integer?)
  (define-symbolic buf (~> integer? (bitvector 16)))
  (init-var-types (make-hash (list (cons buf 'int16))))


  (define Wub (u8x128x2 "Vu" "Vv"))
  (define Rb (cons (int8_t (bv #x02 8)) (int8_t (bv #x02 8))))
  (define Vub (u8x128 "Vu"))
  (define Wh (i16x64x2 "Vu" "Vv"))

  

  (define program
    (vsat
     (vadd
      (vabs (hi (vmpa-acc Wh Wub Rb)) #f)
      (vabs (hi (vmpa-acc Wh Wub Rb)) #f)
      #f)
     (vadd
      (vabs (lo (vmpa-acc Wh Wub Rb)) #f)
      (vabs (lo (vmpa-acc Wh Wub Rb)) #f)
      #f)
     ))


  (define out-exp `(llvm.hexagon.V6.vsathub.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vaddh.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64 #(struct:i16x64x2 Vu Vv))
                 (int32x64 #(struct:u8x128x2 Vu Vv))
                 (int32 0x02020202))))))))))
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64 #(struct:i16x64x2 Vu Vv))
                 (int32x64 #(struct:u8x128x2 Vu Vv))
                 (int32 0x02020202)))))))))))))
     (int32x32
      (llvm.hexagon.V6.vaddh.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64 #(struct:i16x64x2 Vu Vv))
                 (int32x64 #(struct:u8x128x2 Vu Vv))
                 (int32 0x02020202))))))))))
        (int32x32
         (llvm.hexagon.V6.vabsh.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vmpabus.acc.128B
                int32x64
                (list
                 (int32x64 #(struct:i16x64x2 Vu Vv))
                 (int32x64 #(struct:u8x128x2 Vu Vv))
                 (int32 0x02020202))))))))))))))))  
  (check-equal? (llvm-codegen program) out-exp)
  (printf "Test Passed: Sobel3x3\n"))