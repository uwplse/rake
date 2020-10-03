## Schedule

```cpp
output
    .hexagon()
    .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
    .vectorize(xi)
    .unroll(yi);
rows.compute_at(Func(output), y)
    .tile(x, y, x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
    .vectorize(xi)
    .unroll(yi);

output.prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting);
```

```cpp
assert((reinterpret(uint64, output.buffer) != (uint64)0), halide_error_buffer_argument_is_null("output"))
assert((reinterpret(uint64, input.buffer) != (uint64)0), halide_error_buffer_argument_is_null("input"))
let input = _halide_buffer_get_host(input.buffer)
let input.min.0 = _halide_buffer_get_min(input.buffer, 0)
let input.stride.0 = _halide_buffer_get_stride(input.buffer, 0)
let input.min.1 = _halide_buffer_get_min(input.buffer, 1)
let input.stride.1 = _halide_buffer_get_stride(input.buffer, 1)
let output = _halide_buffer_get_host(output.buffer)
let output.min.0 = _halide_buffer_get_min(output.buffer, 0)
let output.extent.0 = _halide_buffer_get_extent(output.buffer, 0)
let output.stride.0 = _halide_buffer_get_stride(output.buffer, 0)
let output.min.1 = _halide_buffer_get_min(output.buffer, 1)
let output.extent.1 = _halide_buffer_get_extent(output.buffer, 1)
let output.stride.1 = _halide_buffer_get_stride(output.buffer, 1)
assert((input.stride.0 == 1), 0)
assert((input.min.0 == 0), 0)
assert(((input.stride.1 % 128) == 0), 0)
assert((input.min.1 == 0), 0)
assert((output.stride.0 == 1), 0)
assert((output.min.0 == 0), 0)
assert(((output.stride.1 % 128) == 0), 0)
assert((output.min.1 == 0), 0)
produce output {
  let t45 = (-2 - (input.stride.1*2))
  for<Hexagon> (output.s0.__outermost, 0, 1) {
    for (output.s0.y.y, 0, ((output.extent.1 + 3)/4)) {
      prefetch(input, ((((input.stride.1*output.s0.y.y)*4) + (input.stride.1*6)) + -2), ((((output.extent.0 + 127)/128)*128) + 128), 1, 8, input.stride.1)
      allocate rows[int16 * ((((output.extent.0 + 127)/128)*128) + 128) * 4]
      produce rows {
        for (rows.s0.x.x, 0, ((output.extent.0 + 255)/128)) {
          rows[ramp((rows.s0.x.x*128), 1, 128) aligned(128, 0)] = (let t72 = ((rows.s0.x.x*32) + (input.stride.1*output.s0.y.y)) in ((((int16x128(input[ramp((((t72*4) - input.stride.1) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + ((int16x128(input[ramp((((t72*4) + input.stride.1) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + (int16x128(input[ramp(((t72*4) + -2), 1, 128) aligned(128, 126)])*x128((int16)6)))) + int16x128(input[ramp(((((t72*2) - input.stride.1)*2) + -2), 1, 128) aligned(128, 126)])) + int16x128(input[ramp(((((t72*2) + input.stride.1)*2) + -2), 1, 128) aligned(128, 126)])))
          rows[ramp((((((output.extent.0 + 127)/128) + rows.s0.x.x)*128) + 128), 1, 128) aligned(128, 0)] = (let t73 = ((rows.s0.x.x*128) + (((output.s0.y.y*4) + 1)*input.stride.1)) in ((((int16x128(input[ramp(((t73 - input.stride.1) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + ((int16x128(input[ramp(((input.stride.1 + t73) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + (int16x128(input[ramp((t73 + -2), 1, 128) aligned(128, 126)])*x128((int16)6)))) + int16x128(input[ramp((t45 + t73), 1, 128) aligned(128, 126)])) + int16x128(input[ramp((((input.stride.1*2) + t73) + -2), 1, 128) aligned(128, 126)])))
          rows[ramp(((((((output.extent.0 + 127)/128)*2) + rows.s0.x.x)*128) + 256), 1, 128) aligned(128, 0)] = (let t74 = ((rows.s0.x.x*128) + (((output.s0.y.y*4) + 2)*input.stride.1)) in ((((int16x128(input[ramp(((t74 - input.stride.1) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + ((int16x128(input[ramp(((input.stride.1 + t74) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + (int16x128(input[ramp((t74 + -2), 1, 128) aligned(128, 126)])*x128((int16)6)))) + int16x128(input[ramp((t45 + t74), 1, 128) aligned(128, 126)])) + int16x128(input[ramp((((input.stride.1*2) + t74) + -2), 1, 128) aligned(128, 126)])))
          rows[ramp(((((((output.extent.0 + 127)/128)*3) + rows.s0.x.x)*128) + 384), 1, 128) aligned(128, 0)] = (let t75 = ((rows.s0.x.x*128) + (((output.s0.y.y*4) + 3)*input.stride.1)) in ((((int16x128(input[ramp(((t75 - input.stride.1) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + ((int16x128(input[ramp(((input.stride.1 + t75) + -2), 1, 128) aligned(128, 126)])*x128((int16)4)) + (int16x128(input[ramp((t75 + -2), 1, 128) aligned(128, 126)])*x128((int16)6)))) + int16x128(input[ramp((t45 + t75), 1, 128) aligned(128, 126)])) + int16x128(input[ramp((((input.stride.1*2) + t75) + -2), 1, 128) aligned(128, 126)])))
        }
      }
      consume rows {
        if ((0 < output.extent.0)) {
          allocate c4[int16 * 128] in Stack
          c4[ramp(0, 1, 64)] = rows[ramp(((((output.extent.0 + 127)/128)*384) + 384), 1, 64) aligned(384, 0)]
          allocate c3[int16 * 128] in Stack
          c3[ramp(0, 1, 64)] = rows[ramp(((((output.extent.0 + 127)/128)*256) + 256), 1, 64) aligned(256, 0)]
          allocate c2[int16 * 128] in Stack
          c2[ramp(0, 1, 64)] = rows[ramp(((((output.extent.0 + 127)/128)*128) + 128), 1, 64) aligned(128, 0)]
          allocate c1[int16 * 128] in Stack
          c1[ramp(0, 1, 64)] = rows[ramp(0, 1, 64)]
          for (output.s0.x.x, 0, ((output.extent.0 + 127)/128)) {
            c1[ramp(64, 1, 64)] = rows[ramp(((output.s0.x.x*128) + 128), 1, 64) aligned(128, 0)]
            c2[ramp(64, 1, 64)] = rows[ramp((((((output.extent.0 + 127)/128) + output.s0.x.x)*128) + 256), 1, 64) aligned(128, 0)]
            c3[ramp(64, 1, 64)] = rows[ramp(((((((output.extent.0 + 127)/128)*2) + output.s0.x.x)*128) + 384), 1, 64) aligned(128, 0)]
            c4[ramp(64, 1, 64)] = rows[ramp(((((((output.extent.0 + 127)/128)*3) + output.s0.x.x)*128) + 512), 1, 64) aligned(128, 0)]
            output[ramp((((output.s0.x.x*32) + (output.s0.y.y*output.stride.1))*4), 1, 128) aligned(128, 0)] = (let t91 = rows[ramp(((output.s0.x.x*128) + 64), 1, 64) aligned(128, 64)] in (let t92.s = c1[ramp(0, 1, 64)] in (let t93.s = c1[ramp(64, 1, 64)] in uint8x128((((concat_vectors(slice_vectors(concat_vectors(t92.s, t91), 1, 1, 64), slice_vectors(concat_vectors(t91, t93.s), 1, 1, 64))*x128((int16)4)) + (concat_vectors(t92.s, t91) + ((concat_vectors(slice_vectors(concat_vectors(t92.s, t91), 2, 1, 64), slice_vectors(concat_vectors(t91, t93.s), 2, 1, 64))*x128((int16)6)) + (concat_vectors(slice_vectors(concat_vectors(t92.s, t91), 4, 1, 64), slice_vectors(concat_vectors(t91, t93.s), 4, 1, 64)) + (concat_vectors(slice_vectors(concat_vectors(t92.s, t91), 3, 1, 64), slice_vectors(concat_vectors(t91, t93.s), 3, 1, 64))*x128((int16)4))))))/x128((int16)256))))))
            output[ramp(((output.s0.x.x*128) + (((output.s0.y.y*4) + 1)*output.stride.1)), 1, 128) aligned(128, 0)] = (let t94 = rows[ramp((((((output.extent.0 + 127)/128) + output.s0.x.x)*128) + 192), 1, 64) aligned(128, 64)] in (let t95.s = c2[ramp(0, 1, 64)] in (let t96.s = c2[ramp(64, 1, 64)] in uint8x128((((concat_vectors(slice_vectors(concat_vectors(t95.s, t94), 1, 1, 64), slice_vectors(concat_vectors(t94, t96.s), 1, 1, 64))*x128((int16)4)) + (concat_vectors(t95.s, t94) + ((concat_vectors(slice_vectors(concat_vectors(t95.s, t94), 2, 1, 64), slice_vectors(concat_vectors(t94, t96.s), 2, 1, 64))*x128((int16)6)) + (concat_vectors(slice_vectors(concat_vectors(t95.s, t94), 4, 1, 64), slice_vectors(concat_vectors(t94, t96.s), 4, 1, 64)) + (concat_vectors(slice_vectors(concat_vectors(t95.s, t94), 3, 1, 64), slice_vectors(concat_vectors(t94, t96.s), 3, 1, 64))*x128((int16)4))))))/x128((int16)256))))))
            output[ramp(((output.s0.x.x*128) + (((output.s0.y.y*4) + 2)*output.stride.1)), 1, 128) aligned(128, 0)] = (let t97 = rows[ramp(((((((output.extent.0 + 127)/128)*2) + output.s0.x.x)*128) + 320), 1, 64) aligned(128, 64)] in (let t98.s = c3[ramp(0, 1, 64)] in (let t99.s = c3[ramp(64, 1, 64)] in uint8x128((((concat_vectors(slice_vectors(concat_vectors(t98.s, t97), 1, 1, 64), slice_vectors(concat_vectors(t97, t99.s), 1, 1, 64))*x128((int16)4)) + (concat_vectors(t98.s, t97) + ((concat_vectors(slice_vectors(concat_vectors(t98.s, t97), 2, 1, 64), slice_vectors(concat_vectors(t97, t99.s), 2, 1, 64))*x128((int16)6)) + (concat_vectors(slice_vectors(concat_vectors(t98.s, t97), 4, 1, 64), slice_vectors(concat_vectors(t97, t99.s), 4, 1, 64)) + (concat_vectors(slice_vectors(concat_vectors(t98.s, t97), 3, 1, 64), slice_vectors(concat_vectors(t97, t99.s), 3, 1, 64))*x128((int16)4))))))/x128((int16)256))))))
            output[ramp(((output.s0.x.x*128) + (((output.s0.y.y*4) + 3)*output.stride.1)), 1, 128) aligned(128, 0)] = (let t100 = rows[ramp(((((((output.extent.0 + 127)/128)*3) + output.s0.x.x)*128) + 448), 1, 64) aligned(128, 64)] in (let t101.s = c4[ramp(0, 1, 64)] in (let t102.s = c4[ramp(64, 1, 64)] in uint8x128((((concat_vectors(slice_vectors(concat_vectors(t101.s, t100), 1, 1, 64), slice_vectors(concat_vectors(t100, t102.s), 1, 1, 64))*x128((int16)4)) + (concat_vectors(t101.s, t100) + ((concat_vectors(slice_vectors(concat_vectors(t101.s, t100), 2, 1, 64), slice_vectors(concat_vectors(t100, t102.s), 2, 1, 64))*x128((int16)6)) + (concat_vectors(slice_vectors(concat_vectors(t101.s, t100), 4, 1, 64), slice_vectors(concat_vectors(t100, t102.s), 4, 1, 64)) + (concat_vectors(slice_vectors(concat_vectors(t101.s, t100), 3, 1, 64), slice_vectors(concat_vectors(t100, t102.s), 3, 1, 64))*x128((int16)4))))))/x128((int16)256))))))
            c1[ramp(0, 1, 64)] = c1[ramp(64, 1, 64)]
            c2[ramp(0, 1, 64)] = c2[ramp(64, 1, 64)]
            c3[ramp(0, 1, 64)] = c3[ramp(64, 1, 64)]
            c4[ramp(0, 1, 64)] = c4[ramp(64, 1, 64)]
          }
        }
      }
      free rows
    }
  }
}```