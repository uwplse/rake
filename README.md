# Rake

### Directory structure

    .
    ├── halide                      # A modded fork of halide to test codegen deployments
    ├── benchmarks                  # A collection of benchmarks
    │   ├── cuda                    # Future work; currently empty.
    │   ├── hexagon                 # Hexagon HVX benchmarks
    │   │   ├── performance         # Contains various implementations and scripts for runtime performance analysis
    |   |   ├── synthesis           # Contains handwritten (auto-generated in the future) specification files and the synthesis library
    └── ...
    
### Current Status

See Projects tab for a list of to-do items.

Maaz is currently working on implementing HVX ISA in Rossette.
