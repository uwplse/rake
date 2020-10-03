### Schedule

```cpp
output
    .hexagon()
    .split(y, yo, y, ht/2)
    .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
    .vectorize(xi);

rows
    .store_at(Func(output), yo)
    .compute_at(Func(output), y)
    .align_storage(x, vector_size)
    .vectorize(x, vector_size, TailStrategy::RoundUp);

output.parallel(yo);
output.prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting);
```