#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/llvm)
(require rake/util)
(require rake/hvx/interpreter)

(require rackunit)

;; Individual Op tests
(test-case
  "Test: Conv3x3a32"

  (define-symbolic x integer?)
  (define-symbolic buf (~> integer? (bitvector 16)))
  (init-var-types (make-hash (list (cons buf 'int16))))


  (define Wub (u8x128x2 "Vu" "Vv"))
  (define Rb (int8_t (bv #x02 8)))
  (define Rb4 (list Rb Rb Rb Rb))
  (define Vub (u8x128 "Vu"))
  

  (define program
    (vlalign
     (vsat
      (vasr-n
       (hi
        (vrmpy-p-acc
         (vrmpy-p Wub Rb4 #f)
          Wub
          Rb4
          #f))
       (lo
        (vrmpy-p-acc
         (vrmpy-p Wub Rb4 #f)
          Wub
          Rb4
          #f))
       (int8_t (bv #x04 8))
       #f #t #f)
      (vasr-n
       (hi
        (vrmpy-p-acc
         (vrmpy-p Wub Rb4 #t)
          Wub
          Rb4
          #t))
       (lo
        (vrmpy-p-acc
         (vrmpy-p Wub Rb4 #t)
          Wub
          Rb4
          #t))
       (int8_t (bv #x04 8))
       #f #t #f))
     Vub
     1))


  (define out-exp `(llvm.hexagon.V6.vlalignbi.128B
    int32x32
    (list
     (int32x32
      (llvm.hexagon.V6.vsathub.128B
       int32x32
       (list
        (int32x32
         (llvm.hexagon.V6.vasrwsat.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 0))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 0)))))))
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 0))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 0)))))))
           (int32 4))))
        (int32x32
         (llvm.hexagon.V6.vasrwsat.128B
          int32x32
          (list
           (int32x32
            (llvm.hexagon.V6.hi.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 1))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 1)))))))
           (int32x32
            (llvm.hexagon.V6.lo.128B
             int32x32
             (list
              (int32x64
               (llvm.hexagon.V6.vrmpybusi.acc.128B
                int32x64
                (list
                 (int32x64
                  (llvm.hexagon.V6.vrmpybusi.128B
                   int32x64
                   (list (int32x64 VuVu) (int32 0x02020202) (int32 1))))
                 (int32x64 VuVu)
                 (int32 0x02020202)
                 (int32 1)))))))
           (int32 4)))))))
     (int32x32 Vu)
     (int32 0x01010101))))
  
  (check-equal? (llvm-codegen program) out-exp)
  (printf "Test Passed: Conv3x3a32\n"))