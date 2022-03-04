# Rake
Rake is a prototype instruction-selector that uses program synthesis to convert general-purpose expressions to optimized expressions in the target instruction-set. Rake currently supports input expressions in the Halide DSL IR and can target the Hexagon HVX accelerator. 

Please use the provided Dockerfile to setup install Rake. Note that the Qualcomm SDK needs to be downloaded and placed in the root directory for the Dockerfile to succeed. More instructions are available in the Dockerfile.