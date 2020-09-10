#lang rosette

(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/codegen/cpp)

(require rackunit)

;; Individual Op tests
(test-case
  "Test: Gaussian 3x3 stage 2"

  (define-symbolic x integer?)
  (define-symbolic buf (~> integer? (bitvector 16)))
  
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

  (define out-prog-str
    "Q6_Vub_vasr_VhVhR_rnd_sat(Q6_Vh_vmpyiacc_VhVhRb(Q6_Vh_vadd_VhVh(Q6_Vh_load(buf, x), Q6_Vh_load(buf, x+2)), Q6_Vh_load(buf, x+1), 0x02020202), Q6_Vh_vmpyiacc_VhVhRb(Q6_Vh_vadd_VhVh(Q6_Vh_load(buf, x), Q6_Vh_load(buf, x+2)), Q6_Vh_load(buf, x+1), 0x02020202), 4)")

  ;; Feel free to relax or even remove this check. I only added the string so that you have a target
  ;; to shoot for.
  (check-equal? (cpp_codegen program) out-prog-str)

  (printf "Test Passed: Gaussian 3x3 stage 2\n"))