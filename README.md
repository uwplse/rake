# Rake

### C++ Support
```
cpp-types  :=  int8_t | int16_t | int32_t | int64_t 
           |   uint8_t | uint16_t | uint32_t | uint64_t

  lib-fns  :=  abs8 | abs16 | abs32 | absu8 | absu16 | absu32
           |   min8 | min16 | min32 | minu8 | minu16 | minu32
           |   max8 | max16 | max32 | maxu8 | maxu16 | maxu32

 misc-fns  :=  eval           :    (cpp-expr) -> bitvector 
           |   eval-to-int    :    (cpp-expr) -> integer 
           |   mk-cpp-type    :    (bit-wdith, signed?) -> cpp-type 
           |   mk-cpp-expr    :    (bitvector, cpp-type) -> cpp-expr
           |   cpp-type       :    (cpp-expr) -> cpp-type
           |   signed-expr?   :    (cpp-expr) -> bool
           |   unsigned-expr? :    (cpp-expr) -> bool
           |   expr-bw        :    (cpp-expr) -> int
           |   cpp-type-str   :    (cpp-type) -> str
           |   signed-type?   :    (cpp-type) -> bool
           |   unsigned-type? :    (cpp-type) -> bool
           |   type-bw        :    (cpp-type) -> int
```

### Halide IR Support
```
       types  :=   buffer (data elemT) 
              |   vector (data)

constructors  :=   load (buffer indexes align) | ramp (base stride len)
              |    x32 (scalar) | x64 (scalar) | x128 (scalar) | x256 (scalar)

       casts  :=  uint8x1 | uint16x1 | uint32x1 | uint64x1 
              |   uint1x32 | uint1x64 | uint1x128 | uint1x256
              |   uint8x32 | uint8x64 | uint8x128 | uint8x256
              |   uint16x32 | uint16x64 | uint16x128 | uint16x256
              |   uint32x32 | uint32x64 | uint32x128 | uint32x256
              |   uint64x32 | uint64x64 | uint64x128 | uint64x256
              |   int8x1 | int16x1 | int32x1 | int64x1
              |   int8x32 | int8x64 | int8x128 | int8x256 
              |   int16x32 | int16x64 | int16x128 | int16x256 
              |   int32x32 | int32x64 | int32x128 | int32x256 
              |   int64x32 | int64x64 | int64x128 | int64x256
              
  scalar-ops  :=  sca-add | sca-sub | sca-mul | sca-div | sca-min | sca-max
  
  vector-ops  :=  vec-add | vec-sub | vec-mul | vec-div | vec-min | vec-max
              |   vec-if  | vec-lt  | vec-le | vec-absd | vec-shl | vec-shr

 shuffle-ops  :=  slice_vectors (vec base stride len) | concat_vectors (vec1 vec2)
              |   dynamic_shuffle (vec idxs st end)

     lib-fns  :=  halide-elem-type : (halide-expr) -> cpp-type
              |   halide-vec-len : (halide-expr) -> int
              |   halide-sub-exprs : (halide-expr) -> list<halide-expr>
              |   halide-cast-op? : (halide-expr) -> bool

    analysis  :=  extract-live-buffers-halide : (halide-expr) -> set<halide-buffer>
              |   extract-buffer-reads-halide : (halide-expr) -> hash-table<int,set<buffer-ref>>**
              |   extract-add-consts-halide : (halide-expr) -> set<int>
              |   extract-sub-consts-halide : (halide-expr) -> set<int>
              |   extract-mul-consts-halide : (halide-expr) -> set<int>
              |   extract-div-consts-halide : (halide-expr) -> set<int>
              |   extract-shr-consts-halide : (halide-expr) -> set<int>
  
** For each lane of the vector computed by the Halide expression, the hash-table maps to the set of live buffer-reads 
involved in its computation
```

### HVX Lifting IR
Currently truncated, re-introducing uber-instructions as I make progress with refactoring.
```
       types  :=   load-data : (live-reads) -> vector
              |    broadcast : (scalar) -> vector
              |    combine : (ir-expr ir-expr) -> ir-expr
              |    cast : (ir-expr type) -> ir-expr
              |    shift-right : (ir-expr shift saturate? round? arithmetic? output-type) -> ir-expr
              |    divide-by-const : (ir-expr const) -> ir-expr
              |    add-const : (ir-expr const) -> ir-expr
              |    maximum : (ir-expr ir-expr) -> ir-expr
              |    minimum : (ir-expr ir-expr) -> ir-expr
              |    vs-mpy-add : (ir-expr weight-matrix output-type saturate?) -> ir-expr
              |    vs-mpy-add-acc : (ir-expr ir-expr weight-matrix output-type saturate?) -> ir-expr
              |    abs-diff : (ir-expr ir-expr) -> ir-expr
              |    less-than : (ir-expr ir-expr) -> ir-expr
              |    less-than-eq : (ir-expr ir-expr) -> ir-expr
              |    select : (ir-expr ir-expr ir-expr) -> ir-expr
```
### Environment Variables
To enable `debug-print` statements inside rake, set `RAKE_DEBUG_CODEGEN=1`.

To generate spec files using Halide without running the synthesizer, set `HALIDE_RAKE_GENSPEC` environment variable.
