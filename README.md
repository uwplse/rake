# Rake
Rake is a prototype instruction-selector that uses program synthesis to convert general-purpose expressions to optimized expressions in the target instruction-set. Rake currently supports input expressions in the Halide DSL IR and can target the Hexagon HVX accelerator. We are currently working on extending support to ARM and Intel's VNNI instruction sets.

## Publication & Artifact
The architecture and concepts behind Rake are described in our ASPLOS 2022 paper: "Vector Instruction Selection for Digital Signal Processors Using Program Synthesis" (To Appear @ ASPLOS 2022).

The [artifact branch](https://github.com/uwplse/rake/tree/hvx-artifact) provides a Dockerfile to configure Rake and help recreate the experimental results from the paper. This is the recommended place to start for new users and those who just want to try out the tool.
