import arm_simd

for category, intrinsics in arm_simd.simds.items():
  evaluator_ty = evaluators[category]
  for intrin in intrinsics:
    semas[get_intrin_name(intrin)] = gen_simd(evaluator_ty, intrin)