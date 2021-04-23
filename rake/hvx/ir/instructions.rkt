#lang rosette/safe

(provide ir-node-id
         load-data broadcast cast vs-mpy-add vs-mpy-add-acc
         add-const divide-by-const shift-right minimum maximum 
         saturate

         load-data? broadcast? cast? vs-mpy-add? vs-mpy-add-acc?
         add-const? divide-by-const? shift-right? minimum?
         maximum? saturate?)

(struct ir-node (id))

(struct load-data (live-data gather-tbl) #:super struct:ir-node)
(struct broadcast (value) #:super struct:ir-node #:transparent)

(struct cast (sub-expr type) #:super struct:ir-node #:transparent)

(struct vs-mpy-add (sub-exprs weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)
(struct vs-mpy-add-acc (acc-expr sub-exprs weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)

(struct add-const (sub-expr const-val output-type saturate?) #:super struct:ir-node #:transparent)

(struct shift-right (sub-expr shift round? saturate? arithmetic? output-type) #:super struct:ir-node #:transparent)
(struct divide-by-const (sub-expr const-val) #:super struct:ir-node #:transparent)

(struct minimum (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct maximum (sub-expr0 sub-expr1) #:super struct:ir-node #:transparent)
(struct saturate (sub-expr round? output-type) #:super struct:ir-node #:transparent)

;(struct abs-diff (data0 data1) #:super struct:ir-node #:transparent)
;(struct zip-data (data0 data1) #:super struct:ir-node #:transparent)
;(struct subtract (data0 data1 sat? widen?) #:super struct:ir-node #:transparent)


;(struct cast (data type) #:super struct:ir-node #:transparent)
;(struct upcast (data) #:super struct:ir-node #:transparent)
;(struct downcast (data) #:super struct:ir-node #:transparent)
;(struct packhi (data signed?) #:super struct:ir-node #:transparent)