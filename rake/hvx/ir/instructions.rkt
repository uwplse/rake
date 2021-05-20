#lang rosette/safe

(require (only-in racket/struct make-constructor-style-printer))

(provide (all-defined-out))

(struct ir-node (id))

(struct abstr-ir-expr (orig-expr abstr-vals))

(struct load-data (live-data gather-tbl) #:super struct:ir-node)
(struct broadcast (value) #:super struct:ir-node #:transparent)
(struct build-vec (base stride len) #:super struct:ir-node #:transparent)

(struct combine (sub-expr0 sub-expr1 read-tbl)
  #:super struct:ir-node
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `combine)
      (lambda (obj) (list (combine-sub-expr0 obj) (combine-sub-expr1 obj)))))])

(struct cast (sub-expr type) #:super struct:ir-node #:transparent)

(struct vs-mpy-add (sub-expr weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)
(struct vs-mpy-add-acc (acc-expr sub-expr weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)
(struct vv-mpy-add (sub-expr width output-type saturate?) #:super struct:ir-node #:transparent)

(struct vs-mpy-hh (sub-expr sca round?) #:super struct:ir-node #:transparent)
(struct vv-mpy-hh-rnd (sub-expr) #:super struct:ir-node #:transparent)

(struct vs-frac-mpy (sub-expr sca round?) #:super struct:ir-node #:transparent)
(struct vv-frac-mpy (sub-expr0 sub-expr1 round?) #:super struct:ir-node #:transparent)

(struct vs-shift-left (sub-expr sca) #:super struct:ir-node #:transparent)
(struct vv-shift-left (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)

(struct add-const (sub-expr const-val output-type saturate?) #:super struct:ir-node #:transparent)

(struct vs-shift-right (sub-expr shift round? saturate? arithmetic? output-type) #:super struct:ir-node #:transparent)
(struct vv-shift-right (sub-expr shift round? arithmetic?) #:super struct:ir-node #:transparent)

(struct divide-by-const (sub-expr const-val) #:super struct:ir-node #:transparent)
(struct vs-divide (sub-expr sca-val output-type) #:super struct:ir-node #:transparent)
(struct average (sub-expr round? output-type) #:super struct:ir-node #:transparent)

(struct modulo-by-const (sub-expr const-val) #:super struct:ir-node #:transparent)

(struct minimum (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct maximum (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct saturate (sub-expr round? output-type) #:super struct:ir-node #:transparent)

(struct absolute (sub-expr) #:super struct:ir-node #:transparent)
(struct abs-diff (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)

(struct select (sub-expr0 sub-expr1 sub-expr2) #:super struct:ir-node #:transparent)
(struct is-equal (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct less-than (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct less-than-eq (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)

(struct bitwise-and (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)

(struct count-leading-zeroes (sub-expr) #:super struct:ir-node #:transparent)