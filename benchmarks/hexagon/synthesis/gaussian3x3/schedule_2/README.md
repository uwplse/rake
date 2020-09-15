### Schedule

```cpp
output
    .hexagon()
    .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
    .vectorize(xi);


output.prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting)
```