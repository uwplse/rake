#lang rosette/safe

(require (only-in racket/struct make-constructor-style-printer))

(provide ir-node-id
         load-data load-data-gather-tbl load-data-live-data
         broadcast combine cast vs-mpy-add vs-mpy-add-acc
         add-const divide-by-const shift-right minimum maximum 
         saturate 

         load-data? broadcast? cast? vs-mpy-add? vs-mpy-add-acc?
         add-const? divide-by-const? shift-right? minimum?
         maximum? saturate? abs-diff)

(struct ir-node (id))

(struct load-data (live-data gather-tbl) #:super struct:ir-node)
(struct broadcast (value) #:super struct:ir-node #:transparent)

(struct combine (sub-expr0 sub-expr1 read-tbl) #:super struct:ir-node #:transparent)

(struct cast (sub-expr type) #:super struct:ir-node #:transparent)

(struct vs-mpy-add (sub-expr weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)
(struct vs-mpy-add-acc (acc-expr sub-expr weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)

(struct add-const (sub-expr const-val output-type saturate?) #:super struct:ir-node #:transparent)

(struct shift-right (sub-expr shift round? saturate? arithmetic? output-type) #:super struct:ir-node #:transparent)
(struct divide-by-const (sub-expr const-val) #:super struct:ir-node #:transparent)

(struct minimum (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct maximum (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct saturate (sub-expr round? output-type) #:super struct:ir-node #:transparent)

(struct abs-diff (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)

;(struct subtract (data0 data1 sat? widen?) #:super struct:ir-node #:transparent)