	.text
	.file	"qurt_allocator.cpp"
	.section	.text._ZN6Halide7Runtime8Internal9to_stringEj,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal9to_stringEj // -- Begin function _ZN6Halide7Runtime8Internal9to_stringEj
	.balign 32
	.type	_ZN6Halide7Runtime8Internal9to_stringEj,@function
_ZN6Halide7Runtime8Internal9to_stringEj: // @_ZN6Halide7Runtime8Internal9to_stringEj
// %bb.0:                               // %entry
	{
		r17 = r0
		r0 = #16
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		call ##malloc
		r18 = #16
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r17,#0); if (p1.new) jump:nt .LBB0_9
		r2 = #0
		r16 = r0
	}
// %bb.2:                               // %while.body.preheader
	{
		r3 = ##-858993459
	}
	.falign
.LBB0_3:                                // %while.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r1:0 = mpyu(r17,r3)
		p0 = cmp.gtu(r17,#9)
	}
	{
		r1:0 = lsr(r1:0,#35)
	}
	{
		r17 -= mpyi(r0,#10)
	}
	{
		r4 = or(r17,#48)
		r17 = r0
		r2 = add(r2,#1)
		memb(r16+r2<<#0) = r4.new
	}
	{
		if (p0) jump:nt .LBB0_3
	}
// %bb.4:                               // %for.cond.preheader
	{
		r4 = lsr(r2,#1)
	}
	{
		p0 = cmp.eq(r4,#0); if (p0.new) jump:nt .LBB0_7
	}
// %bb.5:                               // %for.body.preheader
	{
		loop0(.LBB0_6,r4)
		r3 = add(r16,add(r2,#-1))
		r4 = r16
	}
	.falign
.Ltmp0:                                 // Block address taken
.LBB0_6:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memub(r4+#0)
		r6 = memub(r3+#0)
	}
	{
		memb(r4++#1) = r6
		memb(r3++#-1) = r5
	} :endloop0
	.falign
.LBB0_7:                                // %for.cond12.preheader
	{
		p1 = cmp.gtu(r2,#15); if (!p1.new) jump:t .LBB0_10
		r0 = r16
		if (p1.new) r17:16 = memd(r29+#8)
	}                               // 8-byte Folded Reload
// %bb.8:                               // %for.cond.cleanup14
	{
		r19:18 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB0_9:
	{
		r2 = #0
	}
	.falign
.LBB0_10:                               // %for.body15.preheader
	{
		r0 = add(r16,r2)
		r1 = #0
		r3 = add(r2,#1)
	}
	{
		r3 = maxu(r3,r18)
	}
	{
		call ##memset
		r2 = sub(r3,r2)
	}
	.falign
// %bb.11:                              // %for.body15.preheader
	{
		r0 = r16
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end0:
	.size	_ZN6Halide7Runtime8Internal9to_stringEj, .Lfunc_end0-_ZN6Halide7Runtime8Internal9to_stringEj
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal14aligned_mallocEjj,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal14aligned_mallocEjj // -- Begin function _ZN6Halide7Runtime8Internal14aligned_mallocEjj
	.balign 32
	.type	_ZN6Halide7Runtime8Internal14aligned_mallocEjj,@function
_ZN6Halide7Runtime8Internal14aligned_mallocEjj: // @_ZN6Halide7Runtime8Internal14aligned_mallocEjj
// %bb.0:                               // %entry
	{
		r2 = add(r0,add(r1,#-1))
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#24)
	}                               // 8-byte Folded Spill
	{
		r20 = sub(#0,r0)
		memd(r29+#0) = r21:20
		memd(r29+#8) = r19:18
	}                               // 8-byte Folded Spill
	{
		r17 = and(r2,r20)
	}
	{
		r18 = add(r17,r0)
	}
	{
		call ##malloc
		r0 = r18
	}
	.falign
// %bb.1:                               // %entry
	{
		r19 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = memw(r19+##malloc_tracing@GOT)
	}
	{
		if (!p0) jump:nt .LBB1_12
		r2 = memw(r2+#0)
	}
// %bb.2:                               // %entry
	{
		p1 = cmp.eq(r2,#0); if (p1.new) jump:nt .LBB1_12
		if (!p1.new) r16 = #0
		if (!p1.new) r0 = #0
	}
// %bb.3:                               // %if.then
	{
		r1 = add(pc,##.L.str@PCREL)
		call ##halide_print
	}
	.falign
// %bb.4:                               // %if.then
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = r18
	}
	.falign
// %bb.5:                               // %if.then
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.6:                               // %if.then
	{
		r17 = add(pc,##.L.str.1@PCREL)
	}
	{
		call ##halide_print
		r1:0 = combine(r17,#0)
	}
	.falign
// %bb.7:                               // %if.then
	{
		r1 = add(pc,##.L.str.2@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
// %bb.8:                               // %if.then
	{
		r2 = memw(r19+##_ZN6Halide7Runtime8Internal9mem_traceE@GOT)
	}
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = memw(r2+#0)
	}
	.falign
// %bb.9:                               // %if.then
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.10:                              // %if.then
	{
		call ##halide_print
		r1:0 = combine(r17,#0)
	}
	.falign
// %bb.11:                              // %if.then
	{
		jump .LBB1_76
	}
	.falign
.LBB1_12:                               // %if.end
	{
		r3 = add(r16,add(r0,#3))
		p0 = cmp.eq(r2,#0)
	}
	{
		r16 = and(r3,r20)
	}
	{
		if (p0) jump:nt .LBB1_76
		memw(r16+#-4) = r0
	}
// %bb.13:                              // %for.body.preheader
	{
		loop0(.LBB1_14,#40)
		r2 = #0
		r3 = memw(r19+##_ZN6Halide7Runtime8Internal6my_ptrE@GOT)
	}
	{
		r4 = add(r3,#96)
	}
	.falign
.Ltmp1:                                 // Block address taken
.LBB1_14:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r4+#-96)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_40
	}
// %bb.15:                              // %for.inc
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-92)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_41
	}
// %bb.16:                              // %for.inc.1
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-88)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_42
	}
// %bb.17:                              // %for.inc.2
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-84)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_43
	}
// %bb.18:                              // %for.inc.3
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-80)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_44
	}
// %bb.19:                              // %for.inc.4
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-76)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_45
	}
// %bb.20:                              // %for.inc.5
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-72)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_46
	}
// %bb.21:                              // %for.inc.6
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-68)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_47
	}
// %bb.22:                              // %for.inc.7
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-64)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_48
	}
// %bb.23:                              // %for.inc.8
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-60)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_49
	}
// %bb.24:                              // %for.inc.9
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-56)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_50
	}
// %bb.25:                              // %for.inc.10
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-52)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_51
	}
// %bb.26:                              // %for.inc.11
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-48)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_52
	}
// %bb.27:                              // %for.inc.12
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-44)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_53
	}
// %bb.28:                              // %for.inc.13
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-40)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_54
	}
// %bb.29:                              // %for.inc.14
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-36)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_55
	}
// %bb.30:                              // %for.inc.15
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-32)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_56
	}
// %bb.31:                              // %for.inc.16
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-28)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_57
	}
// %bb.32:                              // %for.inc.17
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-24)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_58
	}
// %bb.33:                              // %for.inc.18
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-20)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_59
	}
// %bb.34:                              // %for.inc.19
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-16)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_60
	}
// %bb.35:                              // %for.inc.20
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-12)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_61
	}
// %bb.36:                              // %for.inc.21
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-8)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_62
	}
// %bb.37:                              // %for.inc.22
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#-4)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_63
	}
// %bb.38:                              // %for.inc.23
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r5 = memw(r4+#0)
		if (cmp.eq(r5.new,#0)) jump:nt .LBB1_64
	}
// %bb.39:                              // %for.inc.24
                                        //   in Loop: Header=BB1_14 Depth=1
	{
		r2 = add(r2,#25)
		r4 = add(r4,#100)
	} :endloop0
	{
		jump .LBB1_66
	}
	.falign
.LBB1_40:
	{
		jump .LBB1_65
		r3 = add(r4,#-96)
	}
	.falign
.LBB1_41:
	{
		r2 = add(r2,#1)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_42:
	{
		r2 = add(r2,#2)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_43:
	{
		r2 = add(r2,#3)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_44:
	{
		r2 = add(r2,#4)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_45:
	{
		r2 = add(r2,#5)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_46:
	{
		r2 = add(r2,#6)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_47:
	{
		r2 = add(r2,#7)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_48:
	{
		r2 = add(r2,#8)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_49:
	{
		r2 = add(r2,#9)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_50:
	{
		r2 = add(r2,#10)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_51:
	{
		r2 = add(r2,#11)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_52:
	{
		r2 = add(r2,#12)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_53:
	{
		r2 = add(r2,#13)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_54:
	{
		r2 = add(r2,#14)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_55:
	{
		r2 = add(r2,#15)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_56:
	{
		r2 = add(r2,#16)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_57:
	{
		r2 = add(r2,#17)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_58:
	{
		r2 = add(r2,#18)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_59:
	{
		r2 = add(r2,#19)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_60:
	{
		r2 = add(r2,#20)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_61:
	{
		r2 = add(r2,#21)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_62:
	{
		r2 = add(r2,#22)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_63:
	{
		r2 = add(r2,#23)
	}
	{
		r3 = addasl(r3,r2,#2)
		jump .LBB1_65
	}
	.falign
.LBB1_64:
	{
		r2 = add(r2,#24)
	}
	{
		r3 = addasl(r3,r2,#2)
	}
	.falign
.LBB1_65:                               // %if.then17
	{
		memw(r3+#0) = r16
	}
	{
		r3 = memw(r19+##_ZN6Halide7Runtime8Internal8my_sizesE@GOT)
	}
	{
		memw(r3+r2<<#2) = r17
	}
	.falign
.LBB1_66:                               // %cleanup
	{
		r1 = add(pc,##.L.str.3@PCREL)
		r18 = memw(r19+##_ZN6Halide7Runtime8Internal9mem_traceE@GOT)
	}
	{
		r0 = #0
	}
	{
		call ##halide_print
		memw(r18+#0) += r17
	}
	.falign
// %bb.67:                              // %cleanup
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = r17
	}
	.falign
// %bb.68:                              // %cleanup
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.69:                              // %cleanup
	{
		r1 = add(pc,##.L.str.4@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
// %bb.70:                              // %cleanup
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = memw(r18+#0)
	}
	.falign
// %bb.71:                              // %cleanup
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.72:                              // %cleanup
	{
		r1 = add(pc,##.L.str.5@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
// %bb.73:                              // %cleanup
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = r16
	}
	.falign
// %bb.74:                              // %cleanup
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.75:                              // %cleanup
	{
		r1 = add(pc,##.L.str.6@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
.LBB1_76:                               // %cleanup27
	{
		r0 = r16
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end1:
	.size	_ZN6Halide7Runtime8Internal14aligned_mallocEjj, .Lfunc_end1-_ZN6Halide7Runtime8Internal14aligned_mallocEjj
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal12aligned_freeEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal12aligned_freeEPv // -- Begin function _ZN6Halide7Runtime8Internal12aligned_freeEPv
	.balign 32
	.type	_ZN6Halide7Runtime8Internal12aligned_freeEPv,@function
_ZN6Halide7Runtime8Internal12aligned_freeEPv: // @_ZN6Halide7Runtime8Internal12aligned_freeEPv
// %bb.0:                               // %entry
	{
		p0 = cmp.eq(r0,#0)
		if (!p0.new) r16 = add(r0,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p0) jump:nt .LBB2_30
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.then
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r3 = memw(r2+##malloc_tracing@GOT)
	}
	{
		r3 = memw(r3+#0)
	}
	{
		p1 = cmp.eq(r3,#0); if (p1.new) jump:nt .LBB2_67
		if (!p1.new) r3 = #0
	}
// %bb.2:                               // %for.body.preheader
	{
		loop0(.LBB2_3,#40)
		r4 = memw(r2+##_ZN6Halide7Runtime8Internal6my_ptrE@GOT)
	}
	{
		r5 = add(r4,#96)
	}
	.falign
.Ltmp2:                                 // Block address taken
.LBB2_3:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r6 = memw(r5+#-96)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_31
	}
// %bb.4:                               // %for.inc
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-92)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_32
	}
// %bb.5:                               // %for.inc.1
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-88)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_33
	}
// %bb.6:                               // %for.inc.2
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-84)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_34
	}
// %bb.7:                               // %for.inc.3
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-80)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_35
	}
// %bb.8:                               // %for.inc.4
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-76)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_36
	}
// %bb.9:                               // %for.inc.5
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-72)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_37
	}
// %bb.10:                              // %for.inc.6
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-68)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_38
	}
// %bb.11:                              // %for.inc.7
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-64)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_39
	}
// %bb.12:                              // %for.inc.8
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-60)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_40
	}
// %bb.13:                              // %for.inc.9
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-56)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_41
	}
// %bb.14:                              // %for.inc.10
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-52)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_42
	}
// %bb.15:                              // %for.inc.11
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-48)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_43
	}
// %bb.16:                              // %for.inc.12
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-44)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_44
	}
// %bb.17:                              // %for.inc.13
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-40)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_45
	}
// %bb.18:                              // %for.inc.14
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-36)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_46
	}
// %bb.19:                              // %for.inc.15
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-32)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_47
	}
// %bb.20:                              // %for.inc.16
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-28)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_48
	}
// %bb.21:                              // %for.inc.17
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-24)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_49
	}
// %bb.22:                              // %for.inc.18
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-20)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_50
	}
// %bb.23:                              // %for.inc.19
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-16)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_51
	}
// %bb.24:                              // %for.inc.20
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-12)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_52
	}
// %bb.25:                              // %for.inc.21
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-8)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_53
	}
// %bb.26:                              // %for.inc.22
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#-4)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_54
	}
// %bb.27:                              // %for.inc.23
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r6 = memw(r5+#0)
		if (cmp.eq(r6.new,r16)) jump:nt .LBB2_55
	}
// %bb.28:                              // %for.inc.24
                                        //   in Loop: Header=BB2_3 Depth=1
	{
		r3 = add(r3,#25)
		r5 = add(r5,#100)
	} :endloop0
// %bb.29:
	{
		r17 = #0 ; jump .LBB2_57
	}
	.falign
.LBB2_30:                               // %if.end12
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB2_31:
	{
		jump .LBB2_56
		r4 = add(r5,#-96)
	}
	.falign
.LBB2_32:
	{
		r3 = add(r3,#1)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_33:
	{
		r3 = add(r3,#2)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_34:
	{
		r3 = add(r3,#3)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_35:
	{
		r3 = add(r3,#4)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_36:
	{
		r3 = add(r3,#5)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_37:
	{
		r3 = add(r3,#6)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_38:
	{
		r3 = add(r3,#7)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_39:
	{
		r3 = add(r3,#8)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_40:
	{
		r3 = add(r3,#9)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_41:
	{
		r3 = add(r3,#10)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_42:
	{
		r3 = add(r3,#11)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_43:
	{
		r3 = add(r3,#12)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_44:
	{
		r3 = add(r3,#13)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_45:
	{
		r3 = add(r3,#14)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_46:
	{
		r3 = add(r3,#15)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_47:
	{
		r3 = add(r3,#16)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_48:
	{
		r3 = add(r3,#17)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_49:
	{
		r3 = add(r3,#18)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_50:
	{
		r3 = add(r3,#19)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_51:
	{
		r3 = add(r3,#20)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_52:
	{
		r3 = add(r3,#21)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_53:
	{
		r3 = add(r3,#22)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_54:
	{
		r3 = add(r3,#23)
	}
	{
		r4 = addasl(r4,r3,#2)
		jump .LBB2_56
	}
	.falign
.LBB2_55:
	{
		r3 = add(r3,#24)
	}
	{
		r4 = addasl(r4,r3,#2)
	}
	.falign
.LBB2_56:                               // %if.then4
	{
		r0 = #0
		r5 = memw(r2+##_ZN6Halide7Runtime8Internal8my_sizesE@GOT)
		memw(r4+#0) = #0
	}
	{
		r17 = memw(r5+r3<<#2)
		memw(r5+r3<<#2) = r0
	}
	.falign
.LBB2_57:                               // %cleanup
	{
		r1 = add(pc,##.L.str.7@PCREL)
		r18 = memw(r2+##_ZN6Halide7Runtime8Internal9mem_traceE@GOT)
	}
	{
		r0 = #0
	}
	{
		call ##halide_print
		memw(r18+#0) -= r17
	}
	.falign
// %bb.58:                              // %cleanup
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = r17
	}
	.falign
// %bb.59:                              // %cleanup
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.60:                              // %cleanup
	{
		r1 = add(pc,##.L.str.4@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
// %bb.61:                              // %cleanup
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = memw(r18+#0)
	}
	.falign
// %bb.62:                              // %cleanup
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.63:                              // %cleanup
	{
		r1 = add(pc,##.L.str.5@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
// %bb.64:                              // %cleanup
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = r16
	}
	.falign
// %bb.65:                              // %cleanup
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.66:                              // %cleanup
	{
		r1 = add(pc,##.L.str.6@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
.LBB2_67:                               // %if.end10
	{
		r0 = memw(r16+#-4)
		r17:16 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		jump ##free
		r19:18 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end2:
	.size	_ZN6Halide7Runtime8Internal12aligned_freeEPv, .Lfunc_end2-_ZN6Halide7Runtime8Internal12aligned_freeEPv
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv // -- Begin function _ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv
	.balign 32
	.type	_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv,@function
_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv: // @_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		r16 = memw(r2+##_ZN6Halide7Runtime8Internal7mem_bufE@GOT)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#0)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#4)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#8)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#12)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#16)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#20)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#24)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#28)
	}
	{
		call ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r0 = memw(r16+#32)
	}
	{
		r0 = memw(r16+#36)
		r17:16 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		jump ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end3:
	.size	_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv, .Lfunc_end3-_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv
                                        // -- End function
	.section	.text.halide_default_malloc,"ax",@progbits
	.weak	halide_default_malloc   // -- Begin function halide_default_malloc
	.balign 32
	.type	halide_default_malloc,@function
halide_default_malloc:                  // @halide_default_malloc
// %bb.0:                               // %entry
	{
		p1 = cmp.gtu(r1,##65536)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB4_53
		if (!p1) r4 = #1
	}
// %bb.1:                               // %for.body.preheader
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		p1 = and(p1,!p1)
	}
	{
		p0 = or(p0,!p0)
		r3 = add(r2,##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	.falign
.LBB4_2:                                // %cmpxchg.start
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_5
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.3:                               // %cmpxchg.fencedstore
                                        //   in Loop: Header=BB4_2 Depth=1
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_2
	}
// %bb.4:
	{
		p1 = or(p0,p0)
	}
	.falign
.LBB4_5:                                // %cmpxchg.end
	{
		p0 = and(p0,!p0)
		if (p1) jump:nt .LBB4_51
		r4 = #0
	}
// %bb.6:                               // %for.inc
	{
		p1 = or(p1,!p1)
		r4 = #1
	}
	.falign
.LBB4_7:                                // %cmpxchg.start8
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#4)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_10
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.8:                               // %cmpxchg.fencedstore7
                                        //   in Loop: Header=BB4_7 Depth=1
	{
		r5 = add(r5,#4)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_7
	}
// %bb.9:
	{
		p0 = or(p1,p1)
	}
	.falign
.LBB4_10:                               // %cmpxchg.end1
	{
		p1 = and(p1,!p1)
		if (p0) jump:nt .LBB4_51
		r4 = #1
	}
// %bb.11:                              // %for.inc.1
	{
		p0 = or(p0,!p0)
		r4 = #1
	}
	.falign
.LBB4_12:                               // %cmpxchg.start20
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#8)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_15
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.13:                              // %cmpxchg.fencedstore19
                                        //   in Loop: Header=BB4_12 Depth=1
	{
		r5 = add(r5,#8)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_12
	}
// %bb.14:
	{
		p1 = or(p0,p0)
	}
	.falign
.LBB4_15:                               // %cmpxchg.end13
	{
		p0 = and(p0,!p0)
		if (p1) jump:nt .LBB4_51
		r4 = #2
	}
// %bb.16:                              // %for.inc.2
	{
		p1 = or(p1,!p1)
		r4 = #1
	}
	.falign
.LBB4_17:                               // %cmpxchg.start32
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#12)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_20
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.18:                              // %cmpxchg.fencedstore31
                                        //   in Loop: Header=BB4_17 Depth=1
	{
		r5 = add(r5,#12)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_17
	}
// %bb.19:
	{
		p0 = or(p1,p1)
	}
	.falign
.LBB4_20:                               // %cmpxchg.end25
	{
		p1 = and(p1,!p1)
		if (p0) jump:nt .LBB4_51
		r4 = #3
	}
// %bb.21:                              // %for.inc.3
	{
		p0 = or(p0,!p0)
		r4 = #1
	}
	.falign
.LBB4_22:                               // %cmpxchg.start44
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#16)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_25
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.23:                              // %cmpxchg.fencedstore43
                                        //   in Loop: Header=BB4_22 Depth=1
	{
		r5 = add(r5,#16)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_22
	}
// %bb.24:
	{
		p1 = or(p0,p0)
	}
	.falign
.LBB4_25:                               // %cmpxchg.end37
	{
		p0 = and(p0,!p0)
		if (p1) jump:nt .LBB4_51
		r4 = #4
	}
// %bb.26:                              // %for.inc.4
	{
		p1 = or(p1,!p1)
		r4 = #1
	}
	.falign
.LBB4_27:                               // %cmpxchg.start56
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#20)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_30
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.28:                              // %cmpxchg.fencedstore55
                                        //   in Loop: Header=BB4_27 Depth=1
	{
		r5 = add(r5,#20)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_27
	}
// %bb.29:
	{
		p0 = or(p1,p1)
	}
	.falign
.LBB4_30:                               // %cmpxchg.end49
	{
		p1 = and(p1,!p1)
		if (p0) jump:nt .LBB4_51
		r4 = #5
	}
// %bb.31:                              // %for.inc.5
	{
		p0 = or(p0,!p0)
		r4 = #1
	}
	.falign
.LBB4_32:                               // %cmpxchg.start68
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#24)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_35
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.33:                              // %cmpxchg.fencedstore67
                                        //   in Loop: Header=BB4_32 Depth=1
	{
		r5 = add(r5,#24)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_32
	}
// %bb.34:
	{
		p1 = or(p0,p0)
	}
	.falign
.LBB4_35:                               // %cmpxchg.end61
	{
		p0 = and(p0,!p0)
		if (p1) jump:nt .LBB4_51
		r4 = #6
	}
// %bb.36:                              // %for.inc.6
	{
		p1 = or(p1,!p1)
		r4 = #1
	}
	.falign
.LBB4_37:                               // %cmpxchg.start80
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#28)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_40
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.38:                              // %cmpxchg.fencedstore79
                                        //   in Loop: Header=BB4_37 Depth=1
	{
		r5 = add(r5,#28)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_37
	}
// %bb.39:
	{
		p0 = or(p1,p1)
	}
	.falign
.LBB4_40:                               // %cmpxchg.end73
	{
		p1 = and(p1,!p1)
		if (p0) jump:nt .LBB4_51
		r4 = #7
	}
// %bb.41:                              // %for.inc.7
	{
		p0 = or(p0,!p0)
		r4 = #1
	}
	.falign
.LBB4_42:                               // %cmpxchg.start92
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#32)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_45
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.43:                              // %cmpxchg.fencedstore91
                                        //   in Loop: Header=BB4_42 Depth=1
	{
		r5 = add(r5,#32)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_42
	}
// %bb.44:
	{
		p1 = or(p0,p0)
	}
	.falign
.LBB4_45:                               // %cmpxchg.end85
	{
		p0 = and(p0,!p0)
		if (p1) jump:nt .LBB4_51
		r4 = #8
	}
// %bb.46:                              // %for.inc.8
	{
		p1 = or(p1,!p1)
		r4 = #1
	}
	.falign
.LBB4_47:                               // %cmpxchg.start104
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r3+#0)
	}
	{
		r5 = add(r5,#36)
	}
	{
		r5 = memw_locked(r5)
	}
	{
		if (!p2.new) jump:nt .LBB4_50
		p2 = cmp.eq(r5,#0)
		if (p2.new) r5 = memw(r3+#0)
	}
// %bb.48:                              // %cmpxchg.fencedstore103
                                        //   in Loop: Header=BB4_47 Depth=1
	{
		r5 = add(r5,#36)
	}
	{
		memw_locked(r5,p2) = r4
	}
	{
		if (!p2) jump:nt .LBB4_47
	}
// %bb.49:
	{
		p0 = or(p1,p1)
	}
	.falign
.LBB4_50:                               // %cmpxchg.end97
	{
		if (!p0) jump:nt .LBB4_53
		r4 = #9
	}
	.falign
.LBB4_51:                               // %if.then3
	{
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal7mem_bufE@GOT)
	}
	{
		r16 = addasl(r2,r4,#2)
		r0 = memw(r2+r4<<#2)
		if (cmp.eq(r0.new,#0)) jump:nt .LBB4_54
	}
// %bb.52:                              // %cleanup11
	{
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB4_53:                               // %if.end9
	{
		r0 = #128
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##_ZN6Halide7Runtime8Internal14aligned_mallocEjj
	}
	.falign
.LBB4_54:                               // %if.then5
	{
		r0 = #128
		r1 = ##65536
	}
	{
		call ##_ZN6Halide7Runtime8Internal14aligned_mallocEjj
	}
	.falign
// %bb.55:                              // %if.then5
	{
		r17:16 = memd(r29+#0)
		memw(r16+#0) = r0
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end4:
	.size	halide_default_malloc, .Lfunc_end4-halide_default_malloc
                                        // -- End function
	.section	.text.halide_default_free,"ax",@progbits
	.weak	halide_default_free     // -- Begin function halide_default_free
	.balign 32
	.type	halide_default_free,@function
halide_default_free:                    // @halide_default_free
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		r5 = #0
	}
	{
		r4 = add(r2,##_ZN6Halide7Runtime8Internal7mem_bufE@GOT)
	}
	{
		r3 = memw(r4+#0)
	}
	{
		r3 = memw(r3+#0)
	}
	{
		p0 = cmp.eq(r3,r1); if (p0.new) jump:nt .LBB5_12
		r3 = #0
		if (!p0.new) r5 = memw(r4+#0)
	}
// %bb.1:                               // %for.inc
	{
		r5 = memw(r5+#4)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_11
	}
// %bb.2:                               // %for.inc.1
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#8)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_13
	}
// %bb.3:                               // %for.inc.2
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#12)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_14
	}
// %bb.4:                               // %for.inc.3
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#16)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_15
	}
// %bb.5:                               // %for.inc.4
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#20)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_16
	}
// %bb.6:                               // %for.inc.5
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#24)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_17
	}
// %bb.7:                               // %for.inc.6
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#28)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_18
	}
// %bb.8:                               // %for.inc.7
	{
		r5 = memw(r4+#0)
	}
	{
		r5 = memw(r5+#32)
		if (cmp.eq(r5.new,r1)) jump:nt .LBB5_19
	}
// %bb.9:                               // %for.inc.8
	{
		r4 = memw(r4+#0)
	}
	{
		r4 = memw(r4+#36)
		if (cmp.eq(r4.new,r1)) jump:nt .LBB5_20
	}
// %bb.10:                              // %for.inc.9
	{
		r0 = r1 ; jump ##_ZN6Halide7Runtime8Internal12aligned_freeEPv
	}
	.falign
.LBB5_11:
	{
		r5 = #1
	}
	.falign
.LBB5_12:                               // %cleanup
	{
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_13:
	{
		r5 = #2
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_14:
	{
		r5 = #3
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_15:
	{
		r5 = #4
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_16:
	{
		r5 = #5
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_17:
	{
		r5 = #6
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_18:
	{
		r5 = #7
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_19:
	{
		r5 = #8
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
	.falign
.LBB5_20:
	{
		r5 = #9
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11buf_is_usedE@GOT)
	}
	{
		jumpr r31
		memw(r2+r5<<#2) = r3
	}
.Lfunc_end5:
	.size	halide_default_free, .Lfunc_end5-halide_default_free
                                        // -- End function
	.section	.text.halide_set_custom_malloc,"ax",@progbits
	.weak	halide_set_custom_malloc // -- Begin function halide_set_custom_malloc
	.balign 32
	.type	halide_set_custom_malloc,@function
halide_set_custom_malloc:               // @halide_set_custom_malloc
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		r1 = add(pc,##.L.str.8@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal13custom_mallocE@GOT)
	}
	{
		r0 = memw(r2+#0)
		memw(r2+#0) = r16
	}
	{
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end6:
	.size	halide_set_custom_malloc, .Lfunc_end6-halide_set_custom_malloc
                                        // -- End function
	.section	.text.halide_set_custom_free,"ax",@progbits
	.weak	halide_set_custom_free  // -- Begin function halide_set_custom_free
	.balign 32
	.type	halide_set_custom_free,@function
halide_set_custom_free:                 // @halide_set_custom_free
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		r1 = add(pc,##.L.str.8@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal11custom_freeE@GOT)
	}
	{
		r0 = memw(r2+#0)
		memw(r2+#0) = r16
	}
	{
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end7:
	.size	halide_set_custom_free, .Lfunc_end7-halide_set_custom_free
                                        // -- End function
	.section	.text.halide_malloc,"ax",@progbits
	.weak	halide_malloc           // -- Begin function halide_malloc
	.balign 32
	.type	halide_malloc,@function
halide_malloc:                          // @halide_malloc
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		r17:16 = combine(r0,r1)
	}
	{
		r2 = memw(r2+##malloc_tracing@GOT)
	}
	{
		r2 = memw(r2+#0)
		if (!cmp.gt(r2.new,#1)) jump:t .LBB8_5
	}
// %bb.1:                               // %if.then
	{
		r1 = add(pc,##.L.str.9@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
// %bb.2:                               // %if.then
	{
		call ##_ZN6Halide7Runtime8Internal9to_stringEj
		r0 = r16
	}
	.falign
// %bb.3:                               // %if.then
	{
		call ##halide_print
		r0 = #0
		r1 = r0
	}
	.falign
// %bb.4:                               // %if.then
	{
		r1 = add(pc,##.L.str.1@PCREL)
		r0 = #0
	}
	{
		call ##halide_print
	}
	.falign
.LBB8_5:                                // %if.end
	{
		r1:0 = combine(r16,r17)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_default_malloc
	}
.Lfunc_end8:
	.size	halide_malloc, .Lfunc_end8-halide_malloc
                                        // -- End function
	.section	.text.halide_free,"ax",@progbits
	.weak	halide_free             // -- Begin function halide_free
	.balign 32
	.type	halide_free,@function
halide_free:                            // @halide_free
// %bb.0:                               // %entry
	{
		jump ##halide_default_free
	}
.Lfunc_end9:
	.size	halide_free, .Lfunc_end9-halide_free
                                        // -- End function
	.section	.text.halide_default_do_task,"ax",@progbits
	.weak	halide_default_do_task  // -- Begin function halide_default_do_task
	.balign 32
	.type	halide_default_do_task,@function
halide_default_do_task:                 // @halide_default_do_task
// %bb.0:                               // %entry
	{
		r1 = r2
		r7 = r1
		r2 = r3
	}
	{
		jumpr r7
	}
.Lfunc_end10:
	.size	halide_default_do_task, .Lfunc_end10-halide_default_do_task
                                        // -- End function
	.section	.text.halide_default_do_par_for,"ax",@progbits
	.weak	halide_default_do_par_for // -- Begin function halide_default_do_par_for
	.balign 32
	.type	halide_default_do_par_for,@function
halide_default_do_par_for:              // @halide_default_do_par_for
// %bb.0:                               // %entry
	{
		p0 = cmp.gt(r3,#0)
		memd(r29+#-16) = r17:16
		allocframe(#24)
	}                               // 8-byte Folded Spill
	{
		if (!p0) jump:nt .LBB11_7
		if (p0) r20 = add(r3,r2)
		memd(r29+#8) = r19:18
		memd(r29+#0) = r21:20
	}                               // 8-byte Folded Spill
// %bb.1:
	{
		r17:16 = combine(r2,r4)
		r19:18 = combine(r0,r1)
	}
	.falign
.LBB11_2:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		call ##halide_do_task
		r1:0 = combine(r18,r19)
		r3:2 = combine(r16,r17)
	}
	.falign
// %bb.3:                               // %for.body
                                        //   in Loop: Header=BB11_2 Depth=1
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:nt .LBB11_6
	}
// %bb.4:                               // %for.cond
                                        //   in Loop: Header=BB11_2 Depth=1
	{
		r17 = add(r17,#1)
		if (cmp.gt(r20,r17.new)) jump:t .LBB11_2
	}
// %bb.5:
	{
		r0 = #0
	}
	.falign
.LBB11_6:                               // %return
	{
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB11_7:
	{
		r0 = #0
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end11:
	.size	halide_default_do_par_for, .Lfunc_end11-halide_default_do_par_for
                                        // -- End function
	.section	.text.halide_do_task,"ax",@progbits
	.weak	halide_do_task          // -- Begin function halide_do_task
	.balign 32
	.type	halide_do_task,@function
halide_do_task:                         // @halide_do_task
// %bb.0:                               // %entry
	{
		r4 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r4 = memw(r4+##_ZN6Halide7Runtime8Internal14custom_do_taskE@GOT)
	}
	{
		r7 = memw(r4+#0)
	}
	{
		jumpr r7
	}
.Lfunc_end12:
	.size	halide_do_task, .Lfunc_end12-halide_do_task
                                        // -- End function
	.section	.text.halide_spawn_thread,"ax",@progbits
	.weak	halide_spawn_thread     // -- Begin function halide_spawn_thread
	.balign 32
	.type	halide_spawn_thread,@function
halide_spawn_thread:                    // @halide_spawn_thread
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.10@PCREL)
		r0 = #0
		allocframe(#0)
	}
	{
		call ##halide_error
	}
	{
		r0 = #0
		dealloc_return
	}
.Lfunc_end13:
	.size	halide_spawn_thread, .Lfunc_end13-halide_spawn_thread
                                        // -- End function
	.section	.text.halide_mutex_lock,"ax",@progbits
	.weak	halide_mutex_lock       // -- Begin function halide_mutex_lock
	.balign 32
	.type	halide_mutex_lock,@function
halide_mutex_lock:                      // @halide_mutex_lock
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end14:
	.size	halide_mutex_lock, .Lfunc_end14-halide_mutex_lock
                                        // -- End function
	.section	.text.halide_mutex_unlock,"ax",@progbits
	.weak	halide_mutex_unlock     // -- Begin function halide_mutex_unlock
	.balign 32
	.type	halide_mutex_unlock,@function
halide_mutex_unlock:                    // @halide_mutex_unlock
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end15:
	.size	halide_mutex_unlock, .Lfunc_end15-halide_mutex_unlock
                                        // -- End function
	.section	.text.halide_shutdown_thread_pool,"ax",@progbits
	.weak	halide_shutdown_thread_pool // -- Begin function halide_shutdown_thread_pool
	.balign 32
	.type	halide_shutdown_thread_pool,@function
halide_shutdown_thread_pool:            // @halide_shutdown_thread_pool
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end16:
	.size	halide_shutdown_thread_pool, .Lfunc_end16-halide_shutdown_thread_pool
                                        // -- End function
	.section	.text.halide_set_num_threads,"ax",@progbits
	.weak	halide_set_num_threads  // -- Begin function halide_set_num_threads
	.balign 32
	.type	halide_set_num_threads,@function
halide_set_num_threads:                 // @halide_set_num_threads
// %bb.0:                               // %entry
	{
		p0 = cmp.gt(r0,#-1); if (!p0.new) jump:nt .LBB17_2
		if (!p0.new) r0 = #0
	}
// %bb.1:                               // %if.end
	{
		r0 = #1
		jumpr r31
	}
	.falign
.LBB17_2:                               // %if.then
	{
		r1 = add(pc,##.L.str.1.11@PCREL)
		allocframe(r29,#0):raw
	}
	{
		call ##halide_error
	}
	.falign
// %bb.3:                               // %if.then
	{
		r0 = #1
		deallocframe
	}
	{
		jumpr r31
	}
.Lfunc_end17:
	.size	halide_set_num_threads, .Lfunc_end17-halide_set_num_threads
                                        // -- End function
	.section	.text.halide_set_custom_do_task,"ax",@progbits
	.weak	halide_set_custom_do_task // -- Begin function halide_set_custom_do_task
	.balign 32
	.type	halide_set_custom_do_task,@function
halide_set_custom_do_task:              // @halide_set_custom_do_task
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r3 = memw(r2+##_ZN6Halide7Runtime8Internal14custom_do_taskE@GOT)
	}
	{
		r2 = memw(r3+#0)
		memw(r3+#0) = r0
	}
	{
		r0 = r2
		jumpr r31
	}
.Lfunc_end18:
	.size	halide_set_custom_do_task, .Lfunc_end18-halide_set_custom_do_task
                                        // -- End function
	.section	.text.halide_set_custom_do_par_for,"ax",@progbits
	.weak	halide_set_custom_do_par_for // -- Begin function halide_set_custom_do_par_for
	.balign 32
	.type	halide_set_custom_do_par_for,@function
halide_set_custom_do_par_for:           // @halide_set_custom_do_par_for
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r3 = memw(r2+##_ZN6Halide7Runtime8Internal17custom_do_par_forE@GOT)
	}
	{
		r2 = memw(r3+#0)
		memw(r3+#0) = r0
	}
	{
		r0 = r2
		jumpr r31
	}
.Lfunc_end19:
	.size	halide_set_custom_do_par_for, .Lfunc_end19-halide_set_custom_do_par_for
                                        // -- End function
	.section	.text.halide_do_par_for,"ax",@progbits
	.weak	halide_do_par_for       // -- Begin function halide_do_par_for
	.balign 32
	.type	halide_do_par_for,@function
halide_do_par_for:                      // @halide_do_par_for
// %bb.0:                               // %entry
	{
		r5 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r5 = memw(r5+##_ZN6Halide7Runtime8Internal17custom_do_par_forE@GOT)
	}
	{
		r7 = memw(r5+#0)
	}
	{
		jumpr r7
	}
.Lfunc_end20:
	.size	halide_do_par_for, .Lfunc_end20-halide_do_par_for
                                        // -- End function
	.section	.text.halide_set_gpu_device,"ax",@progbits
	.weak	halide_set_gpu_device   // -- Begin function halide_set_gpu_device
	.balign 32
	.type	halide_set_gpu_device,@function
halide_set_gpu_device:                  // @halide_set_gpu_device
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r3 = memw(r2+##_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOT)
	}
	{
		memw(r3+#0) = r0
	}
	{
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOT)
	}
	{
		jumpr r31
		memb(r2+#0) = #1
	}
.Lfunc_end21:
	.size	halide_set_gpu_device, .Lfunc_end21-halide_set_gpu_device
                                        // -- End function
	.section	.text.halide_get_gpu_device,"ax",@progbits
	.weak	halide_get_gpu_device   // -- Begin function halide_get_gpu_device
	.balign 32
	.type	halide_get_gpu_device,@function
halide_get_gpu_device:                  // @halide_get_gpu_device
// %bb.0:                               // %entry
	{
		r16 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		r2 = #1
	}
	.falign
.LBB22_1:                               // %atomicrmw.start
                                        // =>This Inner Loop Header: Depth=1
	{
		r4 = memw(r16+##_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE@GOT)
	}
	{
		r3 = memw_locked(r4)
	}
	{
		memw_locked(r4,p0) = r2
	}
	{
		if (!p0) jump:nt .LBB22_1
	}
// %bb.2:                               // %atomicrmw.end
                                        //   in Loop: Header=BB22_1 Depth=1
	{
		p1 = cmp.eq(r3,#0); if (!p1.new) jump:t .LBB22_1
	}
// %bb.3:                               // %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	{
		r2 = memw(r16+##_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOT)
	}
	{
		r2 = memb(r2+#0)
		if (cmp.eq(r2.new,#0)) jump:nt .LBB22_5
	}
// %bb.4:                               // %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit.if.end4_crit_edge
	{
		r2 = memw(r16+##_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOT)
	}
	{
		r0 = memw(r2+#0)
		r2 = memw(r16+##_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE@GOT)
	}
	{
		memw(r2+#0) = #0
	}
	{
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB22_5:                               // %if.then
	{
		r0 = add(pc,##.L.str.12@PCREL)
		call ##getenv
	}
	.falign
// %bb.6:                               // %if.then
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB22_10
		if (p1.new) r0 = #-1
	}
// %bb.7:                               // %if.then2
	{
		call ##atoi
	}
	.falign
// %bb.8:                               // %if.then2
	.falign
.LBB22_10:                              // %if.end
	{
		r2 = memw(r16+##_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOT)
	}
	{
		memw(r2+#0) = r0
	}
	{
		r2 = memw(r16+##_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOT)
	}
	{
		memb(r2+#0) = #1
	}
	{
		r2 = memw(r16+##_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE@GOT)
	}
	{
		memw(r2+#0) = #0
	}
	{
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end22:
	.size	halide_get_gpu_device, .Lfunc_end22-halide_get_gpu_device
                                        // -- End function
	.section	.text.halide_string_to_string,"ax",@progbits
	.weak	halide_string_to_string // -- Begin function halide_string_to_string
	.balign 32
	.type	halide_string_to_string,@function
halide_string_to_string:                // @halide_string_to_string
// %bb.0:                               // %entry
	{
		p0 = cmp.gtu(r1,r0); if (!p0.new) jump:t .LBB23_5
		r3 = sub(r1,r0)
	}
// %bb.1:
	{
		loop0(.LBB23_2,r3)
	}
	.falign
.Ltmp3:                                 // Block address taken
.LBB23_2:                               // %if.end3
                                        // =>This Inner Loop Header: Depth=1
	{
		r3 = r0
		r4 = memb(r2+#0)
		memb(r0+#0) = r4.new
	}
	{
		p1 = cmp.eq(r4,#0); if (p1.new) jump:nt .LBB23_6
		r2 = add(r2,#1)
		r0 = add(r0,#1)
	}
// %bb.3:                               // %if.end6
                                        //   in Loop: Header=BB23_2 Depth=1
	{
		nop
		nop
	} :endloop0
// %bb.4:                               // %if.then2
	{
		jumpr r31
		r0 = r1
		memb(r3+#0) = #0
	}
	.falign
.LBB23_5:
	{
		jumpr r31
	}
	.falign
.LBB23_6:
	{
		r0 = r3
		jumpr r31
	}
.Lfunc_end23:
	.size	halide_string_to_string, .Lfunc_end23-halide_string_to_string
                                        // -- End function
	.section	.text.halide_uint64_to_string,"ax",@progbits
	.weak	halide_uint64_to_string // -- Begin function halide_uint64_to_string
	.balign 32
	.type	halide_uint64_to_string,@function
halide_uint64_to_string:                // @halide_uint64_to_string
// %bb.0:                               // %entry
	{
		r7:6 = combine(#0,#0)
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		p0 = cmp.eq(r3:2,r7:6)
		r5 = add(r29,#0)
	}
	{
		if (!p0) jump:nt .LBB24_2
		r5 = add(r5,#30)
		memd(r29+#32) = r19:18
		memb(r29+#31) = #0
	}                               // 8-byte Folded Spill
// %bb.1:                               // %entry
	{
		p1 = cmp.gt(r4,#0); if (!p1.new) jump:t .LBB24_5
	}
	.falign
.LBB24_2:                               // %for.body.preheader
	{
		r9 = #0
		r7 = ##-858993459
		r6 = #1
	}
	{
		r12 = ##-858993460
		r13 = #-10
		r15:14 = combine(#0,#9)
	}
	{
		r19 = r9
	}
	.falign
.LBB24_3:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r11:10 = combine(r3,r2)
	}
	{
		r3:2 = mpyu(r10,r7)
		r17:16 = mpyu(r10,r12)
	}
	{
		p0 = cmp.gtu(r11:10,r15:14)
		r8 = r3
		r18 = r17
		r17 = r9
	}
	{
		r3:2 = combine(r9,r8)
		r8 = r6
		r6 = add(r6,#1)
	}
	{
		r3:2 += mpyu(r11,r7)
	}
	{
		r3:2 = add(r3:2,r17:16)
	}
	{
		r2 = r3
		r3 = r9
	}
	{
		r3:2 += mpyu(r11,r12)
	}
	{
		r3:2 = add(r3:2,r19:18)
	}
	{
		r3:2 = lsr(r3:2,#3)
	}
	{
		r17:16 = mpyu(r2,r13)
	}
	{
		r17 -= mpyi(r2,#1)
	}
	{
		r17 -= mpyi(r3,#10)
	}
	{
		r11:10 = add(r17:16,r11:10)
	}
	{
		if (p0) jump:nt .LBB24_3
		r28 = add(r10,#48)
		memb(r5++#-1) = r28.new
	}
// %bb.4:                               // %for.body
                                        //   in Loop: Header=BB24_3 Depth=1
	{
		if (p1.new) jump:t .LBB24_3
		p1 = cmp.gt(r4,r8)
	}
	.falign
.LBB24_5:                               // %for.cond.cleanup
	{
		call ##halide_string_to_string
		r2 = add(r5,#1)
	}
	.falign
// %bb.6:                               // %for.cond.cleanup
	{
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end24:
	.size	halide_uint64_to_string, .Lfunc_end24-halide_uint64_to_string
                                        // -- End function
	.section	.text.halide_int64_to_string,"ax",@progbits
	.weak	halide_int64_to_string  // -- Begin function halide_int64_to_string
	.balign 32
	.type	halide_int64_to_string,@function
halide_int64_to_string:                 // @halide_int64_to_string
// %bb.0:                               // %entry
	{
		p0 = cmp.gtu(r1,r0); if (!p0.new) jump:nt .LBB25_3
		r7:6 = combine(#-1,#-1)
	}
// %bb.1:                               // %entry
	{
		p1 = cmp.gt(r3:2,r7:6)
		if (p1.new) jump:nt .LBB25_3
	}
// %bb.2:                               // %if.then
	{
		r3:2 = neg(r3:2)
		r5 = #45
		memb(r0++#1) = r5.new
	}
	.falign
.LBB25_3:                               // %if.end
	{
		jump ##halide_uint64_to_string
	}
.Lfunc_end25:
	.size	halide_int64_to_string, .Lfunc_end25-halide_int64_to_string
                                        // -- End function
	.section	.text.halide_double_to_string,"ax",@progbits
	.weak	halide_double_to_string // -- Begin function halide_double_to_string
	.balign 32
	.type	halide_double_to_string,@function
halide_double_to_string:                // @halide_double_to_string
// %bb.0:                               // %entry
	{
		r17:16 = combine(#0,#0)
		memd(r29+#-16) = r17:16
		allocframe(r29,#584):raw
	}                               // 8-byte Folded Spill
	{
		r23:22 = combine(r0,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#560) = r21:20
		memd(r29+#552) = r23:22
	}                               // 8-byte Folded Spill
	{
		r25 = r1
		r0 = add(r29,#512)
		memd(r29+#544) = r25:24
		memd(r29+#520) = r3:2
	}                               // 8-byte Folded Spill
	{
		r1 = add(r29,#520)
		r2 = #8
		memd(r29+#568) = r19:18
		memd(r29+#536) = r27:26
	}                               // 8-byte Folded Spill
	{
		call ##memcpy
		memd(r29+#512) = r17:16
	}
	.falign
// %bb.1:                               // %entry
	{
		r19:18 = memd(r29+#512)
	}
	{
		r24 = extractu(r19,#11,#20)
		r1:0 = lsr(r19:18,#52)
		r26 = r18
	}
	{
		r27 = extractu(r19,#20,#0)
		r1:0 = extractu(r1:0,#1,#11)
	}
	{
		if (!p0.new) jump:t .LBB26_6
		p0 = cmp.eq(r24,##2047)
		if (p0.new) r19 = add(r27,#0)
	}
// %bb.2:                               // %if.then
	{
		p1 = cmp.eq(r19:18,r17:16)
		if (p1.new) jump:nt .LBB26_21
	}
// %bb.3:                               // %if.then4
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB26_24
		if (!p0.new) r1:0 = combine(r25,r23)
	}
// %bb.4:                               // %if.then6
	{
		r2 = add(pc,##.L.str.13@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.5:                               // %if.then6
	{
		jump .LBB26_75
	}
	.falign
.LBB26_6:                               // %if.else15
	{
		p0 = cmp.eq(r27:26,r17:16)
		if (!p0.new) jump:nt .LBB26_12
	}
// %bb.7:                               // %if.else15
	{
		if (!p1.new) jump:nt .LBB26_12
		p1 = cmp.eq(r24,#0)
	}
// %bb.8:                               // %if.then18
	{
		p0 = cmp.eq(r22,#0); if (p0.new) jump:nt .LBB26_26
	}
// %bb.9:                               // %if.then20
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB26_48
		if (!p1.new) r1:0 = combine(r25,r23)
	}
// %bb.10:                              // %if.then22
	{
		r2 = add(pc,##.L.str.4.17@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.11:                              // %if.then22
	{
		jump .LBB26_75
	}
	.falign
.LBB26_12:                              // %if.end32
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB26_15
		if (!p1.new) r1:0 = combine(r25,r23)
	}
// %bb.13:                              // %if.then34
	{
		r2 = add(pc,##.L.str.8.21@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.14:                              // %if.then34
	{
		r21 = togglebit(r21,#31)
		r23 = r0
	}
	{
		memd(r29+#520) = r21:20
	}
	.falign
.LBB26_15:                              // %if.end37
	{
		p0 = cmp.eq(r22,#0); if (p0.new) jump:nt .LBB26_29
		if (!p0.new) r24 = #0
		if (!p0.new) r16 = add(r25,#0)
	}
// %bb.16:                              // %if.then39
	{
		r25 = ##1072693248
	}
	{
		p1 = dfcmp.uo(r25:24,r21:20)
		p0 = dfcmp.gt(r25:24,r21:20)
		r18 = #0
		r17 = r23
	}
	{
		p1 = and(p0,!p1)
		if (!p1.new) jump:t .LBB26_34
		if (p1.new) r18 = #0
		if (p1.new) r17 = add(r23,#0)
	}
// %bb.17:                              // %while.body.preheader
	{
		r23 = ##1076101120
		r22 = #0
	}
	.falign
.LBB26_18:                              // %while.body
                                        // =>This Inner Loop Header: Depth=1
	{
		call ##__hexagon_muldf3
		r1:0 = combine(r21,r20)
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.19:                              // %while.body
                                        //   in Loop: Header=BB26_18 Depth=1
	{
		p1 = dfcmp.uo(r25:24,r1:0)
		p0 = dfcmp.gt(r25:24,r1:0)
		r21:20 = combine(r1,r0)
		r18 = add(r18,#-1)
	}
	{
		p1 = and(p0,!p1)
		if (p1.new) jump:t .LBB26_18
		if (!p1.new) memd(r29+##520) = r21:20
	}
// %bb.20:                              // %while.cond.while.cond41.preheader_crit_edge
	{
		jump .LBB26_34
	}
	.falign
.LBB26_21:                              // %if.else9
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB26_46
		if (!p1.new) r1:0 = combine(r25,r23)
	}
// %bb.22:                              // %if.then11
	{
		r2 = add(pc,##.L.str.2.15@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.23:                              // %if.then11
	{
		jump .LBB26_75
	}
	.falign
.LBB26_24:                              // %if.else
	{
		r2 = add(pc,##.L.str.1.14@PCREL)
		r1:0 = combine(r25,r23)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.25:                              // %if.else
	{
		jump .LBB26_75
	}
	.falign
.LBB26_26:                              // %if.else26
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB26_54
		if (!p0.new) r1:0 = combine(r25,r23)
	}
// %bb.27:                              // %if.then28
	{
		r2 = add(pc,##.L.str.6.19@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.28:                              // %if.then28
	{
		jump .LBB26_75
	}
	.falign
.LBB26_29:                              // %if.else62
	{
		r19 = setbit(r27,#20)
		if (p0.new) jump:nt .LBB26_56
		r22 = add(r24,#-1075)
		p0 = cmp.eq(r24,#0)
	}
// %bb.30:                              // %if.end66
	{
		p1 = cmp.gtu(r24,##1074)
		if (!p1.new) r26 = #0
		if (p1.new) r16 = add(r23,#0)
	}
	{
		if (p1) jump:nt .LBB26_58
		if (p1) r23 = add(r22,#0)
		if (!p1) r16 = add(r23,#0)
	}
// %bb.31:                              // %if.then72
	{
		p0 = cmp.gtu(r24,##1022)
		r23 = #0
	}
	{
		if (p0) jump:nt .LBB26_59
		jump .LBB26_60
		if (!p0) r27 = #0
	}
// %bb.32:
	.falign
.LBB26_34:                              // %while.cond41.preheader
	{
		r23 = ##1076101120
		r22 = #0
	}
	{
		p0 = dfcmp.gt(r23:22,r21:20)
		p1 = dfcmp.uo(r23:22,r21:20)
	}
	{
		p0 = or(p1,p0)
		if (p0.new) jump:t .LBB26_38
	}
	.falign
.LBB26_35:                              // %while.body43
                                        // =>This Inner Loop Header: Depth=1
	{
		call ##__hexagon_divdf3
		r1:0 = combine(r21,r20)
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.36:                              // %while.body43
                                        //   in Loop: Header=BB26_35 Depth=1
	{
		p0 = dfcmp.uo(r1:0,r23:22)
		p1 = dfcmp.ge(r1:0,r23:22)
		r21:20 = combine(r1,r0)
		r18 = add(r18,#1)
	}
	{
		p0 = and(p1,!p0)
		if (p0.new) jump:t .LBB26_35
		if (!p0.new) memd(r29+##520) = r21:20
	}
	.falign
.LBB26_38:                              // %while.end44
	{
		r1:0 = combine(r21,r20)
		r3 = ##1093567616
		r2 = #0
	}
	{
		call ##__hexagon_muldf3
	}
	.falign
// %bb.39:                              // %while.end44
	{
		r3 = ##1071644672
		r2 = #0
	}
	{
		call ##__hexagon_adddf3
	}
	.falign
// %bb.40:                              // %while.end44
	{
		r7:6 = convert_df2ud(r1:0):chop
		r2 = ##-675924773
	}
	{
		r3 = ##1125899906
	}
	{
		r5:4 = mpyu(r6,r2)
		r9:8 = mpyu(r6,r3)
	}
	{
		r1:0 = combine(#0,r5)
	}
	{
		r5:4 = combine(r1,r0)
		r0 = r8
	}
	{
		r5:4 += mpyu(r7,r2)
	}
	{
		r5:4 = add(r5:4,r1:0)
	}
	{
		r0 = r5
	}
	{
		r5:4 = combine(r1,r0)
		r0 = r9
	}
	{
		r5:4 += mpyu(r7,r3)
	}
	{
		r1:0 = add(r5:4,r1:0)
	}
	{
		r3:2 = combine(r0,r1)
	}
	{
		r5:4 = vlsrw(r3:2,#18)
		r2 = ##-1000000
	}
	{
		r5 = insert(r1,#18,#14)
		r1:0 = combine(r16,r17)
	}
	{
		r11:10 = mpyu(r5,r2)
	}
	{
		r11 -= mpyi(r5,#1)
	}
	{
		r11 += mpyi(r2,r4)
		r3:2 = combine(r4,r5)
		r4 = #1
	}
	{
		call ##halide_int64_to_string
		r21:20 = add(r11:10,r7:6)
	}
	.falign
// %bb.41:                              // %while.end44
	{
		r2 = add(pc,##.L.str.30.67@PCREL)
		r1 = r16
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.42:                              // %while.end44
	{
		r3:2 = combine(r21,r20)
		r4 = #6
		r1 = r16
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.43:                              // %while.end44
	{
		p1 = cmp.gt(r18,#-1); if (!p1.new) jump:nt .LBB26_50
		r1 = r16
	}
// %bb.44:                              // %if.then54
	{
		r2 = add(pc,##.L.str.10.23@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.45:                              // %if.then54
	{
		jump .LBB26_52
	}
	.falign
.LBB26_46:                              // %if.else13
	{
		r2 = add(pc,##.L.str.3.16@PCREL)
		r1:0 = combine(r25,r23)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.47:                              // %if.else13
	{
		jump .LBB26_75
	}
	.falign
.LBB26_48:                              // %if.else24
	{
		r2 = add(pc,##.L.str.5.18@PCREL)
		r1:0 = combine(r25,r23)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.49:                              // %if.else24
	{
		jump .LBB26_75
	}
	.falign
.LBB26_50:                              // %if.else56
	{
		r2 = add(pc,##.L.str.11@PCREL)
		r1 = r16
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.51:                              // %if.else56
	{
		r18 = sub(#0,r18)
	}
	.falign
.LBB26_52:                              // %if.end59
	{
		r19 = asr(r18,#31)
		r4 = #2
		r1 = r16
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.53:                              // %if.end59
	{
		jump .LBB26_75
	}
	.falign
.LBB26_54:                              // %if.else30
	{
		r2 = add(pc,##.L.str.7.20@PCREL)
		r1:0 = combine(r25,r23)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.55:                              // %if.else30
	{
		jump .LBB26_75
	}
	.falign
.LBB26_56:                              // %if.then64
	{
		r1:0 = combine(r25,r23)
		r4 = #0
		r3:2 = combine(#0,#0)
	}
	{
		call ##halide_double_to_string
	}
	.falign
// %bb.57:                              // %if.then64
	{
		jump .LBB26_75
	}
	.falign
.LBB26_58:
	{
		jump .LBB26_63
		r21:20 = combine(#0,#0)
	}
	.falign
.LBB26_59:                              // %if.else76
	{
		r2 = sub(##1075,r24)
	}
	{
		r27:26 = lsr(r19:18,r2)
	}
	{
		r19:18 -= asl(r27:26,r2)
	}
	.falign
.LBB26_60:                              // %if.end84
	{
		r3:2 = convert_ud2df(r19:18)
		r1 = ##1093567616
		r0 = #0
	}
	{
		r1:0 += asl(r23:22,#52)
		call ##__hexagon_muldf3
	}
	.falign
// %bb.61:                              // %if.end84
	{
		r3 = ##1071644672
		r2 = #0
	}
	{
		call ##__hexagon_adddf3
	}
	.falign
// %bb.62:                              // %if.end84
	{
		r3:2 = convert_df2ud(r1:0):chop
		r6 = ##1000000
		r5:4 = combine(#0,#1)
	}
	{
		r7 = #0
	}
	{
		r9:8 = convert_ud2df(r3:2)
		p1 = tstbit(r2,#0)
	}
	{
		p0 = dfcmp.uo(r1:0,r9:8)
		p2 = dfcmp.eq(r1:0,r9:8)
	}
	{
		p0 = and(p2,!p0)
	}
	{
		p1 = and(p1,p0)
	}
	{
		r8 = mux(p1,#-1,#0)
	}
	{
		r1:0 = add(r9:8,r3:2):raw:lo
		r3:2 = add(r27:26,r5:4)
	}
	{
		p2 = cmp.eq(r1:0,r7:6)
	}
	{
		r18 = mux(p2,r2,r26)
		r20 = mux(p2,r23,r0)
		r19 = mux(p2,r3,r27)
		r21 = mux(p2,r23,r1)
	}
	.falign
.LBB26_63:                              // %if.end105
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r5 = add(r29,#0)
	}
	{
		r18 = add(r5,#480)
		r1 = add(r5,#512)
	}
	{
		call ##halide_int64_to_string
		r0 = r18
	}
	.falign
// %bb.64:                              // %if.end105
	{
		p0 = cmp.gt(r23,#0); if (!p0.new) jump:nt .LBB26_71
		r12 = r16
		r3 = #49
	}
// %bb.65:                              // %for.cond112.preheader.preheader
	{
		loop1(.LBB26_66,r23)
	}
	.falign
.Ltmp4:                                 // Block address taken
.LBB26_66:                              // %for.cond112.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB26_68 Depth 2
	{
		p1 = cmp.eq(r0,r18); if (p1.new) jump:nt .LBB26_70
		r4 = sub(r0,r18)
		r2 = r0
	}
// %bb.67:                              // %for.body116.preheader
                                        //   in Loop: Header=BB26_66 Depth=1
	{
		r6 = add(r4,#-1)
		r2 = #0
		r7 = r0
		r5 = memub(r0+#-1)
	}
	{
		r5 = add(##-96,asl(r5,#1))
		p0 = cmp.gtu(r4,#1)
	}
	{
		loop0(.LBB26_68,r6)
		r2 = or(r5,r2)
		r5 = r0
		r4 = add(r0,#-1)
	}
	{
		if (!p0) jump:nt .LBB26_69
		r8 = sxtb(r2)
		r6 = add(r2,#-10)
	}
	.falign
.LBB26_68:                              // %for.body116
                                        //   Parent Loop BB26_66 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	{
		p2 = cmp.gt(r8,#9)
		r5 = r4
		r4 = add(r4,#-1)
		r8 = memub(r4+#-1)
	}
	{
		r8 = add(##-96,asl(r8,#1))
		if (!p2) r6 = add(r2,#0)
		r9 = mux(p2,#1,#0)
	}
	{
		r6 = add(r6,#48)
		r7 = r5
		r2 = or(r8,r9)
		memb(r7+#-1) = r6.new
	}
	{
		r8 = sxtb(r2)
		r6 = add(r2,#-10)
	} :endloop0
	.falign
.LBB26_69:                              //   in Loop: Header=BB26_66 Depth=1
	{
		p1 = cmp.gt(r8,#9)
		if (!p1.new) r6 = add(r2,#0)
	}
	{
		r2 = add(r6,#48)
		memb(r5+#-1) = r2.new
	}
	{
		if (p1) r2 = add(r18,#-1)
		if (!p1) r2 = add(r18,#0)
		if (p1) memb(r18+##-1) = r3
	}
	.falign
.LBB26_70:                              // %if.end138
                                        //   in Loop: Header=BB26_66 Depth=1
	{
		r18 = r2
		nop
		nop
	} :endloop1
	{
		jump .LBB26_72
	}
	.falign
.LBB26_71:
	{
		r2 = r18
		r12 = r16
	}
	.falign
.LBB26_72:                              // %for.cond.cleanup
	{
		call ##halide_string_to_string
		r1:0 = combine(r25,r12)
	}
	.falign
// %bb.73:                              // %for.cond.cleanup
	{
		r2 = add(pc,##.L.str.30.67@PCREL)
		r1 = r25
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.74:                              // %for.cond.cleanup
	{
		r1 = r25
		r3:2 = combine(r21,r20)
		r4 = #6
	}
	{
		call ##halide_int64_to_string
	}
	.falign
.LBB26_75:                              // %cleanup148
	{
		r17:16 = memd(r29+#576)
		r19:18 = memd(r29+#568)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#560)
		r23:22 = memd(r29+#552)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#544)
		r27:26 = memd(r29+#536)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Ltmp5:                                 // Address of block that was removed by CodeGen
.Lfunc_end26:
	.size	halide_double_to_string, .Lfunc_end26-halide_double_to_string
                                        // -- End function
	.section	.text.halide_pointer_to_string,"ax",@progbits
	.weak	halide_pointer_to_string // -- Begin function halide_pointer_to_string
	.balign 32
	.type	halide_pointer_to_string,@function
halide_pointer_to_string:               // @halide_pointer_to_string
// %bb.0:                               // %entry
	{
		r8 = add(pc,##.L.str.12.24@PCREL)
		r5:4 = combine(#0,#0)
		allocframe(#24)
	}
	{
		r3 = #1
		r9 = add(r29,#0)
		r7:6 = combine(#0,r2)
		memw(r29+#16) = #0
	}
	{
		r2 = add(r9,#17)
		memd(r29+#8) = r5:4
		memd(r29+#0) = r5:4
	}
	.falign
.LBB27_1:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r12 = and(r6,#15)
		r9 = r2
		p0 = cmp.gtu(r3,#15)
		r2 = add(r2,#-1)
	}
	{
		if (p0) jump:nt .LBB27_3
		r12 = memub(r8+r12<<#0)
		memb(r9+#1) = r12.new
	}
// %bb.2:                               // %for.body
                                        //   in Loop: Header=BB27_1 Depth=1
	{
		r7:6 = extractu(r7:6,#28,#4)
		r3 = add(r3,#1)
	}
	{
		p1 = cmp.eq(r7:6,r5:4)
		if (!p1.new) jump:t .LBB27_1
	}
	.falign
.LBB27_3:                               // %cleanup
	{
		r3 = #48
		memb(r9+#-1) = r3.new
	}
	{
		call ##halide_string_to_string
		memb(r9+#0) = #120
	}
	.falign
// %bb.4:                               // %cleanup
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end27:
	.size	halide_pointer_to_string, .Lfunc_end27-halide_pointer_to_string
                                        // -- End function
	.section	.text.halide_type_to_string,"ax",@progbits
	.weak	halide_type_to_string   // -- Begin function halide_type_to_string
	.balign 32
	.type	halide_type_to_string,@function
halide_type_to_string:                  // @halide_type_to_string
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r2)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		r2 = memb(r2+#0)
	}
	{
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	{
		p0 = cmp.gtu(r2,#3); if (p0.new) jump:t .LBB28_2
	}
// %bb.1:                               // %switch.lookup
	{
		r3 = add(pc,##.Lswitch.table.halide_type_to_string@PCREL)
	}
	{
		jump .LBB28_3
		r2 = memw(r3+r2<<#2)
	}
	.falign
.LBB28_2:
	{
		r2 = add(pc,##.L.str.17@PCREL)
	}
	.falign
.LBB28_3:                               // %sw.epilog
	{
		call ##halide_string_to_string
		r1 = r17
	}
	.falign
// %bb.4:                               // %sw.epilog
	{
		r1 = r17
		r4 = #1
		r19 = #0
		r18 = memub(r16+#1)
	}
	{
		call ##halide_uint64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.5:                               // %sw.epilog
	{
		r1 = r17
		r2 = memh(r16+#2)
		if (!cmp.eq(r2.new,#1)) jump:t .LBB28_7
	}
// %bb.6:                               // %if.end
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB28_7:                               // %if.then
	{
		r2 = add(pc,##.L.str.18@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %if.then
	{
		r1 = r17
		r4 = #1
		r18 = memuh(r16+#2)
		r17:16 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r3:2 = combine(r19,r18)
		r19:18 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_uint64_to_string
	}
.Lfunc_end28:
	.size	halide_type_to_string, .Lfunc_end28-halide_type_to_string
                                        // -- End function
	.section	.text.halide_buffer_to_string,"ax",@progbits
	.weak	halide_buffer_to_string // -- Begin function halide_buffer_to_string
	.balign 32
	.type	halide_buffer_to_string,@function
halide_buffer_to_string:                // @halide_buffer_to_string
// %bb.0:                               // %entry
	{
		p0 = cmp.eq(r2,#0)
		r16 = r1
		memd(r29+#-16) = r17:16
		allocframe(#32)
	}                               // 8-byte Folded Spill
	{
		memd(r29+#16) = r19:18
		memd(r29+#8) = r21:20
	}                               // 8-byte Folded Spill
	{
		if (p0) jump:nt .LBB29_22
		memd(r29+#0) = r23:22
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end
	{
		r2 = add(pc,##.L.str.20@PCREL)
		r17 = r2
		r1 = r16
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.2:                               // %if.end
	{
		r1 = r16
		r4 = #1
		r3:2 = memd(r17+#0)
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.3:                               // %if.end
	{
		r18 = add(pc,##.L.str.58.76@PCREL)
		r1 = r16
	}
	{
		call ##halide_string_to_string
		r2 = r18
	}
	.falign
// %bb.4:                               // %if.end
	{
		call ##halide_pointer_to_string
		r1 = r16
		r2 = memw(r17+#8)
	}
	.falign
// %bb.5:                               // %if.end
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r18
	}
	.falign
// %bb.6:                               // %if.end
	{
		call ##halide_pointer_to_string
		r1 = r16
		r2 = memw(r17+#12)
	}
	.falign
// %bb.7:                               // %if.end
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r18
	}
	.falign
// %bb.8:                               // %if.end
	{
		r1 = r16
		r4 = #1
		r3:2 = memd(r17+#16)
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.9:                               // %if.end
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r18
	}
	.falign
// %bb.10:                              // %if.end
	{
		call ##halide_type_to_string
		r2 = add(r17,#48)
		r1 = r16
	}
	.falign
// %bb.11:                              // %if.end
	{
		r22 = #0
		r21 = #0
		r2 = memw(r17+#52)
		if (!cmp.gt(r2.new,#0)) jump:nt .LBB29_21
	}
// %bb.12:                              // %for.body.lr.ph
	{
		r18 = add(pc,##.L.str.22@PCREL)
	}
	{
		r19 = add(pc,##.L.str.58.76@PCREL)
	}
	{
		r20 = add(pc,##.L.str.23@PCREL)
	}
	.falign
.LBB29_13:                              // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r18
	}
	.falign
// %bb.14:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		r4 = #1
		r1 = r16
		r2 = memw(r17+#56)
	}
	{
		r2 = memw(r2+r21<<#0)
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r19
	}
	.falign
// %bb.16:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		r4 = #1
		r1 = r16
		r2 = memw(r17+#56)
	}
	{
		r2 = add(r2,r21)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.17:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r19
	}
	.falign
// %bb.18:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		r4 = #1
		r1 = r16
		r2 = memw(r17+#56)
	}
	{
		r2 = add(r2,r21)
	}
	{
		r2 = memw(r2+#8)
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.19:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		call ##halide_string_to_string
		r1 = r16
		r2 = r20
	}
	.falign
// %bb.20:                              // %for.body
                                        //   in Loop: Header=BB29_13 Depth=1
	{
		r21 = add(r21,#16)
		r2 = memw(r17+#52)
	}
	{
		r22 = add(r22,#1)
		if (cmp.gt(r2,r22.new)) jump:t .LBB29_13
	}
	.falign
.LBB29_21:                              // %for.cond.cleanup
	{
		r2 = add(pc,##.L.str.5.94@PCREL)
		r1 = r16
		r17:16 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#16)
		r21:20 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_string_to_string
		r23:22 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	.falign
.LBB29_22:                              // %if.then
	{
		r2 = add(pc,##.L.str.19@PCREL)
		r1 = r16
		r17:16 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#16)
		r21:20 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_string_to_string
		r23:22 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end29:
	.size	halide_buffer_to_string, .Lfunc_end29-halide_buffer_to_string
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx // -- Begin function _ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
	.balign 32
	.type	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx,@function
_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx: // @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
// %bb.0:                               // %entry
	{
		p0 = cmp.gt(r1,#-1)
		r17:16 = combine(r5,r4)
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r21:20 = combine(r3,r2)
		r18 = r0
		memd(r29+#32) = r19:18
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		r2 = add(r0,#24)
		if (p0) r6 = add(r1,#1)
		memd(r29+#16) = r23:22
		memd(r29+#8) = r25:24
	}                               // 8-byte Folded Spill
	{
		if (!p0) jump:nt .LBB30_4
		memd(r29+#0) = r27:26
	}                               // 8-byte Folded Spill
// %bb.1:                               // %land.end.preheader
	{
		loop0(.LBB30_2,r6)
		r3 = asl(r1,#3)
		r5:4 = combine(#0,#1)
	}
	{
		r3 = add(r18,add(r3,#24))
	}
	.falign
.Ltmp6:                                 // Block address taken
.LBB30_2:                               // %land.end
                                        // =>This Inner Loop Header: Depth=1
	{
		r7:6 = memd(r3+#0)
	}
	{
		p1 = cmp.eq(r7:6,r5:4)
		if (!p1.new) jump:nt .LBB30_6
		r3 = add(r3,#-8)
		if (p1.new) r1 = add(r1,#-1)
	}
// %bb.3:                               // %while.body
                                        //   in Loop: Header=BB30_2 Depth=1
	{
		nop
		nop
	} :endloop0
	.falign
.LBB30_4:                               // %while.end
	{
		p0 = cmp.eq(r1,#-1); if (p0.new) jump:nt .LBB30_11
		if (!p0.new) r7:6 = memd(r2+r1<<#3)
		if (p0.new) r1:0 = memd(r18+#0)
	}
	.falign
.LBB30_6:                               // %if.else
	{
		r23:22 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r7:6,r23:22)
		if (p1.new) jump:nt .LBB30_10
		if (!p1.new) r19 = add(r1,#-1)
	}
// %bb.7:                               // %for.body.lr.ph
	{
		r3 = addasl(r18,r1,#3)
		r24 = addasl(r2,r1,#3)
	}
	{
		r25 = add(r3,#152)
		r26 = add(r3,#280)
	}
	.falign
.LBB30_8:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r1:0 = combine(r19,r18)
		r3:2 = combine(r21,r20)
		r5:4 = combine(r17,r16)
	}
	{
		call ##_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
	}
	.falign
// %bb.9:                               // %for.body
                                        //   in Loop: Header=BB30_8 Depth=1
	{
		r3:2 = combine(#0,#1)
		r1:0 = memd(r24+#0)
	}
	{
		r23:22 = add(r23:22,r3:2)
		r3:2 = memd(r25+#0)
	}
	{
		p0 = cmp.gtu(r1:0,r23:22)
		r21:20 = add(r3:2,r21:20)
		r1:0 = memd(r26+#0)
	}
	{
		r17:16 = add(r1:0,r17:16)
		if (p0) jump:nt .LBB30_8
	}
	.falign
.LBB30_10:                              // %if.end
	{
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#8)
		r27:26 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB30_11:                              // %if.then
	{
		r5:4 = memd(r18+#8)
		r2 = memw(r18+#408)
	}
	{
		r7:6 = add(r1:0,r21:20)
		r1:0 = add(r5:4,r17:16)
		r17:16 = memd(r29+#40)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		r1 = r6
		r19:18 = memd(r29+#32)
		r21:20 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		jump ##memcpy
		r27:26 = memd(r29+#0)
		r31:30 = deallocframe(r30):raw
	}                               // 8-byte Folded Reload
.Lfunc_end30:
	.size	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx, .Lfunc_end30-_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv // -- Begin function _ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
	.balign 32
	.type	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv,@function
_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv: // @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
// %bb.0:                               // %entry
	{
		r1 = #15
		r3:2 = memd(r0+#0)
		r5:4 = memd(r0+#8)
	}
	{
		p0 = cmp.eq(r3:2,r5:4)
		if (!p0.new) jump:t .LBB31_2
		if (!p0.new) r3:2 = memd(r0+#16)
	}
// %bb.1:                               // %if.end
	{
		jumpr r31
	}
	.falign
.LBB31_2:                               // %if.then
	{
		jump ##_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
		r5:4 = combine(#0,#0)
	}
.Lfunc_end31:
	.size	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv, .Lfunc_end31-_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b // -- Begin function _ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
	.balign 32
	.type	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b,@function
_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b: // @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
// %bb.0:                               // %entry
	{
		p0 = tstbit(r2,#0)
		p1 = tstbit(r4,#0)
		r9:8 = combine(#0,#0)
		allocframe(r29,#448):raw
	}
	{
		r13:12 = combine(#0,#1)
		r15:14 = combine(#0,#0)
		if (!p0) r5:4 = memd(r1+#0)
		r2 = memub(r1+#49)
	}
	{
		if (p0) r5 = #0
		r2 = add(r2,#7)
		if (p0) r4 = memw(r1+#12)
		r6 = memw(r1+#52)
	}
	{
		if (!p1) r5:4 = memd(r3+#0)
		memd(r29+#0) = r5:4
	}
	{
		if (p1) r5 = #0
		p0 = cmp.gt(r6,#0)
		if (p1) r4 = memw(r3+#12)
		memd(r29+#440) = r17:16
	}                               // 8-byte Folded Spill
	{
		r4 = lsr(r2,#3)
		r5 = #0
		memd(r29+#8) = r5:4
		memd(r29+#432) = r19:18
	}                               // 8-byte Folded Spill
	{
		memd(r29+#424) = r21:20
		memd(r29+#24) = r13:12
	}                               // 8-byte Folded Spill
	{
		memd(r29+#152) = r9:8
		memd(r29+#280) = r9:8
	}
	{
		memd(r29+#160) = r9:8
		memd(r29+#288) = r9:8
	}
	{
		memd(r29+#32) = r13:12
		memd(r29+#40) = r13:12
	}
	{
		memd(r29+#168) = r9:8
		memd(r29+#296) = r9:8
	}
	{
		memd(r29+#48) = r13:12
		memd(r29+#176) = r9:8
	}
	{
		memd(r29+#304) = r9:8
		memd(r29+#56) = r13:12
	}
	{
		memd(r29+#184) = r9:8
		memd(r29+#312) = r9:8
	}
	{
		memd(r29+#64) = r13:12
		memd(r29+#192) = r9:8
	}
	{
		memd(r29+#320) = r9:8
		memd(r29+#72) = r13:12
	}
	{
		memd(r29+#200) = r9:8
		memd(r29+#328) = r9:8
	}
	{
		memd(r29+#80) = r13:12
		memd(r29+#208) = r9:8
	}
	{
		memd(r29+#336) = r9:8
		memd(r29+#88) = r13:12
	}
	{
		memd(r29+#408) = r5:4
		memd(r29+#216) = r9:8
	}
	{
		memd(r29+#344) = r9:8
		memd(r29+#96) = r13:12
	}
	{
		memd(r29+#224) = r9:8
		memd(r29+#352) = r9:8
	}
	{
		memd(r29+#104) = r13:12
		memd(r29+#232) = r9:8
	}
	{
		memd(r29+#360) = r9:8
		memd(r29+#112) = r13:12
	}
	{
		memd(r29+#240) = r9:8
		memd(r29+#368) = r9:8
	}
	{
		memd(r29+#120) = r13:12
		memd(r29+#248) = r9:8
	}
	{
		memd(r29+#376) = r9:8
		memd(r29+#128) = r13:12
	}
	{
		memd(r29+#256) = r9:8
		memd(r29+#384) = r9:8
	}
	{
		memd(r29+#136) = r13:12
		memd(r29+#264) = r9:8
	}
	{
		memd(r29+#392) = r9:8
		memd(r29+#144) = r13:12
	}
	{
		memd(r29+#272) = r9:8
		memd(r29+#400) = r9:8
	}
	{
		if (!p0) jump:nt .LBB32_6
		memd(r29+#16) = r9:8
	}
// %bb.1:                               // %for.body17.lr.ph
	{
		r15 = lsr(r6,#1)
		r12 = and(r6,#1)
		r5 = memw(r1+#56)
		r7 = memw(r3+#56)
	}
	{
		if (!p1.new) jump:t .LBB32_30
		p1 = cmp.gtu(r15,#0)
		r5 = add(r5,#8)
		if (p1.new) r14 = memw(r7+#0)
	}
// %bb.2:
	{
		p1 = cmp.gtu(r15,#1)
		r15 = add(r15,#-1)
		r28 = memw(r5+#0)
		r13 = memw(r5+#-8)
	}
	{
		loop0(.LBB32_3,r15)
		r11 = sub(r14,r13)
		r13 = memw(r7+#16)
		r10 = memw(r5+#8)
	}
	{
		r15 = mpyi(r11,r28)
		r7 = add(r7,#32)
	}
	{
		r14 = sub(r13,r10)
		r5 = add(r5,#32)
		r13 = memw(r5+#16)
	}
	{
		if (!p1) jump:nt .LBB32_4
	}
	.falign
.LBB32_3:                               // =>This Inner Loop Header: Depth=1
	{
		r9:8 = add(r15:14,r9:8):raw:hi
		r13 = mpyi(r14,r13)
		r28 = memw(r7+#0)
		r10 = memw(r5+#-8)
	}
	{
		r9:8 = add(r13:12,r9:8):raw:hi
		r28 = sub(r28,r10)
		r15 = memw(r5+#0)
		r10 = memw(r7+#16)
	}
	{
		r7 = add(r7,#32)
		r5 = add(r5,#32)
		r14 = memw(r5+#8)
		r13 = memw(r5+#16)
	}
	{
		r15 = mpyi(r28,r15)
		r14 = sub(r10,r14)
	} :endloop0
	.falign
.LBB32_4:
	{
		r9:8 = add(r15:14,r9:8):raw:hi
		r13 = mpyi(r14,r13)
		p1 = cmp.gtu(r12,#0)
	}
	{
		r9:8 = add(r13:12,r9:8):raw:hi
	}
	{
		if (p1) jump:t .LBB32_31
		r15:14 = combine(r9,r8)
	}
	.falign
.LBB32_5:                               // %for.cond14.for.cond.cleanup16_crit_edge
	{
		memd(r29+#16) = r15:14
	}
	.falign
.LBB32_6:                               // %for.cond.cleanup16
	{
		r9:8 = mpyu(r14,r4)
		r5 = memw(r3+#52)
	}
	{
		r9 += mpyi(r4,r15)
	}
	{
		p1 = cmp.eq(r6,r5); if (!p1.new) jump:t .LBB32_28
		memd(r29+#16) = r9:8
	}
// %bb.7:                               // %lor.lhs.false
	{
		p1 = cmp.gt(r6,#16); if (p1.new) jump:nt .LBB32_28
		if (!p1.new) r5 = memub(r3+#49)
	}
// %bb.8:                               // %lor.lhs.false
	{
		r5 = add(r5,#7)
	}
	{
		r2 = xor(r5,r2)
		if (cmp.gtu(r2.new,#7)) jump:nt ##.LBB32_28
	}
// %bb.9:                               // %if.end
	{
		p1 = cmp.eq(r4,#0); if (p1.new) jump:nt .LBB32_32
	}
// %bb.10:                              // %for.cond48.preheader
	{
		if (!p0) jump:nt .LBB32_26
		if (p0) r9 = add(r29,#0)
		if (p0) r7 = #0
		if (p0) r2 = memw(r3+#56)
	}
// %bb.11:                              // %for.body52.lr.ph
	{
		loop1(.LBB32_12,r6)
		r3 = lsr(r5,#3)
		r8 = add(r9,#152)
	}
	{
		r6 = add(r9,#24)
		r9 = add(r9,#280)
		r5 = memw(r1+#56)
	}
	{
		r12 = r9
	}
	.falign
.Ltmp7:                                 // Block address taken
.LBB32_12:                              // %for.body52
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB32_15 Depth 2
                                        //     Child Loop BB32_19 Depth 2
	{
		r28 = addasl(r2,r7,#4)
		r13 = addasl(r5,r7,#4)
		p1 = cmp.eq(r7,#0)
	}
	{
		r13 = #0
		r14 = memw(r28+#8)
		r15 = memw(r13+#8)
	}
	{
		r10 = mpyi(r14,r3)
		r14 = mpyi(r15,r4)
		if (!p1) r13 = add(r7,#0)
		r15 = r9
	}
	{
		r11 = asr(r10,#31)
		if (p1) jump:nt .LBB32_17
	}
// %bb.13:                              // %for.body71.lr.ph
                                        //   in Loop: Header=BB32_12 Depth=1
	{
		if (p0.new) jump:nt .LBB32_17
		p0 = cmp.eq(r10,#0)
		if (!p0.new) r13 = #0
	}
// %bb.14:                              // %for.body71.us.preheader
                                        //   in Loop: Header=BB32_12 Depth=1
	{
		loop0(.LBB32_15,r7)
	}
	.falign
.Ltmp8:                                 // Block address taken
.LBB32_15:                              // %for.body71.us
                                        //   Parent Loop BB32_12 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	{
		r17:16 = memd(r15+#0)
	}
	{
		p1 = cmp.gtu(r17:16,r11:10)
		if (p1.new) jump:nt .LBB32_17
		r15 = add(r15,#8)
		if (!p1.new) r13 = add(r13,#1)
	}
// %bb.16:                              // %for.inc78.us
                                        //   in Loop: Header=BB32_15 Depth=2
	{
		nop
		nop
	} :endloop0
	.falign
.LBB32_17:                              // %for.end80
                                        //   in Loop: Header=BB32_12 Depth=1
	{
		r15 = asr(r14,#31)
		if (!p0.new) jump:t .LBB32_21
		r1 = sub(r7,r13)
		p0 = cmp.gtu(r7,r13)
	}
// %bb.18:                              //   in Loop: Header=BB32_12 Depth=1
	{
		r20 = add(r1,#-1)
		p0 = cmp.gtu(r1,#1)
		r17:16 = memd(r12+#-264)
		r19:18 = memd(r12+#-136)
	}
	{
		r19:18 = combine(r12,r12)
		memd(r12+#-256) = r17:16
		memd(r12+#-128) = r19:18
	}
	{
		loop0(.LBB32_19,r20)
		r1 = add(r12,#-8)
		r17:16 = memd(r12+#-8)
	}
	{
		if (!p0) jump:nt .LBB32_20
	}
	.falign
.LBB32_19:                              // %for.body84
                                        //   Parent Loop BB32_12 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	{
		r18 = r1
		r1 = add(r1,#-8)
		memd(r19+#0) = r17:16
	}
	{
		r19 = r18
		r17:16 = memd(r18+#-136)
		r21:20 = memd(r18+#-264)
	}
	{
		r17:16 = memd(r18+#-8)
		memd(r18+#-128) = r17:16
	}
	{
		nop
		memd(r18+#-256) = r21:20
	} :endloop0
	.falign
.LBB32_20:                              //   in Loop: Header=BB32_12 Depth=1
	{
		memd(r18+#0) = r17:16
	}
	.falign
.LBB32_21:                              // %for.cond.cleanup83
                                        //   in Loop: Header=BB32_12 Depth=1
	{
		r7 = add(r7,#1)
		r12 = add(r12,#8)
		r16 = memw(r28+#4)
		memd(r9+r13<<#3) = r11:10
	}
	{
		r17 = asr(r16,#31)
		memd(r8+r13<<#3) = r15:14
	}
	{
		nop
		nop
		memd(r6+r13<<#3) = r17:16
	} :endloop1
// %bb.22:                              // %while.cond.preheader
	{
		r9:8 = combine(#0,#0)
		r7:6 = combine(#0,#1)
		r3:2 = memd(r29+#408)
		r5:4 = memd(r29+#152)
	}
	{
		p0 = cmp.eq(r3:2,r5:4)
		if (!p0.new) jump:t .LBB32_26
		if (p0.new) r5:4 = memd(r29+#280)
	}
	.falign
.LBB32_24:                              // %land.rhs
                                        // =>This Inner Loop Header: Depth=1
	{
		p1 = cmp.eq(r3:2,r5:4)
		if (!p1.new) jump:nt .LBB32_26
		if (p1.new) r3:2 = memd(r29+#32)
		if (p1.new) r17:16 = memd(r29+#40)
	}
// %bb.25:                              // %while.body
                                        //   in Loop: Header=BB32_24 Depth=1
	{
		r15:14 = memd(r29+#24)
		memd(r29+#32) = r17:16
	}
	{
		r21:20 = memd(r29+#48)
		memd(r29+#24) = r3:2
	}
	{
		r3:2 = mpyu(r14,r4)
		r19:18 = memd(r29+#168)
		memd(r29+#40) = r21:20
	}
	{
		r3 += mpyi(r14,r5)
		r13:12 = memd(r29+#160)
		memd(r29+#160) = r19:18
	}
	{
		r3 += mpyi(r4,r15)
		r17:16 = memd(r29+#176)
		r19:18 = memd(r29+#56)
	}
	{
		r17:16 = memd(r29+#184)
		memd(r29+#168) = r17:16
	}
	{
		p0 = cmp.eq(r3:2,r13:12)
		r17:16 = memd(r29+#64)
		memd(r29+#176) = r17:16
	}
	{
		r11:10 = memd(r29+#296)
		memd(r29+#56) = r17:16
	}
	{
		r21:20 = memd(r29+#304)
		memd(r29+#48) = r19:18
	}
	{
		r21:20 = memd(r29+#192)
		memd(r29+#296) = r21:20
	}
	{
		r17:16 = memd(r29+#72)
		memd(r29+#184) = r21:20
	}
	{
		r19:18 = memd(r29+#312)
		memd(r29+#64) = r17:16
	}
	{
		r21:20 = memd(r29+#200)
		memd(r29+#304) = r19:18
	}
	{
		r17:16 = memd(r29+#80)
		memd(r29+#192) = r21:20
	}
	{
		r19:18 = memd(r29+#320)
		memd(r29+#72) = r17:16
	}
	{
		r21:20 = memd(r29+#208)
		memd(r29+#312) = r19:18
	}
	{
		r17:16 = memd(r29+#88)
		memd(r29+#200) = r21:20
	}
	{
		r21:20 = memd(r29+#216)
		memd(r29+#80) = r17:16
	}
	{
		r17:16 = memd(r29+#96)
		memd(r29+#208) = r21:20
	}
	{
		r21:20 = memd(r29+#224)
		memd(r29+#88) = r17:16
	}
	{
		r19:18 = memd(r29+#328)
		memd(r29+#216) = r21:20
	}
	{
		r5:4 = memd(r29+#288)
		memd(r29+#320) = r19:18
	}
	{
		r19:18 = memd(r29+#336)
		memd(r29+#288) = r11:10
	}
	{
		r19:18 = memd(r29+#344)
		memd(r29+#328) = r19:18
	}
	{
		r15:14 = memd(r29+#352)
		memd(r29+#336) = r19:18
	}
	{
		r11:10 = memd(r29+#104)
		memd(r29+#344) = r15:14
	}
	{
		r15:14 = memd(r29+#232)
		memd(r29+#96) = r11:10
	}
	{
		r19:18 = memd(r29+#112)
		memd(r29+#224) = r15:14
	}
	{
		r11:10 = memd(r29+#360)
		memd(r29+#104) = r19:18
	}
	{
		r15:14 = memd(r29+#240)
		memd(r29+#352) = r11:10
	}
	{
		r21:20 = memd(r29+#120)
		memd(r29+#232) = r15:14
	}
	{
		r11:10 = memd(r29+#368)
		memd(r29+#112) = r21:20
	}
	{
		r15:14 = memd(r29+#248)
		memd(r29+#360) = r11:10
	}
	{
		r19:18 = memd(r29+#128)
		memd(r29+#240) = r15:14
	}
	{
		r11:10 = memd(r29+#376)
		memd(r29+#120) = r19:18
	}
	{
		r15:14 = memd(r29+#256)
		memd(r29+#368) = r11:10
	}
	{
		r21:20 = memd(r29+#136)
		memd(r29+#248) = r15:14
	}
	{
		r11:10 = memd(r29+#384)
		memd(r29+#128) = r21:20
	}
	{
		r15:14 = memd(r29+#264)
		memd(r29+#376) = r11:10
	}
	{
		r19:18 = memd(r29+#144)
		memd(r29+#256) = r15:14
	}
	{
		r11:10 = memd(r29+#392)
		memd(r29+#136) = r19:18
	}
	{
		r11:10 = memd(r29+#272)
		memd(r29+#384) = r11:10
	}
	{
		r11:10 = memd(r29+#400)
		memd(r29+#264) = r11:10
	}
	{
		memd(r29+#408) = r3:2
		memd(r29+#152) = r13:12
	}
	{
		memd(r29+#280) = r5:4
		memd(r29+#392) = r11:10
	}
	{
		memd(r29+#144) = r7:6
		memd(r29+#272) = r9:8
	}
	{
		if (p0) jump:nt .LBB32_24
		memd(r29+#400) = r9:8
	}
	.falign
.LBB32_26:                              // %while.end
	{
		call ##__hexagon_memcpy_likely_aligned_min32bytes_mult8bytes
		r1 = add(r29,#0)
		r2 = #416
	}
	.falign
// %bb.27:                              // %while.end
	{
		r17:16 = memd(r29+#440)
		r19:18 = memd(r29+#432)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#424)
		r31:30 = dealloc_return(r30):raw
	}                               // 8-byte Folded Reload
	.falign
.LBB32_28:                              // %if.then
	{
		call ##memset
		r1 = #0
		r2 = #416
	}
	.falign
// %bb.29:                              // %if.then
	{
		r17:16 = memd(r29+#440)
		r19:18 = memd(r29+#432)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#424)
		r31:30 = dealloc_return(r30):raw
	}                               // 8-byte Folded Reload
	.falign
.LBB32_30:
	{
		if (!p1.new) jump:t .LBB32_5
		p1 = cmp.gtu(r12,#0)
	}
	.falign
.Ltmp9:                                 // Block address taken
.LBB32_31:                              // %for.body17
	{
		r12 = memw(r5+#-8)
		r13 = memw(r5+#0)
	}
	{
		r5 = memw(r7++#16)
	}
	{
		r5 = sub(r5,r12)
	}
	{
		r5 = mpyi(r5,r13)
	}
	{
		r15:14 = add(r5:4,r9:8):raw:hi
		jump .LBB32_5
	}
	.falign
.LBB32_32:                              // %if.then45
	{
		call ##memset
		r1 = #0
		r2 = #416
	}
	.falign
// %bb.33:                              // %if.then45
	{
		r17:16 = memd(r29+#440)
		r19:18 = memd(r29+#432)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#424)
		r31:30 = dealloc_return(r30):raw
	}                               // 8-byte Folded Reload
.Ltmp10:                                // Address of block that was removed by CodeGen
.Lfunc_end32:
	.size	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b, .Lfunc_end32-_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t // -- Begin function _ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	.balign 32
	.type	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t,@function
_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t: // @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		r3:2 = memd(r1+#16)
	}
	{
		r19 = #0
		r3 = #2
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	{
		r18 = and(r2,r3)
	}
	{
		p0 = cmp.eq(r19:18,r5:4)
		if (p0.new) jump:t .LBB33_5
		if (!p0.new) r19 = #-14
	}
// %bb.1:                               // %if.end
	{
		p1 = tstbit(r2,#0); if (p1.new) jump:t .LBB33_5
		r16 = r1
		r17 = r0
	}
// %bb.2:                               // %if.end9
	{
		r2 = memw(r1+#8)
	}
	{
		p0 = cmp.eq(r2,#0); if (p0.new) jump:nt .LBB33_6
		r1 = r16
		if (!p0.new) r2 = memw(r2+#60)
	}
// %bb.3:                               // %if.end15
	{
		r2 = memw(r2+#24)
	}
	{
		callr r2
	}
	.falign
// %bb.4:                               // %if.end15
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB33_7
		if (p1.new) r1:0 = combine(r16,r17)
		if (p1.new) r3:2 = memd(r16+#16)
	}
	.falign
.LBB33_5:                               // %return
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB33_6:
	{
		r19 = #-19
	}
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB33_7:                               // %if.end23
	{
		r2 = clrbit(r2,#1)
	}
	{
		call ##halide_msan_annotate_buffer_is_initialized
		memd(r16+#16) = r3:2
	}
	.falign
// %bb.8:                               // %if.end23
	{
		r19 = #0
	}
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end33:
	.size	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t, .Lfunc_end33-_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
                                        // -- End function
	.section	.text.halide_device_release,"ax",@progbits
	.weak	halide_device_release   // -- Begin function halide_device_release
	.balign 32
	.type	halide_device_release,@function
halide_device_release:                  // @halide_device_release
// %bb.0:                               // %entry
	{
		r2 = memw(r1+#60)
	}
	{
		r7 = memw(r2+#20)
	}
	{
		jumpr r7
	}
.Lfunc_end34:
	.size	halide_device_release, .Lfunc_end34-halide_device_release
                                        // -- End function
	.section	.text.halide_copy_to_host,"ax",@progbits
	.weak	halide_copy_to_host     // -- Begin function halide_copy_to_host
	.balign 32
	.type	halide_copy_to_host,@function
halide_copy_to_host:                    // @halide_copy_to_host
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		r19 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_mutex_lock
		r0 = memw(r19+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r17,#0); if (p1.new) jump:nt .LBB35_6
		if (!p1.new) r1:0 = memd(r17+#0)
		if (!p1.new) r2 = memw(r17+#8)
	}
// %bb.2:                               // %if.end.i
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB35_8
	}
// %bb.3:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB35_8
		if (!p1.new) r0 = add(r16,#0)
	}
// %bb.4:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.5:                               // %if.then8.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB35_17
	}
	{
		jump .LBB35_15
	}
	.falign
.LBB35_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.9.26@PCREL)
		r0 = r16
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB35_17
	}
	{
		jump .LBB35_15
	}
	.falign
.LBB35_8:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB35_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB35_12
		if (!p0) r0 = add(r16,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB35_17
	}
	{
		jump .LBB35_15
	}
	.falign
.LBB35_12:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r17+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB35_19
		if (!p0.new) r1:0 = combine(r17,r16)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
		r0 = r16
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB35_17
	}
	.falign
.LBB35_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.split
	{
		call ##_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.split
	{
		r18 = r0
	}
	.falign
.LBB35_17:                              // %cleanup
	{
		call ##halide_mutex_unlock
		r0 = memw(r19+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.18:                              // %cleanup
	{
		r0 = r18
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB35_19:                              // %if.end16.i.split
	{
		call ##_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	}
	.falign
// %bb.20:                              // %if.end16.i.split
	{
		r18 = r0 ; jump .LBB35_17
	}
.Lfunc_end35:
	.size	halide_copy_to_host, .Lfunc_end35-halide_copy_to_host
                                        // -- End function
	.section	.text.copy_to_device_already_locked,"ax",@progbits
	.weak	copy_to_device_already_locked // -- Begin function copy_to_device_already_locked
	.balign 32
	.type	copy_to_device_already_locked,@function
copy_to_device_already_locked:          // @copy_to_device_already_locked
// %bb.0:                               // %entry
	{
		r17:16 = combine(r0,r1)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB36_5
		if (p1) r0 = add(r17,#0)
		r18 = r2
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r2 = memw(r16+#8)
		r1:0 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB36_7
	}
// %bb.2:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB36_7
		if (!p1.new) r0 = add(r17,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB36_27
	}
	{
		jump .LBB36_14
	}
	.falign
.LBB36_5:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.10.27@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.6:                               // %if.then.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB36_27
	}
	{
		jump .LBB36_14
	}
	.falign
.LBB36_7:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB36_11
	}
// %bb.8:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB36_11
		if (!p0) r0 = add(r17,#0)
	}
// %bb.9:                               // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.10:                              // %if.then14.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB36_27
	}
	{
		jump .LBB36_14
	}
	.falign
.LBB36_11:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r16+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB36_14
		if (p0.new) r0 = add(r17,#0)
	}
// %bb.12:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.13:                              // %if.then24.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB36_27
	}
	.falign
.LBB36_14:                              // %if.end
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:t .LBB36_16
	}
// %bb.15:                              // %if.then2
	{
		r18 = memw(r16+#8)
		if (cmp.eq(r18.new,#0)) jump:nt .LBB36_28
	}
	.falign
.LBB36_16:                              // %if.end11
	{
		r3:2 = combine(#0,#0)
		r1:0 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (p0.new) jump:nt .LBB36_20
		if (p0.new) r1:0 = combine(r16,r17)
		if (p0.new) r2 = add(r18,#0)
	}
// %bb.17:                              // %land.lhs.true
	{
		r2 = memw(r16+#8)
		if (cmp.eq(r2.new,r18)) jump:nt .LBB36_22
	}
// %bb.18:                              // %if.then14
	{
		r1 = add(pc,##.L.str.12.28@PCREL)
		r0 = r17
	}
	{
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then14
	{
		r19 = #-42
	}
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB36_20:                              // %if.then18
	{
		call ##halide_device_malloc
	}
	.falign
// %bb.21:                              // %if.then18
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB36_27
		r19 = r0
	}
	.falign
.LBB36_22:                              // %if.end27
	{
		r5:4 = combine(#0,#0)
		r2 = #2
		r19 = #0
		r1:0 = memd(r16+#16)
	}
	{
		p1 = tstbit(r0,#0); if (!p1.new) jump:t .LBB36_27
		r1 = #0
		if (p1.new) r19 = #-15
	}
// %bb.23:                              // %if.then29
	{
		r0 = and(r0,r2)
	}
	{
		p0 = cmp.eq(r1:0,r5:4)
		if (!p0.new) jump:t .LBB36_27
		if (p0.new) r1:0 = combine(r16,r17)
		if (p0.new) r2 = memw(r18+#60)
	}
// %bb.24:                              // %if.else
	{
		r2 = memw(r2+#28)
	}
	{
		callr r2
	}
	.falign
// %bb.25:                              // %if.else
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB36_27
		if (p1.new) r19 = #0
		if (p1.new) r1:0 = memd(r16+#16)
	}
// %bb.26:                              // %if.then42
	{
		r0 = clrbit(r0,#0)
	}
	{
		memd(r16+#16) = r1:0
	}
	.falign
.LBB36_27:                              // %cleanup
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB36_28:                              // %if.then7
	{
		r0 = r17
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_no_device_interface
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end36:
	.size	copy_to_device_already_locked, .Lfunc_end36-copy_to_device_already_locked
                                        // -- End function
	.section	.text.halide_device_malloc,"ax",@progbits
	.weak	halide_device_malloc    // -- Begin function halide_device_malloc
	.balign 32
	.type	halide_device_malloc,@function
halide_device_malloc:                   // @halide_device_malloc
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r2)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB37_6
		r18 = r0
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r5:4 = combine(#0,#0)
		r2 = memw(r17+#8)
		r1:0 = memd(r17+#0)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB37_8
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (p1.new) jump:nt .LBB37_8
		if (!p1.new) r0 = add(r18,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB37_15
	}
	.falign
.LBB37_5:                               // %cleanup12
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB37_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.18.29@PCREL)
		r0 = r18
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB37_5
	}
	{
		jump .LBB37_15
	}
	.falign
.LBB37_8:                               // %if.end10.i
	{
		r5:4 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (!p1.new) jump:nt .LBB37_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB37_12
		if (!p0) r0 = add(r18,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB37_5
	}
	{
		jump .LBB37_15
	}
	.falign
.LBB37_12:                              // %if.end16.i
	{
		r5:4 = combine(#0,#3)
		r1:0 = memd(r17+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r5:4)
		if (!p0.new) jump:t .LBB37_16
		if (p0.new) r0 = add(r18,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB37_5
	}
	.falign
.LBB37_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r2 = memw(r17+#8)
	}
	.falign
.LBB37_16:                              // %if.end
	{
		p0 = cmp.eq(r2,#0); if (p0.new) jump:nt .LBB37_20
		if (!p0.new) r0 = add(r18,#0)
	}
// %bb.17:                              // %if.end
	{
		p1 = cmp.eq(r2,r16); if (p1.new) jump:nt .LBB37_20
	}
// %bb.18:                              // %if.then6
	{
		r1 = add(pc,##.L.str.20.30@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then6
	{
		r0 = #-42
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB37_20:                              // %if.end7
	{
		r2 = memw(r16+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.21:                              // %if.end7
	{
		r1:0 = combine(r17,r18)
		r2 = memw(r16+#60)
	}
	{
		r2 = memw(r2+#8)
	}
	{
		callr r2
	}
	.falign
// %bb.22:                              // %if.end7
	{
		r16 = r0
		r2 = memw(r16+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.23:                              // %if.end7
	{
		p0 = cmp.eq(r16,#0)
	}
	{
		r0 = mux(p0,#0,#-16)
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end37:
	.size	halide_device_malloc, .Lfunc_end37-halide_device_malloc
                                        // -- End function
	.section	.text.halide_copy_to_device,"ax",@progbits
	.weak	halide_copy_to_device   // -- Begin function halide_copy_to_device
	.balign 32
	.type	halide_copy_to_device,@function
halide_copy_to_device:                  // @halide_copy_to_device
// %bb.0:                               // %entry
	{
		r3 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		r16 = r0
	}
	{
		r19:18 = combine(r1,r2)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	{
		r17 = memw(r3+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	{
		call ##halide_mutex_lock
		r0 = r17
	}
	{
		call ##copy_to_device_already_locked
		r1:0 = combine(r19,r16)
		r2 = r18
	}
	{
		call ##halide_mutex_unlock
		r16 = r0
		r0 = r17
	}
	{
		r0 = r16
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end38:
	.size	halide_copy_to_device, .Lfunc_end38-halide_copy_to_device
                                        // -- End function
	.section	.text.halide_device_sync,"ax",@progbits
	.weak	halide_device_sync      // -- Begin function halide_device_sync
	.balign 32
	.type	halide_device_sync,@function
halide_device_sync:                     // @halide_device_sync
// %bb.0:                               // %entry
	{
		r17:16 = combine(r0,r1)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB39_6
		if (p1) r0 = add(r17,#0)
		if (!p1) r1:0 = memd(r16+#0)
		if (!p1) r2 = memw(r16+#8)
	}
// %bb.1:                               // %if.end.i
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB39_8
		r5:4 = combine(#0,#0)
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (p1.new) jump:nt .LBB39_8
		if (!p1.new) r0 = add(r17,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB39_15
	}
	.falign
.LBB39_5:                               // %cleanup8
	{
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB39_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.17.31@PCREL)
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB39_5
	}
	{
		jump .LBB39_15
	}
	.falign
.LBB39_8:                               // %if.end10.i
	{
		r5:4 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (!p1.new) jump:nt .LBB39_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB39_12
		if (!p0) r0 = add(r17,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB39_5
	}
	{
		jump .LBB39_15
	}
	.falign
.LBB39_12:                              // %if.end16.i
	{
		r5:4 = combine(#0,#3)
		r1:0 = memd(r16+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r5:4)
		if (!p0.new) jump:t .LBB39_16
		if (p0.new) r0 = add(r17,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB39_5
	}
	.falign
.LBB39_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r2 = memw(r16+#8)
	}
	.falign
.LBB39_16:                              // %if.end
	{
		p0 = cmp.eq(r2,#0); if (p0.new) jump:nt .LBB39_19
		r1:0 = combine(r16,r17)
		if (!p0.new) r2 = memw(r2+#60)
	}
// %bb.17:                              // %if.end5
	{
		r2 = memw(r2+#16)
	}
	{
		callr r2
	}
	.falign
// %bb.18:                              // %if.end5
	{
		p1 = cmp.eq(r0,#0)
	}
	{
		r0 = mux(p1,#0,#-17)
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB39_19:                              // %if.then3
	{
		r0 = r17
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_no_device_interface
	}
.Lfunc_end39:
	.size	halide_device_sync, .Lfunc_end39-halide_device_sync
                                        // -- End function
	.section	.text.halide_device_free,"ax",@progbits
	.weak	halide_device_free      // -- Begin function halide_device_free
	.balign 32
	.type	halide_device_free,@function
halide_device_free:                     // @halide_device_free
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r0)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB40_6
		if (p1) r0 = add(r16,#0)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
		r18 = memw(r17+#8)
		r1:0 = memd(r17+#0)
	}
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:nt .LBB40_8
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB40_8
		if (!p1.new) r0 = add(r16,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB40_15
	}
	.falign
.LBB40_5:                               // %cleanup12
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB40_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.21.32@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB40_5
	}
	{
		jump .LBB40_15
	}
	.falign
.LBB40_8:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB40_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB40_12
		if (!p0) r0 = add(r16,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB40_5
	}
	{
		jump .LBB40_15
	}
	.falign
.LBB40_12:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r17+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB40_16
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB40_5
	}
	.falign
.LBB40_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r18 = memw(r17+#8)
	}
	.falign
.LBB40_16:                              // %if.end
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB40_24
		r0 = #0
		if (!p0.new) r2 = memw(r18+#60)
	}
// %bb.17:                              // %if.then3
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.18:                              // %if.then3
	{
		r1:0 = combine(r17,r16)
		r2 = memw(r18+#60)
	}
	{
		r2 = memw(r2+#12)
	}
	{
		callr r2
	}
	.falign
// %bb.19:                              // %if.then3
	{
		r18 = r0
		r2 = memw(r18+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.20:                              // %if.then3
	{
		r3:2 = combine(#0,#0)
		r1:0 = memd(r17+#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB40_23
		if (!p1.new) r0 = add(r16,#0)
	}
// %bb.21:                              // %if.then8
	{
		r1 = add(pc,##.L.str.22.33@PCREL)
		call ##halide_print
	}
	.falign
// %bb.22:                              // %if.then8
	{
		call ##abort
	}
	.falign
.LBB40_23:                              // %if.end9
	{
		p0 = cmp.eq(r18,#0)
	}
	{
		r0 = mux(p0,#0,#-18)
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB40_24:                              // %if.end11
	{
		r3:2 = memd(r17+#16)
	}
	{
		r2 = clrbit(r2,#1)
	}
	{
		r17:16 = memd(r29+#8)
		memd(r17+#16) = r3:2
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end40:
	.size	halide_device_free, .Lfunc_end40-halide_device_free
                                        // -- End function
	.section	.text.halide_device_free_as_destructor,"ax",@progbits
	.weak	halide_device_free_as_destructor // -- Begin function halide_device_free_as_destructor
	.balign 32
	.type	halide_device_free_as_destructor,@function
halide_device_free_as_destructor:       // @halide_device_free_as_destructor
// %bb.0:                               // %entry
	{
		jump ##halide_device_free
	}
.Lfunc_end41:
	.size	halide_device_free_as_destructor, .Lfunc_end41-halide_device_free_as_destructor
                                        // -- End function
	.section	.text.halide_device_and_host_malloc,"ax",@progbits
	.weak	halide_device_and_host_malloc // -- Begin function halide_device_and_host_malloc
	.balign 32
	.type	halide_device_and_host_malloc,@function
halide_device_and_host_malloc:          // @halide_device_and_host_malloc
// %bb.0:                               // %entry
	{
		p1 = cmp.eq(r1,#0)
		r17:16 = combine(r2,r0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB42_6
		if (p1) r0 = add(r16,#0)
		r18 = r1
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r5:4 = combine(#0,#0)
		r2 = memw(r18+#8)
		r1:0 = memd(r18+#0)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB42_8
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (p1.new) jump:nt .LBB42_8
		if (!p1.new) r0 = add(r16,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB42_15
	}
	.falign
.LBB42_5:                               // %cleanup14
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB42_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.23.34@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB42_5
	}
	{
		jump .LBB42_15
	}
	.falign
.LBB42_8:                               // %if.end10.i
	{
		r5:4 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (!p1.new) jump:nt .LBB42_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB42_12
		if (!p0) r0 = add(r16,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB42_5
	}
	{
		jump .LBB42_15
	}
	.falign
.LBB42_12:                              // %if.end16.i
	{
		r5:4 = combine(#0,#3)
		r1:0 = memd(r18+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r5:4)
		if (!p0.new) jump:t .LBB42_16
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB42_5
	}
	.falign
.LBB42_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r2 = memw(r18+#8)
	}
	.falign
.LBB42_16:                              // %if.end
	{
		p0 = cmp.eq(r2,#0)
		r1:0 = combine(#0,#0)
	}
	{
		memd(r18+#40) = r1:0
		memd(r18+#32) = r1:0
	}
	{
		if (p0) jump:nt .LBB42_20
		if (!p0) r0 = add(r16,#0)
		memd(r18+#24) = r1:0
	}
// %bb.17:                              // %if.end
	{
		p1 = cmp.eq(r2,r17); if (p1.new) jump:nt .LBB42_20
	}
// %bb.18:                              // %if.then6
	{
		r1 = add(pc,##.L.str.25@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then6
	{
		r0 = #-42
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB42_20:                              // %if.end7
	{
		r2 = memw(r17+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.21:                              // %if.end7
	{
		r1:0 = combine(r18,r16)
		r2 = memw(r17+#60)
	}
	{
		r2 = memw(r2+#32)
	}
	{
		callr r2
	}
	.falign
// %bb.22:                              // %if.end7
	{
		r17 = r0
		r2 = memw(r17+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.23:                              // %if.end7
	{
		p0 = cmp.eq(r17,#0); if (p0.new) jump:nt .LBB42_26
		r0 = r16
		if (p0.new) r17:16 = memd(r29+#8)
	}                               // 8-byte Folded Reload
// %bb.24:                              // %if.then12
	{
		r1 = add(pc,##.L.str.26@PCREL)
		call ##halide_error
	}
	.falign
// %bb.25:                              // %if.then12
	{
		r0 = #-16
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB42_26:
	{
		r0 = #0
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end42:
	.size	halide_device_and_host_malloc, .Lfunc_end42-halide_device_and_host_malloc
                                        // -- End function
	.section	.text.halide_device_and_host_free,"ax",@progbits
	.weak	halide_device_and_host_free // -- Begin function halide_device_and_host_free
	.balign 32
	.type	halide_device_and_host_free,@function
halide_device_and_host_free:            // @halide_device_and_host_free
// %bb.0:                               // %entry
	{
		r17:16 = combine(r0,r1)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB43_6
		if (p1) r0 = add(r17,#0)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
		r18 = memw(r16+#8)
		r1:0 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:nt .LBB43_8
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB43_8
		if (!p1.new) r0 = add(r17,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB43_15
	}
	.falign
.LBB43_5:                               // %cleanup18
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB43_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.27@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB43_5
	}
	{
		jump .LBB43_15
	}
	.falign
.LBB43_8:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB43_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB43_12
		if (!p0) r0 = add(r17,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB43_5
	}
	{
		jump .LBB43_15
	}
	.falign
.LBB43_12:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r16+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB43_16
		if (p0.new) r0 = add(r17,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB43_5
	}
	.falign
.LBB43_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r18 = memw(r16+#8)
	}
	.falign
.LBB43_16:                              // %if.end
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB43_24
		if (!p0.new) r2 = memw(r18+#60)
	}
// %bb.17:                              // %if.then3
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.18:                              // %if.then3
	{
		r1:0 = combine(r16,r17)
		r2 = memw(r18+#60)
	}
	{
		r2 = memw(r2+#36)
	}
	{
		callr r2
	}
	.falign
// %bb.19:                              // %if.then3
	{
		r18 = r0
		r2 = memw(r18+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.20:                              // %if.then3
	{
		r3:2 = combine(#0,#0)
		r1:0 = memd(r16+#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB43_23
		if (!p1.new) r0 = add(r17,#0)
	}
// %bb.21:                              // %if.then8
	{
		r1 = add(pc,##.L.str.28@PCREL)
		call ##halide_print
	}
	.falign
// %bb.22:                              // %if.then8
	{
		call ##abort
	}
	.falign
.LBB43_23:                              // %if.end9
	{
		p0 = cmp.eq(r18,#0)
	}
	{
		r0 = mux(p0,#0,#-18)
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB43_24:                              // %if.else11
	{
		r1 = memw(r16+#12)
		if (cmp.eq(r1.new,#0)) jump:nt .LBB43_27
	}
// %bb.25:                              // %if.then13
	{
		call ##halide_free
		r0 = r17
	}
	.falign
// %bb.26:                              // %if.then13
	{
		memw(r16+#12) = #0
	}
	.falign
.LBB43_27:                              // %if.end17
	{
		r0 = #0
		r3:2 = memd(r16+#16)
	}
	{
		r2 = clrbit(r2,#1)
	}
	{
		r17:16 = memd(r29+#8)
		memd(r16+#16) = r3:2
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end43:
	.size	halide_device_and_host_free, .Lfunc_end43-halide_device_and_host_free
                                        // -- End function
	.section	.text.halide_default_device_and_host_malloc,"ax",@progbits
	.weak	halide_default_device_and_host_malloc // -- Begin function halide_default_device_and_host_malloc
	.balign 32
	.type	halide_default_device_and_host_malloc,@function
halide_default_device_and_host_malloc:  // @halide_default_device_and_host_malloc
// %bb.0:                               // %entry
	{
		r17:16 = combine(r0,r1)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB44_6
		if (p1) r0 = add(r17,#0)
		r18 = r2
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r2 = memw(r16+#8)
		r1:0 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB44_8
	}
// %bb.2:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB44_8
		if (!p1.new) r0 = add(r17,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		r19 = r0
		if (cmp.eq(r19.new,#0)) jump:nt .LBB44_15
	}
	.falign
.LBB44_5:                               // %cleanup13
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB44_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.29@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB44_5
	}
	{
		jump .LBB44_15
	}
	.falign
.LBB44_8:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB44_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB44_12
		if (!p0) r0 = add(r17,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB44_5
	}
	{
		jump .LBB44_15
	}
	.falign
.LBB44_12:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r16+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB44_15
		if (p0.new) r0 = add(r17,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		r19 = r0
		if (!cmp.eq(r19.new,#0)) jump:t .LBB44_5
	}
	.falign
.LBB44_15:                              // %if.end
	{
		r6 = memw(r16+#52)
	}
	{
		p0 = cmp.gt(r6,#0); if (!p0.new) jump:nt .LBB44_25
		if (p0.new) r2 = #0
		if (p0.new) r3 = memw(r16+#56)
	}
// %bb.16:                              // %for.body.lr.ph.i.i
	{
		loop0(.LBB44_17,r6)
		r3 = add(r3,#8)
	}
	{
		r4 = r3
	}
	.falign
.Ltmp11:                                // Block address taken
.LBB44_17:                              // %for.body.i.i
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r4+#0)
		if (!cmp.gt(r5.new,#0)) jump:nt .LBB44_19
	}
// %bb.18:                              // %if.then.i.i
                                        //   in Loop: Header=BB44_17 Depth=1
	{
		r7 = memw(r4+#-4)
	}
	{
		r7 = add(r7,#-1)
	}
	{
		r2 += mpyi(r7,r5)
	}
	.falign
.LBB44_19:                              // %for.inc.i.i
                                        //   in Loop: Header=BB44_17 Depth=1
	{
		r4 = add(r4,#16)
		nop
	} :endloop0
// %bb.20:                              // %for.body.lr.ph.i5.i
	{
		loop0(.LBB44_21,r6)
		r5 = #0
		r4 = memub(r16+#49)
	}
	.falign
.Ltmp12:                                // Block address taken
.LBB44_21:                              // %for.body.i15.i
                                        // =>This Inner Loop Header: Depth=1
	{
		r6 = memw(r3+#0)
		if (!cmp.gt(r6.new,#-1)) jump:nt .LBB44_23
	}
// %bb.22:                              // %for.inc.i24.i
                                        //   in Loop: Header=BB44_21 Depth=1
	{
		r3 = add(r3,#16)
		nop
	} :endloop0
	{
		jump .LBB44_24
	}
	.falign
.LBB44_23:                              // %if.then.i20.i
                                        //   in Loop: Header=BB44_21 Depth=1
	{
		r7 = memw(r3+#-4)
	}
	{
		r7 = add(r7,#-1)
	}
	{
		r5 += mpyi(r7,r6)
		r3 = add(r3,#16)
	} :endloop0
	.falign
.LBB44_24:                              // %_ZNK15halide_buffer_t13size_in_bytesEv.exit.loopexit
	{
		jump .LBB44_26
		r2 = add(r2,#1)
	}
	.falign
.LBB44_25:                              // %_ZNK15halide_buffer_t3endEv.exit.thread.i
	{
		r5 = #0
		r2 = #1
		r4 = memub(r16+#49)
	}
	.falign
.LBB44_26:                              // %_ZNK15halide_buffer_t13size_in_bytesEv.exit
	{
		r3 = add(r4,#7)
		r2 = sub(r2,r5)
		r0 = r17
	}
	{
		r3 = lsr(r3,#3)
	}
	{
		r1 = mpyi(r2,r3)
		call ##halide_malloc
	}
	.falign
// %bb.27:                              // %_ZNK15halide_buffer_t13size_in_bytesEv.exit
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB44_32
		if (!p1.new) r2 = add(r18,#0)
		memw(r16+#12) = r0
	}
// %bb.28:                              // %if.end6
	{
		call ##halide_device_malloc
		r1:0 = combine(r16,r17)
	}
	.falign
// %bb.29:                              // %if.end6
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB44_33
		r19 = r0
		if (!p0.new) r1 = memw(r16+#12)
	}
// %bb.30:                              // %if.then9
	{
		call ##halide_free
		r0 = r17
	}
	.falign
// %bb.31:                              // %if.then9
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		memw(r16+#12) = #0
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB44_32:
	{
		r19 = #-1
	}
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB44_33:
	{
		r19 = #0
	}
	{
		r0 = r19
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end44:
	.size	halide_default_device_and_host_malloc, .Lfunc_end44-halide_default_device_and_host_malloc
                                        // -- End function
	.section	.text.halide_default_device_and_host_free,"ax",@progbits
	.weak	halide_default_device_and_host_free // -- Begin function halide_default_device_and_host_free
	.balign 32
	.type	halide_default_device_and_host_free,@function
halide_default_device_and_host_free:    // @halide_default_device_and_host_free
// %bb.0:                               // %entry
	{
		r17:16 = combine(r0,r1)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB45_6
		if (p1) r0 = add(r17,#0)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r2 = memw(r16+#8)
		r1:0 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB45_8
	}
// %bb.2:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB45_8
		if (!p1.new) r0 = add(r17,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		r18 = r0
		if (cmp.eq(r18.new,#0)) jump:nt .LBB45_15
	}
	.falign
.LBB45_5:                               // %cleanup
	{
		r0 = r18
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB45_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.30@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB45_5
	}
	{
		jump .LBB45_15
	}
	.falign
.LBB45_8:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB45_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB45_12
		if (!p0) r0 = add(r17,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB45_5
	}
	{
		jump .LBB45_15
	}
	.falign
.LBB45_12:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r16+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB45_20
		if (!p0.new) r1:0 = combine(r16,r17)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
		r0 = r17
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		r18 = r0
		if (!cmp.eq(r18.new,#0)) jump:t .LBB45_5
	}
	.falign
.LBB45_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.split
	{
		call ##halide_device_free
		r1:0 = combine(r16,r17)
	}
	.falign
// %bb.16:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.split
	{
		r18 = r0
		r1 = memw(r16+#12)
		if (cmp.eq(r1.new,#0)) jump:nt .LBB45_19
	}
	.falign
.LBB45_17:                              // %if.then2
	{
		call ##halide_free
		r0 = r17
	}
	.falign
// %bb.18:                              // %if.then2
	{
		memw(r16+#12) = #0
	}
	.falign
.LBB45_19:                              // %if.end5
	{
		r2 = #-4
		r1:0 = memd(r16+#16)
	}
	{
		r0 = and(r0,r2)
	}
	{
		r0 = r18
		r17:16 = memd(r29+#8)
		memd(r16+#16) = r1:0
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB45_20:                              // %if.end16.i.split
	{
		call ##halide_device_free
	}
	.falign
// %bb.21:                              // %if.end16.i.split
	{
		r18 = r0
		r1 = memw(r16+#12)
		if (!cmp.eq(r1.new,#0)) jump:t .LBB45_17
	}
	{
		jump .LBB45_19
	}
.Lfunc_end45:
	.size	halide_default_device_and_host_free, .Lfunc_end45-halide_default_device_and_host_free
                                        // -- End function
	.section	.text.halide_device_wrap_native,"ax",@progbits
	.weak	halide_device_wrap_native // -- Begin function halide_device_wrap_native
	.balign 32
	.type	halide_device_wrap_native,@function
halide_device_wrap_native:              // @halide_device_wrap_native
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r4)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#24)
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r3,r2)
		r20 = r0
		memd(r29+#8) = r19:18
		memd(r29+#0) = r21:20
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB46_6
		if (p1) r0 = add(r20,#0)
		if (!p1) r1:0 = memd(r17+#0)
		if (!p1) r2 = memw(r17+#8)
	}
// %bb.1:                               // %if.end.i
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB46_8
		r5:4 = combine(#0,#0)
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (p1.new) jump:nt .LBB46_8
		if (!p1.new) r0 = add(r20,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB46_15
	}
	.falign
.LBB46_5:                               // %cleanup12
	{
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB46_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.31@PCREL)
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB46_5
	}
	{
		jump .LBB46_15
	}
	.falign
.LBB46_8:                               // %if.end10.i
	{
		r5:4 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r5:4)
		if (!p1.new) jump:nt .LBB46_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB46_12
		if (!p0) r0 = add(r20,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB46_5
	}
	{
		jump .LBB46_15
	}
	.falign
.LBB46_12:                              // %if.end16.i
	{
		r5:4 = combine(#0,#3)
		r1:0 = memd(r17+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r5:4)
		if (!p0.new) jump:t .LBB46_16
		if (p0.new) r0 = add(r20,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB46_5
	}
	.falign
.LBB46_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r2 = memw(r17+#8)
	}
	.falign
.LBB46_16:                              // %if.end
	{
		p0 = cmp.eq(r2,#0); if (p0.new) jump:nt .LBB46_20
		if (!p0.new) r0 = add(r20,#0)
	}
// %bb.17:                              // %if.end
	{
		p1 = cmp.eq(r2,r16); if (p1.new) jump:nt .LBB46_20
	}
// %bb.18:                              // %if.then4
	{
		r1 = add(pc,##.L.str.32@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then4
	{
		r0 = #-42
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB46_20:                              // %if.end5
	{
		r2 = memw(r16+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.21:                              // %if.end5
	{
		r1:0 = combine(r17,r20)
		r2 = memw(r16+#60)
		memw(r17+#8) = r16
	}
	{
		r3:2 = combine(r19,r18)
		r4 = memw(r2+#56)
	}
	{
		callr r4
	}
	.falign
// %bb.22:                              // %if.end5
	{
		r16 = r0
		r2 = memw(r16+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.23:                              // %if.end5
	{
		p0 = cmp.eq(r16,#0)
	}
	{
		r0 = mux(p0,#0,#-16)
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end46:
	.size	halide_device_wrap_native, .Lfunc_end46-halide_device_wrap_native
                                        // -- End function
	.section	.text.halide_device_detach_native,"ax",@progbits
	.weak	halide_device_detach_native // -- Begin function halide_device_detach_native
	.balign 32
	.type	halide_device_detach_native,@function
halide_device_detach_native:            // @halide_device_detach_native
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r0)
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB47_6
		if (p1) r0 = add(r16,#0)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r3:2 = combine(#0,#0)
		r18 = memw(r17+#8)
		r1:0 = memd(r17+#0)
	}
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:nt .LBB47_8
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB47_8
		if (!p1.new) r0 = add(r16,#0)
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB47_15
	}
	.falign
.LBB47_5:                               // %cleanup
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB47_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.33@PCREL)
	}
	{
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB47_5
	}
	{
		jump .LBB47_15
	}
	.falign
.LBB47_8:                               // %if.end10.i
	{
		r3:2 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (!p1.new) jump:nt .LBB47_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB47_12
		if (!p0) r0 = add(r16,#0)
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB47_5
	}
	{
		jump .LBB47_15
	}
	.falign
.LBB47_12:                              // %if.end16.i
	{
		r3:2 = combine(#0,#3)
		r1:0 = memd(r17+#16)
	}
	{
		r0 = and(r0,#3)
		r1 = #0
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (!p0.new) jump:t .LBB47_16
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB47_5
	}
	.falign
.LBB47_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r18 = memw(r17+#8)
	}
	.falign
.LBB47_16:                              // %if.end
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB47_24
		r0 = #0
		if (!p0.new) r2 = memw(r18+#60)
	}
// %bb.17:                              // %if.then3
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.18:                              // %if.then3
	{
		r1:0 = combine(r17,r16)
		r2 = memw(r18+#60)
	}
	{
		r2 = memw(r2+#60)
	}
	{
		callr r2
	}
	.falign
// %bb.19:                              // %if.then3
	{
		r18 = r0
		r2 = memw(r18+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.20:                              // %if.then3
	{
		r3:2 = combine(#0,#0)
		r1:0 = memd(r17+#0)
	}
	{
		p1 = cmp.eq(r1:0,r3:2)
		if (p1.new) jump:nt .LBB47_23
		if (!p1.new) r0 = add(r16,#0)
	}
// %bb.21:                              // %if.then8
	{
		r1 = add(pc,##.L.str.34@PCREL)
		call ##halide_print
	}
	.falign
// %bb.22:                              // %if.then8
	{
		call ##abort
	}
	.falign
.LBB47_23:                              // %if.end9
	{
		p0 = cmp.eq(r18,#0)
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r0 = mux(p0,#0,#-33)
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB47_24:
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end47:
	.size	halide_device_detach_native, .Lfunc_end47-halide_device_detach_native
                                        // -- End function
	.section	.text.halide_default_device_wrap_native,"ax",@progbits
	.weak	halide_default_device_wrap_native // -- Begin function halide_default_device_wrap_native
	.balign 32
	.type	halide_default_device_wrap_native,@function
halide_default_device_wrap_native:      // @halide_default_device_wrap_native
// %bb.0:                               // %entry
	{
		r16 = r1
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB48_6
		r19:18 = combine(r3,r2)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r7:6 = combine(#0,#0)
		r2 = memw(r16+#8)
		r5:4 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB48_8
	}
// %bb.2:                               // %if.end.i
	{
		p1 = cmp.eq(r5:4,r7:6)
		if (p1.new) jump:nt .LBB48_8
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB48_15
	}
	.falign
.LBB48_5:                               // %cleanup
	{
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB48_6:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.35@PCREL)
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.7:                               // %if.then.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB48_5
	}
	{
		jump .LBB48_15
	}
	.falign
.LBB48_8:                               // %if.end10.i
	{
		r7:6 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r5:4,r7:6)
		if (!p1.new) jump:nt .LBB48_12
	}
// %bb.9:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB48_12
	}
// %bb.10:                              // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.11:                              // %if.then14.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB48_5
	}
	{
		jump .LBB48_15
	}
	.falign
.LBB48_12:                              // %if.end16.i
	{
		r7:6 = combine(#0,#3)
		r5:4 = memd(r16+#16)
	}
	{
		r4 = and(r4,#3)
		r5 = #0
	}
	{
		p0 = cmp.eq(r5:4,r7:6)
		if (!p0.new) jump:t .LBB48_16
	}
// %bb.13:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.14:                              // %if.then24.i
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB48_5
	}
	.falign
.LBB48_15:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r2 = memw(r16+#8)
	}
	.falign
.LBB48_16:                              // %if.end
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.17:                              // %if.end
	{
		r0 = #0
		r17:16 = memd(r29+#8)
		memd(r16+#0) = r19:18
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end48:
	.size	halide_default_device_wrap_native, .Lfunc_end48-halide_default_device_wrap_native
                                        // -- End function
	.section	.text.halide_default_device_detach_native,"ax",@progbits
	.weak	halide_default_device_detach_native // -- Begin function halide_default_device_detach_native
	.balign 32
	.type	halide_default_device_detach_native,@function
halide_default_device_detach_native:    // @halide_default_device_detach_native
// %bb.0:                               // %entry
	{
		r16 = r1
		p1 = cmp.eq(r1,#0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		if (p1) jump:nt .LBB49_5
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.end.i
	{
		r2 = memw(r16+#8)
	}
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:nt .LBB49_7
		r3:2 = memd(r16+#0)
	}
// %bb.2:                               // %if.end.i
	{
		r5:4 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r3:2,r5:4)
		if (p1.new) jump:nt .LBB49_7
	}
// %bb.3:                               // %if.then8.i
	{
		call ##halide_error_no_device_interface
	}
	.falign
// %bb.4:                               // %if.then8.i
	{
		r17 = r0
		if (!cmp.eq(r17.new,#0)) jump:t .LBB49_18
	}
	{
		jump .LBB49_14
	}
	.falign
.LBB49_5:                               // %if.then.i
	{
		r1 = add(pc,##.L.str.36@PCREL)
		call ##halide_error_buffer_is_null
	}
	.falign
// %bb.6:                               // %if.then.i
	{
		r17 = r0
		if (!cmp.eq(r17.new,#0)) jump:t .LBB49_18
	}
	{
		jump .LBB49_14
	}
	.falign
.LBB49_7:                               // %if.end10.i
	{
		r5:4 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r3:2,r5:4)
		if (!p1.new) jump:nt .LBB49_11
	}
// %bb.8:                               // %if.end10.i
	{
		if (p0) jump:nt .LBB49_11
	}
// %bb.9:                               // %if.then14.i
	{
		call ##halide_error_device_interface_no_device
	}
	.falign
// %bb.10:                              // %if.then14.i
	{
		r17 = r0
		if (!cmp.eq(r17.new,#0)) jump:t .LBB49_18
	}
	{
		jump .LBB49_14
	}
	.falign
.LBB49_11:                              // %if.end16.i
	{
		r7:6 = combine(#0,#3)
		r5:4 = memd(r16+#16)
	}
	{
		r4 = and(r4,#3)
		r5 = #0
	}
	{
		p0 = cmp.eq(r5:4,r7:6)
		if (!p0.new) jump:t .LBB49_15
	}
// %bb.12:                              // %if.then24.i
	{
		call ##halide_error_host_and_device_dirty
	}
	.falign
// %bb.13:                              // %if.then24.i
	{
		r17 = r0
		if (!cmp.eq(r17.new,#0)) jump:t .LBB49_18
	}
	.falign
.LBB49_14:                              // %_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc.exit.if.end_crit_edge
	{
		r3:2 = memd(r16+#0)
	}
	.falign
.LBB49_15:                              // %if.end
	{
		r17 = #0
		r19:18 = combine(#0,#0)
	}
	{
		p0 = cmp.eq(r3:2,r19:18)
		if (p0.new) jump:nt .LBB49_18
		if (!p0.new) r2 = memw(r16+#8)
	}
// %bb.16:                              // %if.end3
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.17:                              // %if.end3
	{
		memd(r16+#0) = r19:18
		memw(r16+#8) = #0
	}
	.falign
.LBB49_18:                              // %cleanup
	{
		r0 = r17
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end49:
	.size	halide_default_device_detach_native, .Lfunc_end49-halide_default_device_detach_native
                                        // -- End function
	.section	.text.halide_device_and_host_free_as_destructor,"ax",@progbits
	.weak	halide_device_and_host_free_as_destructor // -- Begin function halide_device_and_host_free_as_destructor
	.balign 32
	.type	halide_device_and_host_free_as_destructor,@function
halide_device_and_host_free_as_destructor: // @halide_device_and_host_free_as_destructor
// %bb.0:                               // %entry
	{
		jump ##halide_device_and_host_free
	}
.Lfunc_end50:
	.size	halide_device_and_host_free_as_destructor, .Lfunc_end50-halide_device_and_host_free_as_destructor
                                        // -- End function
	.section	.text.halide_device_host_nop_free,"ax",@progbits
	.weak	halide_device_host_nop_free // -- Begin function halide_device_host_nop_free
	.balign 32
	.type	halide_device_host_nop_free,@function
halide_device_host_nop_free:            // @halide_device_host_nop_free
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end51:
	.size	halide_device_host_nop_free, .Lfunc_end51-halide_device_host_nop_free
                                        // -- End function
	.section	.text.halide_default_buffer_copy,"ax",@progbits
	.weak	halide_default_buffer_copy // -- Begin function halide_default_buffer_copy
	.balign 32
	.type	halide_default_buffer_copy,@function
halide_default_buffer_copy:             // @halide_default_buffer_copy
// %bb.0:                               // %entry
	{
		r0 = #-39
		jumpr r31
	}
.Lfunc_end52:
	.size	halide_default_buffer_copy, .Lfunc_end52-halide_default_buffer_copy
                                        // -- End function
	.section	.text.halide_buffer_copy_already_locked,"ax",@progbits
	.weak	halide_buffer_copy_already_locked // -- Begin function halide_buffer_copy_already_locked
	.balign 32
	.type	halide_buffer_copy_already_locked,@function
halide_buffer_copy_already_locked:      // @halide_buffer_copy_already_locked
// %bb.0:                               // %entry
	{
		p2 = cmp.eq(r2,#0)
		r17:16 = combine(r1,r3)
		memd(r29+#-16) = r17:16
		allocframe(r29,#472):raw
	}                               // 8-byte Folded Spill
	{
		if (p2) jump:nt .LBB53_6
		r19:18 = combine(r2,r0)
		memd(r29+#456) = r19:18
		memd(r29+#448) = r21:20
	}                               // 8-byte Folded Spill
// %bb.1:                               // %land.lhs.true
	{
		r2 = memw(r16+#8)
		if (cmp.eq(r2.new,#0)) jump:nt .LBB53_5
	}
// %bb.2:                               // %land.lhs.true
	{
		p1 = cmp.eq(r2,r19); if (p1.new) jump:nt .LBB53_5
		if (!p1.new) r0 = add(r18,#0)
	}
// %bb.3:                               // %if.then
	{
		r1 = add(pc,##.L.str.42@PCREL)
		call ##halide_error
	}
	.falign
// %bb.4:                               // %if.then
	{
		r0 = #-42
		r17:16 = memd(r29+#464)
		r19:18 = memd(r29+#456)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#448)
		r31:30 = dealloc_return(r30):raw
	}                               // 8-byte Folded Reload
	.falign
.LBB53_5:                               // %land.lhs.true5
	{
		r3:2 = combine(#0,#0)
		r1:0 = memd(r16+#0)
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (p0.new) jump:nt .LBB53_15
		if (p0.new) r2 = add(r19,#0)
		if (p0.new) r1:0 = combine(r16,r18)
	}
	.falign
.LBB53_6:                               // %if.end13
	{
		r3:2 = combine(#0,#0)
		r1:0 = memd(r17+#0)
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
		if (p0.new) jump:nt .LBB53_9
		r2 = memw(r17+#12)
	}
// %bb.7:                               // %land.rhs
	{
		p3 = and(p3,!p3)
		p1 = cmp.eq(r2,#0); if (p1.new) jump:nt .LBB53_14
		if (!p1.new) r1:0 = memd(r17+#16)
	}
// %bb.8:                               // %land.end.thread
	{
		p3 = tstbit(r0,#0)
		jump .LBB53_11
	}
	.falign
.LBB53_9:                               // %land.end
	{
		p0 = cmp.eq(r2,#0); if (p0.new) jump:nt .LBB53_17
		p2 = cmp.eq(r19,#0)
		if (!p0.new) r1:0 = memd(r17+#16)
	}
// %bb.10:                              // %land.end.land.rhs26_crit_edge
	{
		p3 = or(p3,!p3)
	}
	.falign
.LBB53_11:                              // %land.rhs26
	{
		p0 = or(p0,!p0)
		r5:4 = combine(#0,#0)
		r2 = #2
		r1 = #0
	}
	{
		r0 = and(r0,r2)
	}
	{
		p1 = cmp.eq(r1:0,r5:4)
		r0 = p0
		memw(r29+#16) = r0.new
	}                               // 4-byte Folded Spill
	{
		if (!p1) jump:nt .LBB53_13
		if (!p1) r2 = memw(r17+#8)
	}
// %bb.12:
	{
		p0 = and(p0,!p0)
		jump .LBB53_18
	}
	.falign
.LBB53_13:                              // %lor.rhs28
	{
		p0 = cmp.eq(r2,#0)
	}
	{
		p0 = not(p0)
		jump .LBB53_18
	}
	.falign
.LBB53_14:                              // %land.end.thread258
	{
		p0 = or(p0,!p0)
		p2 = cmp.eq(r19,#0)
	}
	{
		r2 = p3
		jump .LBB53_18
		memw(r29+#16) = r2.new
	}                               // 4-byte Folded Spill
	.falign
.LBB53_15:                              // %if.then7
	{
		r3 = p2
	}
	{
		call ##halide_device_malloc
		r20 = r3
	}
	.falign
// %bb.16:                              // %if.then7
	{
		r2 = r20
		p1 = cmp.eq(r0,#0)
	}
	{
		p2 = r2
		if (!p1) jump:nt .LBB53_46
	}
	{
		jump .LBB53_6
	}
	.falign
.LBB53_17:
	{
		p3 = or(p3,!p3)
		p1 = and(p1,!p1)
	}
	{
		r2 = p1
		p0 = or(p3,p3)
		memw(r29+#16) = r2.new
	}                               // 4-byte Folded Spill
	.falign
.LBB53_18:                              // %land.end32
	{
		r2 = memw(r16+#12)
	}
	{
		p1 = cmp.eq(r2,#0)
	}
	{
		r2 = p1
		if (!p1) jump:nt .LBB53_20
		memw(r29+#20) = r2.new
	}                               // 4-byte Folded Spill
// %bb.19:                              // %land.end32
	{
		if (p2) jump:nt .LBB53_46
		r0 = #-34
	}
	.falign
.LBB53_20:                              // %if.end41
	{
		r2 = p0
		p0 = cmp.eq(r19,#0)
		memw(r29+#8) = r2.new
	}                               // 4-byte Folded Spill
	{
		p1 = or(p3,p0)
		r0 = p0
		memw(r29+#4) = r0.new
	}                               // 4-byte Folded Spill
	{
		if (p1) jump:nt .LBB53_23
		if (!p1) r1:0 = combine(r17,r18)
		if (!p1) r3 = memw(r19+#60)
	}
// %bb.21:                              // %if.end49
	{
		r5 = p2
		r6 = p3
	}
	{
		r20 = r5
		r21 = r6
	}
	{
		r3:2 = combine(r16,r19)
		r4 = memw(r3+#40)
	}
	{
		callr r4
	}
	.falign
// %bb.22:                              // %if.end49
	{
		r2 = r21
		p0 = cmp.eq(r0,#-42)
	}
	{
		p3 = r2
		r2 = r20
	}
	{
		p2 = r2
		if (!p0) jump:nt .LBB53_43
	}
	.falign
.LBB53_23:                              // %if.then51
	{
		r0 = #-42
		r4 = #1
		r2 = memw(r29+#16)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		r2 = memw(r29+#20)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		r2 = memw(r29+#8)
	}                               // 4-byte Folded Reload
	{
		p1 = and(p1,!p0)
	}
	{
		p0 = r2
		if (p1) jump:nt .LBB53_46
	}
// %bb.24:                              // %if.end58
	{
		p0 = or(p0,!p2)
		if (!p0.new) jump:t .LBB53_32
		if (!p0.new) r0 = add(r29,#24)
		if (!p0.new) r1 = add(r17,#0)
	}
// %bb.25:                              // %if.else
	{
		if (p2) r1:0 = combine(r17,r18)
		if (p2) r3 = memw(r17+#8)
	}
	{
		if (p2) r3 = memw(r3+#60)
	}
	{
		if (!p2) jump:nt .LBB53_35
		if (p2) r4 = memw(r3+#40)
		if (!p2) r2 = memw(r29+#20)
	}                               // 4-byte Folded Reload
// %bb.26:                              // %if.then64
	{
		r3:2 = combine(r16,#0)
		callr r4
	}
	.falign
// %bb.27:                              // %if.then64
	{
		if (!p1.new) jump:t .LBB53_43
		p1 = cmp.eq(r0,#-42)
		if (p1.new) r1:0 = combine(r17,r18)
	}
// %bb.28:                              // %if.then72
	{
		call ##_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	}
	.falign
// %bb.29:                              // %if.then72
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB53_46
		if (p0.new) r1:0 = combine(r17,r18)
	}
// %bb.30:                              // %if.then75
	{
		call ##halide_buffer_copy_already_locked
		r3:2 = combine(r16,#0)
	}
	.falign
// %bb.31:                              // %if.then75
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB53_46
	}
	{
		jump .LBB53_44
	}
	.falign
.LBB53_32:                              // %if.end109.thread223
	{
		r3:2 = combine(r16,#1)
	}
	{
		call ##_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
	}
	.falign
// %bb.33:                              // %if.end109.thread223
	{
		call ##_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
		r0 = add(r29,#24)
		r1 = r18
	}
	.falign
// %bb.34:                              // %if.end109.thread223
	{
		p1 = cmp.eq(r16,r17); if (!p1.new) jump:t .LBB53_45
		r0 = #0
	}
	{
		jump .LBB53_46
	}
	.falign
.LBB53_35:                              // %if.else79
	{
		p2 = r2
	}
	{
		p1 = or(p3,p2)
		if (!p1.new) jump:t .LBB53_40
		if (!p1.new) r1:0 = combine(r17,r18)
		if (!p1.new) r3 = memw(r17+#8)
	}
// %bb.36:                              // %if.else96
	{
		call ##_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
		r1:0 = combine(r17,r18)
	}
	.falign
// %bb.37:                              // %if.else96
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB53_46
		if (p1.new) r1:0 = combine(r17,r18)
		if (p1.new) r3 = memw(r19+#60)
	}
// %bb.38:                              // %if.then101
	{
		r3:2 = combine(r16,r19)
		r4 = memw(r3+#40)
	}
	{
		callr r4
	}
	.falign
// %bb.39:                              // %if.then101
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB53_46
	}
	{
		jump .LBB53_44
	}
	.falign
.LBB53_40:                              // %if.then83
	{
		r3 = memw(r3+#60)
	}
	{
		r3:2 = combine(r16,#0)
		r4 = memw(r3+#40)
	}
	{
		callr r4
	}
	.falign
// %bb.41:                              // %if.then83
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB53_46
		r2 = r19
		if (p0.new) r5:4 = memd(r16+#16)
	}
// %bb.42:                              // %if.then93
	{
		r4 = setbit(r4,#0)
		r1:0 = combine(r16,r18)
	}
	{
		call ##copy_to_device_already_locked
		memd(r16+#16) = r5:4
	}
	.falign
.LBB53_43:                              // %if.end109
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB53_46
	}
	.falign
.LBB53_44:                              // %land.lhs.true118
	{
		p1 = cmp.eq(r16,r17); if (p1.new) jump:nt .LBB53_46
		r0 = #0
	}
	.falign
.LBB53_45:                              // %if.then120
	{
		r3 = #-4
		r2 = memw(r29+#4)
		r5:4 = memd(r16+#16)
	}                               // 4-byte Folded Reload
	{
		r3 = and(r4,r3)
	}
	{
		p1 = r2
	}
	{
		r2 = mux(p1,#1,#2)
	}
	{
		r4 = or(r3,r2)
	}
	{
		memd(r16+#16) = r5:4
	}
	.falign
.LBB53_46:                              // %cleanup135
	{
		r17:16 = memd(r29+#464)
		r19:18 = memd(r29+#456)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#448)
		r31:30 = dealloc_return(r30):raw
	}                               // 8-byte Folded Reload
.Lfunc_end53:
	.size	halide_buffer_copy_already_locked, .Lfunc_end53-halide_buffer_copy_already_locked
                                        // -- End function
	.section	.text.halide_buffer_copy,"ax",@progbits
	.weak	halide_buffer_copy      // -- Begin function halide_buffer_copy
	.balign 32
	.type	halide_buffer_copy,@function
halide_buffer_copy:                     // @halide_buffer_copy
// %bb.0:                               // %entry
	{
		r17:16 = combine(r2,r1)
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r20 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#16) = r21:20
		memd(r29+#24) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r3,r0)
	}
	{
		call ##halide_mutex_lock
		r0 = memw(r20+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r17,#0)
	}
	{
		r2 = p1
		if (p1) jump:nt .LBB54_3
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
// %bb.2:                               // %if.then
	{
		r2 = memw(r17+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
.LBB54_3:                               // %if.end
	{
		r2 = memw(r16+#8)
		if (cmp.eq(r2.new,#0)) jump:nt .LBB54_5
	}
// %bb.4:                               // %if.then12
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
.LBB54_5:                               // %if.end16
	{
		call ##halide_buffer_copy_already_locked
		r1:0 = combine(r16,r18)
		r3:2 = combine(r19,r17)
	}
	.falign
// %bb.6:                               // %if.end16
	{
		r18 = r0
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (p0.new) jump:nt .LBB54_8
		if (!p0.new) r2 = memw(r17+#60)
	}
// %bb.7:                               // %if.then18
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
.LBB54_8:                               // %if.end20
	{
		r2 = memw(r16+#8)
		if (cmp.eq(r2.new,#0)) jump:nt .LBB54_10
	}
// %bb.9:                               // %if.then23
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
.LBB54_10:                              // %if.end27
	{
		call ##halide_mutex_unlock
		r0 = memw(r20+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.11:                              // %if.end27
	{
		r0 = r18
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#16)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end54:
	.size	halide_buffer_copy, .Lfunc_end54-halide_buffer_copy
                                        // -- End function
	.section	.text.halide_default_device_crop,"ax",@progbits
	.weak	halide_default_device_crop // -- Begin function halide_default_device_crop
	.balign 32
	.type	halide_default_device_crop,@function
halide_default_device_crop:             // @halide_default_device_crop
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.58@PCREL)
		allocframe(r29,#0):raw
	}
	{
		call ##halide_error
	}
	{
		r0 = #-40
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end55:
	.size	halide_default_device_crop, .Lfunc_end55-halide_default_device_crop
                                        // -- End function
	.section	.text.halide_default_device_slice,"ax",@progbits
	.weak	halide_default_device_slice // -- Begin function halide_default_device_slice
	.balign 32
	.type	halide_default_device_slice,@function
halide_default_device_slice:            // @halide_default_device_slice
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.59@PCREL)
		allocframe(r29,#0):raw
	}
	{
		call ##halide_error
	}
	{
		r0 = #-40
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end56:
	.size	halide_default_device_slice, .Lfunc_end56-halide_default_device_slice
                                        // -- End function
	.section	.text.halide_device_crop,"ax",@progbits
	.weak	halide_device_crop      // -- Begin function halide_device_crop
	.balign 32
	.type	halide_device_crop,@function
halide_device_crop:                     // @halide_device_crop
// %bb.0:                               // %entry
	{
		r17:16 = combine(r2,r0)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		r19 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		r18 = r1
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_mutex_lock
		r0 = memw(r19+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.1:                               // %entry
	{
		r1:0 = combine(#0,#0)
		r3:2 = memd(r18+#0)
	}
	{
		p0 = cmp.eq(r3:2,r1:0)
		if (p0.new) jump:nt .LBB57_12
		if (p0.new) r16 = #0
		if (!p0.new) r3:2 = memd(r17+#0)
	}
// %bb.2:                               // %if.end
	{
		p1 = cmp.eq(r3:2,r1:0)
		if (p1.new) jump:nt .LBB57_6
		if (!p1.new) r0 = add(r16,#0)
		if (p1.new) r2 = memw(r18+#52)
	}
// %bb.3:                               // %if.then3
	{
		r1 = add(pc,##.L.str.60@PCREL)
		call ##halide_error
	}
	.falign
// %bb.4:                               // %if.then3
	{
		jump .LBB57_12
		r16 = #-41
	}
	.falign
.LBB57_6:                               // %if.end4
	{
		r3 = memw(r17+#52)
		if (!cmp.eq(r3.new,r2)) jump:t .LBB57_10
	}
// %bb.7:                               // %if.end7
	{
		r2 = memw(r18+#8)
	}
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.8:                               // %if.end7
	{
		r1:0 = combine(r18,r16)
		r2 = memw(r18+#8)
	}
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = r17
		r3 = memw(r2+#44)
	}
	{
		callr r3
	}
	.falign
// %bb.9:                               // %if.end7
	{
		r16 = r0 ; jump .LBB57_12
	}
	.falign
.LBB57_10:                              // %if.then6
	{
		r1 = add(pc,##.L.str.61@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.11:                              // %if.then6
	{
		r16 = #-41
	}
	.falign
.LBB57_12:                              // %cleanup
	{
		call ##halide_mutex_unlock
		r0 = memw(r19+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.13:                              // %cleanup
	{
		r0 = r16
		r17:16 = memd(r29+#8)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end57:
	.size	halide_device_crop, .Lfunc_end57-halide_device_crop
                                        // -- End function
	.section	.text.halide_device_slice,"ax",@progbits
	.weak	halide_device_slice     // -- Begin function halide_device_slice
	.balign 32
	.type	halide_device_slice,@function
halide_device_slice:                    // @halide_device_slice
// %bb.0:                               // %entry
	{
		r17:16 = combine(r4,r0)
		memd(r29+#-16) = r17:16
		allocframe(#24)
	}                               // 8-byte Folded Spill
	{
		r21 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		memd(r29+#0) = r21:20
		memd(r29+#8) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r2,r3)
		r20 = r1
	}
	{
		call ##halide_mutex_lock
		r0 = memw(r21+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.1:                               // %entry
	{
		r1:0 = combine(#0,#0)
		r3:2 = memd(r20+#0)
	}
	{
		p0 = cmp.eq(r3:2,r1:0)
		if (p0.new) jump:nt .LBB58_12
		if (p0.new) r16 = #0
		if (!p0.new) r3:2 = memd(r17+#0)
	}
// %bb.2:                               // %if.end
	{
		p1 = cmp.eq(r3:2,r1:0)
		if (p1.new) jump:nt .LBB58_6
		if (!p1.new) r0 = add(r16,#0)
		if (p1.new) r3 = memw(r17+#52)
	}
// %bb.3:                               // %if.then3
	{
		r1 = add(pc,##.L.str.60@PCREL)
		call ##halide_error
	}
	.falign
// %bb.4:                               // %if.then3
	{
		jump .LBB58_12
		r16 = #-41
	}
	.falign
.LBB58_6:                               // %if.end4
	{
		r0 = r16
		r2 = memw(r20+#52)
	}
	{
		r3 = add(r3,#1)
		if (!cmp.eq(r3.new,r2)) jump:t .LBB58_10
	}
// %bb.7:                               // %if.end7
	{
		r2 = memw(r20+#8)
	}
	{
		r2 = memw(r2+#60)
	}
	{
		r2 = memw(r2+#0)
	}
	{
		callr r2
	}
	.falign
// %bb.8:                               // %if.end7
	{
		r1:0 = combine(r20,r16)
		r4 = r17
		r2 = memw(r20+#8)
	}
	{
		r2 = memw(r2+#60)
	}
	{
		r3:2 = combine(r18,r19)
		r5 = memw(r2+#48)
	}
	{
		callr r5
	}
	.falign
// %bb.9:                               // %if.end7
	{
		r16 = r0 ; jump .LBB58_12
	}
	.falign
.LBB58_10:                              // %if.then6
	{
		r1 = add(pc,##.L.str.64@PCREL)
		call ##halide_error
	}
	.falign
// %bb.11:                              // %if.then6
	{
		r16 = #-41
	}
	.falign
.LBB58_12:                              // %cleanup
	{
		call ##halide_mutex_unlock
		r0 = memw(r21+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	.falign
// %bb.13:                              // %cleanup
	{
		r0 = r16
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end58:
	.size	halide_device_slice, .Lfunc_end58-halide_device_slice
                                        // -- End function
	.section	.text.halide_default_device_release_crop,"ax",@progbits
	.weak	halide_default_device_release_crop // -- Begin function halide_default_device_release_crop
	.balign 32
	.type	halide_default_device_release_crop,@function
halide_default_device_release_crop:     // @halide_default_device_release_crop
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		r3:2 = memd(r1+#0)
	}
	{
		p0 = cmp.eq(r3:2,r5:4)
		if (p0.new) jump:nt .LBB59_3
	}
// %bb.1:                               // %if.end
	{
		r1 = add(pc,##.L.str.58@PCREL)
		allocframe(r29,#0):raw
	}
	{
		call ##halide_error
	}
	.falign
// %bb.2:                               // %if.end
	{
		r0 = #-40
		r31:30 = deallocframe(r30):raw
	}
	{
		jumpr r31
	}
	.falign
.LBB59_3:
	{
		r0 = #0
		jumpr r31
	}
.Lfunc_end59:
	.size	halide_default_device_release_crop, .Lfunc_end59-halide_default_device_release_crop
                                        // -- End function
	.section	.text.halide_device_release_crop,"ax",@progbits
	.weak	halide_device_release_crop // -- Begin function halide_device_release_crop
	.balign 32
	.type	halide_device_release_crop,@function
halide_device_release_crop:             // @halide_device_release_crop
// %bb.0:                               // %entry
	{
		memd(r29+#-16) = r17:16
		allocframe(#24)
	}                               // 8-byte Folded Spill
	{
		r3:2 = memd(r1+#0)
	}
	{
		r21:20 = combine(#0,#0)
		memd(r29+#0) = r21:20
		memd(r29+#8) = r19:18
	}                               // 8-byte Folded Spill
	{
		p0 = cmp.eq(r3:2,r21:20)
		if (p0.new) jump:nt .LBB60_6
		r17:16 = combine(r0,r1)
		if (p0.new) r0 = #0
	}
// %bb.1:                               // %if.then
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r18 = memw(r2+##_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOT)
	}
	{
		call ##halide_mutex_lock
		r0 = r18
	}
	.falign
// %bb.2:                               // %if.then
	{
		r1:0 = combine(r16,r17)
		r19 = memw(r16+#8)
	}
	{
		r2 = memw(r19+#60)
	}
	{
		r2 = memw(r2+#52)
	}
	{
		callr r2
	}
	.falign
// %bb.3:                               // %if.then
	{
		r17 = r0
		r2 = memw(r19+#60)
		memd(r16+#0) = r21:20
	}
	{
		r2 = memw(r2+#4)
	}
	{
		callr r2
	}
	.falign
// %bb.4:                               // %if.then
	{
		call ##halide_mutex_unlock
		r0 = r18
		memw(r16+#8) = #0
	}
	.falign
// %bb.5:                               // %if.then
	{
		r0 = r17
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB60_6:                               // %return
	{
		r17:16 = memd(r29+#16)
		r19:18 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end60:
	.size	halide_device_release_crop, .Lfunc_end60-halide_device_release_crop
                                        // -- End function
	.section	.text.halide_float16_bits_to_float,"ax",@progbits
	.weak	halide_float16_bits_to_float // -- Begin function halide_float16_bits_to_float
	.balign 32
	.type	halide_float16_bits_to_float,@function
halide_float16_bits_to_float:           // @halide_float16_bits_to_float
// %bb.0:                               // %entry
	{
		r4 = extractu(r0,#10,#0)
		r5 = extractu(r0,#5,#10)
		r2 = #1023
	}
	{
		p0 = bitsclr(r0,r2)
		r2 = r0
		if (!p0.new) r6 = #-2
	}
	{
		r2 = and(##-2147483648,asl(r2,#16))
		if (p0) jump:nt .LBB61_3
	}
// %bb.1:                               // %entry
	{
		r3 = cl0(r4)
		p1 = cmp.eq(r5,#0); if (!p1.new) jump:nt .LBB61_3
		if (p1.new) r5 = #31
	}
// %bb.2:                               // %if.then
	{
		r3 = xor(r3,r5)
	}
	{
		r5 = sub(#32,r3)
		r7 = and(r3,#31)
		r0 = sub(#23,r3)
	}
	{
		r3 = add(##864026624,asl(r3,#23))
		r1 = lsl(#-2,r7)
		r5 = and(r5,#31)
	}
	{
		r5 = lsr(r6,r5)
	}
	{
		r4 &= or(r1,r5)
	}
	{
		r0 = asl(r4,r0)
	}
	{
		r0 |= or(r3,r2)
		jumpr r31
	}
	.falign
.LBB61_3:                               // %if.else
	{
		r3 = asl(r4,#13)
		p0 = cmp.eq(r5,#0); if (p0.new) jump:nt .LBB61_5
		p1 = cmp.eq(r5,#31)
	}
// %bb.4:                               // %if.else18
	{
		r5 = add(##939524096,asl(r5,#23))
	}
	{
		r0 = mux(p1,##2139095040,r5)
	}
	{
		r0 |= or(r3,r2)
		jumpr r31
	}
	.falign
.LBB61_5:
	{
		r0 = #0
	}
	{
		r0 |= or(r3,r2)
		jumpr r31
	}
.Lfunc_end61:
	.size	halide_float16_bits_to_float, .Lfunc_end61-halide_float16_bits_to_float
                                        // -- End function
	.section	.text.halide_float16_bits_to_double,"ax",@progbits
	.weak	halide_float16_bits_to_double // -- Begin function halide_float16_bits_to_double
	.balign 32
	.type	halide_float16_bits_to_double,@function
halide_float16_bits_to_double:          // @halide_float16_bits_to_double
// %bb.0:                               // %entry
	{
		call ##halide_float16_bits_to_float
		allocframe(r29,#0):raw
	}
	{
		r1:0 = convert_sf2df(r0)
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end62:
	.size	halide_float16_bits_to_double, .Lfunc_end62-halide_float16_bits_to_double
                                        // -- End function
	.section	.text.halide_error_check_fault_and_return,"ax",@progbits
	.weak	halide_error_check_fault_and_return // -- Begin function halide_error_check_fault_and_return
	.balign 32
	.type	halide_error_check_fault_and_return,@function
halide_error_check_fault_and_return:    // @halide_error_check_fault_and_return
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
		r3 = sub(#0,r1)
		r5:4 = combine(#0,#0)
	}
	{
		r3 = lsl(#1,r3)
		r0 = r1
	}
	{
		r6 = asr(r3,#31)
		r2 = memw(r2+##halide_error_mask@GOT)
	}
	{
		r9:8 = memd(r2+#0)
	}
	{
		r2 = and(r8,r3)
		r3 = and(r9,r6)
		r6 = #0
	}
	{
		p0 = cmp.eq(r3:2,r5:4)
		jumpr r31
		if (!p0.new) memw(r6+#0) = ##-559038737
	}
.Lfunc_end63:
	.size	halide_error_check_fault_and_return, .Lfunc_end63-halide_error_check_fault_and_return
                                        // -- End function
	.section	.text.halide_error_bounds_inference_call_failed,"ax",@progbits
	.weak	halide_error_bounds_inference_call_failed // -- Begin function halide_error_bounds_inference_call_failed
	.balign 32
	.type	halide_error_bounds_inference_call_failed,@function
halide_error_bounds_inference_call_failed: // @halide_error_bounds_inference_call_failed
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r2)
		r1 = #1024
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r18 = r0
		memd(r29+#24) = r19:18
		memd(r29+#16) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r19 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r20 = add(r19,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.37@PCREL)
		if (p0) jump:nt .LBB64_6
		if (!p0) r1:0 = combine(r20,r19)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r19+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r17,#0); if (p0.new) jump:nt .LBB64_8
	}
	.falign
.LBB64_4:                               // %if.else.i13
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r17
	}
	.falign
// %bb.5:                               // %if.else.i13
	{
		jump .LBB64_9
	}
	.falign
.LBB64_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r17,#0); if (!p0.new) jump:t .LBB64_4
	}
	.falign
.LBB64_8:                               // %if.then.i11
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB64_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.1.38@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r17 = asr(r16,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r17,r16)
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB64_16
		if (p1.new) r0 = add(r18,#0)
	}
// %bb.12:                              // %if.else.i25
	{
		r2 = add(r0,sub(#1,r19))
		r1:0 = combine(r19,r18)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.13:                              // %if.else.i25
	{
		call ##halide_error
		r1:0 = combine(r19,r18)
	}
	.falign
// %bb.14:                              // %if.else.i25
	{
		call ##halide_free
		r1:0 = combine(r19,r18)
	}
	.falign
// %bb.15:                              // %if.else.i25
	{
		jump .LBB64_18
	}
	.falign
.LBB64_16:                              // %if.then.i24
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.17:                              // %if.then.i24
	{
		call ##halide_free
		r1:0 = combine(#0,r18)
	}
	.falign
.LBB64_18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r0 = r16
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#16)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end64:
	.size	halide_error_bounds_inference_call_failed, .Lfunc_end64-halide_error_bounds_inference_call_failed
                                        // -- End function
	.section	.text.halide_error_extern_stage_failed,"ax",@progbits
	.weak	halide_error_extern_stage_failed // -- Begin function halide_error_extern_stage_failed
	.balign 32
	.type	halide_error_extern_stage_failed,@function
halide_error_extern_stage_failed:       // @halide_error_extern_stage_failed
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r2)
		r1 = #1024
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r18 = r0
		memd(r29+#24) = r19:18
		memd(r29+#16) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r19 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r20 = add(r19,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.2.39@PCREL)
		if (p0) jump:nt .LBB65_6
		if (!p0) r1:0 = combine(r20,r19)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r19+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r17,#0); if (p0.new) jump:nt .LBB65_8
	}
	.falign
.LBB65_4:                               // %if.else.i13
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r17
	}
	.falign
// %bb.5:                               // %if.else.i13
	{
		jump .LBB65_9
	}
	.falign
.LBB65_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r17,#0); if (!p0.new) jump:t .LBB65_4
	}
	.falign
.LBB65_8:                               // %if.then.i11
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB65_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.1.38@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r17 = asr(r16,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r17,r16)
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB65_16
		if (p1.new) r0 = add(r18,#0)
	}
// %bb.12:                              // %if.else.i25
	{
		r2 = add(r0,sub(#1,r19))
		r1:0 = combine(r19,r18)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.13:                              // %if.else.i25
	{
		call ##halide_error
		r1:0 = combine(r19,r18)
	}
	.falign
// %bb.14:                              // %if.else.i25
	{
		call ##halide_free
		r1:0 = combine(r19,r18)
	}
	.falign
// %bb.15:                              // %if.else.i25
	{
		jump .LBB65_18
	}
	.falign
.LBB65_16:                              // %if.then.i24
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.17:                              // %if.then.i24
	{
		call ##halide_free
		r1:0 = combine(#0,r18)
	}
	.falign
.LBB65_18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r0 = r16
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#16)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end65:
	.size	halide_error_extern_stage_failed, .Lfunc_end65-halide_error_extern_stage_failed
                                        // -- End function
	.section	.text.halide_error_explicit_bounds_too_small,"ax",@progbits
	.weak	halide_error_explicit_bounds_too_small // -- Begin function halide_error_explicit_bounds_too_small
	.balign 32
	.type	halide_error_explicit_bounds_too_small,@function
halide_error_explicit_bounds_too_small: // @halide_error_explicit_bounds_too_small
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#64)
	}                               // 8-byte Folded Spill
	{
		r19 = r1
		r1 = #1024
		memd(r29+#48) = r19:18
		memd(r29+#40) = r21:20
	}                               // 8-byte Folded Spill
	{
		r22 = r5
		r24 = r4
		memd(r29+#32) = r23:22
		memd(r29+#24) = r25:24
	}                               // 8-byte Folded Spill
	{
		r26 = r3
		r21 = r2
		r18 = memw(r29+#72)
		memd(r29+#16) = r27:26
	}
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r20 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.3.40@PCREL)
		if (p1) jump:nt .LBB66_6
		if (!p1) r1:0 = combine(r20,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r21,#0); if (p0.new) jump:nt .LBB66_8
	}
	.falign
.LBB66_4:                               // %if.else.i23
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r21
	}
	.falign
// %bb.5:                               // %if.else.i23
	{
		jump .LBB66_9
	}
	.falign
.LBB66_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r21,#0); if (!p0.new) jump:t .LBB66_4
	}
	.falign
.LBB66_8:                               // %if.then.i21
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB66_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.4.41@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r19,#0); if (p1.new) jump:nt .LBB66_13
		r1 = r20
	}
// %bb.11:                              // %if.else.i35
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.12:                              // %if.else.i35
	{
		jump .LBB66_14
	}
	.falign
.LBB66_13:                              // %if.then.i33
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB66_14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r2 = add(pc,##.L.str.5.42@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r27 = asr(r26,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r27,r26)
	}
	.falign
// %bb.16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r19 = add(pc,##.L.str.6.43@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
		r2 = r19
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r25 = asr(r24,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r25,r24)
	}
	.falign
// %bb.18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r2 = add(pc,##.L.str.7.44@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.19:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.22:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r2 = add(pc,##.L.str.5.94@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.23:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit37
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (p0.new) jump:nt .LBB66_28
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.24:                              // %if.else.i81
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.25:                              // %if.else.i81
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.26:                              // %if.else.i81
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.27:                              // %if.else.i81
	{
		jump .LBB66_30
	}
	.falign
.LBB66_28:                              // %if.then.i80
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.29:                              // %if.then.i80
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB66_30:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-2,r16)
		r17:16 = memd(r29+#56)
		r19:18 = memd(r29+#48)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#40)
		r23:22 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#24)
		r27:26 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end66:
	.size	halide_error_explicit_bounds_too_small, .Lfunc_end66-halide_error_explicit_bounds_too_small
                                        // -- End function
	.section	.text.halide_error_bad_type,"ax",@progbits
	.weak	halide_error_bad_type   // -- Begin function halide_error_bad_type
	.balign 32
	.type	halide_error_bad_type,@function
halide_error_bad_type:                  // @halide_error_bad_type
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r19 = r1
		r1 = #1024
		r6 = memw(r29+#52)
		memd(r29+#24) = r19:18
	}
	{
		r2 = memw(r29+#48)
		memb(r29+#8) = r2
	}
	{
		memh(r29+#14) = r6
		memb(r29+#12) = r3
	}
	{
		memb(r29+#13) = r5
		memb(r29+#9) = r4
	}
	{
		call ##halide_malloc
		memh(r29+#10) = r2
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
		r2 = #0
		p0 = cmp.eq(r19,#0)
	}
	{
		r1 = p1
		if (p1) r18 = add(r2,#0)
		memw(r29+#4) = r1.new
	}                               // 4-byte Folded Spill
	{
		if (!p1) r18 = add(r0,##1023)
		if (!p1) memb(r0+##1023) = r2
	}
	{
		if (p0) jump:nt .LBB67_4
		if (p0) r1:0 = combine(r18,r17)
		if (!p0) r2 = add(r19,#0)
	}
// %bb.2:                               // %if.else.i21
	{
		call ##halide_string_to_string
		r1:0 = combine(r18,r17)
	}
	.falign
// %bb.3:                               // %if.else.i21
	{
		jump .LBB67_5
	}
	.falign
.LBB67_4:                               // %if.then.i20
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB67_5:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.9.46@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.6:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		call ##halide_type_to_string
		r2 = add(r29,#12)
		r1 = r18
	}
	.falign
// %bb.7:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.10.47@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		call ##halide_type_to_string
		r2 = add(r29,#8)
		r1 = r18
	}
	.falign
// %bb.9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB67_14
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.10:                              // %if.else.i
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.11:                              // %if.else.i
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.12:                              // %if.else.i
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.13:                              // %if.else.i
	{
		jump .LBB67_16
	}
	.falign
.LBB67_14:                              // %if.then.i
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.15:                              // %if.then.i
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB67_16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		call ##halide_error_check_fault_and_return
		r1:0 = combine(#-3,r16)
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end67:
	.size	halide_error_bad_type, .Lfunc_end67-halide_error_bad_type
                                        // -- End function
	.section	.text.halide_error_bad_dimensions,"ax",@progbits
	.weak	halide_error_bad_dimensions // -- Begin function halide_error_bad_dimensions
	.balign 32
	.type	halide_error_bad_dimensions,@function
halide_error_bad_dimensions:            // @halide_error_bad_dimensions
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r19 = r1
		r1 = #1024
		memd(r29+#32) = r19:18
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		r20 = r2
		r22 = r3
		memd(r29+#16) = r23:22
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
		r2 = #0
		p0 = cmp.eq(r19,#0)
	}
	{
		r1 = p1
		if (p1) r18 = add(r2,#0)
		memw(r29+#4) = r1.new
	}                               // 4-byte Folded Spill
	{
		if (!p1) r18 = add(r0,##1023)
		if (!p1) memb(r0+##1023) = r2
	}
	{
		if (p0) jump:nt .LBB68_4
		if (p0) r1:0 = combine(r18,r17)
		if (!p0) r2 = add(r19,#0)
	}
// %bb.2:                               // %if.else.i12
	{
		call ##halide_string_to_string
		r1:0 = combine(r18,r17)
	}
	.falign
// %bb.3:                               // %if.else.i12
	{
		jump .LBB68_5
	}
	.falign
.LBB68_4:                               // %if.then.i11
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB68_5:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.11.48@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.6:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r18
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.7:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.12.49@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r21 = asr(r20,#31)
		r4 = #1
		r1 = r18
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r21,r20)
	}
	.falign
// %bb.9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.13.50@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB68_15
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.11:                              // %if.else.i38
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.12:                              // %if.else.i38
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.13:                              // %if.else.i38
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.14:                              // %if.else.i38
	{
		jump .LBB68_17
	}
	.falign
.LBB68_15:                              // %if.then.i37
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.16:                              // %if.then.i37
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB68_17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-43,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end68:
	.size	halide_error_bad_dimensions, .Lfunc_end68-halide_error_bad_dimensions
                                        // -- End function
	.section	.text.halide_error_access_out_of_bounds,"ax",@progbits
	.weak	halide_error_access_out_of_bounds // -- Begin function halide_error_access_out_of_bounds
	.balign 32
	.type	halide_error_access_out_of_bounds,@function
halide_error_access_out_of_bounds:      // @halide_error_access_out_of_bounds
// %bb.0:                               // %entry
	{
		p0 = cmp.gt(r5,r3)
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#64)
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r1,r2)
		memd(r29+#48) = r19:18
		memd(r29+#40) = r21:20
	}                               // 8-byte Folded Spill
	{
		if (!p0) r24 = add(r4,#0)
		memd(r29+#32) = r23:22
		memd(r29+#24) = r25:24
	}                               // 8-byte Folded Spill
	{
		if (!p0) jump:nt .LBB69_5
		if (p0) r26 = add(r3,#0)
		memd(r29+#16) = r27:26
	}                               // 8-byte Folded Spill
// %bb.1:                               // %if.then
	{
		r1 = #1024
		r0 = r16
		r20 = r5
	}
	{
		call ##halide_malloc
	}
	.falign
// %bb.2:                               // %if.then
	{
		r2 = #0
		p1 = cmp.eq(r19,#0)
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) r22 = add(r2,#0)
		if (!p1) r2 = add(r19,#0)
		if (!p0) memb(r0+##1023) = r2
	}
	{
		r0 = p0
		if (!p0) r22 = add(r0,##1023)
		memw(r29+#4) = r0.new
	}                               // 4-byte Folded Spill
	{
		if (p1) jump:nt .LBB69_10
		if (p1) r1:0 = combine(r22,r17)
	}
// %bb.3:                               // %if.else.i31
	{
		call ##halide_string_to_string
		r1:0 = combine(r22,r17)
	}
	.falign
// %bb.4:                               // %if.else.i31
	{
		jump .LBB69_11
	}
	.falign
.LBB69_5:                               // %if.else
	{
		r22 = memw(r29+#72)
		if (!cmp.gt(r4,r22.new)) jump:t ##.LBB69_39
	}
// %bb.6:                               // %if.then8
	{
		call ##halide_malloc
		r0 = r16
		r1 = #1024
	}
	.falign
// %bb.7:                               // %if.then8
	{
		r2 = #0
		p1 = cmp.eq(r19,#0)
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r1 = p0
		if (p0) r20 = add(r2,#0)
		memw(r29+#4) = r1.new
	}                               // 4-byte Folded Spill
	{
		if (!p0) r20 = add(r0,##1023)
		if (!p0) memb(r0+##1023) = r2
	}
	{
		if (p1) jump:nt .LBB69_25
		if (p1) r1:0 = combine(r20,r17)
		if (!p1) r2 = add(r19,#0)
	}
// %bb.8:                               // %if.else.i82
	{
		call ##halide_string_to_string
		r1:0 = combine(r20,r17)
	}
	.falign
// %bb.9:                               // %if.else.i82
	{
		jump .LBB69_26
	}
	.falign
.LBB69_10:                              // %if.then.i30
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB69_11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.14.51@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r27 = asr(r26,#31)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r27,r26)
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.15.52@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r21 = asr(r20,#31)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r21,r20)
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.16.53@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB69_22
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.18:                              // %if.else.i61
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.19:                              // %if.else.i61
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.20:                              // %if.else.i61
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.21:                              // %if.else.i61
	{
		jump .LBB69_39
	}
	.falign
.LBB69_22:                              // %if.then.i60
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.23:                              // %if.then.i60
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.24:                              // %if.then.i60
	{
		jump .LBB69_39
	}
	.falign
.LBB69_25:                              // %if.then.i80
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB69_26:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r2 = add(pc,##.L.str.14.51@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.27:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r25 = asr(r24,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r25,r24)
	}
	.falign
// %bb.28:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r2 = add(pc,##.L.str.17.54@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.29:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.30:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r2 = add(pc,##.L.str.16.53@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.31:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.32:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit85
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB69_37
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.33:                              // %if.else.i125
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.34:                              // %if.else.i125
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.35:                              // %if.else.i125
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.36:                              // %if.else.i125
	{
		jump .LBB69_39
	}
	.falign
.LBB69_37:                              // %if.then.i119
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.38:                              // %if.then.i119
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB69_39:                              // %if.end17
	{
		r1:0 = combine(#-4,r16)
		r17:16 = memd(r29+#56)
		r19:18 = memd(r29+#48)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#40)
		r23:22 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#24)
		r27:26 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end69:
	.size	halide_error_access_out_of_bounds, .Lfunc_end69-halide_error_access_out_of_bounds
                                        // -- End function
	.section	.text.halide_error_buffer_allocation_too_large,"ax",@progbits
	.weak	halide_error_buffer_allocation_too_large // -- Begin function halide_error_buffer_allocation_too_large
	.balign 32
	.type	halide_error_buffer_allocation_too_large,@function
halide_error_buffer_allocation_too_large: // @halide_error_buffer_allocation_too_large
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.18.55@PCREL)
		if (p0) jump:nt .LBB70_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB70_8
	}
	.falign
.LBB70_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB70_9
	}
	.falign
.LBB70_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB70_4
	}
	.falign
.LBB70_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB70_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.20.57@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB70_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB70_20
	}
	.falign
.LBB70_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB70_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-5,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end70:
	.size	halide_error_buffer_allocation_too_large, .Lfunc_end70-halide_error_buffer_allocation_too_large
                                        // -- End function
	.section	.text.halide_error_buffer_extents_negative,"ax",@progbits
	.weak	halide_error_buffer_extents_negative // -- Begin function halide_error_buffer_extents_negative
	.balign 32
	.type	halide_error_buffer_extents_negative,@function
halide_error_buffer_extents_negative:   // @halide_error_buffer_extents_negative
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r1,r3)
		r1 = #1024
		memd(r29+#32) = r19:18
		memd(r29+#16) = r23:22
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r22 = r2
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r20 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.21.58@PCREL)
		if (p0) jump:nt .LBB71_6
		if (!p0) r1:0 = combine(r20,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r19,#0); if (p0.new) jump:nt .LBB71_8
	}
	.falign
.LBB71_4:                               // %if.else.i17
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.5:                               // %if.else.i17
	{
		jump .LBB71_9
	}
	.falign
.LBB71_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r19,#0); if (!p0.new) jump:t .LBB71_4
	}
	.falign
.LBB71_8:                               // %if.then.i15
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB71_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.22.59@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.23.60@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.5.94@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB71_19
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.15:                              // %if.else.i43
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.16:                              // %if.else.i43
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i43
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.18:                              // %if.else.i43
	{
		jump .LBB71_21
	}
	.falign
.LBB71_19:                              // %if.then.i42
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.20:                              // %if.then.i42
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB71_21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-28,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end71:
	.size	halide_error_buffer_extents_negative, .Lfunc_end71-halide_error_buffer_extents_negative
                                        // -- End function
	.section	.text.halide_error_buffer_extents_too_large,"ax",@progbits
	.weak	halide_error_buffer_extents_too_large // -- Begin function halide_error_buffer_extents_too_large
	.balign 32
	.type	halide_error_buffer_extents_too_large,@function
halide_error_buffer_extents_too_large:  // @halide_error_buffer_extents_too_large
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.24.61@PCREL)
		if (p0) jump:nt .LBB72_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB72_8
	}
	.falign
.LBB72_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB72_9
	}
	.falign
.LBB72_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB72_4
	}
	.falign
.LBB72_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB72_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.20.57@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB72_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB72_20
	}
	.falign
.LBB72_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB72_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-6,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end72:
	.size	halide_error_buffer_extents_too_large, .Lfunc_end72-halide_error_buffer_extents_too_large
                                        // -- End function
	.section	.text.halide_error_constraints_make_required_region_smaller,"ax",@progbits
	.weak	halide_error_constraints_make_required_region_smaller // -- Begin function halide_error_constraints_make_required_region_smaller
	.balign 32
	.type	halide_error_constraints_make_required_region_smaller,@function
halide_error_constraints_make_required_region_smaller: // @halide_error_constraints_make_required_region_smaller
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#64)
	}                               // 8-byte Folded Spill
	{
		r19 = r1
		r1 = #1024
		r2 = memw(r29+#72)
		memd(r29+#48) = r19:18
	}
	{
		r24 = r5
		r20 = r3
		memd(r29+#40) = r21:20
		memd(r29+#24) = r25:24
	}                               // 8-byte Folded Spill
	{
		r21 = add(r2,#-1)
		memd(r29+#32) = r23:22
		memd(r29+#16) = r27:26
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r18 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.25.62@PCREL)
		if (p0) jump:nt .LBB73_6
		if (!p0) r1:0 = combine(r18,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r19,#0); if (p0.new) jump:nt .LBB73_8
		r26 = add(r21,r24)
		r22 = add(r21,r20)
	}
	.falign
.LBB73_4:                               // %if.else.i30
	{
		call ##halide_string_to_string
		r1 = r18
		r2 = r19
	}
	.falign
// %bb.5:                               // %if.else.i30
	{
		jump .LBB73_9
	}
	.falign
.LBB73_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r18 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r19,#0); if (!p0.new) jump:t .LBB73_4
		r26 = add(r21,r24)
		r22 = add(r21,r20)
	}
	.falign
.LBB73_8:                               // %if.then.i28
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB73_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.26.63@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.27.64@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r25 = asr(r24,#31)
		r4 = #1
		r1 = r18
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r25,r24)
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r19 = add(pc,##.L.str.6.43@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
		r2 = r19
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r27 = asr(r26,#31)
		r4 = #1
		r1 = r18
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r27,r26)
	}
	.falign
// %bb.14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.28.65@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.29.66@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r21 = asr(r20,#31)
		r4 = #1
		r1 = r18
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r21,r20)
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		call ##halide_string_to_string
		r1 = r18
		r2 = r19
	}
	.falign
// %bb.18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r18
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.19:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.30.67@PCREL)
		r1 = r18
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB73_25
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.21:                              // %if.else.i84
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.22:                              // %if.else.i84
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.23:                              // %if.else.i84
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.24:                              // %if.else.i84
	{
		jump .LBB73_27
	}
	.falign
.LBB73_25:                              // %if.then.i83
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.26:                              // %if.then.i83
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB73_27:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-7,r16)
		r17:16 = memd(r29+#56)
		r19:18 = memd(r29+#48)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#40)
		r23:22 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#24)
		r27:26 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end73:
	.size	halide_error_constraints_make_required_region_smaller, .Lfunc_end73-halide_error_constraints_make_required_region_smaller
                                        // -- End function
	.section	.text.halide_error_constraint_violated,"ax",@progbits
	.weak	halide_error_constraint_violated // -- Begin function halide_error_constraint_violated
	.balign 32
	.type	halide_error_constraint_violated,@function
halide_error_constraint_violated:       // @halide_error_constraint_violated
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r21 = r1
		r1 = #1024
		memd(r29+#24) = r21:20
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r3,r4)
		r22 = r2
		memd(r29+#16) = r23:22
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r20 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.31.68@PCREL)
		if (p1) jump:nt .LBB74_6
		if (!p1) r1:0 = combine(r20,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r21,#0); if (p0.new) jump:nt .LBB74_8
	}
	.falign
.LBB74_4:                               // %if.else.i19
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r21
	}
	.falign
// %bb.5:                               // %if.else.i19
	{
		jump .LBB74_9
	}
	.falign
.LBB74_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r21,#0); if (!p0.new) jump:t .LBB74_4
	}
	.falign
.LBB74_8:                               // %if.then.i17
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB74_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.32.69@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.33.70@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r19,#0); if (p1.new) jump:nt .LBB74_15
		r1 = r20
	}
// %bb.13:                              // %if.else.i39
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.14:                              // %if.else.i39
	{
		jump .LBB74_16
	}
	.falign
.LBB74_15:                              // %if.then.i37
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB74_16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit41
	{
		r2 = add(pc,##.L.str.32.69@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit41
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit41
	{
		r2 = add(pc,##.L.str.5.94@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.19:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit41
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (p0.new) jump:nt .LBB74_24
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.20:                              // %if.else.i59
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.21:                              // %if.else.i59
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.22:                              // %if.else.i59
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.23:                              // %if.else.i59
	{
		jump .LBB74_26
	}
	.falign
.LBB74_24:                              // %if.then.i58
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.25:                              // %if.then.i58
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB74_26:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-8,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end74:
	.size	halide_error_constraint_violated, .Lfunc_end74-halide_error_constraint_violated
                                        // -- End function
	.section	.text.halide_error_param_too_small_i64,"ax",@progbits
	.weak	halide_error_param_too_small_i64 // -- Begin function halide_error_param_too_small_i64
	.balign 32
	.type	halide_error_param_too_small_i64,@function
halide_error_param_too_small_i64:       // @halide_error_param_too_small_i64
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.34.71@PCREL)
		if (p0) jump:nt .LBB75_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB75_8
	}
	.falign
.LBB75_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB75_9
	}
	.falign
.LBB75_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB75_4
	}
	.falign
.LBB75_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB75_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.35.72@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB75_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB75_20
	}
	.falign
.LBB75_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB75_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-9,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end75:
	.size	halide_error_param_too_small_i64, .Lfunc_end75-halide_error_param_too_small_i64
                                        // -- End function
	.section	.text.halide_error_param_too_small_u64,"ax",@progbits
	.weak	halide_error_param_too_small_u64 // -- Begin function halide_error_param_too_small_u64
	.balign 32
	.type	halide_error_param_too_small_u64,@function
halide_error_param_too_small_u64:       // @halide_error_param_too_small_u64
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.34.71@PCREL)
		if (p0) jump:nt .LBB76_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB76_8
	}
	.falign
.LBB76_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB76_9
	}
	.falign
.LBB76_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB76_4
	}
	.falign
.LBB76_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB76_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.35.72@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB76_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB76_20
	}
	.falign
.LBB76_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB76_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-9,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end76:
	.size	halide_error_param_too_small_u64, .Lfunc_end76-halide_error_param_too_small_u64
                                        // -- End function
	.section	.text.halide_error_param_too_small_f64,"ax",@progbits
	.weak	halide_error_param_too_small_f64 // -- Begin function halide_error_param_too_small_f64
	.balign 32
	.type	halide_error_param_too_small_f64,@function
halide_error_param_too_small_f64:       // @halide_error_param_too_small_f64
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.34.71@PCREL)
		if (p0) jump:nt .LBB77_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB77_8
	}
	.falign
.LBB77_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB77_9
	}
	.falign
.LBB77_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB77_4
	}
	.falign
.LBB77_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB77_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_double_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.35.72@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_double_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB77_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB77_20
	}
	.falign
.LBB77_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB77_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-9,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end77:
	.size	halide_error_param_too_small_f64, .Lfunc_end77-halide_error_param_too_small_f64
                                        // -- End function
	.section	.text.halide_error_param_too_large_i64,"ax",@progbits
	.weak	halide_error_param_too_large_i64 // -- Begin function halide_error_param_too_large_i64
	.balign 32
	.type	halide_error_param_too_large_i64,@function
halide_error_param_too_large_i64:       // @halide_error_param_too_large_i64
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.34.71@PCREL)
		if (p0) jump:nt .LBB78_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB78_8
	}
	.falign
.LBB78_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB78_9
	}
	.falign
.LBB78_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB78_4
	}
	.falign
.LBB78_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB78_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.36.73@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB78_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB78_20
	}
	.falign
.LBB78_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB78_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-10,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end78:
	.size	halide_error_param_too_large_i64, .Lfunc_end78-halide_error_param_too_large_i64
                                        // -- End function
	.section	.text.halide_error_param_too_large_u64,"ax",@progbits
	.weak	halide_error_param_too_large_u64 // -- Begin function halide_error_param_too_large_u64
	.balign 32
	.type	halide_error_param_too_large_u64,@function
halide_error_param_too_large_u64:       // @halide_error_param_too_large_u64
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.34.71@PCREL)
		if (p0) jump:nt .LBB79_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB79_8
	}
	.falign
.LBB79_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB79_9
	}
	.falign
.LBB79_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB79_4
	}
	.falign
.LBB79_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB79_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.36.73@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_uint64_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB79_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB79_20
	}
	.falign
.LBB79_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB79_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-10,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end79:
	.size	halide_error_param_too_large_u64, .Lfunc_end79-halide_error_param_too_large_u64
                                        // -- End function
	.section	.text.halide_error_param_too_large_f64,"ax",@progbits
	.weak	halide_error_param_too_large_f64 // -- Begin function halide_error_param_too_large_f64
	.balign 32
	.type	halide_error_param_too_large_f64,@function
halide_error_param_too_large_f64:       // @halide_error_param_too_large_f64
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#48)
	}                               // 8-byte Folded Spill
	{
		r23 = r1
		r1 = #1024
		memd(r29+#16) = r23:22
		memd(r29+#32) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r5,r4)
		r21:20 = combine(r3,r2)
		memd(r29+#24) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.34.71@PCREL)
		if (p0) jump:nt .LBB80_6
		if (!p0) r1:0 = combine(r22,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r23,#0); if (p0.new) jump:nt .LBB80_8
	}
	.falign
.LBB80_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r23
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB80_9
	}
	.falign
.LBB80_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r23,#0); if (!p0.new) jump:t .LBB80_4
	}
	.falign
.LBB80_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB80_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.19.56@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r21,r20)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_double_to_string
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.36.73@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r3:2 = combine(r19,r18)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_double_to_string
	}
	.falign
// %bb.13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB80_18
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.14:                              // %if.else.i36
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.15:                              // %if.else.i36
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i36
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i36
	{
		jump .LBB80_20
	}
	.falign
.LBB80_18:                              // %if.then.i35
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.19:                              // %if.then.i35
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB80_20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-10,r16)
		r17:16 = memd(r29+#40)
		r19:18 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#24)
		r23:22 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end80:
	.size	halide_error_param_too_large_f64, .Lfunc_end80-halide_error_param_too_large_f64
                                        // -- End function
	.section	.text.halide_error_out_of_memory,"ax",@progbits
	.weak	halide_error_out_of_memory // -- Begin function halide_error_out_of_memory
	.balign 32
	.type	halide_error_out_of_memory,@function
halide_error_out_of_memory:             // @halide_error_out_of_memory
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.37.74@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_error
		r16 = r0
	}
	{
		r1:0 = combine(#-11,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end81:
	.size	halide_error_out_of_memory, .Lfunc_end81-halide_error_out_of_memory
                                        // -- End function
	.section	.text.halide_error_vtcm_out_of_memory,"ax",@progbits
	.weak	halide_error_vtcm_out_of_memory // -- Begin function halide_error_vtcm_out_of_memory
	.balign 32
	.type	halide_error_vtcm_out_of_memory,@function
halide_error_vtcm_out_of_memory:        // @halide_error_vtcm_out_of_memory
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.38@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_error
		r16 = r0
	}
	{
		r1:0 = combine(#-45,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end82:
	.size	halide_error_vtcm_out_of_memory, .Lfunc_end82-halide_error_vtcm_out_of_memory
                                        // -- End function
	.section	.text.halide_error_locked_cache_out_of_memory,"ax",@progbits
	.weak	halide_error_locked_cache_out_of_memory // -- Begin function halide_error_locked_cache_out_of_memory
	.balign 32
	.type	halide_error_locked_cache_out_of_memory,@function
halide_error_locked_cache_out_of_memory: // @halide_error_locked_cache_out_of_memory
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.39@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_error
		r16 = r0
	}
	{
		r1:0 = combine(#-46,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end83:
	.size	halide_error_locked_cache_out_of_memory, .Lfunc_end83-halide_error_locked_cache_out_of_memory
                                        // -- End function
	.section	.text.halide_error_gpu_shared_out_of_memory,"ax",@progbits
	.weak	halide_error_gpu_shared_out_of_memory // -- Begin function halide_error_gpu_shared_out_of_memory
	.balign 32
	.type	halide_error_gpu_shared_out_of_memory,@function
halide_error_gpu_shared_out_of_memory:  // @halide_error_gpu_shared_out_of_memory
// %bb.0:                               // %entry
	{
		r1 = add(pc,##.L.str.40@PCREL)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_error
		r16 = r0
	}
	{
		r1:0 = combine(#-47,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end84:
	.size	halide_error_gpu_shared_out_of_memory, .Lfunc_end84-halide_error_gpu_shared_out_of_memory
                                        // -- End function
	.section	.text.halide_error_buffer_argument_is_null,"ax",@progbits
	.weak	halide_error_buffer_argument_is_null // -- Begin function halide_error_buffer_argument_is_null
	.balign 32
	.type	halide_error_buffer_argument_is_null,@function
halide_error_buffer_argument_is_null:   // @halide_error_buffer_argument_is_null
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#32)
	}                               // 8-byte Folded Spill
	{
		r1 = #1024
		r18 = r1
		memd(r29+#16) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.41@PCREL)
		if (p0) jump:nt .LBB85_6
		if (!p0) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB85_8
	}
	.falign
.LBB85_4:                               // %if.else.i13
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.5:                               // %if.else.i13
	{
		jump .LBB85_9
	}
	.falign
.LBB85_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:t .LBB85_4
	}
	.falign
.LBB85_8:                               // %if.then.i11
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB85_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.42.75@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB85_15
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.11:                              // %if.else.i22
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.12:                              // %if.else.i22
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.13:                              // %if.else.i22
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.14:                              // %if.else.i22
	{
		jump .LBB85_17
	}
	.falign
.LBB85_15:                              // %if.then.i21
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.16:                              // %if.then.i21
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB85_17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-12,r16)
		r17:16 = memd(r29+#24)
		r19:18 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end85:
	.size	halide_error_buffer_argument_is_null, .Lfunc_end85-halide_error_buffer_argument_is_null
                                        // -- End function
	.section	.text.halide_error_debug_to_file_failed,"ax",@progbits
	.weak	halide_error_debug_to_file_failed // -- Begin function halide_error_debug_to_file_failed
	.balign 32
	.type	halide_error_debug_to_file_failed,@function
halide_error_debug_to_file_failed:      // @halide_error_debug_to_file_failed
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r21 = r1
		r1 = #1024
		memd(r29+#16) = r21:20
		memd(r29+#24) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r19:18 = combine(r2,r3)
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r20 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.43@PCREL)
		if (p1) jump:nt .LBB86_6
		if (!p1) r1:0 = combine(r20,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r21,#0); if (p0.new) jump:nt .LBB86_8
	}
	.falign
.LBB86_4:                               // %if.else.i16
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r21
	}
	.falign
// %bb.5:                               // %if.else.i16
	{
		jump .LBB86_9
	}
	.falign
.LBB86_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r21,#0); if (!p0.new) jump:t .LBB86_4
	}
	.falign
.LBB86_8:                               // %if.then.i14
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB86_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.44@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r19,#0); if (p1.new) jump:nt .LBB86_13
		r1 = r20
	}
// %bb.11:                              // %if.else.i28
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.12:                              // %if.else.i28
	{
		jump .LBB86_14
	}
	.falign
.LBB86_13:                              // %if.then.i26
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB86_14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit30
	{
		r2 = add(pc,##.L.str.45@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit30
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit30
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (p0.new) jump:nt .LBB86_21
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.17:                              // %if.else.i42
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.18:                              // %if.else.i42
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.19:                              // %if.else.i42
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.20:                              // %if.else.i42
	{
		jump .LBB86_23
	}
	.falign
.LBB86_21:                              // %if.then.i41
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.22:                              // %if.then.i41
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB86_23:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-13,r16)
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r21:20 = memd(r29+#16)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end86:
	.size	halide_error_debug_to_file_failed, .Lfunc_end86-halide_error_debug_to_file_failed
                                        // -- End function
	.section	.text.halide_error_failed_to_upgrade_buffer_t,"ax",@progbits
	.weak	halide_error_failed_to_upgrade_buffer_t // -- Begin function halide_error_failed_to_upgrade_buffer_t
	.balign 32
	.type	halide_error_failed_to_upgrade_buffer_t,@function
halide_error_failed_to_upgrade_buffer_t: // @halide_error_failed_to_upgrade_buffer_t
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r20 = r1
		r1 = #1024
		memd(r29+#16) = r21:20
		memd(r29+#24) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r18 = r2
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.46@PCREL)
		if (p1) jump:nt .LBB87_6
		if (!p1) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r20,#0); if (p0.new) jump:nt .LBB87_8
	}
	.falign
.LBB87_4:                               // %if.else.i14
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r20
	}
	.falign
// %bb.5:                               // %if.else.i14
	{
		jump .LBB87_9
	}
	.falign
.LBB87_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r20,#0); if (!p0.new) jump:t .LBB87_4
	}
	.falign
.LBB87_8:                               // %if.then.i12
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB87_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.47@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r18,#0); if (p1.new) jump:nt .LBB87_17
		r1 = r19
	}
// %bb.11:                              // %if.else.i26
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.12:                              // %if.else.i26
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r4
		if (p0.new) jump:nt .LBB87_19
	}
	.falign
.LBB87_13:                              // %if.else.i32
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.14:                              // %if.else.i32
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.15:                              // %if.else.i32
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i32
	{
		jump .LBB87_21
	}
	.falign
.LBB87_17:                              // %if.then.i24
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.18:                              // %if.then.i24
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r4
		if (!p0.new) jump:t .LBB87_13
	}
	.falign
.LBB87_19:                              // %if.then.i31
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.20:                              // %if.then.i31
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB87_21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-29,r16)
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r21:20 = memd(r29+#16)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end87:
	.size	halide_error_failed_to_upgrade_buffer_t, .Lfunc_end87-halide_error_failed_to_upgrade_buffer_t
                                        // -- End function
	.section	.text.halide_error_failed_to_downgrade_buffer_t,"ax",@progbits
	.weak	halide_error_failed_to_downgrade_buffer_t // -- Begin function halide_error_failed_to_downgrade_buffer_t
	.balign 32
	.type	halide_error_failed_to_downgrade_buffer_t,@function
halide_error_failed_to_downgrade_buffer_t: // @halide_error_failed_to_downgrade_buffer_t
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r20 = r1
		r1 = #1024
		memd(r29+#16) = r21:20
		memd(r29+#24) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r18 = r2
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.48@PCREL)
		if (p1) jump:nt .LBB88_6
		if (!p1) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r20,#0); if (p0.new) jump:nt .LBB88_8
	}
	.falign
.LBB88_4:                               // %if.else.i14
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r20
	}
	.falign
// %bb.5:                               // %if.else.i14
	{
		jump .LBB88_9
	}
	.falign
.LBB88_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r20,#0); if (!p0.new) jump:t .LBB88_4
	}
	.falign
.LBB88_8:                               // %if.then.i12
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB88_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.47@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r18,#0); if (p1.new) jump:nt .LBB88_17
		r1 = r19
	}
// %bb.11:                              // %if.else.i26
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.12:                              // %if.else.i26
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r4
		if (p0.new) jump:nt .LBB88_19
	}
	.falign
.LBB88_13:                              // %if.else.i32
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.14:                              // %if.else.i32
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.15:                              // %if.else.i32
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i32
	{
		jump .LBB88_21
	}
	.falign
.LBB88_17:                              // %if.then.i24
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.18:                              // %if.then.i24
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r4
		if (!p0.new) jump:t .LBB88_13
	}
	.falign
.LBB88_19:                              // %if.then.i31
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.20:                              // %if.then.i31
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB88_21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-30,r16)
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r21:20 = memd(r29+#16)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end88:
	.size	halide_error_failed_to_downgrade_buffer_t, .Lfunc_end88-halide_error_failed_to_downgrade_buffer_t
                                        // -- End function
	.section	.text.halide_error_unaligned_host_ptr,"ax",@progbits
	.weak	halide_error_unaligned_host_ptr // -- Begin function halide_error_unaligned_host_ptr
	.balign 32
	.type	halide_error_unaligned_host_ptr,@function
halide_error_unaligned_host_ptr:        // @halide_error_unaligned_host_ptr
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r1,r2)
		r1 = #1024
		memd(r29+#24) = r19:18
		memd(r29+#16) = r21:20
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r20 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.49@PCREL)
		if (p0) jump:nt .LBB89_6
		if (!p0) r1:0 = combine(r20,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r19,#0); if (p0.new) jump:nt .LBB89_8
	}
	.falign
.LBB89_4:                               // %if.else.i15
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.5:                               // %if.else.i15
	{
		jump .LBB89_9
	}
	.falign
.LBB89_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r19,#0); if (!p0.new) jump:t .LBB89_4
	}
	.falign
.LBB89_8:                               // %if.then.i13
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB89_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.50@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.51@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB89_17
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.13:                              // %if.else.i32
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.14:                              // %if.else.i32
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.15:                              // %if.else.i32
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i32
	{
		jump .LBB89_19
	}
	.falign
.LBB89_17:                              // %if.then.i31
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.18:                              // %if.then.i31
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB89_19:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-24,r16)
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r21:20 = memd(r29+#16)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end89:
	.size	halide_error_unaligned_host_ptr, .Lfunc_end89-halide_error_unaligned_host_ptr
                                        // -- End function
	.section	.text.halide_error_host_is_null,"ax",@progbits
	.weak	halide_error_host_is_null // -- Begin function halide_error_host_is_null
	.balign 32
	.type	halide_error_host_is_null,@function
halide_error_host_is_null:              // @halide_error_host_is_null
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#32)
	}                               // 8-byte Folded Spill
	{
		r1 = #1024
		r18 = r1
		memd(r29+#16) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.49@PCREL)
		if (p0) jump:nt .LBB90_6
		if (!p0) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB90_8
	}
	.falign
.LBB90_4:                               // %if.else.i13
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.5:                               // %if.else.i13
	{
		jump .LBB90_9
	}
	.falign
.LBB90_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:t .LBB90_4
	}
	.falign
.LBB90_8:                               // %if.then.i11
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB90_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.52@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB90_15
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.11:                              // %if.else.i22
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.12:                              // %if.else.i22
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.13:                              // %if.else.i22
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.14:                              // %if.else.i22
	{
		jump .LBB90_17
	}
	.falign
.LBB90_15:                              // %if.then.i21
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.16:                              // %if.then.i21
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB90_17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-34,r16)
		r17:16 = memd(r29+#24)
		r19:18 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end90:
	.size	halide_error_host_is_null, .Lfunc_end90-halide_error_host_is_null
                                        // -- End function
	.section	.text.halide_error_bad_fold,"ax",@progbits
	.weak	halide_error_bad_fold   // -- Begin function halide_error_bad_fold
	.balign 32
	.type	halide_error_bad_fold,@function
halide_error_bad_fold:                  // @halide_error_bad_fold
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r21:20 = combine(r2,r1)
		r1 = #1024
		memd(r29+#16) = r21:20
		memd(r29+#24) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r18 = r3
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.53@PCREL)
		if (p0) jump:nt .LBB91_6
		if (!p0) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r21,#0); if (p0.new) jump:nt .LBB91_8
	}
	.falign
.LBB91_4:                               // %if.else.i17
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r21
	}
	.falign
// %bb.5:                               // %if.else.i17
	{
		jump .LBB91_9
	}
	.falign
.LBB91_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r21,#0); if (!p0.new) jump:t .LBB91_4
	}
	.falign
.LBB91_8:                               // %if.then.i15
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB91_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.54@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r20,#0); if (p1.new) jump:nt .LBB91_13
		r1 = r19
	}
// %bb.11:                              // %if.else.i29
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r20
	}
	.falign
// %bb.12:                              // %if.else.i29
	{
		jump .LBB91_14
	}
	.falign
.LBB91_13:                              // %if.then.i27
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB91_14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit31
	{
		r2 = add(pc,##.L.str.55@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit31
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB91_18
		r1 = r19
	}
// %bb.16:                              // %if.else.i43
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.17:                              // %if.else.i43
	{
		jump .LBB91_19
	}
	.falign
.LBB91_18:                              // %if.then.i41
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB91_19:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit45
	{
		r2 = add(pc,##.L.str.30.67@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit45
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB91_25
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.21:                              // %if.else.i54
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.22:                              // %if.else.i54
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.23:                              // %if.else.i54
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.24:                              // %if.else.i54
	{
		jump .LBB91_27
	}
	.falign
.LBB91_25:                              // %if.then.i53
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.26:                              // %if.then.i53
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB91_27:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-25,r16)
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r21:20 = memd(r29+#16)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end91:
	.size	halide_error_bad_fold, .Lfunc_end91-halide_error_bad_fold
                                        // -- End function
	.section	.text.halide_error_bad_extern_fold,"ax",@progbits
	.weak	halide_error_bad_extern_fold // -- Begin function halide_error_bad_extern_fold
	.balign 32
	.type	halide_error_bad_extern_fold,@function
halide_error_bad_extern_fold:           // @halide_error_bad_extern_fold
// %bb.0:                               // %entry
	{
		p0 = cmp.gt(r5,r3)
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#56)
	}                               // 8-byte Folded Spill
	{
		r21:20 = combine(r1,r3)
		memd(r29+#40) = r19:18
		memd(r29+#32) = r21:20
	}                               // 8-byte Folded Spill
	{
		r23:22 = combine(r4,r5)
		r24 = r2
		memd(r29+#24) = r23:22
		memd(r29+#16) = r25:24
	}                               // 8-byte Folded Spill
	{
		if (p0) jump:nt .LBB92_2
		r19 = add(r23,r20)
		r18 = memw(r29+#64)
	}
// %bb.1:                               // %lor.lhs.false
	{
		r2 = add(r18,r22)
		if (!cmp.gt(r19,r2.new)) jump:t .LBB92_31
	}
	.falign
.LBB92_2:                               // %if.then
	{
		call ##halide_malloc
		r0 = r16
		r1 = #1024
	}
	.falign
// %bb.3:                               // %if.then
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.56@PCREL)
		if (p0) jump:nt .LBB92_6
		if (!p0) r1:0 = combine(r19,r17)
	}
// %bb.4:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.5:                               // %if.then.i
	{
		jump .LBB92_7
	}
	.falign
.LBB92_6:                               // %if.then.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
.LBB92_7:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	{
		r25 = asr(r24,#31)
		r4 = #1
		r1 = r19
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r25,r24)
	}
	.falign
// %bb.8:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	{
		r2 = add(pc,##.L.str.54@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	{
		p0 = cmp.eq(r21,#0); if (p0.new) jump:nt .LBB92_12
		r1 = r19
	}
// %bb.10:                              // %if.else.i67
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r21
	}
	.falign
// %bb.11:                              // %if.else.i67
	{
		jump .LBB92_13
	}
	.falign
.LBB92_12:                              // %if.then.i65
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB92_13:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.57@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r21 = asr(r20,#31)
		r4 = #1
		r1 = r19
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r21,r20)
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r21 = add(pc,##.L.str.58.76@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
		r2 = r21
	}
	.falign
// %bb.16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(r23,add(r20,#-1))
		r4 = #1
		r1 = r19
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.59.77@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.60.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.19:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r23 = asr(r22,#31)
		r4 = #1
		r1 = r19
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r23,r22)
	}
	.falign
// %bb.20:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r21
	}
	.falign
// %bb.21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(r18,add(r22,#-1))
		r4 = #1
		r1 = r19
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.22:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.61.79@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.23:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB92_28
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.24:                              // %if.else.i117
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.25:                              // %if.else.i117
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.26:                              // %if.else.i117
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.27:                              // %if.else.i117
	{
		jump .LBB92_58
	}
	.falign
.LBB92_28:                              // %if.then.i116
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.29:                              // %if.then.i116
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.30:                              // %if.then.i116
	{
		jump .LBB92_58
	}
	.falign
.LBB92_31:                              // %if.else
	{
		call ##halide_malloc
		r0 = r16
		r1 = #1024
	}
	.falign
// %bb.32:                              // %if.else
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r22 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.56@PCREL)
		if (p1) jump:nt .LBB92_35
		if (!p1) r1:0 = combine(r22,r17)
	}
// %bb.33:                              // %if.then.i127
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.34:                              // %if.then.i127
	{
		jump .LBB92_36
	}
	.falign
.LBB92_35:                              // %if.else.split
	{
		call ##halide_string_to_string
		r22 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
.LBB92_36:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit131
	{
		r25 = asr(r24,#31)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r25,r24)
	}
	.falign
// %bb.37:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit131
	{
		r2 = add(pc,##.L.str.54@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.38:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit131
	{
		p1 = cmp.eq(r21,#0); if (p1.new) jump:nt .LBB92_41
		r1 = r22
	}
// %bb.39:                              // %if.else.i154
	{
		call ##halide_string_to_string
		r1 = r22
		r2 = r21
	}
	.falign
// %bb.40:                              // %if.else.i154
	{
		jump .LBB92_42
	}
	.falign
.LBB92_41:                              // %if.then.i152
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB92_42:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = add(pc,##.L.str.57@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.43:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r21 = asr(r20,#31)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r21,r20)
	}
	.falign
// %bb.44:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = add(pc,##.L.str.58.76@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.45:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r1 = r22
		r4 = #1
		r2 = add(r19,#-1)
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.46:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = add(pc,##.L.str.59.77@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.47:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = add(pc,##.L.str.62@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.48:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = add(pc,##.L.str.63@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.49:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r22
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.50:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = add(pc,##.L.str.30.67@PCREL)
		r1 = r22
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.51:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit157
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (p0.new) jump:nt .LBB92_56
		if (p0.new) r0 = add(r16,#0)
	}
// %bb.52:                              // %if.else.i215
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.53:                              // %if.else.i215
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.54:                              // %if.else.i215
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.55:                              // %if.else.i215
	{
		jump .LBB92_58
	}
	.falign
.LBB92_56:                              // %if.then.i209
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.57:                              // %if.then.i209
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB92_58:                              // %if.end
	{
		r1:0 = combine(#-35,r16)
		r17:16 = memd(r29+#48)
		r19:18 = memd(r29+#40)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#32)
		r23:22 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r25:24 = memd(r29+#16)
		r31:30 = deallocframe(r30):raw
	}                               // 8-byte Folded Reload
.Lfunc_end92:
	.size	halide_error_bad_extern_fold, .Lfunc_end92-halide_error_bad_extern_fold
                                        // -- End function
	.section	.text.halide_error_fold_factor_too_small,"ax",@progbits
	.weak	halide_error_fold_factor_too_small // -- Begin function halide_error_fold_factor_too_small
	.balign 32
	.type	halide_error_fold_factor_too_small,@function
halide_error_fold_factor_too_small:     // @halide_error_fold_factor_too_small
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#56)
	}                               // 8-byte Folded Spill
	{
		r21 = r1
		r1 = #1024
		memd(r29+#32) = r21:20
		memd(r29+#40) = r19:18
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r4,r5)
		r24 = r3
		memd(r29+#24) = r23:22
		memd(r29+#16) = r25:24
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r22 = r2
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r20 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.64.80@PCREL)
		if (p0) jump:nt .LBB93_4
		if (!p0) r1:0 = combine(r20,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		jump .LBB93_5
	}
	.falign
.LBB93_4:                               // %entry.split
	{
		call ##halide_string_to_string
		r20 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
.LBB93_5:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	{
		r25 = asr(r24,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r25,r24)
	}
	.falign
// %bb.6:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	{
		r2 = add(pc,##.L.str.65@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.7:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	{
		p0 = cmp.eq(r22,#0); if (p0.new) jump:nt .LBB93_10
		r1 = r20
	}
// %bb.8:                               // %if.else.i28
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r22
	}
	.falign
// %bb.9:                               // %if.else.i28
	{
		jump .LBB93_11
	}
	.falign
.LBB93_10:                              // %if.then.i26
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB93_11:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.54@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.12:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r21,#0); if (p1.new) jump:nt .LBB93_15
		r1 = r20
	}
// %bb.13:                              // %if.else.i40
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r21
	}
	.falign
// %bb.14:                              // %if.else.i40
	{
		jump .LBB93_16
	}
	.falign
.LBB93_15:                              // %if.then.i38
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB93_16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit42
	{
		r2 = add(pc,##.L.str.66@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit42
	{
		p0 = cmp.eq(r19,#0); if (p0.new) jump:nt .LBB93_20
		r1 = r20
	}
// %bb.18:                              // %if.else.i54
	{
		call ##halide_string_to_string
		r1 = r20
		r2 = r19
	}
	.falign
// %bb.19:                              // %if.else.i54
	{
		jump .LBB93_21
	}
	.falign
.LBB93_20:                              // %if.then.i52
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
.LBB93_21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit56
	{
		r2 = add(pc,##.L.str.32.69@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.22:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit56
	{
		r19 = asr(r18,#31)
		r4 = #1
		r1 = r20
	}
	{
		call ##halide_int64_to_string
		r3:2 = combine(r19,r18)
	}
	.falign
// %bb.23:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit56
	{
		r2 = add(pc,##.L.str.67@PCREL)
		r1 = r20
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.24:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit56
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB93_29
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.25:                              // %if.else.i74
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.26:                              // %if.else.i74
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.27:                              // %if.else.i74
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.28:                              // %if.else.i74
	{
		jump .LBB93_31
	}
	.falign
.LBB93_29:                              // %if.then.i73
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.30:                              // %if.then.i73
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB93_31:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-26,r16)
		r17:16 = memd(r29+#48)
		r19:18 = memd(r29+#40)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#32)
		r23:22 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r25:24 = memd(r29+#16)
		r31:30 = deallocframe(r30):raw
	}                               // 8-byte Folded Reload
.Lfunc_end93:
	.size	halide_error_fold_factor_too_small, .Lfunc_end93-halide_error_fold_factor_too_small
                                        // -- End function
	.section	.text.halide_error_requirement_failed,"ax",@progbits
	.weak	halide_error_requirement_failed // -- Begin function halide_error_requirement_failed
	.balign 32
	.type	halide_error_requirement_failed,@function
halide_error_requirement_failed:        // @halide_error_requirement_failed
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r20 = r1
		r1 = #1024
		memd(r29+#16) = r21:20
		memd(r29+#24) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
		r18 = r2
	}
	.falign
// %bb.1:                               // %entry
	{
		p1 = cmp.eq(r0,#0)
		r17 = r0
	}
	{
		r2 = p1
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.68@PCREL)
		if (p1) jump:nt .LBB94_6
		if (!p1) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r20,#0); if (p0.new) jump:nt .LBB94_8
	}
	.falign
.LBB94_4:                               // %if.else.i14
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r20
	}
	.falign
// %bb.5:                               // %if.else.i14
	{
		jump .LBB94_9
	}
	.falign
.LBB94_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r20,#0); if (!p0.new) jump:t .LBB94_4
	}
	.falign
.LBB94_8:                               // %if.then.i12
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB94_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.3.92@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		p1 = cmp.eq(r18,#0); if (p1.new) jump:nt .LBB94_17
		r1 = r19
	}
// %bb.11:                              // %if.else.i26
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.12:                              // %if.else.i26
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r4
		if (p0.new) jump:nt .LBB94_19
	}
	.falign
.LBB94_13:                              // %if.else.i32
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.14:                              // %if.else.i32
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.15:                              // %if.else.i32
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.16:                              // %if.else.i32
	{
		jump .LBB94_21
	}
	.falign
.LBB94_17:                              // %if.then.i24
	{
		r2 = add(pc,##.L.str.78@PCREL)
		call ##halide_string_to_string
	}
	.falign
// %bb.18:                              // %if.then.i24
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r4
		if (!p0.new) jump:t .LBB94_13
	}
	.falign
.LBB94_19:                              // %if.then.i31
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.20:                              // %if.then.i31
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB94_21:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-27,r16)
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r21:20 = memd(r29+#16)
		deallocframe
	}                               // 8-byte Folded Reload
.Lfunc_end94:
	.size	halide_error_requirement_failed, .Lfunc_end94-halide_error_requirement_failed
                                        // -- End function
	.section	.text.halide_error_specialize_fail,"ax",@progbits
	.weak	halide_error_specialize_fail // -- Begin function halide_error_specialize_fail
	.balign 32
	.type	halide_error_specialize_fail,@function
halide_error_specialize_fail:           // @halide_error_specialize_fail
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#32)
	}                               // 8-byte Folded Spill
	{
		r1 = #1024
		r18 = r1
		memd(r29+#16) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.70@PCREL)
		if (p0) jump:nt .LBB95_10
		if (!p0) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB95_12
	}
	.falign
.LBB95_4:                               // %if.else.i12
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.5:                               // %if.else.i12
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r4
		if (p1.new) jump:nt .LBB95_14
	}
	.falign
.LBB95_6:                               // %if.else.i16
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.7:                               // %if.else.i16
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.8:                               // %if.else.i16
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.9:                               // %if.else.i16
	{
		jump .LBB95_16
	}
	.falign
.LBB95_10:                              // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.11:                              // %entry.split
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:t .LBB95_4
	}
	.falign
.LBB95_12:                              // %if.then.i10
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.13:                              // %if.then.i10
	{
		r4 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r4
		if (!p1.new) jump:t .LBB95_6
	}
	.falign
.LBB95_14:                              // %if.then.i15
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.15:                              // %if.then.i15
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB95_16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-31,r16)
		r17:16 = memd(r29+#24)
		r19:18 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end95:
	.size	halide_error_specialize_fail, .Lfunc_end95-halide_error_specialize_fail
                                        // -- End function
	.section	.text.halide_error_no_device_interface,"ax",@progbits
	.weak	halide_error_no_device_interface // -- Begin function halide_error_no_device_interface
	.balign 32
	.type	halide_error_no_device_interface,@function
halide_error_no_device_interface:       // @halide_error_no_device_interface
// %bb.0:                               // %entry
	{
		r1 = #1024
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB96_7
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.2:                               // %if.else.i9
	{
		r2 = add(pc,##.L.str.71@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.else.i9
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.4:                               // %if.else.i9
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.5:                               // %if.else.i9
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.6:                               // %if.else.i9
	{
		r1:0 = combine(#-19,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
	.falign
.LBB96_7:                               // %if.then.i8
	{
		r2 = add(pc,##.L.str.71@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %if.then.i8
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.9:                               // %if.then.i8
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.10:                              // %if.then.i8
	{
		r1:0 = combine(#-19,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end96:
	.size	halide_error_no_device_interface, .Lfunc_end96-halide_error_no_device_interface
                                        // -- End function
	.section	.text.halide_error_device_interface_no_device,"ax",@progbits
	.weak	halide_error_device_interface_no_device // -- Begin function halide_error_device_interface_no_device
	.balign 32
	.type	halide_error_device_interface_no_device,@function
halide_error_device_interface_no_device: // @halide_error_device_interface_no_device
// %bb.0:                               // %entry
	{
		r1 = #1024
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB97_7
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.2:                               // %if.else.i9
	{
		r2 = add(pc,##.L.str.72@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.else.i9
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.4:                               // %if.else.i9
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.5:                               // %if.else.i9
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.6:                               // %if.else.i9
	{
		r1:0 = combine(#-36,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
	.falign
.LBB97_7:                               // %if.then.i8
	{
		r2 = add(pc,##.L.str.72@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %if.then.i8
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.9:                               // %if.then.i8
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.10:                              // %if.then.i8
	{
		r1:0 = combine(#-36,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end97:
	.size	halide_error_device_interface_no_device, .Lfunc_end97-halide_error_device_interface_no_device
                                        // -- End function
	.section	.text.halide_error_host_and_device_dirty,"ax",@progbits
	.weak	halide_error_host_and_device_dirty // -- Begin function halide_error_host_and_device_dirty
	.balign 32
	.type	halide_error_host_and_device_dirty,@function
halide_error_host_and_device_dirty:     // @halide_error_host_and_device_dirty
// %bb.0:                               // %entry
	{
		r1 = #1024
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB98_7
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.2:                               // %if.else.i9
	{
		r2 = add(pc,##.L.str.73@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.else.i9
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.4:                               // %if.else.i9
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.5:                               // %if.else.i9
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.6:                               // %if.else.i9
	{
		r1:0 = combine(#-37,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
	.falign
.LBB98_7:                               // %if.then.i8
	{
		r2 = add(pc,##.L.str.73@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %if.then.i8
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.9:                               // %if.then.i8
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.10:                              // %if.then.i8
	{
		r1:0 = combine(#-37,r16)
		r17:16 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
	}
.Lfunc_end98:
	.size	halide_error_host_and_device_dirty, .Lfunc_end98-halide_error_host_and_device_dirty
                                        // -- End function
	.section	.text.halide_error_buffer_is_null,"ax",@progbits
	.weak	halide_error_buffer_is_null // -- Begin function halide_error_buffer_is_null
	.balign 32
	.type	halide_error_buffer_is_null,@function
halide_error_buffer_is_null:            // @halide_error_buffer_is_null
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#32)
	}                               // 8-byte Folded Spill
	{
		r1 = #1024
		r18 = r1
		memd(r29+#16) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		r17 = r0
		p0 = cmp.eq(r0,#0)
	}
	{
		r2 = p0
		r19 = add(r17,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.74@PCREL)
		if (p0) jump:nt .LBB99_6
		if (!p0) r1:0 = combine(r19,r17)
	}
// %bb.2:                               // %if.then.i
	{
		r3 = #0
		memb(r17+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.then.i
	{
		p0 = cmp.eq(r18,#0); if (p0.new) jump:nt .LBB99_8
	}
	.falign
.LBB99_4:                               // %if.else.i13
	{
		call ##halide_string_to_string
		r1 = r19
		r2 = r18
	}
	.falign
// %bb.5:                               // %if.else.i13
	{
		jump .LBB99_9
	}
	.falign
.LBB99_6:                               // %entry.split
	{
		call ##halide_string_to_string
		r19 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
// %bb.7:                               // %entry.split
	{
		p0 = cmp.eq(r18,#0); if (!p0.new) jump:t .LBB99_4
	}
	.falign
.LBB99_8:                               // %if.then.i11
	{
		r2 = add(pc,##.L.str.78@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
.LBB99_9:                               // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = add(pc,##.L.str.75@PCREL)
		r1 = r19
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.10:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p1 = r2
		if (p1.new) jump:nt .LBB99_15
		if (p1.new) r0 = add(r16,#0)
	}
// %bb.11:                              // %if.else.i22
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.12:                              // %if.else.i22
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.13:                              // %if.else.i22
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.14:                              // %if.else.i22
	{
		jump .LBB99_17
	}
	.falign
.LBB99_15:                              // %if.then.i21
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		call ##halide_error
	}
	.falign
// %bb.16:                              // %if.then.i21
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
.LBB99_17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	{
		r1:0 = combine(#-38,r16)
		r17:16 = memd(r29+#24)
		r19:18 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_check_fault_and_return
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end99:
	.size	halide_error_buffer_is_null, .Lfunc_end99-halide_error_buffer_is_null
                                        // -- End function
	.section	.text.halide_error_integer_division_by_zero,"ax",@progbits
	.weak	halide_error_integer_division_by_zero // -- Begin function halide_error_integer_division_by_zero
	.balign 32
	.type	halide_error_integer_division_by_zero,@function
halide_error_integer_division_by_zero:  // @halide_error_integer_division_by_zero
// %bb.0:                               // %entry
	{
		r1 = #1024
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##halide_malloc
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB100_7
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.2:                               // %if.else.i7
	{
		r2 = add(pc,##.L.str.76@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.3:                               // %if.else.i7
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.4:                               // %if.else.i7
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.5:                               // %if.else.i7
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.6:                               // %if.else.i7
	{
		r0 = #-44
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB100_7:                              // %if.then.i6
	{
		r2 = add(pc,##.L.str.76@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.8:                               // %if.then.i6
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.9:                               // %if.then.i6
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.10:                              // %if.then.i6
	{
		r0 = #-44
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end100:
	.size	halide_error_integer_division_by_zero, .Lfunc_end100-halide_error_integer_division_by_zero
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t // -- Begin function _ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
	.balign 32
	.type	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t,@function
_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t: // @_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
// %bb.0:                               // %entry
	{
		memw(r2+#52) = #4
	}
	{
		r3 = memw(r1+#12)
		if (cmp.eq(r3.new,#0)) jump:nt .LBB101_8
	}
// %bb.1:                               // %for.inc
	{
		r3 = memw(r1+#16)
		if (cmp.eq(r3.new,#0)) jump:nt .LBB101_13
	}
// %bb.2:                               // %for.inc.1
	{
		r3 = memw(r1+#20)
		if (cmp.eq(r3.new,#0)) jump:nt .LBB101_15
	}
// %bb.3:                               // %for.inc.2
	{
		r3 = memw(r1+#24)
		if (cmp.eq(r3.new,#0)) jump:nt .LBB101_16
	}
// %bb.4:                               // %cleanup
	{
		r3 = memw(r1+#60)
		if (cmp.gt(r3.new,#3)) jump:t .LBB101_9
	}
	.falign
.LBB101_5:                              // %cleanup
	{
		p1 = cmp.eq(r3,#1); if (p1.new) jump:t .LBB101_12
		if (p1.new) memw(r2+#48) = ##67585
	}
// %bb.6:                               // %cleanup
	{
		p0 = cmp.eq(r3,#2); if (!p0.new) jump:nt .LBB101_14
		if (p0.new) memw(r2+#48) = ##69633
	}
// %bb.7:                               // %sw.bb3
	{
		r0 = #0
		jumpr r31
	}
	.falign
.LBB101_8:
	{
		r3 = #0
		memw(r2+#52) = r3.new
	}
	{
		r3 = memw(r1+#60)
		if (!cmp.gt(r3.new,#3)) jump:t .LBB101_5
	}
	.falign
.LBB101_9:                              // %cleanup
	{
		p1 = cmp.eq(r3,#4); if (p1.new) jump:t .LBB101_12
		if (p1.new) memw(r2+#48) = ##73729
	}
// %bb.10:                              // %cleanup
	{
		p0 = cmp.eq(r3,#8); if (!p0.new) jump:nt .LBB101_14
		if (p0.new) memw(r2+#48) = ##81921
	}
	.falign
.LBB101_12:                             // %return
	{
		r0 = #0
		jumpr r31
	}
	.falign
.LBB101_13:
	{
		r3 = #1
		memw(r2+#52) = r3.new
	}
	{
		r3 = memw(r1+#60)
		if (cmp.gt(r3.new,#3)) jump:t .LBB101_9
	}
	{
		jump .LBB101_5
	}
	.falign
.LBB101_14:                             // %sw.default
	{
		r1 = add(pc,##.L.str.89@PCREL)
	}
	{
		r2 = add(pc,##.L.str.1.90@PCREL)
		jump ##halide_error_failed_to_upgrade_buffer_t
	}
	.falign
.LBB101_15:
	{
		r3 = #2
		memw(r2+#52) = r3.new
	}
	{
		r3 = memw(r1+#60)
		if (cmp.gt(r3.new,#3)) jump:t .LBB101_9
	}
	{
		jump .LBB101_5
	}
	.falign
.LBB101_16:
	{
		r3 = #3
		memw(r2+#52) = r3.new
	}
	{
		r3 = memw(r1+#60)
		if (cmp.gt(r3.new,#3)) jump:t .LBB101_9
	}
	{
		jump .LBB101_5
	}
.Lfunc_end101:
	.size	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t, .Lfunc_end101-_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
                                        // -- End function
	.section	.text.halide_upgrade_buffer_t,"ax",@progbits
	.weak	halide_upgrade_buffer_t // -- Begin function halide_upgrade_buffer_t
	.balign 32
	.type	halide_upgrade_buffer_t,@function
halide_upgrade_buffer_t:                // @halide_upgrade_buffer_t
// %bb.0:                               // %entry
	{
		r17:16 = combine(r2,r0)
		memd(r29+#-16) = r17:16
		allocframe(#40)
	}                               // 8-byte Folded Spill
	{
		r2 = memw(r2+#8)
	}
	{
		r18 = r1
		memd(r29+#24) = r19:18
		memd(r29+#16) = r21:20
	}                               // 8-byte Folded Spill
	{
		p0 = cmp.eq(r2,#0); if (!p0.new) jump:t .LBB102_2
		r7:6 = combine(#0,#0)
		if (p0.new) r1:0 = memd(r17+#0)
	}
// %bb.1:                               // %lor.lhs.false
	{
		p1 = cmp.eq(r1:0,r7:6)
		if (p1.new) jump:nt .LBB102_28
		if (p1.new) r2 = #0
	}
	.falign
.LBB102_2:                              // %if.then
	{
		r20 = add(r3,#48)
		r5 = memub(r3+#49)
		r6 = memw(r17+#60)
	}
	{
		r5 = add(r5,#7)
	}
	{
		r5 = lsr(r5,#3)
		if (!cmp.eq(r5.new,r6)) jump:t .LBB102_6
	}
// %bb.3:                               // %if.end
	{
		p1 = cmp.eq(r4,#0); if (p1.new) jump:nt .LBB102_10
		if (p1.new) r5:4 = memd(r17+#0)
		if (p1.new) memw(r3+#12) = r2
	}
// %bb.4:                               // %if.then14
	{
		r1:0 = combine(r18,r16)
		r3 = memw(r3+#12)
		if (cmp.eq(r3.new,r2)) jump:nt .LBB102_34
	}
// %bb.5:                               // %if.then18
	{
		r2 = add(pc,##.L.str.6.96@PCREL)
		r17:16 = memd(r29+#32)
	}                               // 8-byte Folded Reload
	{
		r19:18 = memd(r29+#24)
		r21:20 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_failed_to_upgrade_buffer_t
		r31:30 = deallocframe(r30):raw
	}
	.falign
.LBB102_6:                              // %if.then2
	{
		r0 = r16
		r1 = #1024
	}
	{
		call ##halide_malloc
	}
	.falign
// %bb.7:                               // %if.then2
	{
		p1 = cmp.eq(r0,#0)
		r19 = r0
	}
	{
		r2 = p1
		r21 = add(r19,#1023)
		memw(r29+#4) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.L.str.2.91@PCREL)
		if (p1) jump:nt .LBB102_12
		if (!p1) r1:0 = combine(r21,r19)
	}
// %bb.8:                               // %if.then.i92
	{
		r3 = #0
		memb(r19+#1023) = r3.new
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.9:                               // %if.then.i92
	{
		jump .LBB102_13
	}
	.falign
.LBB102_10:                             // %if.end22
	{
		r1:0 = combine(#0,#0)
	}
	{
		p1 = cmp.eq(r5:4,r1:0)
		if (p1.new) jump:nt .LBB102_29
		if (!p1.new) r2 = memw(r4+#8)
		if (!p1.new) r1:0 = memd(r4+#0)
	}
// %bb.11:                              // %if.then27
	{
		jump .LBB102_30
	}
	.falign
.LBB102_12:                             // %if.then2.split
	{
		call ##halide_string_to_string
		r21 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
.LBB102_13:                             // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	{
		r4 = #1
		r1 = r21
		r2 = memw(r17+#60)
	}
	{
		call ##halide_int64_to_string
		r3 = asr(r2,#31)
	}
	.falign
// %bb.14:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	{
		r2 = add(pc,##.L.str.3.92@PCREL)
		r1 = r21
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.15:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	{
		r2 = add(pc,##.L.str.4.93@PCREL)
		r1 = r21
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.16:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	{
		call ##halide_type_to_string
		r1 = r21
		r2 = r20
	}
	.falign
// %bb.17:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	{
		r2 = add(pc,##.L.str.5.94@PCREL)
		r1 = r21
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.18:                              // %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	{
		r2 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (p0.new) jump:nt .LBB102_24
		if (p0.new) r1:0 = combine(r18,r16)
	}
// %bb.19:                              // %if.else.i
	{
		r20 = add(r0,sub(#1,r19))
		r1:0 = combine(r19,r16)
	}
	{
		r21 = asr(r20,#31)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3:2 = combine(r21,r20)
	}
	.falign
// %bb.20:                              // %if.else.i
	{
		call ##halide_error_failed_to_upgrade_buffer_t
		r1:0 = combine(r18,r16)
		r2 = r19
	}
	.falign
// %bb.21:                              // %if.else.i
	{
		r17 = r0
		r1:0 = combine(r19,r16)
		r3:2 = combine(r21,r20)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
	}
	.falign
// %bb.22:                              // %if.else.i
	{
		call ##halide_free
		r1:0 = combine(r19,r16)
	}
	.falign
// %bb.23:                              // %if.else.i
	{
		r0 = r17
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#16)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB102_24:                             // %if.then.i
	{
		r17 = add(pc,##.L.str.8.103@PCREL)
	}
	{
		call ##halide_error_failed_to_upgrade_buffer_t
		r2 = r17
	}
	.falign
// %bb.25:                              // %if.then.i
	{
		call ##halide_error
		r18 = r0
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.26:                              // %if.then.i
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.27:                              // %if.then.i
	{
		r0 = r18
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#16)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB102_28:                             // %if.end22.thread
	{
		jump .LBB102_30
		r1:0 = combine(#0,#0)
		memw(r3+#12) = #0
	}
	.falign
.LBB102_29:
	{
		r2 = #0
		r1:0 = combine(#0,#0)
	}
	.falign
.LBB102_30:                             // %if.end32
	{
		r4 = memw(r3+#52)
		memd(r3+#0) = r1:0
	}
	{
		memw(r3+#8) = r2
	}
	{
		p0 = cmp.gt(r4,#0); if (!p0.new) jump:nt .LBB102_33
		r2 = add(r17,#28)
		if (p0.new) r5 = memw(r3+#56)
	}
// %bb.31:                              // %for.body.lr.ph
	{
		loop0(.LBB102_32,r4)
		r4 = add(r5,#8)
	}
	.falign
.Ltmp13:                                // Block address taken
.LBB102_32:                             // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r5 = memw(r2+#16)
		memw(r4+#-8) = r5.new
	}
	{
		r5 = memw(r2+#-16)
		memw(r4+#-4) = r5.new
	}
	{
		r2 = add(r2,#4)
		r4 = add(r4,#16)
		r5 = memw(r2+#0)
		memw(r4+#0) = r5.new
	} :endloop0
	.falign
.LBB102_33:                             // %for.cond.cleanup
	{
		r1 = #0
		r2 = memb(r17+#65)
		r4 = memub(r17+#64)
	}
	{
		r5 = setbit(r4,#1)
		p1 = cmp.eq(r2,#0)
	}
	{
		r0 = mux(p1,r4,r5)
	}
	{
		memd(r3+#16) = r1:0
	}
	.falign
.LBB102_34:                             // %return
	{
		r0 = #0
		r17:16 = memd(r29+#32)
		r19:18 = memd(r29+#24)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#16)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end102:
	.size	halide_upgrade_buffer_t, .Lfunc_end102-halide_upgrade_buffer_t
                                        // -- End function
	.section	.text.halide_downgrade_buffer_t,"ax",@progbits
	.weak	halide_downgrade_buffer_t // -- Begin function halide_downgrade_buffer_t
	.balign 32
	.type	halide_downgrade_buffer_t,@function
halide_downgrade_buffer_t:              // @halide_downgrade_buffer_t
// %bb.0:                               // %entry
	{
		r17:16 = combine(r3,r1)
		memd(r29+#-16) = r17:16
		allocframe(#16)
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(r0,r2)
		r2 = #72
		r1:0 = combine(#0,r3)
		memd(r29+#0) = r19:18
	}                               // 8-byte Folded Spill
	{
		call ##memset
	}
	.falign
// %bb.1:                               // %entry
	{
		r1:0 = combine(r16,r19)
		r2 = memw(r18+#52)
		if (!cmp.gt(r2.new,#4)) jump:t .LBB103_3
	}
// %bb.2:                               // %if.then
	{
		r2 = add(pc,##.L.str.7.97@PCREL)
		r17:16 = memd(r29+#8)
	}                               // 8-byte Folded Reload
	{
		jump ##halide_error_failed_to_downgrade_buffer_t
		r19:18 = memd(r29+#0)
		deallocframe
	}                               // 8-byte Folded Reload
	.falign
.LBB103_3:                              // %if.end
	{
		p1 = cmp.gt(r2,#0); if (!p1.new) jump:nt .LBB103_6
		r0 = memw(r18+#12)
		memw(r17+#8) = r0.new
	}
// %bb.4:                               // %for.body.lr.ph
	{
		r2 = add(r17,#28)
		r3 = #0
		r4 = memw(r18+#56)
	}
	{
		r4 = add(r4,#8)
	}
	.falign
.LBB103_5:                              // %for.body
                                        // =>This Inner Loop Header: Depth=1
	{
		r3 = add(r3,#1)
		r5 = memw(r4+#-8)
		memw(r2+#16) = r5.new
	}
	{
		r5 = memw(r4+#-4)
		memw(r2+#-16) = r5.new
	}
	{
		r2 = add(r2,#4)
		r4 = add(r4,#16)
		r5 = memw(r4+#0)
		memw(r2+#0) = r5.new
	}
	{
		r5 = memw(r18+#52)
		if (cmp.gt(r5.new,r3)) jump:t .LBB103_5
	}
	.falign
.LBB103_6:                              // %for.cond.cleanup
	{
		r1:0 = combine(r16,r19)
		r3:2 = combine(r17,r18)
		r4 = memub(r18+#49)
		r19:18 = memd(r29+#0)
	}                               // 8-byte Folded Reload
	{
		r4 = add(r4,#7)
	}
	{
		r4 = lsr(r4,#3)
		r17:16 = memd(r29+#8)
		memw(r17+#60) = r4.new
	}                               // 8-byte Folded Reload
	{
		jump ##halide_downgrade_buffer_t_device_fields
		r31:30 = deallocframe(r30):raw
	}
.Lfunc_end103:
	.size	halide_downgrade_buffer_t, .Lfunc_end103-halide_downgrade_buffer_t
                                        // -- End function
	.section	.text.halide_downgrade_buffer_t_device_fields,"ax",@progbits
	.weak	halide_downgrade_buffer_t_device_fields // -- Begin function halide_downgrade_buffer_t_device_fields
	.balign 32
	.type	halide_downgrade_buffer_t_device_fields,@function
halide_downgrade_buffer_t_device_fields: // @halide_downgrade_buffer_t_device_fields
// %bb.0:                               // %entry
	{
		r17:16 = combine(r2,r3)
		r7:6 = combine(#0,#0)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		r1 = memub(r2+#16)
		r5:4 = memd(r17+#0)
	}
	{
		r0 = extractu(r1,#1,#1)
		r2 = and(r1,#1)
		memb(r16+#65) = r0.new
	}
	{
		p0 = cmp.eq(r5:4,r7:6)
		if (p0.new) jump:nt .LBB104_3
		r1:0 = memd(r16+#0)
		memb(r16+#64) = r2
	}
// %bb.1:                               // %if.then
	{
		p1 = cmp.eq(r1:0,r7:6)
		if (p1.new) jump:nt .LBB104_7
		if (p1.new) r0 = #16
	}
// %bb.2:                               // %if.then4
	{
		r2 = memw(r17+#8)
		memw(r0+#8) = r2.new
	}
	{
		r0 = #0
		r17:16 = memd(r29+#0)
		memd(r0+#0) = r5:4
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB104_3:                              // %if.else15
	{
		p0 = cmp.eq(r1:0,r7:6)
		if (p0.new) jump:nt .LBB104_6
	}
// %bb.4:                               // %if.then18
	{
		call ##free
	}
	.falign
// %bb.5:                               // %if.then18
	{
		r1:0 = combine(#0,#0)
	}
	{
		memd(r16+#0) = r1:0
	}
	.falign
.LBB104_6:                              // %if.end23
	{
		r0 = #0
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB104_7:                              // %if.else
	{
		call ##malloc
	}
	.falign
// %bb.8:                               // %if.else
	{
		r1 = #0
		r5:4 = memd(r17+#0)
		r2 = memw(r17+#8)
	}
	{
		memw(r0+#8) = r2
		memd(r0+#0) = r5:4
	}
	{
		r0 = #0
		r17:16 = memd(r29+#0)
		memd(r16+#0) = r1:0
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end104:
	.size	halide_downgrade_buffer_t_device_fields, .Lfunc_end104-halide_downgrade_buffer_t_device_fields
                                        // -- End function
	.section	.text.halide_copy_to_host_legacy,"ax",@progbits
	.weak	halide_copy_to_host_legacy // -- Begin function halide_copy_to_host_legacy
	.balign 32
	.type	halide_copy_to_host_legacy,@function
halide_copy_to_host_legacy:             // @halide_copy_to_host_legacy
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		r17:16 = combine(r0,r1)
		memd(r29+#-16) = r17:16
		allocframe(#144)
	}                               // 8-byte Folded Spill
	{
		r2 = add(r29,#64)
		r3 = add(r29,#0)
	}
	{
		memd(r29+#120) = r5:4
		memd(r29+#128) = r19:18
	}                               // 8-byte Folded Spill
	{
		memd(r29+#112) = r5:4
		memd(r29+#104) = r5:4
	}
	{
		memd(r29+#96) = r5:4
		memd(r29+#88) = r5:4
	}
	{
		memd(r29+#80) = r5:4
		memd(r29+#72) = r5:4
	}
	{
		memd(r29+#64) = r5:4
		memd(r29+#56) = r5:4
	}
	{
		memd(r29+#48) = r5:4
		memd(r29+#40) = r5:4
	}
	{
		memd(r29+#32) = r5:4
		memd(r29+#24) = r5:4
	}
	{
		memd(r29+#16) = r5:4
		memd(r29+#8) = r5:4
	}
	{
		call ##_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
		memd(r29+#0) = r5:4
		memw(r29+#120) = r3
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB105_6
		r18 = #1
		r2 = r16
	}
// %bb.2:                               // %lor.end
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r0 = r17
	}
	{
		call ##halide_upgrade_buffer_t
		r4 = #0
		r3 = add(r29,#64)
	}
	.falign
// %bb.3:                               // %lor.end
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB105_6
	}
// %bb.4:                               // %lor.end7
	{
		call ##halide_copy_to_host
		r1 = add(r29,#64)
		r0 = r17
	}
	.falign
// %bb.5:                               // %lor.end7
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB105_7
		r2 = add(r29,#64)
		if (p0.new) r0 = add(r17,#0)
	}
	.falign
.LBB105_6:                              // %lor.end13
	{
		r0 = r18
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB105_7:                              // %lor.rhs10
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r3 = r16
	}
	{
		call ##halide_downgrade_buffer_t_device_fields
	}
	.falign
// %bb.8:                               // %lor.rhs10
	{
		r18 = !cmp.eq(r0,#0)
	}
	{
		r0 = r18
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end105:
	.size	halide_copy_to_host_legacy, .Lfunc_end105-halide_copy_to_host_legacy
                                        // -- End function
	.section	.text.halide_copy_to_device_legacy,"ax",@progbits
	.weak	halide_copy_to_device_legacy // -- Begin function halide_copy_to_device_legacy
	.balign 32
	.type	halide_copy_to_device_legacy,@function
halide_copy_to_device_legacy:           // @halide_copy_to_device_legacy
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		r17:16 = combine(r0,r1)
		memd(r29+#-16) = r17:16
		allocframe(#144)
	}                               // 8-byte Folded Spill
	{
		r3 = add(r29,#0)
	}
	{
		r18 = r2
		r2 = add(r29,#64)
		memd(r29+#128) = r19:18
		memd(r29+#120) = r5:4
	}                               // 8-byte Folded Spill
	{
		memd(r29+#112) = r5:4
		memd(r29+#104) = r5:4
	}
	{
		memd(r29+#96) = r5:4
		memd(r29+#88) = r5:4
	}
	{
		memd(r29+#80) = r5:4
		memd(r29+#72) = r5:4
	}
	{
		memd(r29+#64) = r5:4
		memd(r29+#56) = r5:4
	}
	{
		memd(r29+#48) = r5:4
		memd(r29+#40) = r5:4
	}
	{
		memd(r29+#32) = r5:4
		memd(r29+#24) = r5:4
	}
	{
		memd(r29+#16) = r5:4
		memd(r29+#8) = r5:4
	}
	{
		call ##_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
		memd(r29+#0) = r5:4
		memw(r29+#120) = r3
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB106_6
		r19 = #1
		r2 = r16
	}
// %bb.2:                               // %lor.end
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r0 = r17
	}
	{
		call ##halide_upgrade_buffer_t
		r4 = #0
		r3 = add(r29,#64)
	}
	.falign
// %bb.3:                               // %lor.end
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB106_6
		r1 = add(r29,#64)
		r2 = r18
	}
// %bb.4:                               // %lor.end8
	{
		call ##halide_copy_to_device
		r0 = r17
	}
	.falign
// %bb.5:                               // %lor.end8
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB106_7
		r2 = add(r29,#64)
		if (p0.new) r0 = add(r17,#0)
	}
	.falign
.LBB106_6:                              // %lor.end14
	{
		r0 = r19
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB106_7:                              // %lor.rhs11
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r3 = r16
	}
	{
		call ##halide_downgrade_buffer_t_device_fields
	}
	.falign
// %bb.8:                               // %lor.rhs11
	{
		r19 = !cmp.eq(r0,#0)
	}
	{
		r0 = r19
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end106:
	.size	halide_copy_to_device_legacy, .Lfunc_end106-halide_copy_to_device_legacy
                                        // -- End function
	.section	.text.halide_device_sync_legacy,"ax",@progbits
	.weak	halide_device_sync_legacy // -- Begin function halide_device_sync_legacy
	.balign 32
	.type	halide_device_sync_legacy,@function
halide_device_sync_legacy:              // @halide_device_sync_legacy
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		r17:16 = combine(r0,r1)
		memd(r29+#-16) = r17:16
		allocframe(#144)
	}                               // 8-byte Folded Spill
	{
		r2 = add(r29,#64)
		r3 = add(r29,#0)
	}
	{
		memd(r29+#120) = r5:4
		memd(r29+#128) = r19:18
	}                               // 8-byte Folded Spill
	{
		memd(r29+#112) = r5:4
		memd(r29+#104) = r5:4
	}
	{
		memd(r29+#96) = r5:4
		memd(r29+#88) = r5:4
	}
	{
		memd(r29+#80) = r5:4
		memd(r29+#72) = r5:4
	}
	{
		memd(r29+#64) = r5:4
		memd(r29+#56) = r5:4
	}
	{
		memd(r29+#48) = r5:4
		memd(r29+#40) = r5:4
	}
	{
		memd(r29+#32) = r5:4
		memd(r29+#24) = r5:4
	}
	{
		memd(r29+#16) = r5:4
		memd(r29+#8) = r5:4
	}
	{
		call ##_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
		memd(r29+#0) = r5:4
		memw(r29+#120) = r3
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB107_6
		r18 = #1
		r2 = r16
	}
// %bb.2:                               // %lor.end
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r0 = r17
	}
	{
		call ##halide_upgrade_buffer_t
		r4 = #0
		r3 = add(r29,#64)
	}
	.falign
// %bb.3:                               // %lor.end
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB107_6
	}
// %bb.4:                               // %lor.end7
	{
		call ##halide_device_sync
		r1 = add(r29,#64)
		r0 = r17
	}
	.falign
// %bb.5:                               // %lor.end7
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB107_7
		r2 = add(r29,#64)
		if (p0.new) r0 = add(r17,#0)
	}
	.falign
.LBB107_6:                              // %lor.end13
	{
		r0 = r18
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB107_7:                              // %lor.rhs10
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r3 = r16
	}
	{
		call ##halide_downgrade_buffer_t_device_fields
	}
	.falign
// %bb.8:                               // %lor.rhs10
	{
		r18 = !cmp.eq(r0,#0)
	}
	{
		r0 = r18
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end107:
	.size	halide_device_sync_legacy, .Lfunc_end107-halide_device_sync_legacy
                                        // -- End function
	.section	.text.halide_device_malloc_legacy,"ax",@progbits
	.weak	halide_device_malloc_legacy // -- Begin function halide_device_malloc_legacy
	.balign 32
	.type	halide_device_malloc_legacy,@function
halide_device_malloc_legacy:            // @halide_device_malloc_legacy
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		r17:16 = combine(r0,r1)
		memd(r29+#-16) = r17:16
		allocframe(#144)
	}                               // 8-byte Folded Spill
	{
		r3 = add(r29,#0)
	}
	{
		r18 = r2
		r2 = add(r29,#64)
		memd(r29+#128) = r19:18
		memd(r29+#120) = r5:4
	}                               // 8-byte Folded Spill
	{
		memd(r29+#112) = r5:4
		memd(r29+#104) = r5:4
	}
	{
		memd(r29+#96) = r5:4
		memd(r29+#88) = r5:4
	}
	{
		memd(r29+#80) = r5:4
		memd(r29+#72) = r5:4
	}
	{
		memd(r29+#64) = r5:4
		memd(r29+#56) = r5:4
	}
	{
		memd(r29+#48) = r5:4
		memd(r29+#40) = r5:4
	}
	{
		memd(r29+#32) = r5:4
		memd(r29+#24) = r5:4
	}
	{
		memd(r29+#16) = r5:4
		memd(r29+#8) = r5:4
	}
	{
		call ##_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
		memd(r29+#0) = r5:4
		memw(r29+#120) = r3
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB108_6
		r19 = #1
		r2 = r16
	}
// %bb.2:                               // %lor.end
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r0 = r17
	}
	{
		call ##halide_upgrade_buffer_t
		r4 = #0
		r3 = add(r29,#64)
	}
	.falign
// %bb.3:                               // %lor.end
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB108_6
		r1 = add(r29,#64)
		r2 = r18
	}
// %bb.4:                               // %lor.end8
	{
		call ##halide_device_malloc
		r0 = r17
	}
	.falign
// %bb.5:                               // %lor.end8
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB108_7
		r2 = add(r29,#64)
		if (p0.new) r0 = add(r17,#0)
	}
	.falign
.LBB108_6:                              // %lor.end14
	{
		r0 = r19
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB108_7:                              // %lor.rhs11
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r3 = r16
	}
	{
		call ##halide_downgrade_buffer_t_device_fields
	}
	.falign
// %bb.8:                               // %lor.rhs11
	{
		r19 = !cmp.eq(r0,#0)
	}
	{
		r0 = r19
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end108:
	.size	halide_device_malloc_legacy, .Lfunc_end108-halide_device_malloc_legacy
                                        // -- End function
	.section	.text.halide_device_free_legacy,"ax",@progbits
	.weak	halide_device_free_legacy // -- Begin function halide_device_free_legacy
	.balign 32
	.type	halide_device_free_legacy,@function
halide_device_free_legacy:              // @halide_device_free_legacy
// %bb.0:                               // %entry
	{
		r5:4 = combine(#0,#0)
		r17:16 = combine(r0,r1)
		memd(r29+#-16) = r17:16
		allocframe(#144)
	}                               // 8-byte Folded Spill
	{
		r2 = add(r29,#64)
		r3 = add(r29,#0)
	}
	{
		memd(r29+#120) = r5:4
		memd(r29+#128) = r19:18
	}                               // 8-byte Folded Spill
	{
		memd(r29+#112) = r5:4
		memd(r29+#104) = r5:4
	}
	{
		memd(r29+#96) = r5:4
		memd(r29+#88) = r5:4
	}
	{
		memd(r29+#80) = r5:4
		memd(r29+#72) = r5:4
	}
	{
		memd(r29+#64) = r5:4
		memd(r29+#56) = r5:4
	}
	{
		memd(r29+#48) = r5:4
		memd(r29+#40) = r5:4
	}
	{
		memd(r29+#32) = r5:4
		memd(r29+#24) = r5:4
	}
	{
		memd(r29+#16) = r5:4
		memd(r29+#8) = r5:4
	}
	{
		call ##_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
		memd(r29+#0) = r5:4
		memw(r29+#120) = r3
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (!p0.new) jump:t .LBB109_6
		r18 = #1
		r2 = r16
	}
// %bb.2:                               // %lor.end
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r0 = r17
	}
	{
		call ##halide_upgrade_buffer_t
		r4 = #0
		r3 = add(r29,#64)
	}
	.falign
// %bb.3:                               // %lor.end
	{
		p1 = cmp.eq(r0,#0); if (!p1.new) jump:t .LBB109_6
	}
// %bb.4:                               // %lor.end7
	{
		call ##halide_device_free
		r1 = add(r29,#64)
		r0 = r17
	}
	.falign
// %bb.5:                               // %lor.end7
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB109_7
		r2 = add(r29,#64)
		if (p0.new) r0 = add(r17,#0)
	}
	.falign
.LBB109_6:                              // %lor.end13
	{
		r0 = r18
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
	.falign
.LBB109_7:                              // %lor.rhs10
	{
		r1 = add(pc,##.L.str.89@PCREL)
		r3 = r16
	}
	{
		call ##halide_downgrade_buffer_t_device_fields
	}
	.falign
// %bb.8:                               // %lor.rhs10
	{
		r18 = !cmp.eq(r0,#0)
	}
	{
		r0 = r18
		r17:16 = memd(r29+#136)
		r19:18 = memd(r29+#128)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end109:
	.size	halide_device_free_legacy, .Lfunc_end109-halide_device_free_legacy
                                        // -- End function
	.section	.text.halide_msan_annotate_memory_is_initialized,"ax",@progbits
	.weak	halide_msan_annotate_memory_is_initialized // -- Begin function halide_msan_annotate_memory_is_initialized
	.balign 32
	.type	halide_msan_annotate_memory_is_initialized,@function
halide_msan_annotate_memory_is_initialized: // @halide_msan_annotate_memory_is_initialized
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end110:
	.size	halide_msan_annotate_memory_is_initialized, .Lfunc_end110-halide_msan_annotate_memory_is_initialized
                                        // -- End function
	.section	.text.halide_msan_annotate_buffer_is_initialized,"ax",@progbits
	.weak	halide_msan_annotate_buffer_is_initialized // -- Begin function halide_msan_annotate_buffer_is_initialized
	.balign 32
	.type	halide_msan_annotate_buffer_is_initialized,@function
halide_msan_annotate_buffer_is_initialized: // @halide_msan_annotate_buffer_is_initialized
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end111:
	.size	halide_msan_annotate_buffer_is_initialized, .Lfunc_end111-halide_msan_annotate_buffer_is_initialized
                                        // -- End function
	.section	.text.halide_msan_annotate_buffer_is_initialized_as_destructor,"ax",@progbits
	.weak	halide_msan_annotate_buffer_is_initialized_as_destructor // -- Begin function halide_msan_annotate_buffer_is_initialized_as_destructor
	.balign 32
	.type	halide_msan_annotate_buffer_is_initialized_as_destructor,@function
halide_msan_annotate_buffer_is_initialized_as_destructor: // @halide_msan_annotate_buffer_is_initialized_as_destructor
// %bb.0:                               // %entry
	{
		jumpr r31
	}
.Lfunc_end112:
	.size	halide_msan_annotate_buffer_is_initialized_as_destructor, .Lfunc_end112-halide_msan_annotate_buffer_is_initialized_as_destructor
                                        // -- End function
	.section	.text.halide_qurt_hvx_lock,"ax",@progbits
	.weak	halide_qurt_hvx_lock    // -- Begin function halide_qurt_hvx_lock
	.balign 32
	.type	halide_qurt_hvx_lock,@function
halide_qurt_hvx_lock:                   // @halide_qurt_hvx_lock
// %bb.0:                               // %entry
	{
		r17:16 = combine(#0,r0)
		p0 = cmp.eq(r1,#64)
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		if (p0) jump:nt .LBB113_2
		r0 = #0
	}
// %bb.1:                               // %entry
	{
		if (!p1.new) jump:t .LBB113_12
		p1 = cmp.eq(r1,#128)
		r0 = #1
	}
	.falign
.LBB113_2:                              // %sw.epilog
	{
		call ##qurt_hvx_lock
	}
	.falign
// %bb.3:                               // %sw.epilog
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB113_11
	}
// %bb.4:                               // %if.then
	{
		call ##halide_malloc
		r0 = r16
		r1 = #1024
	}
	.falign
// %bb.5:                               // %if.then
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB113_19
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.6:                               // %if.else.i37
	{
		r2 = add(pc,##.L.str.5.104@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.7:                               // %if.else.i37
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.8:                               // %if.else.i37
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.9:                               // %if.else.i37
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.10:                              // %if.else.i37
	{
		r17 = #-1
	}
	.falign
.LBB113_11:                             // %cleanup12
	{
		r0 = r17
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB113_12:                             // %sw.default
	{
		call ##halide_malloc
		r0 = r16
		r1 = #1024
	}
	.falign
// %bb.13:                              // %sw.default
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB113_23
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.14:                              // %if.else.i26
	{
		r2 = add(pc,##.L.str.102@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.15:                              // %if.else.i26
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.16:                              // %if.else.i26
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.17:                              // %if.else.i26
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.18:                              // %if.else.i26
	{
		r17 = #-1
	}
	{
		r0 = r17
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB113_19:                             // %if.then.i31
	{
		r2 = add(pc,##.L.str.5.104@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.20:                              // %if.then.i31
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.21:                              // %if.then.i31
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.22:                              // %if.then.i31
	{
		r17 = #-1
	}
	{
		r0 = r17
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB113_23:                             // %if.then.i25
	{
		r2 = add(pc,##.L.str.102@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.24:                              // %if.then.i25
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.25:                              // %if.then.i25
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.26:                              // %if.then.i25
	{
		r17 = #-1
	}
	{
		r0 = r17
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end113:
	.size	halide_qurt_hvx_lock, .Lfunc_end113-halide_qurt_hvx_lock
                                        // -- End function
	.section	.text.halide_qurt_hvx_unlock,"ax",@progbits
	.weak	halide_qurt_hvx_unlock  // -- Begin function halide_qurt_hvx_unlock
	.balign 32
	.type	halide_qurt_hvx_unlock,@function
halide_qurt_hvx_unlock:                 // @halide_qurt_hvx_unlock
// %bb.0:                               // %entry
	{
		r16 = r0
		memd(r29+#-16) = r17:16
		allocframe(#8)
	}                               // 8-byte Folded Spill
	{
		call ##qurt_hvx_unlock
	}
	.falign
// %bb.1:                               // %entry
	{
		p0 = cmp.eq(r0,#0); if (p0.new) jump:nt .LBB114_9
	}
// %bb.2:                               // %if.then
	{
		call ##halide_malloc
		r0 = r16
		r1 = #1024
	}
	.falign
// %bb.3:                               // %if.then
	{
		p1 = cmp.eq(r0,#0); if (p1.new) jump:nt .LBB114_10
		r3 = #0
		r1 = add(r0,#1023)
	}
// %bb.4:                               // %if.else.i
	{
		r2 = add(pc,##.L.str.7.105@PCREL)
		r17 = r0
		memb(r0+#1023) = r3
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.5:                               // %if.else.i
	{
		r2 = add(r0,sub(#1,r17))
		r1:0 = combine(r17,r16)
	}
	{
		call ##halide_msan_annotate_memory_is_initialized
		r3 = asr(r2,#31)
	}
	.falign
// %bb.6:                               // %if.else.i
	{
		call ##halide_error
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.7:                               // %if.else.i
	{
		call ##halide_free
		r1:0 = combine(r17,r16)
	}
	.falign
// %bb.8:                               // %if.else.i
	{
		r0 = #-1
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB114_9:
	{
		r0 = #0
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
	.falign
.LBB114_10:                             // %if.then.i
	{
		r2 = add(pc,##.L.str.7.105@PCREL)
		r1:0 = combine(#0,#0)
	}
	{
		call ##halide_string_to_string
	}
	.falign
// %bb.11:                              // %if.then.i
	{
		r1 = add(pc,##.L.str.8.103@PCREL)
		r0 = r16
	}
	{
		call ##halide_error
	}
	.falign
// %bb.12:                              // %if.then.i
	{
		call ##halide_free
		r1:0 = combine(#0,r16)
	}
	.falign
// %bb.13:                              // %if.then.i
	{
		r0 = #-1
		r17:16 = memd(r29+#0)
		dealloc_return
	}                               // 8-byte Folded Reload
.Lfunc_end114:
	.size	halide_qurt_hvx_unlock, .Lfunc_end114-halide_qurt_hvx_unlock
                                        // -- End function
	.section	.text.halide_qurt_hvx_unlock_as_destructor,"ax",@progbits
	.weak	halide_qurt_hvx_unlock_as_destructor // -- Begin function halide_qurt_hvx_unlock_as_destructor
	.balign 32
	.type	halide_qurt_hvx_unlock_as_destructor,@function
halide_qurt_hvx_unlock_as_destructor:   // @halide_qurt_hvx_unlock_as_destructor
// %bb.0:                               // %entry
	{
		jump ##halide_qurt_hvx_unlock
	}
.Lfunc_end115:
	.size	halide_qurt_hvx_unlock_as_destructor, .Lfunc_end115-halide_qurt_hvx_unlock_as_destructor
                                        // -- End function
	.section	.text.halide_default_can_use_target_features,"ax",@progbits
	.weak	halide_default_can_use_target_features // -- Begin function halide_default_can_use_target_features
	.balign 32
	.type	halide_default_can_use_target_features,@function
halide_default_can_use_target_features: // @halide_default_can_use_target_features
// %bb.0:                               // %entry
	{
		r17:16 = combine(r0,r1)
		memd(r29+#-16) = r17:16
		allocframe(#32)
	}                               // 8-byte Folded Spill
	{
		r18 = add(pc,##_ZZ38halide_default_can_use_target_featuresE11initialized@PCREL)
		memd(r29+#16) = r19:18
	}                               // 8-byte Folded Spill
	{
		r2 = memub(r18+#0)
	}
	{
		p0 = r2
		if (p0.new) jump:t .LBB116_4
		if (!p0.new) r0 = add(r29,#0)
	}
// %bb.1:                               // %if.then
	{
		call ##_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	}
	.falign
// %bb.2:                               // %if.then
	{
		r0 = add(pc,##_ZZ38halide_default_can_use_target_featuresE20cpu_features_storage@PCREL)
		r2 = #16
		r1 = add(r29,#0)
	}
	{
		call ##memcpy
	}
	.falign
// %bb.3:                               // %if.then
	{
		memb(r18+#0) = #1
	}
	.falign
.LBB116_4:                              // %if.end
	{
		p1 = cmp.eq(r17,#1); if (p1.new) jump:t .LBB116_6
		if (!p1.new) r0 = #0
	}
// %bb.5:                               // %if.then1
	{
		r1 = add(pc,##.L.str.106@PCREL)
		call ##halide_error
	}
	.falign
.LBB116_6:                              // %for.body
	{
		r2 = add(pc,##_ZZ38halide_default_can_use_target_featuresE20cpu_features_storage@PCREL)
		r5:4 = combine(#0,#0)
		r1:0 = memd(r16+#0)
	}
	{
		r17:16 = memd(r29+#24)
		r19:18 = memd(r29+#16)
	}                               // 8-byte Folded Reload
	{
		r7:6 = memd(r2+#0)
		r31:30 = deallocframe(r30):raw
	}
	{
		r1:0 = and(r7:6,r1:0)
	}
	{
		p0 = cmp.eq(r1:0,r5:4)
		if (p0.new) jump:nt .LBB116_8
		if (!p0.new) r3:2 = memd(r2+#8)
	}
// %bb.7:                               // %if.then6
	{
		r3:2 = and(r3:2,r1:0)
	}
	{
		p1 = cmp.eq(r3:2,r1:0)
		r0 = #0
	}
	{
		if (p1) r0 = #1
		jumpr r31
	}
	.falign
.LBB116_8:                              // %for.inc
	{
		r0 = #1
		jumpr r31
	}
.Lfunc_end116:
	.size	halide_default_can_use_target_features, .Lfunc_end116-halide_default_can_use_target_features
                                        // -- End function
	.section	.text.halide_set_custom_can_use_target_features,"ax",@progbits
	.weak	halide_set_custom_can_use_target_features // -- Begin function halide_set_custom_can_use_target_features
	.balign 32
	.type	halide_set_custom_can_use_target_features,@function
halide_set_custom_can_use_target_features: // @halide_set_custom_can_use_target_features
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r3 = memw(r2+##_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE@GOT)
	}
	{
		r2 = memw(r3+#0)
		memw(r3+#0) = r0
	}
	{
		r0 = r2
		jumpr r31
	}
.Lfunc_end117:
	.size	halide_set_custom_can_use_target_features, .Lfunc_end117-halide_set_custom_can_use_target_features
                                        // -- End function
	.section	.text.halide_can_use_target_features,"ax",@progbits
	.weak	halide_can_use_target_features // -- Begin function halide_can_use_target_features
	.balign 32
	.type	halide_can_use_target_features,@function
halide_can_use_target_features:         // @halide_can_use_target_features
// %bb.0:                               // %entry
	{
		r2 = add(pc,##_GLOBAL_OFFSET_TABLE_@PCREL)
	}
	{
		r2 = memw(r2+##_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE@GOT)
	}
	{
		r7 = memw(r2+#0)
	}
	{
		jumpr r7
	}
.Lfunc_end118:
	.size	halide_can_use_target_features, .Lfunc_end118-halide_can_use_target_features
                                        // -- End function
	.section	.text._ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv // -- Begin function _ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	.balign 32
	.type	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,@function
_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv: // @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
// %bb.0:                               // %entry
	{
		r3:2 = combine(#0,#0)
	}
	{
		jumpr r31
		memd(r0+#8) = r3:2
		memd(r0+#0) = r3:2
	}
.Lfunc_end119:
	.size	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv, .Lfunc_end119-_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
                                        // -- End function
	.section	.text.conv3x3a16_hvx64,"ax",@progbits
	.globl	conv3x3a16_hvx64        // -- Begin function conv3x3a16_hvx64
	.balign 32
	.type	conv3x3a16_hvx64,@function
conv3x3a16_hvx64:                       // @conv3x3a16_hvx64
// %bb.0:                               // %entry
	{
		r17:16 = combine(r1,r2)
		memd(r29+#-16) = r17:16
		allocframe(#104)
	}                               // 8-byte Folded Spill
	{
		r19:18 = combine(#0,r0)
		r1:0 = combine(#64,#0)
		memd(r29+#88) = r19:18
		memd(r29+#80) = r21:20
	}                               // 8-byte Folded Spill
	{
		memd(r29+#72) = r23:22
		memd(r29+#64) = r25:24
	}                               // 8-byte Folded Spill
	{
		call ##halide_qurt_hvx_lock
		memd(r29+#56) = r27:26
	}                               // 8-byte Folded Spill
	.falign
// %bb.1:                               // %entry
	{
		r2 = memw(r16+#56)
	}
	{
		r3 = memw(r2+#20)
	}
	{
		p0 = cmp.gt(r3,#0); if (!p0.new) jump:nt .LBB120_10
		if (p0.new) r12 = memw(r2+#4)
		if (p0.new) r4 = memw(r17+#56)
	}
// %bb.2:                               // %"for output.s0.y.preheader"
	{
		loop1(##.LBB120_3,r3)
		r6 = asr(r12,#6)
		p0 = cmp.gt(r12,#63)
	}
	{
		r0 = add(r12,#63)
		r8 = add(r12,#-64)
		r7 = #4
		r5 = memw(r18+#56)
	}
	{
		r9 = memw(r4+#0)
		r13 = memw(r4+#16)
	}
	{
		if (!p0) r6 = #0
		r4 = memw(r4+#24)
		memw(r29+#8) = r12
	}                               // 4-byte Folded Spill
	{
		r14 = asl(r4,#1)
		p2 = cmp.gtu(r6,#1)
		r12 = memw(r5+#24)
		r15 = memw(r18+#12)
	}
	{
		r9 += mpyi(r4,r13)
		r10 = add(r15,sub(#1,r12))
		r5 = sub(#-1,r12)
		r3 = memw(r17+#12)
	}
	{
		r5 = add(r3,sub(#1,r9))
		r18 = add(r15,r5)
		r20 = memw(r16+#12)
		memw(r29+#48) = r5.new
	}                               // 4-byte Folded Spill
	{
		r5 = add(r3,sub(#2,r9))
		r16 = add(r15,r12)
		r1 = memw(r2+#24)
		memw(r29+#44) = r5.new
	}                               // 4-byte Folded Spill
	{
		r2 = asr(r0,#6)
		r5 = sub(r3,r9)
		r4 = sub(r4,r9)
		memw(r29+#40) = r5.new
	}                               // 4-byte Folded Spill
	{
		r5 = sub(r14,r9)
		r1 = add(r3,r4)
		p1 = cmp.gt(r2,r6)
		memw(r29+#52) = r1
	}                               // 4-byte Folded Spill
	{
		r25 = add(r15,#-1)
		r24 = add(r15,#1)
		r3 = add(r3,r5)
		memw(r29+#36) = r1
	}                               // 4-byte Folded Spill
	{
		r11 = add(r18,#1)
		r5 = r15
		r8 = add(r20,r8)
		memw(r29+#32) = r3
	}                               // 4-byte Folded Spill
	{
		r22 = add(r16,#1)
		r23 = add(r16,#-1)
	}
	{
		r4 = add(r3,#1)
		r3 = add(r3,#2)
		memw(r29+#28) = r4.new
	}                               // 4-byte Folded Spill
	{
		r0 = add(r1,#1)
		r2 = add(r1,#2)
		memw(r29+#24) = r3
		memw(r29+#4) = r8
	}                               // 4-byte Folded Spill
	{
		memw(r29+#12) = r15
		memw(r29+#20) = r0
	}                               // 4-byte Folded Spill
	{
		memw(r29+#16) = r2
	}                               // 4-byte Folded Spill
	.falign
.Ltmp14:                                // Block address taken
.LBB120_3:                              // %"for output.s0.y"
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB120_5 Depth 2
	{
		if (p0) r1 = add(r18,#0)
		if (p0) r28 = add(r22,#0)
		if (p0) r13 = add(r10,#0)
		if (p0) r8 = memw(r29+#24)
	}                               // 4-byte Folded Reload
	{
		if (p0) r15:14 = combine(r23,r16)
		if (p0) r27 = memub(r8+#0)
		if (p0) r3 = memw(r29+#44)
	}                               // 4-byte Folded Reload
	{
		if (p0) r17 = add(r11,#0)
		if (p0) r3 = memub(r3+#0)
		if (p0) r4 = memw(r29+#28)
	}                               // 4-byte Folded Reload
	{
		if (p0) r21 = add(r5,#0)
		if (p0) r4 = memub(r4+#0)
		if (p0) r2 = memw(r29+#20)
	}                               // 4-byte Folded Reload
	{
		if (p0) r26 = memub(r2+#0)
		if (p0) r2 = memw(r29+#48)
	}                               // 4-byte Folded Reload
	{
		if (!p0) jump:nt .LBB120_7
		if (p0) r2 = memub(r2+#0)
		if (p0) r8 = memw(r29+#16)
	}                               // 4-byte Folded Reload
// %bb.4:                               // %"for output.s0.x.x.preheader"
                                        //   in Loop: Header=BB120_3 Depth=1
	{
		r3 = insert(r4,#24,#8)
	}
	{
		r26 = insert(r2,#24,#8)
		r3 |= asl(r3,#16)
		r2 = memw(r29+#36)
	}                               // 4-byte Folded Reload
	{
		r26 |= asl(r26,#16)
		r2 = memub(r2+#0)
		r4 = memw(r29+#32)
	}                               // 4-byte Folded Reload
	{
		v10 = vmemu(r21++#1)
	}
	{
		r2 = vsplatb(r2)
		r0 = memub(r4+#0)
		r4 = memw(r29+#40)
	}                               // 4-byte Folded Reload
	{
		v11 = vmemu(r17++#1)
	}
	{
		r8 = memub(r8+#0)
		r4 = memub(r4+#0)
	}
	{
		r27 = insert(r8,#24,#8)
		r9:8 = combine(r24,r25)
		v12 = vmemu(r13++#1)
	}
	{
		r0 = insert(r4,#24,#8)
		v1:0.h = vmpa(v11:10.ub,r26.b)
		v13 = vmemu(r14++#1)
	}
	{
		r27 |= asl(r27,#16)
		r0 |= asl(r0,#16)
		r4 = add(r6,#-1)
	}
	{
		loop0(.LBB120_5,r4)
		v2 = vmemu(r28++#1)
	}
	{
		v1:0.h += vmpa(v13:12.ub,r3.b)
		r4 = r20
		v4 = vmemu(r15++#1)
	}
	{
		v3 = vmemu(r9++#1)
	}
	{
		v6 = vmemu(r8++#1)
	}
	{
		if (!p2) jump:nt .LBB120_6
		v5 = vmemu(r1++#1)
	}
	.falign
.LBB120_5:                              // %"for output.s0.x.x"
                                        //   Parent Loop BB120_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	{
		v1:0.h += vmpa(v3:2.ub,r27.b)
		v14 = vmemu(r21++#1)
	}
	{
		v1:0.h += vmpy(v6.ub,r2.b)
		v15 = vmemu(r17++#1)
	}
	{
		v1:0.h += vmpa(v5:4.ub,r0.b)
		v17 = vmemu(r14++#1)
	}
	{
		v16 = vmemu(r13++#1)
	}
	{
		v1:0.h = vmpa(v15:14.ub,r26.b)
		v7.ub = vasr(v1.h,v0.h,r7):sat
		v2 = vmemu(r28++#1)
	}
	{
		v1:0.h += vmpa(v17:16.ub,r3.b)
		v3 = vmemu(r9++#1)
	}
	{
		v4 = vmemu(r15++#1)
	}
	{
		v6 = vmemu(r8++#1)
	}
	{
		v5 = vmemu(r1++#1)
	}
	{
		nop
		vmemu(r4++#1) = v7
	} :endloop0
	.falign
.LBB120_6:                              //   in Loop: Header=BB120_3 Depth=1
	{
		v1:0.h += vmpa(v3:2.ub,r27.b)
	}
	{
		v1:0.h += vmpy(v6.ub,r2.b)
	}
	{
		v1:0.h += vmpa(v5:4.ub,r0.b)
	}
	{
		v0.ub = vasr(v1.h,v0.h,r7):sat
	}
	{
		vmemu(r4++#1) = v0
	}
	.falign
.LBB120_7:                              // %"end for output.s0.x.x"
                                        //   in Loop: Header=BB120_3 Depth=1
	{
		if (p1) r28 = memw(r29+#16)
		if (p1) r15 = memw(r29+#44)
	}                               // 4-byte Folded Reload
	{
		if (p1) r0 = memw(r29+#28)
		if (p1) r9 = memw(r29+#48)
	}                               // 4-byte Folded Reload
	{
		if (p1) r4 = add(r19,#-1)
		if (p1) r1 = add(r19,#1)
		if (p1) r3 = memw(r29+#8)
		if (p1) r8 = memw(r29+#20)
	}                               // 4-byte Folded Reload
	{
		if (p1) r2 = memw(r29+#12)
	}                               // 4-byte Folded Reload
	{
		if (p1) r2 = add(r2,r3)
		if (p1) r3 = memub(r0+#0)
		if (p1) r0 = memw(r29+#24)
	}                               // 4-byte Folded Reload
	{
		if (!p1) jump:nt .LBB120_9
		if (p1) r14 = add(r2,#0)
		if (p1) r13 = add(r2,#0)
	}
// %bb.8:                               // %true_bb
                                        //   in Loop: Header=BB120_3 Depth=1
	{
		r2 += mpyi(r19,r12)
	}
	{
		r13 += mpyi(r1,r12)
		r14 += mpyi(r4,r12)
		r8 = memub(r8+#0)
	}
	{
		r1 = add(r13,#-63)
		r4 = add(r14,#-63)
		r9 = memub(r9+#0)
	}
	{
		r8 = insert(r9,#24,#8)
		v18 = vmemu(r1+#0)
	}
	{
		r8 |= asl(r8,#16)
		r1 = memw(r29+#36)
		r15 = memub(r15+#0)
	}                               // 4-byte Folded Reload
	{
		r15 = insert(r3,#24,#8)
		r4 = add(r2,#-63)
		v8 = vmemu(r4+#0)
	}
	{
		r15 |= asl(r15,#16)
		r2 = add(r2,#-65)
		v6 = vmemu(r2+#-1)
	}
	{
		v7 = vmemu(r14+#-1)
	}
	{
		r0 = add(r13,#-65)
		r3 = memub(r1+#0)
		r9 = memub(r0+#0)
	}
	{
		r3 = vsplatb(r3)
		v21:20.h = vmpa(v7:6.ub,r8.b)
		r28 = memub(r28+#0)
		r1 = memw(r29+#40)
	}                               // 4-byte Folded Reload
	{
		r9 = insert(r28,#24,#8)
		v9 = vmemu(r13+#-1)
	}
	{
		r9 |= asl(r9,#16)
		v19 = vmemu(r4+#0)
	}
	{
		v21:20.h += vmpa(v9:8.ub,r15.b)
		r4 = memw(r29+#32)
		r8 = memub(r1+#0)
	}                               // 4-byte Folded Reload
	{
		v21:20.h += vmpa(v19:18.ub,r9.b)
		v1 = vmemu(r2+#0)
	}
	{
		r4 = memub(r4+#0)
		r1 = memw(r29+#4)
	}                               // 4-byte Folded Reload
	{
		r4 = insert(r8,#24,#8)
		r0 = add(r14,#-65)
		v22 = vmemu(r0+#0)
	}
	{
		r4 |= asl(r4,#16)
		v21:20.h += vmpy(v1.ub,r3.b)
		v23 = vmemu(r0+#0)
	}
	{
		v21:20.h += vmpa(v23:22.ub,r4.b)
		r0 = memw(r29+#52)
	}                               // 4-byte Folded Reload
	{
		r1 += mpyi(r19,r0)
		v2.ub = vasr(v21.h,v20.h,r7):sat
	}
	{
		vmemu(r1+#0) = v2
	}
	.falign
.LBB120_9:                              // %after_bb
                                        //   in Loop: Header=BB120_3 Depth=1
	{
		r18 = add(r18,r12)
		r10 = add(r10,r12)
		r19 = add(r19,#1)
		r2 = memw(r29+#52)
	}                               // 4-byte Folded Reload
	{
		r20 = add(r20,r2)
		r11 = add(r11,r12)
		r25 = add(r25,r12)
		r24 = add(r24,r12)
	}
	{
		r5 = add(r5,r12)
		r23 = add(r23,r12)
		r22 = add(r22,r12)
		r16 = add(r16,r12)
	} :endloop1
	.falign
.LBB120_10:                             // %call_destructor.exit
	{
		call ##halide_qurt_hvx_unlock_as_destructor
		r1:0 = combine(#1,#0)
	}
	.falign
// %bb.11:                              // %call_destructor.exit
	{
		r0 = #0
		r17:16 = memd(r29+#96)
		r19:18 = memd(r29+#88)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r29+#80)
		r23:22 = memd(r29+#72)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r29+#64)
		r27:26 = memd(r29+#56)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Ltmp15:                                // Address of block that was removed by CodeGen
.Lfunc_end120:
	.size	conv3x3a16_hvx64, .Lfunc_end120-conv3x3a16_hvx64
                                        // -- End function
	.section	.text.conv3x3a16_hvx64_argv,"ax",@progbits
	.globl	conv3x3a16_hvx64_argv   // -- Begin function conv3x3a16_hvx64_argv
	.balign 32
	.type	conv3x3a16_hvx64_argv,@function
conv3x3a16_hvx64_argv:                  // @conv3x3a16_hvx64_argv
// %bb.0:                               // %entry
	{
		allocframe(r29,#0):raw
	}
	{
		r3 = memw(r0+#0)
		r2 = memw(r0+#8)
	}
	{
		call ##conv3x3a16_hvx64
		r0 = r3
		r1 = memw(r0+#4)
	}
	{
		r0 = #0
		dealloc_return
	}
.Lfunc_end121:
	.size	conv3x3a16_hvx64_argv, .Lfunc_end121-conv3x3a16_hvx64_argv
                                        // -- End function
	.section	.text.conv3x3a16_hvx64_metadata,"ax",@progbits
	.globl	conv3x3a16_hvx64_metadata // -- Begin function conv3x3a16_hvx64_metadata
	.balign 32
	.type	conv3x3a16_hvx64_metadata,@function
conv3x3a16_hvx64_metadata:              // @conv3x3a16_hvx64_metadata
// %bb.0:                               // %entry
	{
		r0 = add(pc,##.Lconv3x3a16_hvx64_metadata_storage@PCREL)
	}
	{
		jumpr r31
	}
.Lfunc_end122:
	.size	conv3x3a16_hvx64_metadata, .Lfunc_end122-conv3x3a16_hvx64_metadata
                                        // -- End function
	.type	malloc_tracing,@object  // @malloc_tracing
	.section	.bss,"aw",@nobits
	.weak	malloc_tracing
	.p2align	2
malloc_tracing:
	.word	0                       // 0x0
	.size	malloc_tracing, 4

	.type	_ZN6Halide7Runtime8Internal9mem_traceE,@object // @_ZN6Halide7Runtime8Internal9mem_traceE
	.weak	_ZN6Halide7Runtime8Internal9mem_traceE
	.p2align	2
_ZN6Halide7Runtime8Internal9mem_traceE:
	.word	0                       // 0x0
	.size	_ZN6Halide7Runtime8Internal9mem_traceE, 4

	.type	_ZN6Halide7Runtime8Internal6my_ptrE,@object // @_ZN6Halide7Runtime8Internal6my_ptrE
	.weak	_ZN6Halide7Runtime8Internal6my_ptrE
	.p2align	2
_ZN6Halide7Runtime8Internal6my_ptrE:
	.space	4000
	.size	_ZN6Halide7Runtime8Internal6my_ptrE, 4000

	.type	_ZN6Halide7Runtime8Internal8my_sizesE,@object // @_ZN6Halide7Runtime8Internal8my_sizesE
	.weak	_ZN6Halide7Runtime8Internal8my_sizesE
	.p2align	2
_ZN6Halide7Runtime8Internal8my_sizesE:
	.space	4000
	.size	_ZN6Halide7Runtime8Internal8my_sizesE, 4000

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str:
	.string	"Malloc returned null in Qurt: size("
	.size	.L.str, 36

	.type	.L.str.1,@object        // @.str.1
	.p2align	3
.L.str.1:
	.string	")\n"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        // @.str.2
	.p2align	3
.L.str.2:
	.string	"total_allocation("
	.size	.L.str.2, 18

	.type	.L.str.3,@object        // @.str.3
	.p2align	3
.L.str.3:
	.string	"Malloc: size("
	.size	.L.str.3, 14

	.type	.L.str.4,@object        // @.str.4
	.p2align	3
.L.str.4:
	.string	"), total_allocation("
	.size	.L.str.4, 21

	.type	.L.str.5,@object        // @.str.5
	.p2align	3
.L.str.5:
	.string	") ptr="
	.size	.L.str.5, 7

	.type	.L.str.6,@object        // @.str.6
	.p2align	3
.L.str.6:
	.string	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        // @.str.7
	.p2align	3
.L.str.7:
	.string	"Free: size("
	.size	.L.str.7, 12

	.type	_ZN6Halide7Runtime8Internal11buf_is_usedE,@object // @_ZN6Halide7Runtime8Internal11buf_is_usedE
	.section	.bss,"aw",@nobits
	.weak	_ZN6Halide7Runtime8Internal11buf_is_usedE
	.p2align	2
_ZN6Halide7Runtime8Internal11buf_is_usedE:
	.space	40
	.size	_ZN6Halide7Runtime8Internal11buf_is_usedE, 40

	.type	_ZN6Halide7Runtime8Internal7mem_bufE,@object // @_ZN6Halide7Runtime8Internal7mem_bufE
	.weak	_ZN6Halide7Runtime8Internal7mem_bufE
	.p2align	2
_ZN6Halide7Runtime8Internal7mem_bufE:
	.space	40
	.size	_ZN6Halide7Runtime8Internal7mem_bufE, 40

	.type	_ZN6Halide7Runtime8Internal13custom_mallocE,@object // @_ZN6Halide7Runtime8Internal13custom_mallocE
	.data
	.weak	_ZN6Halide7Runtime8Internal13custom_mallocE
	.p2align	2
_ZN6Halide7Runtime8Internal13custom_mallocE:
	.word	halide_default_malloc
	.size	_ZN6Halide7Runtime8Internal13custom_mallocE, 4

	.type	_ZN6Halide7Runtime8Internal11custom_freeE,@object // @_ZN6Halide7Runtime8Internal11custom_freeE
	.weak	_ZN6Halide7Runtime8Internal11custom_freeE
	.p2align	2
_ZN6Halide7Runtime8Internal11custom_freeE:
	.word	halide_default_free
	.size	_ZN6Halide7Runtime8Internal11custom_freeE, 4

	.type	.L.str.8,@object        // @.str.8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str.8:
	.string	"custom allocators not supported on Hexagon.\n"
	.size	.L.str.8, 45

	.type	.L.str.9,@object        // @.str.9
	.p2align	3
.L.str.9:
	.string	"Buffer(?), size("
	.size	.L.str.9, 17

	.section	.dtors,"aw",@progbits
	.p2align	2
	.word	_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv
	.type	_ZN6Halide7Runtime8Internal14custom_do_taskE,@object // @_ZN6Halide7Runtime8Internal14custom_do_taskE
	.data
	.weak	_ZN6Halide7Runtime8Internal14custom_do_taskE
	.p2align	2
_ZN6Halide7Runtime8Internal14custom_do_taskE:
	.word	halide_default_do_task
	.size	_ZN6Halide7Runtime8Internal14custom_do_taskE, 4

	.type	_ZN6Halide7Runtime8Internal17custom_do_par_forE,@object // @_ZN6Halide7Runtime8Internal17custom_do_par_forE
	.weak	_ZN6Halide7Runtime8Internal17custom_do_par_forE
	.p2align	2
_ZN6Halide7Runtime8Internal17custom_do_par_forE:
	.word	halide_default_do_par_for
	.size	_ZN6Halide7Runtime8Internal17custom_do_par_forE, 4

	.type	.L.str.10,@object       // @.str.10
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str.10:
	.string	"halide_spawn_thread not implemented on this platform."
	.size	.L.str.10, 54

	.type	.L.str.1.11,@object     // @.str.1.11
	.p2align	3
.L.str.1.11:
	.string	"halide_set_num_threads: must be >= 0."
	.size	.L.str.1.11, 38

	.type	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE,@object // @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.section	.bss,"aw",@nobits
	.weak	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.p2align	2
_ZN6Halide7Runtime8Internal17halide_gpu_deviceE:
	.word	0                       // 0x0
	.size	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE,@object // @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.weak	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.p2align	2
_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE:
	.word	0                       // 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, 4

	.type	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE,@object // @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE:
	.byte	0                       // 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, 1

	.type	.L.str.12,@object       // @.str.12
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str.12:
	.string	"HL_GPU_DEVICE"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       // @.str.13
	.p2align	3
.L.str.13:
	.string	"-nan"
	.size	.L.str.13, 5

	.type	.L.str.1.14,@object     // @.str.1.14
	.p2align	3
.L.str.1.14:
	.string	"nan"
	.size	.L.str.1.14, 4

	.type	.L.str.2.15,@object     // @.str.2.15
	.p2align	3
.L.str.2.15:
	.string	"-inf"
	.size	.L.str.2.15, 5

	.type	.L.str.3.16,@object     // @.str.3.16
	.p2align	3
.L.str.3.16:
	.string	"inf"
	.size	.L.str.3.16, 4

	.type	.L.str.4.17,@object     // @.str.4.17
	.p2align	3
.L.str.4.17:
	.string	"-0.000000e+00"
	.size	.L.str.4.17, 14

	.type	.L.str.5.18,@object     // @.str.5.18
	.p2align	3
.L.str.5.18:
	.string	"0.000000e+00"
	.size	.L.str.5.18, 13

	.type	.L.str.6.19,@object     // @.str.6.19
	.p2align	3
.L.str.6.19:
	.string	"-0.000000"
	.size	.L.str.6.19, 10

	.type	.L.str.7.20,@object     // @.str.7.20
	.p2align	3
.L.str.7.20:
	.string	"0.000000"
	.size	.L.str.7.20, 9

	.type	.L.str.8.21,@object     // @.str.8.21
	.p2align	3
.L.str.8.21:
	.string	"-"
	.size	.L.str.8.21, 2

	.type	.L.str.10.23,@object    // @.str.10.23
	.p2align	3
.L.str.10.23:
	.string	"e+"
	.size	.L.str.10.23, 3

	.type	.L.str.11,@object       // @.str.11
	.p2align	3
.L.str.11:
	.string	"e-"
	.size	.L.str.11, 3

	.type	.L.str.12.24,@object    // @.str.12.24
	.p2align	3
.L.str.12.24:
	.string	"0123456789abcdef"
	.size	.L.str.12.24, 17

	.type	.L.str.17,@object       // @.str.17
	.p2align	3
.L.str.17:
	.string	"bad_type_code"
	.size	.L.str.17, 14

	.type	.L.str.16,@object       // @.str.16
	.p2align	3
.L.str.16:
	.string	"handle"
	.size	.L.str.16, 7

	.type	.L.str.15,@object       // @.str.15
	.p2align	3
.L.str.15:
	.string	"float"
	.size	.L.str.15, 6

	.type	.L.str.14,@object       // @.str.14
	.p2align	3
.L.str.14:
	.string	"uint"
	.size	.L.str.14, 5

	.type	.L.str.13.25,@object    // @.str.13.25
	.p2align	3
.L.str.13.25:
	.string	"int"
	.size	.L.str.13.25, 4

	.type	.L.str.18,@object       // @.str.18
	.p2align	3
.L.str.18:
	.string	"x"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       // @.str.19
	.p2align	3
.L.str.19:
	.string	"NULL"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       // @.str.20
	.p2align	3
.L.str.20:
	.string	"buffer("
	.size	.L.str.20, 8

	.type	.L.str.22,@object       // @.str.22
	.p2align	3
.L.str.22:
	.string	", {"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       // @.str.23
	.p2align	3
.L.str.23:
	.string	"}"
	.size	.L.str.23, 2

	.type	_ZN6Halide7Runtime8Internal17device_copy_mutexE,@object // @_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.section	.bss,"aw",@nobits
	.weak	_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.p2align	2
_ZN6Halide7Runtime8Internal17device_copy_mutexE:
	.space	4
	.size	_ZN6Halide7Runtime8Internal17device_copy_mutexE, 4

	.type	.L.str.9.26,@object     // @.str.9.26
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str.9.26:
	.string	"halide_copy_to_host"
	.size	.L.str.9.26, 20

	.type	.L.str.10.27,@object    // @.str.10.27
	.p2align	3
.L.str.10.27:
	.string	"halide_copy_to_device"
	.size	.L.str.10.27, 22

	.type	.L.str.12.28,@object    // @.str.12.28
	.p2align	3
.L.str.12.28:
	.string	"halide_copy_to_device does not support switching interfaces\n"
	.size	.L.str.12.28, 61

	.type	.L.str.18.29,@object    // @.str.18.29
	.p2align	3
.L.str.18.29:
	.string	"halide_device_malloc"
	.size	.L.str.18.29, 21

	.type	.L.str.20.30,@object    // @.str.20.30
	.p2align	3
.L.str.20.30:
	.string	"halide_device_malloc doesn't support switching interfaces\n"
	.size	.L.str.20.30, 59

	.type	.L.str.17.31,@object    // @.str.17.31
	.p2align	3
.L.str.17.31:
	.string	"halide_device_sync"
	.size	.L.str.17.31, 19

	.type	.L.str.21.32,@object    // @.str.21.32
	.p2align	3
.L.str.21.32:
	.string	"halide_device_free"
	.size	.L.str.21.32, 19

	.type	.L.str.22.33,@object    // @.str.22.33
	.p2align	3
.L.str.22.33:
	.string	"/local/mnt/workspace/bots/hexbotmaster_aus-05/halide-22/src/halide/src/runtime/device_interface.cpp:247 Assert failed: buf->device == 0\n"
	.size	.L.str.22.33, 137

	.type	.L.str.23.34,@object    // @.str.23.34
	.p2align	3
.L.str.23.34:
	.string	"halide_device_and_host_malloc"
	.size	.L.str.23.34, 30

	.type	.L.str.25,@object       // @.str.25
	.p2align	3
.L.str.25:
	.string	"halide_device_and_host_malloc doesn't support switching interfaces\n"
	.size	.L.str.25, 68

	.type	.L.str.26,@object       // @.str.26
	.p2align	3
.L.str.26:
	.string	"allocating host and device memory failed\n"
	.size	.L.str.26, 42

	.type	.L.str.27,@object       // @.str.27
	.p2align	3
.L.str.27:
	.string	"halide_device_and_host_free"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       // @.str.28
	.p2align	3
.L.str.28:
	.string	"/local/mnt/workspace/bots/hexbotmaster_aus-05/halide-22/src/halide/src/runtime/device_interface.cpp:317 Assert failed: buf->device == 0\n"
	.size	.L.str.28, 137

	.type	.L.str.29,@object       // @.str.29
	.p2align	3
.L.str.29:
	.string	"halide_default_device_and_host_malloc"
	.size	.L.str.29, 38

	.type	.L.str.30,@object       // @.str.30
	.p2align	3
.L.str.30:
	.string	"halide_default_device_and_host_free"
	.size	.L.str.30, 36

	.type	.L.str.31,@object       // @.str.31
	.p2align	3
.L.str.31:
	.string	"halide_device_wrap_native"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       // @.str.32
	.p2align	3
.L.str.32:
	.string	"halide_device_wrap_native doesn't support switching interfaces\n"
	.size	.L.str.32, 64

	.type	.L.str.33,@object       // @.str.33
	.p2align	3
.L.str.33:
	.string	"halide_device_detach_native"
	.size	.L.str.33, 28

	.type	.L.str.34,@object       // @.str.34
	.p2align	3
.L.str.34:
	.string	"/local/mnt/workspace/bots/hexbotmaster_aus-05/halide-22/src/halide/src/runtime/device_interface.cpp:404 Assert failed: buf->device == 0\n"
	.size	.L.str.34, 137

	.type	.L.str.35,@object       // @.str.35
	.p2align	3
.L.str.35:
	.string	"halide_default_device_wrap_native"
	.size	.L.str.35, 34

	.type	.L.str.36,@object       // @.str.36
	.p2align	3
.L.str.36:
	.string	"halide_default_device_detach_native"
	.size	.L.str.36, 36

	.type	.L.str.42,@object       // @.str.42
	.p2align	3
.L.str.42:
	.string	"halide_buffer_copy does not support switching device interfaces"
	.size	.L.str.42, 64

	.type	.L.str.58,@object       // @.str.58
	.p2align	3
.L.str.58:
	.string	"device_interface does not support cropping\n"
	.size	.L.str.58, 44

	.type	.L.str.59,@object       // @.str.59
	.p2align	3
.L.str.59:
	.string	"device_interface does not support slicing\n"
	.size	.L.str.59, 43

	.type	.L.str.60,@object       // @.str.60
	.p2align	3
.L.str.60:
	.string	"destination buffer already has a device allocation\n"
	.size	.L.str.60, 52

	.type	.L.str.61,@object       // @.str.61
	.p2align	3
.L.str.61:
	.string	"src and dst must have identical dimensionality\n"
	.size	.L.str.61, 48

	.type	.L.str.64,@object       // @.str.64
	.p2align	3
.L.str.64:
	.string	"dst must have exactly one fewer dimension than src\n"
	.size	.L.str.64, 52

	.type	halide_error_mask,@object // @halide_error_mask
	.section	.bss,"aw",@nobits
	.weak	halide_error_mask
	.p2align	3
halide_error_mask:
	.word	0                       // 0x0
	.word	0
	.size	halide_error_mask, 8

	.type	.L.str.37,@object       // @.str.37
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str.37:
	.string	"Bounds inference call to external stage "
	.size	.L.str.37, 41

	.type	.L.str.78,@object       // @.str.78
	.p2align	3
.L.str.78:
	.string	"<NULL>"
	.size	.L.str.78, 7

	.type	.L.str.1.38,@object     // @.str.1.38
	.p2align	3
.L.str.1.38:
	.string	" returned non-zero value: "
	.size	.L.str.1.38, 27

	.type	.L.str.2.39,@object     // @.str.2.39
	.p2align	3
.L.str.2.39:
	.string	"Call to external stage "
	.size	.L.str.2.39, 24

	.type	.L.str.3.40,@object     // @.str.3.40
	.p2align	3
.L.str.3.40:
	.string	"Bounds given for "
	.size	.L.str.3.40, 18

	.type	.L.str.4.41,@object     // @.str.4.41
	.p2align	3
.L.str.4.41:
	.string	" in "
	.size	.L.str.4.41, 5

	.type	.L.str.5.42,@object     // @.str.5.42
	.p2align	3
.L.str.5.42:
	.string	" (from "
	.size	.L.str.5.42, 8

	.type	.L.str.6.43,@object     // @.str.6.43
	.p2align	3
.L.str.6.43:
	.string	" to "
	.size	.L.str.6.43, 5

	.type	.L.str.7.44,@object     // @.str.7.44
	.p2align	3
.L.str.7.44:
	.string	") do not cover required region (from "
	.size	.L.str.7.44, 38

	.type	.L.str.9.46,@object     // @.str.9.46
	.p2align	3
.L.str.9.46:
	.string	" has type "
	.size	.L.str.9.46, 11

	.type	.L.str.10.47,@object    // @.str.10.47
	.p2align	3
.L.str.10.47:
	.string	" but type of the buffer passed in is "
	.size	.L.str.10.47, 38

	.type	.L.str.11.48,@object    // @.str.11.48
	.p2align	3
.L.str.11.48:
	.string	" requires a buffer of exactly "
	.size	.L.str.11.48, 31

	.type	.L.str.12.49,@object    // @.str.12.49
	.p2align	3
.L.str.12.49:
	.string	" dimensions, but the buffer passed in has "
	.size	.L.str.12.49, 43

	.type	.L.str.13.50,@object    // @.str.13.50
	.p2align	3
.L.str.13.50:
	.string	" dimensions"
	.size	.L.str.13.50, 12

	.type	.L.str.14.51,@object    // @.str.14.51
	.p2align	3
.L.str.14.51:
	.string	" is accessed at "
	.size	.L.str.14.51, 17

	.type	.L.str.15.52,@object    // @.str.15.52
	.p2align	3
.L.str.15.52:
	.string	", which is before the min ("
	.size	.L.str.15.52, 28

	.type	.L.str.16.53,@object    // @.str.16.53
	.p2align	3
.L.str.16.53:
	.string	") in dimension "
	.size	.L.str.16.53, 16

	.type	.L.str.17.54,@object    // @.str.17.54
	.p2align	3
.L.str.17.54:
	.string	", which is beyond the max ("
	.size	.L.str.17.54, 28

	.type	.L.str.18.55,@object    // @.str.18.55
	.p2align	3
.L.str.18.55:
	.string	"Total allocation for buffer "
	.size	.L.str.18.55, 29

	.type	.L.str.19.56,@object    // @.str.19.56
	.p2align	3
.L.str.19.56:
	.string	" is "
	.size	.L.str.19.56, 5

	.type	.L.str.20.57,@object    // @.str.20.57
	.p2align	3
.L.str.20.57:
	.string	", which exceeds the maximum size of "
	.size	.L.str.20.57, 37

	.type	.L.str.21.58,@object    // @.str.21.58
	.p2align	3
.L.str.21.58:
	.string	"The extents for buffer "
	.size	.L.str.21.58, 24

	.type	.L.str.22.59,@object    // @.str.22.59
	.p2align	3
.L.str.22.59:
	.string	" dimension "
	.size	.L.str.22.59, 12

	.type	.L.str.23.60,@object    // @.str.23.60
	.p2align	3
.L.str.23.60:
	.string	" is negative ("
	.size	.L.str.23.60, 15

	.type	.L.str.24.61,@object    // @.str.24.61
	.p2align	3
.L.str.24.61:
	.string	"Product of extents for buffer "
	.size	.L.str.24.61, 31

	.type	.L.str.25.62,@object    // @.str.25.62
	.p2align	3
.L.str.25.62:
	.string	"Applying the constraints on "
	.size	.L.str.25.62, 29

	.type	.L.str.26.63,@object    // @.str.26.63
	.p2align	3
.L.str.26.63:
	.string	" to the required region made it smaller. "
	.size	.L.str.26.63, 42

	.type	.L.str.27.64,@object    // @.str.27.64
	.p2align	3
.L.str.27.64:
	.string	"Required size: "
	.size	.L.str.27.64, 16

	.type	.L.str.28.65,@object    // @.str.28.65
	.p2align	3
.L.str.28.65:
	.string	". "
	.size	.L.str.28.65, 3

	.type	.L.str.29.66,@object    // @.str.29.66
	.p2align	3
.L.str.29.66:
	.string	"Constrained size: "
	.size	.L.str.29.66, 19

	.type	.L.str.30.67,@object    // @.str.30.67
	.p2align	3
.L.str.30.67:
	.string	"."
	.size	.L.str.30.67, 2

	.type	.L.str.31.68,@object    // @.str.31.68
	.p2align	3
.L.str.31.68:
	.string	"Constraint violated: "
	.size	.L.str.31.68, 22

	.type	.L.str.32.69,@object    // @.str.32.69
	.p2align	3
.L.str.32.69:
	.string	" ("
	.size	.L.str.32.69, 3

	.type	.L.str.33.70,@object    // @.str.33.70
	.p2align	3
.L.str.33.70:
	.string	") == "
	.size	.L.str.33.70, 6

	.type	.L.str.34.71,@object    // @.str.34.71
	.p2align	3
.L.str.34.71:
	.string	"Parameter "
	.size	.L.str.34.71, 11

	.type	.L.str.35.72,@object    // @.str.35.72
	.p2align	3
.L.str.35.72:
	.string	" but must be at least "
	.size	.L.str.35.72, 23

	.type	.L.str.36.73,@object    // @.str.36.73
	.p2align	3
.L.str.36.73:
	.string	" but must be at most "
	.size	.L.str.36.73, 22

	.type	.L.str.37.74,@object    // @.str.37.74
	.p2align	3
.L.str.37.74:
	.string	"Out of memory (halide_malloc returned NULL)"
	.size	.L.str.37.74, 44

	.type	.L.str.38,@object       // @.str.38
	.p2align	3
.L.str.38:
	.string	"Out of VTCM memory (halide_vtcm_malloc returned NULL)"
	.size	.L.str.38, 54

	.type	.L.str.39,@object       // @.str.39
	.p2align	3
.L.str.39:
	.string	"Out of LOCKED_CACHE memory (halide_locked_cache_malloc returned NULL)"
	.size	.L.str.39, 70

	.type	.L.str.40,@object       // @.str.40
	.p2align	3
.L.str.40:
	.string	"Out of GPUShared memory (halide_malloc returned NULL)"
	.size	.L.str.40, 54

	.type	.L.str.41,@object       // @.str.41
	.p2align	3
.L.str.41:
	.string	"Buffer argument "
	.size	.L.str.41, 17

	.type	.L.str.42.75,@object    // @.str.42.75
	.p2align	3
.L.str.42.75:
	.string	" is NULL"
	.size	.L.str.42.75, 9

	.type	.L.str.43,@object       // @.str.43
	.p2align	3
.L.str.43:
	.string	"Failed to dump function "
	.size	.L.str.43, 25

	.type	.L.str.44,@object       // @.str.44
	.p2align	3
.L.str.44:
	.string	" to file "
	.size	.L.str.44, 10

	.type	.L.str.45,@object       // @.str.45
	.p2align	3
.L.str.45:
	.string	" with error "
	.size	.L.str.45, 13

	.type	.L.str.46,@object       // @.str.46
	.p2align	3
.L.str.46:
	.string	"Failed to upgrade buffer_t to halide_buffer_t for "
	.size	.L.str.46, 51

	.type	.L.str.47,@object       // @.str.47
	.p2align	3
.L.str.47:
	.string	": "
	.size	.L.str.47, 3

	.type	.L.str.48,@object       // @.str.48
	.p2align	3
.L.str.48:
	.string	"Failed to downgrade halide_buffer_t to buffer_t for "
	.size	.L.str.48, 53

	.type	.L.str.49,@object       // @.str.49
	.p2align	3
.L.str.49:
	.string	"The host pointer of "
	.size	.L.str.49, 21

	.type	.L.str.50,@object       // @.str.50
	.p2align	3
.L.str.50:
	.string	" is not aligned to a "
	.size	.L.str.50, 22

	.type	.L.str.51,@object       // @.str.51
	.p2align	3
.L.str.51:
	.string	" bytes boundary."
	.size	.L.str.51, 17

	.type	.L.str.52,@object       // @.str.52
	.p2align	3
.L.str.52:
	.string	" is null, but the pipeline will access it on the host."
	.size	.L.str.52, 55

	.type	.L.str.53,@object       // @.str.53
	.p2align	3
.L.str.53:
	.string	"The folded storage dimension "
	.size	.L.str.53, 30

	.type	.L.str.54,@object       // @.str.54
	.p2align	3
.L.str.54:
	.string	" of "
	.size	.L.str.54, 5

	.type	.L.str.55,@object       // @.str.55
	.p2align	3
.L.str.55:
	.string	" was accessed out of order by loop "
	.size	.L.str.55, 36

	.type	.L.str.56,@object       // @.str.56
	.p2align	3
.L.str.56:
	.string	"Cannot fold dimension "
	.size	.L.str.56, 23

	.type	.L.str.57,@object       // @.str.57
	.p2align	3
.L.str.57:
	.string	" because an extern stage accesses ["
	.size	.L.str.57, 36

	.type	.L.str.58.76,@object    // @.str.58.76
	.p2align	3
.L.str.58.76:
	.string	", "
	.size	.L.str.58.76, 3

	.type	.L.str.59.77,@object    // @.str.59.77
	.p2align	3
.L.str.59.77:
	.string	"],"
	.size	.L.str.59.77, 3

	.type	.L.str.60.78,@object    // @.str.60.78
	.p2align	3
.L.str.60.78:
	.string	" which is outside the range currently valid: ["
	.size	.L.str.60.78, 47

	.type	.L.str.61.79,@object    // @.str.61.79
	.p2align	3
.L.str.61.79:
	.string	"]."
	.size	.L.str.61.79, 3

	.type	.L.str.62,@object       // @.str.62
	.p2align	3
.L.str.62:
	.string	" which wraps around the boundary of the fold, "
	.size	.L.str.62, 47

	.type	.L.str.63,@object       // @.str.63
	.p2align	3
.L.str.63:
	.string	"which occurs at multiples of "
	.size	.L.str.63, 30

	.type	.L.str.64.80,@object    // @.str.64.80
	.p2align	3
.L.str.64.80:
	.string	"The fold factor ("
	.size	.L.str.64.80, 18

	.type	.L.str.65,@object       // @.str.65
	.p2align	3
.L.str.65:
	.string	") of dimension "
	.size	.L.str.65, 16

	.type	.L.str.66,@object       // @.str.66
	.p2align	3
.L.str.66:
	.string	" is too small to store the required region accessed by loop "
	.size	.L.str.66, 61

	.type	.L.str.67,@object       // @.str.67
	.p2align	3
.L.str.67:
	.string	")."
	.size	.L.str.67, 3

	.type	.L.str.68,@object       // @.str.68
	.p2align	3
.L.str.68:
	.string	"Requirement Failed: ("
	.size	.L.str.68, 22

	.type	.L.str.70,@object       // @.str.70
	.p2align	3
.L.str.70:
	.string	"A schedule specialized with specialize_fail() was chosen: "
	.size	.L.str.70, 59

	.type	.L.str.71,@object       // @.str.71
	.p2align	3
.L.str.71:
	.string	"Buffer has a non-zero device but no device interface.\n"
	.size	.L.str.71, 55

	.type	.L.str.72,@object       // @.str.72
	.p2align	3
.L.str.72:
	.string	"Buffer has a non-null devie_interface but device is 0.\n"
	.size	.L.str.72, 56

	.type	.L.str.73,@object       // @.str.73
	.p2align	3
.L.str.73:
	.string	"Buffer has both host and device dirty bits set.\n"
	.size	.L.str.73, 49

	.type	.L.str.74,@object       // @.str.74
	.p2align	3
.L.str.74:
	.string	"Buffer pointer passed to "
	.size	.L.str.74, 26

	.type	.L.str.75,@object       // @.str.75
	.p2align	3
.L.str.75:
	.string	" is null.\n"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       // @.str.76
	.p2align	3
.L.str.76:
	.string	"Integer division or modulo by zero.\n"
	.size	.L.str.76, 37

	.type	.L.str.89,@object       // @.str.89
	.p2align	3
.L.str.89:
	.space	1
	.size	.L.str.89, 1

	.type	.L.str.1.90,@object     // @.str.1.90
	.p2align	3
.L.str.1.90:
	.string	"elem_size of buffer was not in [1, 2, 4, 8]"
	.size	.L.str.1.90, 44

	.type	.L.str.2.91,@object     // @.str.2.91
	.p2align	3
.L.str.2.91:
	.string	"buffer has incorrect elem_size ("
	.size	.L.str.2.91, 33

	.type	.L.str.3.92,@object     // @.str.3.92
	.p2align	3
.L.str.3.92:
	.string	") "
	.size	.L.str.3.92, 3

	.type	.L.str.4.93,@object     // @.str.4.93
	.p2align	3
.L.str.4.93:
	.string	"for expected type ("
	.size	.L.str.4.93, 20

	.type	.L.str.5.94,@object     // @.str.5.94
	.p2align	3
.L.str.5.94:
	.string	")"
	.size	.L.str.5.94, 2

	.type	.L.str.6.96,@object     // @.str.6.96
	.p2align	3
.L.str.6.96:
	.string	"Internal error: buffer host mismatch in halide_upgrade_buffer_t."
	.size	.L.str.6.96, 65

	.type	.L.str.7.97,@object     // @.str.7.97
	.p2align	3
.L.str.7.97:
	.string	"buffer has more than four dimensions"
	.size	.L.str.7.97, 37

	.type	.L.str.102,@object      // @.str.102
	.p2align	3
.L.str.102:
	.string	"HVX lock size must be 64 or 128.\n"
	.size	.L.str.102, 34

	.type	.L.str.8.103,@object    // @.str.8.103
	.p2align	3
.L.str.8.103:
	.string	"Printer buffer allocation failed.\n"
	.size	.L.str.8.103, 35

	.type	.L.str.5.104,@object    // @.str.5.104
	.p2align	3
.L.str.5.104:
	.string	"qurt_hvx_lock failed\n"
	.size	.L.str.5.104, 22

	.type	.L.str.7.105,@object    // @.str.7.105
	.p2align	3
.L.str.7.105:
	.string	"qurt_hvx_unlock failed\n"
	.size	.L.str.7.105, 24

	.type	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE,@object // @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.data
	.weak	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.p2align	2
_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE:
	.word	halide_default_can_use_target_features
	.size	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, 4

	.type	_ZZ38halide_default_can_use_target_featuresE11initialized,@object // @_ZZ38halide_default_can_use_target_featuresE11initialized
	.lcomm	_ZZ38halide_default_can_use_target_featuresE11initialized,1,1
	.type	_ZZ38halide_default_can_use_target_featuresE20cpu_features_storage,@object // @_ZZ38halide_default_can_use_target_featuresE20cpu_features_storage
	.lcomm	_ZZ38halide_default_can_use_target_featuresE20cpu_features_storage,16,8
	.type	.L.str.106,@object      // @.str.106
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3
.L.str.106:
	.string	"Internal error: wrong structure size passed to halide_can_use_target_features()\n"
	.size	.L.str.106, 81

	.type	.Lstr,@object           // @str
	.section	.rodata,"a",@progbits
	.p2align	5
.Lstr:
	.string	"input"
	.size	.Lstr, 6

	.type	.Lstr.110,@object       // @str.110
	.p2align	5
.Lstr.110:
	.string	"mask"
	.size	.Lstr.110, 5

	.type	.Lstr.111,@object       // @str.111
	.p2align	5
.Lstr.111:
	.string	"output"
	.size	.Lstr.111, 7

	.type	.L__unnamed_1,@object   // @0
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__unnamed_1:
	.word	.Lstr
	.word	1                       // 0x1
	.word	2                       // 0x2
	.byte	1                       // 0x1
	.byte	8                       // 0x8
	.half	1                       // 0x1
	.word	0
	.word	0
	.word	0
	.word	.Lstr.110
	.word	1                       // 0x1
	.word	2                       // 0x2
	.byte	0                       // 0x0
	.byte	8                       // 0x8
	.half	1                       // 0x1
	.word	0
	.word	0
	.word	0
	.word	.Lstr.111
	.word	2                       // 0x2
	.word	2                       // 0x2
	.byte	1                       // 0x1
	.byte	8                       // 0x8
	.half	1                       // 0x1
	.word	0
	.word	0
	.word	0
	.size	.L__unnamed_1, 84

	.type	.Lstr.112,@object       // @str.112
	.section	.rodata,"a",@progbits
	.p2align	6
.Lstr.112:
	.string	"hexagon-32-noos-hvx_64-no_asserts-no_bounds_query"
	.size	.Lstr.112, 50

	.type	.Lstr.113,@object       // @str.113
	.p2align	5
.Lstr.113:
	.string	"conv3x3a16_hvx64"
	.size	.Lstr.113, 17

	.type	.Lconv3x3a16_hvx64_metadata_storage,@object // @conv3x3a16_hvx64_metadata_storage
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.Lconv3x3a16_hvx64_metadata_storage:
	.word	0                       // 0x0
	.word	3                       // 0x3
	.word	.L__unnamed_1
	.word	.Lstr.112
	.word	.Lstr.113
	.size	.Lconv3x3a16_hvx64_metadata_storage, 20

	.type	.Lswitch.table.halide_type_to_string,@object // @switch.table.halide_type_to_string
	.p2align	2
.Lswitch.table.halide_type_to_string:
	.word	.L.str.13.25
	.word	.L.str.14
	.word	.L.str.15
	.word	.L.str.16
	.size	.Lswitch.table.halide_type_to_string, 16

	.weak	halide_print
	.weak	halide_error

	.ident	"Clang $LLVM_VERSION_MAJOR.$LLVM_VERSION_MINOR (based on LLVM 7.0.0)"
	.section	".note.GNU-stack","",@progbits
