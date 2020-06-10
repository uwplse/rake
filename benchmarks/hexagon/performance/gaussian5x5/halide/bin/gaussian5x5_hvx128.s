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
	.section	.rodata,"a",@progbits
	.p2align	7               // -- Begin function gaussian5x5_hvx128
.LCPI120_0:
	.word	0                       // 0x0
	.word	1                       // 0x1
	.word	2                       // 0x2
	.word	3                       // 0x3
	.word	4                       // 0x4
	.word	5                       // 0x5
	.word	6                       // 0x6
	.word	7                       // 0x7
	.word	8                       // 0x8
	.word	9                       // 0x9
	.word	10                      // 0xa
	.word	11                      // 0xb
	.word	12                      // 0xc
	.word	13                      // 0xd
	.word	14                      // 0xe
	.word	15                      // 0xf
	.word	16                      // 0x10
	.word	17                      // 0x11
	.word	18                      // 0x12
	.word	19                      // 0x13
	.word	20                      // 0x14
	.word	21                      // 0x15
	.word	22                      // 0x16
	.word	23                      // 0x17
	.word	24                      // 0x18
	.word	25                      // 0x19
	.word	26                      // 0x1a
	.word	27                      // 0x1b
	.word	28                      // 0x1c
	.word	29                      // 0x1d
	.word	30                      // 0x1e
	.word	31                      // 0x1f
.LCPI120_1:
	.word	32                      // 0x20
	.word	33                      // 0x21
	.word	34                      // 0x22
	.word	35                      // 0x23
	.word	36                      // 0x24
	.word	37                      // 0x25
	.word	38                      // 0x26
	.word	39                      // 0x27
	.word	40                      // 0x28
	.word	41                      // 0x29
	.word	42                      // 0x2a
	.word	43                      // 0x2b
	.word	44                      // 0x2c
	.word	45                      // 0x2d
	.word	46                      // 0x2e
	.word	47                      // 0x2f
	.word	48                      // 0x30
	.word	49                      // 0x31
	.word	50                      // 0x32
	.word	51                      // 0x33
	.word	52                      // 0x34
	.word	53                      // 0x35
	.word	54                      // 0x36
	.word	55                      // 0x37
	.word	56                      // 0x38
	.word	57                      // 0x39
	.word	58                      // 0x3a
	.word	59                      // 0x3b
	.word	60                      // 0x3c
	.word	61                      // 0x3d
	.word	62                      // 0x3e
	.word	63                      // 0x3f
.LCPI120_2:
	.word	64                      // 0x40
	.word	65                      // 0x41
	.word	66                      // 0x42
	.word	67                      // 0x43
	.word	68                      // 0x44
	.word	69                      // 0x45
	.word	70                      // 0x46
	.word	71                      // 0x47
	.word	72                      // 0x48
	.word	73                      // 0x49
	.word	74                      // 0x4a
	.word	75                      // 0x4b
	.word	76                      // 0x4c
	.word	77                      // 0x4d
	.word	78                      // 0x4e
	.word	79                      // 0x4f
	.word	80                      // 0x50
	.word	81                      // 0x51
	.word	82                      // 0x52
	.word	83                      // 0x53
	.word	84                      // 0x54
	.word	85                      // 0x55
	.word	86                      // 0x56
	.word	87                      // 0x57
	.word	88                      // 0x58
	.word	89                      // 0x59
	.word	90                      // 0x5a
	.word	91                      // 0x5b
	.word	92                      // 0x5c
	.word	93                      // 0x5d
	.word	94                      // 0x5e
	.word	95                      // 0x5f
.LCPI120_3:
	.word	96                      // 0x60
	.word	97                      // 0x61
	.word	98                      // 0x62
	.word	99                      // 0x63
	.word	100                     // 0x64
	.word	101                     // 0x65
	.word	102                     // 0x66
	.word	103                     // 0x67
	.word	104                     // 0x68
	.word	105                     // 0x69
	.word	106                     // 0x6a
	.word	107                     // 0x6b
	.word	108                     // 0x6c
	.word	109                     // 0x6d
	.word	110                     // 0x6e
	.word	111                     // 0x6f
	.word	112                     // 0x70
	.word	113                     // 0x71
	.word	114                     // 0x72
	.word	115                     // 0x73
	.word	116                     // 0x74
	.word	117                     // 0x75
	.word	118                     // 0x76
	.word	119                     // 0x77
	.word	120                     // 0x78
	.word	121                     // 0x79
	.word	122                     // 0x7a
	.word	123                     // 0x7b
	.word	124                     // 0x7c
	.word	125                     // 0x7d
	.word	126                     // 0x7e
	.word	127                     // 0x7f
	.section	.text.gaussian5x5_hvx128,"ax",@progbits
	.globl	gaussian5x5_hvx128
	.balign 32
	.type	gaussian5x5_hvx128,@function
gaussian5x5_hvx128:                     // @gaussian5x5_hvx128
// %bb.0:                               // %entry
	{
		allocframe(r29,#0):raw
	}
	{
		r29 = add(r29,#-23040)
		r17:16 = combine(r0,r1)
		r0 = #0
		memd(r30+#-8) = r17:16
	}                               // 8-byte Folded Spill
	{
		r29 = and(r29,#-256)
		r1 = #128
		memd(r30+#-16) = r19:18
		memd(r30+#-24) = r21:20
	}                               // 8-byte Folded Spill
	{
		r18 = #0
		memd(r30+#-32) = r23:22
		memd(r30+#-40) = r25:24
	}                               // 8-byte Folded Spill
	{
		call ##halide_qurt_hvx_lock
		memd(r30+#-48) = r27:26
	}                               // 8-byte Folded Spill
	.falign
// %bb.1:                               // %entry
	{
		r2 = memw(r16+#56)
	}
	{
		r3 = memw(r2+#20)
		if (!cmp.gt(r3.new,#0)) jump:nt ##.LBB120_652
	}
// %bb.2:                               // %"for output.s0.y.y.preheader"
	{
		r3 = add(r3,#3)
		r0 = #8
		r5 = memw(r2+#4)
		r4 = memw(r17+#56)
	}
	{
		r3 = asr(r3,#2)
		r7 = add(r5,#-1)
		r6 = add(r5,#127)
		memw(r29+#164) = r3.new
	}                               // 4-byte Folded Spill
	{
		r12 = asr(r6,#7)
		p1 = cmp.gt(r5,#128)
		r7 = and(r7,#-128)
		memw(r29+#248) = r12.new
	}                               // 4-byte Folded Spill
	{
		r3 = and(r6,#-128)
		r8 = mux(p1,#2,#-2)
		v30 = vxor(v30,v30)
		r4 = memw(r4+#24)
	}
	{
		r12 = and(r4,#-128)
		r6 = add(r7,r8)
		r2 = memw(r2+#24)
		memw(r29+#216) = r12.new
	}                               // 4-byte Folded Spill
	{
		r8 = #384
		p1 = cmp.gt(r5,#0)
		r9 = memw(r17+#12)
		memw(r29+#176) = r9.new
	}                               // 4-byte Folded Spill
	{
		r7 = add(r6,add(r3,##130))
		v2 = vsplat(r8)
		vmem(r29+#4) = v2.new
	}                               // 128-byte Folded Spill
	{
		r3 = asr(r7,#31)
		r6 = lsr(r7,#16)
		r13 = r9
		r14 = r9
	}
	{
		r0 = insert(r7,#16,#16)
		r7 = insert(r12,#30,#2)
		r15 = r9
		memw(r29+#160) = r7.new
	}                               // 4-byte Folded Spill
	{
		r2 = asr(r2,#7)
		r7 = memw(r16+#12)
		memw(r29+#208) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = lsr(r4,#7)
		r4 = or(r4,r6)
		v29.w = vabs(v2.w)
		memw(r29+#244) = r7
	}                               // 4-byte Folded Spill
	{
		r7 = extractu(r12,#24,#7)
		r13 -= asl(r2,#8)
		r6 = ##65536
	}
	{
		r4 |= asl(r3,#16)
		r14 -= asl(r2,#7)
		vmem(r29+#5) = v29
	}                               // 128-byte Folded Spill
	{
		r15 += asl(r7,#8)
		r1 = or(r4,r6)
		r4 = add(r9,r12)
	}
	{
		r1 = p1
		r0 = add(r29,#15488)
		memd(r29+#168) = r1:0
	}                               // 8-byte Folded Spill
	{
		memw(r29+#204) = r1
		vmem(r0+#0) = v30
	}                               // 4-byte Folded Spill
	.falign
.LBB120_3:                              // %"for output.s0.y.y"
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB120_4 Depth 2
                                        //       Child Loop BB120_6 Depth 3
                                        //         Child Loop BB120_8 Depth 4
	{
		r0 = asl(r18,#2)
		r2 = #6
		r3 = memw(r29+#216)
		memw(r29+#212) = r0.new
	}                               // 4-byte Folded Reload
	{
		r2 = addasl(r2,r18,#2)
		r1 = memw(r29+#176)
		memw(r29+#200) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = mpyi(r3,r2)
	}
	{
		r2 = add(r1,add(r2,#-2))
		r1:0 = memd(r29+#168)
	}                               // 8-byte Folded Reload
	//# InlineAsm Start
	l2fetch(r2,r1:0)
	//# InlineAsm End
	{
		r2 = #0
		memw(r29+#240) = r2.new
	}                               // 4-byte Folded Spill
	{
		memw(r29+#188) = r15
		memw(r29+#236) = r15
	}                               // 4-byte Folded Spill
	{
		memw(r29+#184) = r4
		memw(r29+#232) = r4
	}                               // 4-byte Folded Spill
	{
		memw(r29+#180) = r9
		memw(r29+#228) = r9
	}                               // 4-byte Folded Spill
	{
		memw(r29+#192) = r14
		memw(r29+#224) = r14
	}                               // 4-byte Folded Spill
	{
		memw(r29+#196) = r13
		memw(r29+#220) = r13
	}                               // 4-byte Folded Spill
	.falign
.LBB120_4:                              // %"for output.s0.y.yi"
                                        //   Parent Loop BB120_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB120_6 Depth 3
                                        //         Child Loop BB120_8 Depth 4
	{
		r2 = memw(r29+#204)
	}                               // 4-byte Folded Reload
	{
		p0 = r2
		if (!p0.new) jump:nt .LBB120_650
		if (p0.new) r4 = #0
		if (p0.new) r2 = memw(r29+#212)
	}                               // 4-byte Folded Reload
// %bb.5:                               // %"for output.s0.x.x.preheader"
                                        //   in Loop: Header=BB120_4 Depth=2
	{
		r3 = memw(r29+#240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r3,r2)
		r3 = #0
		memw(r29+#504) = r3.new
	}                               // 4-byte Folded Spill
	{
		r3 = memw(r29+#236)
		memw(r29+#500) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = memw(r29+#232)
		memw(r29+#496) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = memw(r29+#228)
		memw(r29+#492) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = memw(r29+#224)
		memw(r29+#488) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = memw(r29+#220)
		memw(r29+#484) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = memw(r29+#208)
	}                               // 4-byte Folded Reload
	{
		r2 = mpyi(r2,r3)
		memw(r29+#252) = r2.new
	}                               // 4-byte Folded Spill
	.falign
.LBB120_6:                              // %"for output.s0.x.x"
                                        //   Parent Loop BB120_3 Depth=1
                                        //     Parent Loop BB120_4 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB120_8 Depth 4
	{
		r1 = #-2
		p1 = cmp.eq(r4,#0)
		r6 = ##100926980
	}
	{
		r9 = add(r29,#20736)
		r7 = ##17039620
		r8 = add(r29,#20480)
	}
	{
		r12 = add(r29,#20224)
		r2 = mux(p1,#-2,#2)
		r13 = add(r29,#20992)
		memw(r29+#480) = r4
	}                               // 4-byte Folded Spill
	{
		r3 = addasl(r2,r4,#7)
	}
	{
		r3 = sub(#257,r3)
	}
	{
		r3 = asr(r3,#7)
	}
	{
		r3 = asl(r4,#7)
		r5 = add(r3,r4)
		memw(r29+#508) = r3.new
	}                               // 4-byte Folded Spill
	{
		p0 = cmp.gt(r5,#0); if (!p0.new) jump:nt .LBB120_137
		if (p0.new) r3 = memw(r29+##504)
	}                               // 4-byte Folded Reload
// %bb.7:                               // %"for rows.s0.x.x.preheader"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r4 = add(r2,r3)
		r3 = memw(r29+#484)
	}                               // 4-byte Folded Reload
	{
		r14 = add(r3,r2)
		r3 = memw(r29+#488)
	}                               // 4-byte Folded Reload
	{
		r15 = add(r3,r2)
		r3 = memw(r29+#492)
	}                               // 4-byte Folded Reload
	{
		r28 = add(r3,r2)
		r3 = memw(r29+#496)
	}                               // 4-byte Folded Reload
	{
		r0 = add(r3,r2)
		r3 = memw(r29+#500)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r3,r2)
	}
	.falign
.LBB120_8:                              // %"for rows.s0.x.x"
                                        //   Parent Loop BB120_3 Depth=1
                                        //     Parent Loop BB120_4 Depth=2
                                        //       Parent Loop BB120_6 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	{
		v21 = vsplat(r4)
		memw(r29+##14720) = r4
	}                               // 4-byte Folded Spill
	{
		r3 = add(pc,##.LCPI120_2@PCREL)
		memw(r29+##14848) = r5
	}                               // 4-byte Folded Spill
	{
		r4 = add(pc,##.LCPI120_3@PCREL)
		v20 = v21
	}
	{
		v24 = vmemu(r2++#1)
	}
	{
		r3 = setbit(r8,#7)
		v26 = vmem(r3+#0)
		memw(r29+##14080) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = add(pc,##.LCPI120_0@PCREL)
		r4 = setbit(r12,#7)
		v27 = vmem(r4+#0)
	}
	{
		v25:24.uh = vzxt(v24.ub)
		v18 = vmemu(r0++#1)
	}
	{
		v29:28.w = vadd(v21:20.w,v27:26.w)
		v19 = vmemu(r28++#1)
	}
	{
		v22 = vmemu(r15++#1)
	}
	{
		v25:24.h += vmpa(v19:18.ub,r6.b)
		v23 = vmemu(r14++#1)
	}
	{
		memw(r29+##14208) = r0
		memw(r29+##14336) = r28
	}                               // 4-byte Folded Spill
	{
		memw(r29+##14464) = r15
		memw(r29+##14592) = r14
	}                               // 4-byte Folded Spill
	{
		r3 = setbit(r9,#7)
		v25:24.h += vmpa(v23:22.ub,r7.b)
		v30 = vmem(r2+#0)
		vmem(r3+#0) = v2
	}
	{
		r3 = add(pc,##.LCPI120_1@PCREL)
		r2 = setbit(r13,#7)
		vmem(r3+#0) = v29
	}
	{
		v25:24 = vshuff(v25,v24,r1)
		vmem(r8+#0) = v2
	}
	{
		v31 = vmem(r3+#0)
		vmem(r9+#0) = v28
	}
	{
		v1:0.w = vadd(v21:20.w,v31:30.w)
		vmem(r4+#0) = v2
	}
	{
		vmem(r2+#0) = v1
	}
	{
		vmem(r12+#0) = v2
	}
	{
		vmem(r13+#0) = v0
	}
	{
		r2 = memw(r29+##20732)
		memw(r29+##15104) = r2.new
	}
	{
		r2 = memw(r29+##20988)
		memw(r29+##13696) = r2.new
	}
	{
		r2 = memw(r29+##20728)
		memw(r29+##13568) = r2.new
	}
	{
		r2 = memw(r29+##20984)
		memw(r29+##13440) = r2.new
	}
	{
		r2 = memw(r29+##20724)
		memw(r29+##13312) = r2.new
	}
	{
		r2 = memw(r29+##20980)
		memw(r29+##13184) = r2.new
	}
	{
		r2 = memw(r29+##20720)
		memw(r29+##13056) = r2.new
	}
	{
		r2 = memw(r29+##20976)
		memw(r29+##12928) = r2.new
	}
	{
		r2 = memw(r29+##20716)
		memw(r29+##12800) = r2.new
	}
	{
		r2 = memw(r29+##20972)
		memw(r29+##12672) = r2.new
	}
	{
		r2 = memw(r29+##20712)
		memw(r29+##12544) = r2.new
	}
	{
		r2 = memw(r29+##20968)
		memw(r29+##12416) = r2.new
	}
	{
		r2 = memw(r29+##20708)
		memw(r29+##12288) = r2.new
	}
	{
		r2 = memw(r29+##20964)
		memw(r29+##12160) = r2.new
	}
	{
		r2 = memw(r29+##20704)
		memw(r29+##12032) = r2.new
	}
	{
		r2 = memw(r29+##20960)
		memw(r29+##11904) = r2.new
	}
	{
		r2 = memw(r29+##20700)
		memw(r29+##11776) = r2.new
	}
	{
		r2 = memw(r29+##20956)
		memw(r29+##11520) = r2.new
	}
	{
		r2 = memw(r29+##20696)
		memw(r29+##11392) = r2.new
	}
	{
		r2 = memw(r29+##20952)
		memw(r29+##11264) = r2.new
	}
	{
		r2 = memw(r29+##20692)
		memw(r29+##11136) = r2.new
	}
	{
		r2 = add(r29,#13824)
		r25 = memw(r29+##20948)
	}
	{
		r16 = memw(r29+##20684)
		r26 = memw(r29+##20688)
	}
	{
		r17 = memw(r29+##20940)
		r27 = memw(r29+##20944)
	}
	{
		r2 = add(r29,#13952)
		r18 = memw(r29+##20680)
		vmem(r2+#0) = v24
	}
	{
		vmem(r2+#0) = v25
	}                               // 256-byte Folded Spill
	{
		r1 = memw(r29+##20612)
		r19 = memw(r29+##20936)
	}
	{
		r0 = memw(r29+##20868)
		r20 = memw(r29+##20672)
	}
	{
		r21 = memw(r29+##20928)
		r22 = memw(r29+##20676)
	}
	{
		call ##__hexagon_modsi3
		r23 = memw(r29+##20932)
	}
	.falign
// %bb.9:                               // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r24 = r0
		r1 = memw(r29+##20608)
	}
	{
		call ##__hexagon_modsi3
		r0 = memw(r29+##20864)
	}
	.falign
// %bb.10:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##20616)
	}
	{
		r2 = add(r29,#11008)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##20872)
	}
	{
		v26 = valign(v25,v25,#4)
	}
	{
		v26.w = vinsert(r24)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v26,v26,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.11:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20620)
	}
	{
		r2 = add(r29,#11008)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##20876)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v21,v21,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.12:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20624)
	}
	{
		r2 = add(r29,#11008)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##20880)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v15,v15,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.13:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20628)
	}
	{
		r2 = add(r29,#11008)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##20884)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v18,v18,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.14:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20632)
	}
	{
		r2 = add(r29,#11008)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##20888)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v22,v22,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.15:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20636)
	}
	{
		r2 = add(r29,#11008)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##20892)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v7,v7,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.16:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20640)
	}
	{
		r2 = add(r29,#11008)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##20896)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v6,v6,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.17:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20644)
	}
	{
		r2 = add(r29,#11008)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##20900)
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v24,v24,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.18:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20648)
	}
	{
		r2 = add(r29,#11008)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##20904)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v25,v25,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.19:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20652)
	}
	{
		r2 = add(r29,#11008)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##20908)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v4,v4,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.20:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20656)
	}
	{
		r2 = add(r29,#11008)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##20912)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v26,v26,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.21:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20660)
	}
	{
		r2 = add(r29,#11008)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##20916)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v27,v27,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.22:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20664)
	}
	{
		r2 = add(r29,#11008)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##20920)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v0,v0,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.23:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##20668)
	}
	{
		r2 = add(r29,#11008)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##20924)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v28,v28,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.24:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
	}
	{
		r2 = #64
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r1:0 = combine(r22,r23)
	}
	{
		v27 = valign(v7,v7,#4)
	}
	{
		r2 = add(r29,#10368)
		v20 = vror(v27,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v20
	}                               // 128-byte Folded Spill
	.falign
// %bb.25:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		call ##__hexagon_modsi3
		r22 = r0
		r1:0 = combine(r20,r21)
	}
	.falign
// %bb.26:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#11008)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r1:0 = combine(r18,r19)
	}
	{
		v29 = valign(v28,v28,#4)
	}
	{
		v29.w = vinsert(r22)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v29,v29,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.27:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
	}
	{
		r2 = add(r29,#11008)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r1:0 = combine(r16,r17)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v4,v4,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.28:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
	}
	{
		r2 = add(r29,#11008)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r1:0 = combine(r26,r27)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.29:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v27,v27,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.30:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.31:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11776)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##11520)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v5 = valign(v28,v28,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.32:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11776)
		r1 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12032)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.33:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12032)
		r1 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12288)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v8 = valign(v30,v30,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.34:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12288)
		r1 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12544)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v2 = valign(v31,v31,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.35:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12544)
		r1 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12800)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v14 = valign(v11,v11,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.36:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12800)
		r1 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13056)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v10 = valign(v20,v20,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.37:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13056)
		r1 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13312)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v1 = valign(v23,v23,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.38:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13312)
		r1 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v17 = valign(v19,v19,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.39:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##15104)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#15104)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v6 = valign(v12,v12,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.40:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15104)
		r17 = memw(r29+##20812)
	}
	{
		r2 = memw(r29+##20604)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##20860)
		memw(r29+##13696) = r2
	}
	{
		v19.w = vinsert(r0)
		memw(r29+##13568) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##20600)
		memw(r29+##13440) = r2.new
	}
	{
		v30 = valign(v19,v19,#4)
		r2 = memw(r29+##20856)
	}
	{
		r2 = memw(r29+##20596)
		memw(r29+##13312) = r2
	}
	{
		r2 = memw(r29+##20852)
		memw(r29+##13184) = r2
	}
	{
		r2 = memw(r29+##20592)
		memw(r29+##13056) = r2
	}
	{
		r2 = memw(r29+##20848)
		memw(r29+##12928) = r2
	}
	{
		r2 = memw(r29+##20588)
		memw(r29+##12800) = r2
	}
	{
		r2 = memw(r29+##20844)
		memw(r29+##12672) = r2
	}
	{
		r2 = memw(r29+##20584)
		memw(r29+##12544) = r2
	}
	{
		r2 = memw(r29+##20840)
		memw(r29+##12416) = r2
	}
	{
		r2 = memw(r29+##20580)
		memw(r29+##12288) = r2
	}
	{
		r2 = memw(r29+##20836)
		memw(r29+##12160) = r2
	}
	{
		r2 = memw(r29+##20576)
		memw(r29+##12032) = r2
	}
	{
		r2 = memw(r29+##20832)
		memw(r29+##11904) = r2
	}
	{
		r2 = memw(r29+##20572)
		memw(r29+##11776) = r2
	}
	{
		r2 = memw(r29+##20828)
		memw(r29+##11520) = r2
	}
	{
		r2 = memw(r29+##20568)
		memw(r29+##11392) = r2
	}
	{
		r2 = memw(r29+##20824)
		memw(r29+##11264) = r2
	}
	{
		r2 = memw(r29+##20564)
		memw(r29+##11136) = r2
	}
	{
		r2 = memw(r29+##20820)
		memw(r29+##11008) = r2
	}
	{
		r2 = memw(r29+##20560)
		memw(r29+##10880) = r2
	}
	{
		r2 = memw(r29+##20816)
		memw(r29+##10752) = r2
	}
	{
		r2 = memw(r29+##20556)
		memw(r29+##10624) = r2
	}
	{
		r2 = add(r29,#10368)
		memw(r29+##10496) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = add(r29,#15232)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3 = vor(v23,v30)
		r18 = memw(r29+##20552)
		vmem(r2+#0) = v3.new
	}
	{
		r1 = memw(r29+##20484)
		r24 = memw(r29+##20540)
	}
	{
		r0 = memw(r29+##20740)
		r25 = memw(r29+##20796)
	}
	{
		r20 = memw(r29+##20544)
		r26 = memw(r29+##20536)
	}
	{
		r21 = memw(r29+##20800)
		r19 = memw(r29+##20808)
	}
	{
		r22 = memw(r29+##20548)
		r27 = memw(r29+##20792)
	}
	{
		call ##__hexagon_modsi3
		r23 = memw(r29+##20804)
	}
	.falign
// %bb.41:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r16 = r0
		r1 = memw(r29+##20480)
	}
	{
		call ##__hexagon_modsi3
		r0 = memw(r29+##20736)
	}
	.falign
// %bb.42:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##20488)
	}
	{
		r2 = add(r29,#10368)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##20744)
	}
	{
		v0 = valign(v31,v31,#4)
	}
	{
		v0.w = vinsert(r16)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v0,v0,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.43:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20492)
	}
	{
		r2 = add(r29,#10368)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##20748)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v29,v29,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.44:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20496)
	}
	{
		r2 = add(r29,#10368)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##20752)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v30,v30,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.45:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20500)
	}
	{
		r2 = add(r29,#10368)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##20756)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v31,v31,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.46:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20504)
	}
	{
		r2 = add(r29,#10368)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##20760)
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v11,v11,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.47:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20508)
	}
	{
		r2 = add(r29,#10368)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##20764)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v20,v20,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.48:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20512)
	}
	{
		r2 = add(r29,#10368)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##20768)
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v23,v23,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.49:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20516)
	}
	{
		r2 = add(r29,#10368)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##20772)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v19,v19,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.50:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20520)
	}
	{
		r2 = add(r29,#10368)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##20776)
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v12,v12,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.51:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20524)
	}
	{
		r2 = add(r29,#10368)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##20780)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v9,v9,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.52:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20528)
	}
	{
		r2 = add(r29,#10368)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##20784)
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v5,v5,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.53:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##20532)
	}
	{
		r2 = add(r29,#10368)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##20788)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v16,v16,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.54:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
	}
	{
		r2 = add(r29,#10368)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r1:0 = combine(r26,r27)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v9,v9,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.55:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
	}
	{
		r2 = add(r29,#10368)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r1:0 = combine(r24,r25)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v5,v5,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.56:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
	}
	{
		r2 = #64
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r1:0 = combine(r22,r23)
	}
	{
		v1 = valign(v25,v25,#4)
	}
	{
		r2 = add(r29,#10368)
		v0 = vror(v1,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v0
	}                               // 128-byte Folded Spill
	.falign
// %bb.57:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		call ##__hexagon_modsi3
		r16 = r0
		r1:0 = combine(r20,r21)
	}
	.falign
// %bb.58:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#10240)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r1:0 = combine(r18,r19)
	}
	{
		v4 = valign(v2,v2,#4)
	}
	{
		v4.w = vinsert(r16)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v4,v4,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.59:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##10496)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#10496)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r17
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v16,v16,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.60:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10496)
		r1 = memw(r29+##10752)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#10752)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##10624)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v18 = valign(v8,v8,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.61:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10752)
		r1 = memw(r29+##11008)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##10880)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v6 = valign(v2,v2,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.62:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11264)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v24 = valign(v14,v14,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.63:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11264)
		r1 = memw(r29+##11520)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11520)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v22 = valign(v10,v10,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.64:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11520)
		r1 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11904)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v7 = valign(v1,v1,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.65:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11904)
		r1 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12160)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.66:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12160)
		r1 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12416)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.67:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12416)
		r1 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12672)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v3,v3,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.68:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12672)
		r1 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12928)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v21,v21,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.69:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12928)
		r1 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13184)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.70:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13184)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v18,v18,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.71:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13696)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v18 = valign(v22,v22,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.72:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13696)
		r25 = memw(r29+##21204)
	}
	{
		r2 = memw(r29+##20476)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##21244)
		memw(r29+##13696) = r2
	}
	{
		v23.w = vinsert(r0)
		memw(r29+##13568) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##20472)
		memw(r29+##13440) = r2.new
	}
	{
		v3 = valign(v23,v23,#4)
		r2 = memw(r29+##21240)
	}
	{
		r2 = memw(r29+##20468)
		memw(r29+##13312) = r2
	}
	{
		r2 = memw(r29+##21236)
		memw(r29+##13184) = r2
	}
	{
		r2 = memw(r29+##20464)
		memw(r29+##13056) = r2
	}
	{
		r2 = memw(r29+##21232)
		memw(r29+##12928) = r2
	}
	{
		r2 = memw(r29+##20460)
		memw(r29+##12800) = r2
	}
	{
		r2 = memw(r29+##21228)
		memw(r29+##12672) = r2
	}
	{
		r2 = memw(r29+##20456)
		memw(r29+##12544) = r2
	}
	{
		r2 = memw(r29+##21224)
		memw(r29+##12416) = r2
	}
	{
		r2 = memw(r29+##20452)
		memw(r29+##12288) = r2
	}
	{
		r2 = memw(r29+##21220)
		memw(r29+##12160) = r2
	}
	{
		r2 = memw(r29+##20448)
		memw(r29+##12032) = r2
	}
	{
		r2 = memw(r29+##21216)
		memw(r29+##11904) = r2
	}
	{
		r2 = memw(r29+##20444)
		memw(r29+##11776) = r2
	}
	{
		r2 = memw(r29+##21212)
		memw(r29+##11520) = r2
	}
	{
		r2 = memw(r29+##20440)
		memw(r29+##11392) = r2
	}
	{
		r2 = memw(r29+##21208)
		memw(r29+##11264) = r2
	}
	{
		r2 = memw(r29+##20436)
		memw(r29+##11136) = r2
	}
	{
		r2 = add(r29,#15104)
		memw(r29+##11008) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = add(r29,#15232)
		r16 = memw(r29+##20428)
		v10 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#10368)
		r26 = memw(r29+##20432)
		v11 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#15104)
		r17 = memw(r29+##21196)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r27 = memw(r29+##21200)
	}
	{
		v10 = vor(v28,v3)
		r18 = memw(r29+##20424)
		vmem(r2+#0) = v10.new
	}
	{
		r2 = add(r29,#15232)
	}
	{
		vmem(r2+#0) = v11
	}                               // 256-byte Folded Spill
	{
		r1 = memw(r29+##20356)
		r19 = memw(r29+##21192)
	}
	{
		r0 = memw(r29+##21124)
		r20 = memw(r29+##20416)
	}
	{
		r21 = memw(r29+##21184)
		r22 = memw(r29+##20420)
	}
	{
		call ##__hexagon_modsi3
		r23 = memw(r29+##21188)
	}
	.falign
// %bb.73:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r24 = r0
		r1 = memw(r29+##20352)
	}
	{
		call ##__hexagon_modsi3
		r0 = memw(r29+##21120)
	}
	.falign
// %bb.74:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##20360)
	}
	{
		r2 = add(r29,#10880)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##21128)
	}
	{
		v6 = valign(v5,v5,#4)
	}
	{
		v6.w = vinsert(r24)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v6,v6,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.75:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20364)
	}
	{
		r2 = add(r29,#10880)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##21132)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v8,v8,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.76:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20368)
	}
	{
		r2 = add(r29,#10880)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##21136)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v2,v2,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.77:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20372)
	}
	{
		r2 = add(r29,#10880)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##21140)
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v14,v14,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.78:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20376)
	}
	{
		r2 = add(r29,#10880)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##21144)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v10,v10,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.79:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20380)
	}
	{
		r2 = add(r29,#10880)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##21148)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v1,v1,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.80:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20384)
	}
	{
		r2 = add(r29,#10880)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##21152)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v17,v17,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.81:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20388)
	}
	{
		r2 = add(r29,#10880)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##21156)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v13,v13,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.82:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20392)
	}
	{
		r2 = add(r29,#10880)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##21160)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v3,v3,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.83:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20396)
	}
	{
		r2 = add(r29,#10880)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##21164)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v21,v21,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.84:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20400)
	}
	{
		r2 = add(r29,#10880)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##21168)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v15,v15,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.85:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20404)
	}
	{
		r2 = add(r29,#10880)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##21172)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v18,v18,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.86:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20408)
	}
	{
		r2 = add(r29,#10880)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##21176)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v22,v22,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.87:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##20412)
	}
	{
		r2 = add(r29,#10880)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##21180)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v7,v7,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.88:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
	}
	{
		r2 = #64
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r1:0 = combine(r22,r23)
	}
	{
		v8 = valign(v4,v4,#4)
	}
	{
		r2 = add(r29,#10240)
		v19 = vror(v8,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v19
	}                               // 128-byte Folded Spill
	.falign
// %bb.89:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		call ##__hexagon_modsi3
		r22 = r0
		r1:0 = combine(r20,r21)
	}
	.falign
// %bb.90:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#10880)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r1:0 = combine(r18,r19)
	}
	{
		v12 = valign(v7,v7,#4)
	}
	{
		v12.w = vinsert(r22)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v12,v12,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.91:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
	}
	{
		r2 = add(r29,#10880)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r1:0 = combine(r16,r17)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v7,v7,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.92:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
	}
	{
		r2 = add(r29,#10880)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r1:0 = combine(r26,r27)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.93:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##11008)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v24,v24,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.94:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11264)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v20 = valign(v25,v25,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.95:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11264)
		r1 = memw(r29+##11520)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11520)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v23 = valign(v4,v4,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.96:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11520)
		r1 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11904)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.97:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11904)
		r1 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12160)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v12 = valign(v27,v27,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.98:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12160)
		r1 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12416)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.99:                              // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12416)
		r1 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12672)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v5 = valign(v28,v28,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.100:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12672)
		r1 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12928)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.101:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12928)
		r1 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13184)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v8 = valign(v30,v30,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.102:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13184)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v2 = valign(v31,v31,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.103:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13696)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v24 = valign(v11,v11,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.104:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13696)
		r17 = memw(r29+##21068)
	}
	{
		r2 = memw(r29+##20348)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##21116)
		memw(r29+##13696) = r2
	}
	{
		v12.w = vinsert(r0)
		memw(r29+##13568) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##20344)
		memw(r29+##13440) = r2.new
	}
	{
		v9 = valign(v12,v12,#4)
		r2 = memw(r29+##21112)
	}
	{
		r2 = memw(r29+##20340)
		memw(r29+##13312) = r2
	}
	{
		r2 = memw(r29+##21108)
		memw(r29+##13056) = r2
	}
	{
		r2 = memw(r29+##20336)
		memw(r29+##12928) = r2
	}
	{
		r2 = memw(r29+##21104)
		memw(r29+##12800) = r2
	}
	{
		r2 = memw(r29+##20332)
		memw(r29+##12672) = r2
	}
	{
		r2 = memw(r29+##21100)
		memw(r29+##12544) = r2
	}
	{
		r2 = memw(r29+##20328)
		memw(r29+##12416) = r2
	}
	{
		r2 = memw(r29+##21096)
		memw(r29+##12288) = r2
	}
	{
		r2 = memw(r29+##20324)
		memw(r29+##12160) = r2
	}
	{
		r2 = memw(r29+##21092)
		memw(r29+##12032) = r2
	}
	{
		r2 = memw(r29+##20320)
		memw(r29+##11904) = r2
	}
	{
		r2 = memw(r29+##21088)
		memw(r29+##11776) = r2
	}
	{
		r2 = memw(r29+##20316)
		memw(r29+##11520) = r2
	}
	{
		r2 = memw(r29+##21084)
		memw(r29+##11392) = r2
	}
	{
		r2 = memw(r29+##20312)
		memw(r29+##11264) = r2
	}
	{
		r2 = memw(r29+##21080)
		memw(r29+##11136) = r2
	}
	{
		r2 = memw(r29+##20308)
		memw(r29+##11008) = r2
	}
	{
		r2 = memw(r29+##21076)
		memw(r29+##10880) = r2
	}
	{
		r2 = memw(r29+##20304)
		memw(r29+##10752) = r2
	}
	{
		r2 = memw(r29+##21072)
		memw(r29+##10624) = r2
	}
	{
		r2 = memw(r29+##20300)
		memw(r29+##10496) = r2
	}
	{
		r2 = add(r29,#10240)
		memw(r29+##10368) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = add(r29,#13184)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15 = vor(v31,v9)
		r18 = memw(r29+##20296)
		vmem(r2+#0) = v15.new
	}
	{
		r1 = memw(r29+##20228)
		r24 = memw(r29+##20284)
	}
	{
		r0 = memw(r29+##20996)
		r25 = memw(r29+##21052)
	}
	{
		r20 = memw(r29+##20288)
		r26 = memw(r29+##20280)
	}
	{
		r21 = memw(r29+##21056)
		r19 = memw(r29+##21064)
	}
	{
		r22 = memw(r29+##20292)
		r27 = memw(r29+##21048)
	}
	{
		call ##__hexagon_modsi3
		r23 = memw(r29+##21060)
	}
	.falign
// %bb.105:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r16 = r0
		r1 = memw(r29+##20224)
	}
	{
		call ##__hexagon_modsi3
		r0 = memw(r29+##20992)
	}
	.falign
// %bb.106:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##20232)
	}
	{
		r2 = add(r29,#10240)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##21000)
	}
	{
		v11 = valign(v10,v10,#4)
	}
	{
		v11.w = vinsert(r16)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v11,v11,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.107:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20236)
	}
	{
		r2 = add(r29,#10240)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##21004)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v6,v6,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.108:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20240)
	}
	{
		r2 = add(r29,#10240)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##21008)
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v24,v24,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.109:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20244)
	}
	{
		r2 = add(r29,#10240)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##21012)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v25,v25,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.110:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20248)
	}
	{
		r2 = add(r29,#10240)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##21016)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v4,v4,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.111:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20252)
	}
	{
		r2 = add(r29,#10240)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##21020)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v26,v26,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.112:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20256)
	}
	{
		r2 = add(r29,#10240)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##21024)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v27,v27,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.113:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20260)
	}
	{
		r2 = add(r29,#10240)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##21028)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v0,v0,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.114:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20264)
	}
	{
		r2 = add(r29,#10240)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##21032)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v28,v28,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.115:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20268)
	}
	{
		r2 = add(r29,#10240)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##21036)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v29,v29,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.116:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20272)
	}
	{
		r2 = add(r29,#10240)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##21040)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v30,v30,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.117:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
		r1 = memw(r29+##20276)
	}
	{
		r2 = add(r29,#10240)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##21044)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v31,v31,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.118:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
	}
	{
		r2 = add(r29,#10240)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r1:0 = combine(r26,r27)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v20,v20,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.119:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
	}
	{
		r2 = add(r29,#10240)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r1:0 = combine(r24,r25)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v23,v23,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.120:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10240)
	}
	{
		r2 = #64
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r1:0 = combine(r22,r23)
	}
	{
		v13 = valign(v26,v26,#4)
	}
	{
		r2 = add(r29,#10240)
		v31 = vror(v13,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v31
	}                               // 128-byte Folded Spill
	.falign
// %bb.121:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		call ##__hexagon_modsi3
		r16 = r0
		r1:0 = combine(r20,r21)
	}
	.falign
// %bb.122:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#10112)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r1:0 = combine(r18,r19)
	}
	{
		v14 = valign(v16,v16,#4)
	}
	{
		v14.w = vinsert(r16)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v14,v14,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.123:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10112)
		r1 = memw(r29+##10368)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#10368)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = r17
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v19,v19,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.124:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10368)
		r1 = memw(r29+##10624)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#10624)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##10496)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v13 = valign(v12,v12,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.125:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10624)
		r1 = memw(r29+##10880)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#10880)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##10752)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v3 = valign(v9,v9,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.126:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#10880)
		r1 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##11008)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v21 = valign(v5,v5,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.127:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v15 = valign(v16,v16,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.128:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11776)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##11520)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v18 = valign(v8,v8,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.129:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#11776)
		r1 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12032)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v6 = valign(v2,v2,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.130:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12032)
		r1 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12288)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v24 = valign(v14,v14,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.131:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12288)
		r1 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12544)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v22 = valign(v10,v10,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.132:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12544)
		r1 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12800)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v7 = valign(v1,v1,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.133:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#12800)
		r1 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13056)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.134:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13056)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.135:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13696)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v20 = valign(v3,v3,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.136:                             // %"for rows.s0.x.x"
                                        //   in Loop: Header=BB120_8 Depth=4
	{
		r2 = add(r29,#13696)
		r5 = add(r29,#10240)
		r4 = #31
		v31 = vmem(r29+#5)
	}                               // 128-byte Folded Reload
	{
		r2 = add(r29,#13184)
		r3 = add(r29,#21760)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		v11 = vmem(r5+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = setbit(r3,#7)
		v15.w = vasr(v21.w,r4)
		v21.cur = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17 = valign(v27,v27,#4)
		v3 = v21
		v5 = vand(v15,v31)
	}
	{
		v2 = vor(v11,v17)
	}
	{
		v18.w = vasr(v2.w,r4)
	}
	{
		v4 = vand(v18,v31)
	}
	{
		v7:6.w = vadd(v3:2.w,v5:4.w)
		v2 = vmem(r29+#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Reload
	{
		r3 = add(r29,#21248)
		r2 = memw(r29+##21952)
		vmem(r3+#0) = v6
	}
	{
		r2 = memw(r29+##21956)
		memw(r29+##8960) = r2
	}
	{
		r2 = memw(r29+##21960)
		memw(r29+##8832) = r2
	}
	{
		r2 = memw(r29+##21964)
		memw(r29+##8704) = r2
	}
	{
		r2 = memw(r29+##21968)
		memw(r29+##8576) = r2
	}
	{
		r2 = memw(r29+##21972)
		memw(r29+##8448) = r2
	}
	{
		r2 = memw(r29+##21976)
		memw(r29+##8444) = r2
	}
	{
		r2 = memw(r29+##21980)
		memw(r29+##8440) = r2
	}
	{
		r2 = memw(r29+##21984)
		memw(r29+##8436) = r2
	}
	{
		r2 = memw(r29+##21988)
		memw(r29+##8432) = r2
	}
	{
		r2 = memw(r29+##21992)
		memw(r29+##8428) = r2
	}
	{
		r2 = memw(r29+##21996)
		memw(r29+##8424) = r2
	}
	{
		r2 = memw(r29+##22000)
		memw(r29+##8420) = r2
	}
	{
		r2 = memw(r29+##22004)
		memw(r29+##8416) = r2
	}
	{
		r2 = memw(r29+##22008)
		memw(r29+##8412) = r2
	}
	{
		r2 = memw(r29+##22012)
		memw(r29+##8408) = r2
	}
	{
		r2 = memw(r29+##21884)
		memw(r29+##9088) = r2
	}
	{
		r2 = memw(r29+##21888)
		memw(r29+##7168) = r2
	}
	{
		r2 = memw(r29+##21892)
		memw(r29+##7040) = r2
	}
	{
		r2 = memw(r29+##21896)
		memw(r29+##6912) = r2
	}
	{
		r2 = memw(r29+##21900)
		memw(r29+##6784) = r2
	}
	{
		r2 = memw(r29+##21904)
		memw(r29+##6656) = r2
	}
	{
		r2 = memw(r29+##21908)
		memw(r29+##6528) = r2
	}
	{
		r2 = memw(r29+##21912)
		memw(r29+##6400) = r2
	}
	{
		r2 = memw(r29+##21916)
		memw(r29+##6272) = r2
	}
	{
		r2 = memw(r29+##21920)
		memw(r29+##6268) = r2
	}
	{
		r2 = memw(r29+##21924)
		memw(r29+##6264) = r2
	}
	{
		r2 = memw(r29+##21928)
		memw(r29+##6260) = r2
	}
	{
		r2 = memw(r29+##21932)
		memw(r29+##6256) = r2
	}
	{
		r2 = memw(r29+##21936)
		memw(r29+##6252) = r2
	}
	{
		r2 = memw(r29+##21940)
		memw(r29+##6248) = r2
	}
	{
		r2 = memw(r29+##21944)
		memw(r29+##6244) = r2
	}
	{
		r2 = memw(r29+##21948)
		memw(r29+##6240) = r2
	}
	{
		r2 = memw(r29+##21816)
		memw(r29+##6236) = r2
	}
	{
		r2 = memw(r29+##21820)
		memw(r29+##5632) = r2
	}
	{
		r2 = memw(r29+##21824)
		memw(r29+##5504) = r2
	}
	{
		r2 = memw(r29+##21828)
		memw(r29+##5376) = r2
	}
	{
		r2 = memw(r29+##21832)
		memw(r29+##5248) = r2
	}
	{
		r2 = memw(r29+##21836)
		memw(r29+##5120) = r2
	}
	{
		r2 = memw(r29+##21840)
		memw(r29+##4992) = r2
	}
	{
		r2 = memw(r29+##21844)
		memw(r29+##4864) = r2
	}
	{
		r2 = memw(r29+##21848)
		memw(r29+##4736) = r2
	}
	{
		r2 = memw(r29+##21852)
		memw(r29+##4608) = r2
	}
	{
		r2 = memw(r29+##21856)
		memw(r29+##4480) = r2
	}
	{
		r2 = memw(r29+##21860)
		memw(r29+##4352) = r2
	}
	{
		r2 = memw(r29+##21864)
		memw(r29+##4348) = r2
	}
	{
		r2 = memw(r29+##21868)
		memw(r29+##4344) = r2
	}
	{
		r2 = memw(r29+##21872)
		memw(r29+##4340) = r2
	}
	{
		r4 = memw(r29+##21880)
		memw(r29+##4328) = r4.new
	}
	{
		r2 = memw(r29+##21876)
		memw(r29+##4336) = r2
	}
	{
		r2 = setbit(r3,#7)
		r4 = add(r29,#13824)
		memw(r29+##4332) = r2
	}                               // 4-byte Folded Spill
	{
		r4 = add(r29,#13952)
		r17 = memw(r29+##21760)
		v28 = vmem(r4+#0)
	}                               // 256-byte Folded Reload
	{
		v29 = vmem(r4+#0)
	}                               // 256-byte Folded Reload
	{
		vmem(r2+#0) = v29
	}
	{
		r3 = add(r29,#22144)
		r2 = memuh(r29+##21472)
		vmem(r3+#0) = v28
	}
	{
		r2 = memuh(r29+##21474)
		memw(r29+##13312) = r2
	}
	{
		r2 = memuh(r29+##21476)
		memw(r29+##13184) = r2
	}
	{
		r2 = memuh(r29+##21478)
		memw(r29+##13056) = r2
	}
	{
		r2 = memuh(r29+##21480)
		memw(r29+##12928) = r2
	}
	{
		r2 = memuh(r29+##21482)
		memw(r29+##12800) = r2
	}
	{
		r2 = memuh(r29+##21484)
		memw(r29+##12672) = r2
	}
	{
		r2 = memuh(r29+##21486)
		memw(r29+##12544) = r2
	}
	{
		r2 = memuh(r29+##21488)
		memw(r29+##12416) = r2
	}
	{
		r2 = memuh(r29+##21490)
		memw(r29+##12288) = r2
	}
	{
		r2 = memuh(r29+##21492)
		memw(r29+##12160) = r2
	}
	{
		r2 = memuh(r29+##21494)
		memw(r29+##12032) = r2
	}
	{
		r2 = memuh(r29+##21496)
		memw(r29+##11904) = r2
	}
	{
		r2 = memuh(r29+##21498)
		memw(r29+##13824) = r2
	}
	{
		r2 = memuh(r29+##21500)
		memw(r29+##13568) = r2
	}
	{
		r2 = memuh(r29+##21502)
		memw(r29+##13696) = r2
	}
	{
		r2 = memuh(r29+##21438)
		memw(r29+##13440) = r2
	}
	{
		r2 = memuh(r29+##21440)
		memw(r29+##11776) = r2
	}
	{
		r2 = memuh(r29+##21442)
		memw(r29+##11520) = r2
	}
	{
		r2 = memuh(r29+##21444)
		memw(r29+##11392) = r2
	}
	{
		r2 = memuh(r29+##21446)
		memw(r29+##11264) = r2
	}
	{
		r2 = memuh(r29+##21448)
		memw(r29+##11136) = r2
	}
	{
		r2 = memuh(r29+##21450)
		memw(r29+##11008) = r2
	}
	{
		r2 = memuh(r29+##21452)
		memw(r29+##10880) = r2
	}
	{
		r2 = memuh(r29+##21454)
		memw(r29+##10752) = r2
	}
	{
		r2 = memuh(r29+##21456)
		memw(r29+##10624) = r2
	}
	{
		r2 = memuh(r29+##21458)
		memw(r29+##10496) = r2
	}
	{
		r2 = memuh(r29+##21460)
		memw(r29+##10368) = r2
	}
	{
		r2 = memuh(r29+##21462)
		memw(r29+##10240) = r2
	}
	{
		r2 = memuh(r29+##21464)
		memw(r29+##10112) = r2
	}
	{
		r2 = memuh(r29+##21466)
		memw(r29+##10108) = r2
	}
	{
		r2 = memuh(r29+##21468)
		memw(r29+##10104) = r2
	}
	{
		r2 = memuh(r29+##21470)
		memw(r29+##10100) = r2
	}
	{
		r2 = memuh(r29+##21404)
		memw(r29+##10096) = r2
	}
	{
		r2 = memuh(r29+##21406)
		memw(r29+##10092) = r2
	}
	{
		r2 = memuh(r29+##21408)
		memw(r29+##10088) = r2
	}
	{
		r2 = memuh(r29+##21410)
		memw(r29+##10084) = r2
	}
	{
		r2 = memuh(r29+##21412)
		memw(r29+##10080) = r2
	}
	{
		r2 = memuh(r29+##21414)
		memw(r29+##10076) = r2
	}
	{
		r2 = memuh(r29+##21416)
		memw(r29+##10072) = r2
	}
	{
		r2 = memuh(r29+##21418)
		memw(r29+##10068) = r2
	}
	{
		r2 = memuh(r29+##21420)
		memw(r29+##10064) = r2
	}
	{
		r2 = memuh(r29+##21422)
		memw(r29+##10060) = r2
	}
	{
		r2 = memuh(r29+##21424)
		memw(r29+##10056) = r2
	}
	{
		r2 = memuh(r29+##21426)
		memw(r29+##10052) = r2
	}
	{
		r2 = memuh(r29+##21428)
		memw(r29+##9856) = r2
	}
	{
		r2 = memuh(r29+##21430)
		memw(r29+##9852) = r2
	}
	{
		r2 = memuh(r29+##21432)
		memw(r29+##9600) = r2
	}
	{
		r2 = memuh(r29+##21434)
		memw(r29+##9472) = r2
	}
	{
		r2 = memuh(r29+##21436)
		memw(r29+##9344) = r2
	}
	{
		r2 = memuh(r29+##21370)
		memw(r29+##9216) = r2
	}
	{
		r2 = memuh(r29+##21372)
		memw(r29+##4320) = r2
	}
	{
		r2 = memuh(r29+##21374)
		memw(r29+##4316) = r2
	}
	{
		r2 = memuh(r29+##21376)
		memw(r29+##4324) = r2
	}
	{
		r2 = memuh(r29+##21378)
		memw(r29+##6008) = r2
	}
	{
		r2 = memuh(r29+##21380)
		memw(r29+##5760) = r2
	}
	{
		r2 = memuh(r29+##21382)
		memw(r29+##6012) = r2
	}
	{
		r2 = memuh(r29+##21384)
		memw(r29+##6016) = r2
	}
	{
		r2 = memuh(r29+##21386)
		memw(r29+##6232) = r2
	}
	{
		r2 = memuh(r29+##21388)
		memw(r29+##7296) = r2
	}
	{
		r2 = memuh(r29+##21390)
		memw(r29+##7424) = r2
	}
	{
		r2 = memuh(r29+##21392)
		memw(r29+##7552) = r2
	}
	{
		r2 = memuh(r29+##21394)
		memw(r29+##7680) = r2
	}
	{
		r2 = memuh(r29+##21396)
		memw(r29+##7808) = r2
	}
	{
		r2 = memuh(r29+##21398)
		memw(r29+##7936) = r2
	}
	{
		r2 = memuh(r29+##21400)
		memw(r29+##8184) = r2
	}
	{
		r2 = memuh(r29+##21402)
		memw(r29+##8188) = r2
	}
	{
		r2 = memuh(r29+##21336)
		memw(r29+##8192) = r2
	}
	{
		r2 = memuh(r29+##21338)
		memw(r29+##4312) = r2
	}
	{
		r2 = memuh(r29+##21340)
		memw(r29+##4096) = r2
	}
	{
		r2 = memuh(r29+##21342)
		memw(r29+#4092) = r2
	}
	{
		r2 = memuh(r29+##21344)
		memw(r29+#4088) = r2
	}
	{
		r2 = memuh(r29+##21346)
		memw(r29+#3584) = r2
	}
	{
		r2 = memuh(r29+##21348)
		memw(r29+#3580) = r2
	}
	{
		r2 = memuh(r29+##21350)
		memw(r29+#3072) = r2
	}
	{
		r2 = memuh(r29+##21352)
		memw(r29+#2944) = r2
	}
	{
		r2 = memuh(r29+##21354)
		memw(r29+#2816) = r2
	}
	{
		r2 = memuh(r29+##21356)
		memw(r29+#2688) = r2
	}
	{
		r2 = memuh(r29+##21358)
		memw(r29+#2560) = r2
	}
	{
		r2 = memuh(r29+##21360)
		memw(r29+#2432) = r2
	}
	{
		r2 = memuh(r29+##21362)
		memw(r29+#2304) = r2
	}
	{
		r2 = memuh(r29+##21364)
		memw(r29+#2176) = r2
	}
	{
		r2 = memuh(r29+##21366)
		memw(r29+#2048) = r2
	}
	{
		r2 = memuh(r29+##21368)
		memw(r29+#1920) = r2
	}
	{
		r2 = memuh(r29+##21302)
		memw(r29+#1792) = r2
	}
	{
		r25 = memuh(r29+##21320)
		memw(r29+#1664) = r2
	}
	{
		r2 = memuh(r29+##21304)
		memw(r29+#1536) = r2.new
	}
	{
		r26 = memuh(r29+##21322)
		r2 = memuh(r29+##21306)
	}
	{
		r27 = memuh(r29+##21324)
		memw(r29+#1408) = r2
	}
	{
		r2 = memuh(r29+##21326)
		memw(r29+#1280) = r2.new
	}
	{
		r21 = memuh(r29+##21312)
		r2 = memuh(r29+##21328)
	}
	{
		r22 = memuh(r29+##21314)
		memw(r29+#1276) = r2
	}
	{
		r2 = memuh(r29+##21330)
		memw(r29+#1024) = r2.new
	}
	{
		r23 = memuh(r29+##21316)
		r2 = memuh(r29+##21332)
	}
	{
		r19 = memuh(r29+##21308)
		r24 = memuh(r29+##21318)
	}
	{
		r2 = memuh(r29+##21334)
		memw(r29+#896) = r2
	}
	{
		r20 = memuh(r29+##21310)
		memw(r29+#768) = r2
	}
	{
		r2 = memuh(r29+##21268)
		r8 = memuh(r29+##21280)
	}
	{
		r4 = memuh(r29+##21270)
		r5 = memuh(r29+##21272)
	}
	{
		r9 = memuh(r29+##21282)
		r14 = memuh(r29+##21288)
	}
	{
		r18 = memuh(r29+##21274)
		r12 = memuh(r29+##21284)
	}
	{
		r15 = memuh(r29+##21290)
		r1 = memuh(r29+##21296)
	}
	{
		r6 = memuh(r29+##21276)
		r13 = memuh(r29+##21286)
	}
	{
		r28 = memuh(r29+##21292)
		r10 = memuh(r29+##21298)
	}
	{
		r7 = memuh(r29+##21278)
		r0 = memuh(r29+##21294)
	}
	{
		r11 = memuh(r29+##21300)
		r16 = memuh(r29+##21248)
	}
	{
		memh(r3+r17<<#1) = r16
	}
	{
		r16 = memw(r29+##21764)
		r17 = memuh(r29+##21250)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21768)
		r17 = memuh(r29+##21252)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21772)
		r17 = memuh(r29+##21254)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21776)
		r17 = memuh(r29+##21256)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21780)
		r17 = memuh(r29+##21258)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21784)
		r17 = memuh(r29+##21260)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21788)
		r17 = memuh(r29+##21262)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21792)
		r17 = memuh(r29+##21264)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21796)
		r17 = memuh(r29+##21266)
	}
	{
		memh(r3+r16<<#1) = r17
	}
	{
		r16 = memw(r29+##21800)
	}
	{
		memh(r3+r16<<#1) = r2
	}
	{
		r2 = memw(r29+##21804)
	}
	{
		memh(r3+r2<<#1) = r4
	}
	{
		r2 = memw(r29+##21808)
	}
	{
		memh(r3+r2<<#1) = r5
	}
	{
		r2 = memw(r29+##21812)
	}
	{
		r2 = memw(r29+##5632)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##5504)
		memh(r3+r2<<#1) = r6
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##5376)
		memh(r3+r2<<#1) = r7
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##5248)
		memh(r3+r2<<#1) = r8
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##5120)
		memh(r3+r2<<#1) = r9
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4992)
		memh(r3+r2<<#1) = r12
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4864)
		memh(r3+r2<<#1) = r13
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4736)
		memh(r3+r2<<#1) = r14
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4608)
		memh(r3+r2<<#1) = r15
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4480)
		memh(r3+r2<<#1) = r28
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4352)
		memh(r3+r2<<#1) = r0
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#1664)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4348)
		memh(r3+r2<<#1) = r1
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4344)
		memh(r3+r2<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4340)
		memh(r3+r2<<#1) = r11
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4336)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#1536)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4332)
		r4 = memw(r29+#1408)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##4328)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##7168)
		memh(r3+r2<<#1) = r19
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##7040)
		memh(r3+r2<<#1) = r20
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6912)
		memh(r3+r2<<#1) = r21
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6784)
		memh(r3+r2<<#1) = r22
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6656)
		memh(r3+r2<<#1) = r23
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6528)
		memh(r3+r2<<#1) = r24
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6400)
		memh(r3+r2<<#1) = r25
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6272)
		memh(r3+r2<<#1) = r26
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#1280)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6268)
		memh(r3+r2<<#1) = r27
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6264)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#1276)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6260)
		r4 = memw(r29+#1024)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6256)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#896)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6252)
		r4 = memw(r29+#768)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6248)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+##4312)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6244)
		r4 = memw(r29+##4096)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6240)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#4092)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##6236)
		r4 = memw(r29+#4088)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8960)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#3584)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8832)
		r4 = memw(r29+#3580)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8704)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#3072)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8576)
		r4 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8448)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#2816)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8444)
		r4 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8440)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#2560)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8436)
		r4 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8432)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+#2304)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8428)
		r4 = memw(r29+#2176)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##8424)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#15104)
		r4 = memw(r29+#2048)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#15232)
		r4 = memw(r29+##8420)
		v6 = vmem(r2+#0)
	}                               // 4-byte Folded Reload
	{
		r2 = #31
		r5 = memw(r29+#1920)
		v7 = vmem(r2+#0)
	}                               // 4-byte Folded Reload
	{
		v19.w = vasr(v6.w,r2)
		r4 = memw(r29+##8416)
		memh(r3+r4<<#1) = r5
	}                               // 4-byte Folded Reload
	{
		v20.w = vasr(v7.w,r2)
		v8 = vand(v19,v31)
		r2 = memw(r29+##8412)
	}                               // 4-byte Folded Reload
	{
		r5 = memw(r29+#1792)
		memh(r3+r4<<#1) = r5.new
	}                               // 4-byte Folded Reload
	{
		v9 = vand(v20,v31)
		r4 = memw(r29+##4320)
		memh(r3+r2<<#1) = r4.new
	}                               // 4-byte Folded Reload
	{
		v31:30.w = vadd(v7:6.w,v9:8.w)
		r2 = memw(r29+##8408)
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+##4316)
		r5 = memw(r29+##9088)
	}                               // 4-byte Folded Reload
	{
		r4 = add(r29,#21504)
		r6 = memw(r29+##4324)
		memh(r3+r2<<#1) = r4
	}                               // 4-byte Folded Reload
	{
		r2 = setbit(r4,#7)
		memh(r3+r5<<#1) = r6
		vmem(r4+#0) = v30
	}
	{
		vmem(r2+#0) = v31
	}
	{
		r2 = memw(r29+##21696)
		memw(r29+##8704) = r2.new
	}
	{
		r2 = memw(r29+##21700)
		memw(r29+##8576) = r2.new
	}
	{
		r2 = memw(r29+##21704)
		memw(r29+##8448) = r2.new
	}
	{
		r2 = memw(r29+##21708)
		memw(r29+##8444) = r2.new
	}
	{
		r2 = memw(r29+##21712)
		memw(r29+##8440) = r2.new
	}
	{
		r2 = memw(r29+##21716)
		memw(r29+##8436) = r2.new
	}
	{
		r2 = memw(r29+##21720)
		memw(r29+##8432) = r2.new
	}
	{
		r2 = memw(r29+##21724)
		memw(r29+##8428) = r2.new
	}
	{
		r2 = memw(r29+##21728)
		memw(r29+##8424) = r2.new
	}
	{
		r2 = memw(r29+##21732)
		memw(r29+##8420) = r2.new
	}
	{
		r2 = memw(r29+##21736)
		memw(r29+##8416) = r2.new
	}
	{
		r2 = memw(r29+##21740)
		memw(r29+##8412) = r2.new
	}
	{
		r2 = memw(r29+##21744)
		memw(r29+##15104) = r2.new
	}
	{
		r2 = memw(r29+##21748)
		memw(r29+##8960) = r2.new
	}
	{
		r2 = memw(r29+##21752)
		memw(r29+##9088) = r2.new
	}
	{
		r2 = memw(r29+##21756)
		memw(r29+##8832) = r2.new
	}
	{
		r2 = memw(r29+##21628)
		memw(r29+##8408) = r2.new
	}
	{
		r2 = memw(r29+##21632)
		memw(r29+##7168) = r2.new
	}
	{
		r2 = memw(r29+##21636)
		memw(r29+##7040) = r2.new
	}
	{
		r20 = memw(r29+##21648)
		r2 = memw(r29+##21640)
	}
	{
		r21 = memw(r29+##21652)
		memw(r29+##6912) = r2
	}
	{
		r22 = memw(r29+##21656)
		r2 = memw(r29+##21680)
	}
	{
		r24 = memw(r29+##21664)
		memw(r29+##6784) = r2
	}
	{
		r2 = memw(r29+##21684)
		memw(r29+##6656) = r2.new
	}
	{
		r23 = memw(r29+##21660)
		r25 = memw(r29+##21668)
	}
	{
		r2 = memw(r29+##21688)
		memw(r29+##6528) = r2.new
	}
	{
		r2 = memw(r29+##21692)
		memw(r29+##6400) = r2.new
	}
	{
		r19 = memw(r29+##21644)
		r10 = memw(r29+##21568)
	}
	{
		r26 = memw(r29+##21672)
		r0 = memw(r29+##21560)
	}
	{
		r11 = memw(r29+##21572)
		r27 = memw(r29+##21676)
	}
	{
		r1 = memw(r29+##21564)
		r14 = memw(r29+##21600)
	}
	{
		r16 = memw(r29+##21576)
		r8 = memw(r29+##21584)
	}
	{
		r12 = memw(r29+##21592)
		r15 = memw(r29+##21604)
	}
	{
		r17 = memw(r29+##21580)
		r9 = memw(r29+##21588)
	}
	{
		r13 = memw(r29+##21596)
		r2 = memw(r29+##21504)
	}
	{
		r28 = memw(r29+##21608)
		r5 = memw(r29+##21616)
	}
	{
		r7 = memw(r29+##21624)
		r4 = memw(r29+##21612)
	}
	{
		r6 = memw(r29+##21620)
		r18 = memw(r29+##6008)
	}
	{
		memh(r3+r2<<#1) = r18
	}
	{
		r2 = memw(r29+##21508)
		r18 = memw(r29+##5760)
	}
	{
		r18 = memw(r29+##6012)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21512)
	}
	{
		r18 = memw(r29+##6016)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21516)
	}
	{
		r18 = memw(r29+##6232)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21520)
	}
	{
		r18 = memw(r29+##7296)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21524)
	}
	{
		r18 = memw(r29+##7424)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21528)
	}
	{
		r18 = memw(r29+##7552)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21532)
	}
	{
		memh(r3+r2<<#1) = r18
	}
	{
		r2 = memw(r29+##21536)
		r18 = memw(r29+##7680)
	}
	{
		memh(r3+r2<<#1) = r18
	}
	{
		r2 = memw(r29+##21540)
		r18 = memw(r29+##7808)
	}
	{
		r18 = memw(r29+##7936)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21544)
	}
	{
		r18 = memw(r29+##8184)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21548)
	}
	{
		r18 = memw(r29+##8188)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21552)
	}
	{
		r18 = memw(r29+##8192)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##21556)
	}
	{
		r18 = memw(r29+##10092)
		memh(r3+r2<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##14080)
		memh(r3+r0<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r1 = #-2
		r18 = memw(r29+##10088)
		memh(r3+r1<<#1) = r18.new
	}                               // 4-byte Folded Reload
	{
		r0 = memw(r29+##14208)
		r18 = memw(r29+##10084)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10080)
		memh(r3+r10<<#1) = r18
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10076)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10072)
		memh(r3+r16<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10068)
		memh(r3+r17<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r8 = add(r29,#20480)
		r10 = memw(r29+##10064)
		memh(r3+r8<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r9 = add(r29,#20736)
		r10 = memw(r29+##10060)
		memh(r3+r9<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r12 = add(r29,#20224)
		r10 = memw(r29+##10056)
		memh(r3+r12<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r13 = add(r29,#20992)
		r10 = memw(r29+##10052)
		memh(r3+r13<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r14 = memw(r29+##14592)
		memh(r3+r14<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##9856)
		memh(r3+r15<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r15 = memw(r29+##14464)
		r10 = memw(r29+##9852)
	}                               // 4-byte Folded Reload
	{
		r28 = memw(r29+##14336)
		memh(r3+r28<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##9600)
		memh(r3+r4<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r4 = memw(r29+##14720)
		r11 = memw(r29+##8408)
	}                               // 4-byte Folded Reload
	{
		r4 = add(r4,#128)
		r10 = memw(r29+##9472)
		memh(r3+r5<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r5 = memw(r29+##14848)
		r10 = memw(r29+##9344)
	}                               // 4-byte Folded Reload
	{
		r5 = add(r5,#-1)
		r6 = ##100926980
		memh(r3+r6<<#1) = r10
	}
	{
		r10 = memw(r29+##9216)
		memh(r3+r7<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r7 = ##17039620
		p0 = cmp.eq(r5,#0)
	}
	{
		r10 = memw(r29+##11776)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##11520)
		r11 = memw(r29+##7168)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##11392)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##7040)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##11264)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##6912)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##11136)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##11008)
		memh(r3+r19<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10880)
		memh(r3+r20<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10752)
		memh(r3+r21<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10624)
		memh(r3+r22<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10496)
		memh(r3+r23<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10368)
		memh(r3+r24<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10240)
		memh(r3+r25<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10112)
		memh(r3+r26<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##6784)
		memh(r3+r27<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10108)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##6656)
		r10 = memw(r29+##10104)
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##6528)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##10100)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##6400)
		r10 = memw(r29+##10096)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13312)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8704)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13184)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8576)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13056)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8448)
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8444)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##12928)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8440)
		r10 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8436)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##12672)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8432)
		r10 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8428)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##12416)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8424)
		r10 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##12160)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8420)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##12032)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8416)
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8412)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##11904)
		memh(r3+r11<<#1) = r10.new
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13824)
		r11 = memw(r29+##15104)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13568)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8960)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13696)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##9088)
	}                               // 4-byte Folded Reload
	{
		r10 = memw(r29+##13440)
		memh(r3+r11<<#1) = r10
	}                               // 4-byte Folded Reload
	{
		r11 = memw(r29+##8832)
	}                               // 4-byte Folded Reload
	{
		if (!p0) jump:nt .LBB120_8
		memh(r3+r11<<#1) = r10
	}
	.falign
.LBB120_137:                            // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r5 = add(pc,##.LCPI120_2@PCREL)
		r7 = add(r29,#17664)
		r2 = memw(r29+#508)
	}                               // 4-byte Folded Reload
	{
		r6 = add(pc,##.LCPI120_3@PCREL)
		r4 = setbit(r7,#7)
		r2 = add(r2,#382)
	}
	{
		v13 = vsplat(r2)
		r5 = add(r29,#3584)
		v14 = vmem(r5+#0)
	}
	{
		r2 = add(pc,##.LCPI120_1@PCREL)
		v12 = v13
		v15 = vmem(r6+#0)
	}
	{
		r3 = add(pc,##.LCPI120_0@PCREL)
		r5 = add(r29,#3712)
		vmem(r5+#0) = v14
	}                               // 256-byte Folded Spill
	{
		r2 = add(r29,#11520)
		v15:14.w = vadd(v13:12.w,v15:14.w)
		v1 = vmem(r2+#0)
		vmem(r5+#0) = v15
	}                               // 256-byte Folded Spill
	{
		r4 = add(r29,#17920)
		v0 = vmem(r3+#0)
		vmem(r4+#0) = v15
	}
	{
		r3 = setbit(r4,#7)
		v17:16.w = vadd(v13:12.w,v1:0.w)
		vmem(r7+#0) = v14
	}
	{
		r2 = add(r29,#11648)
		vmem(r2+#0) = v0
	}                               // 256-byte Folded Spill
	{
		vmem(r2+#0) = v1
	}                               // 256-byte Folded Spill
	{
		r3 = add(r29,#15872)
		vmem(r3+#0) = v17
	}
	{
		vmem(r4+#0) = v16
	}
	{
		r2 = memw(r29+##17916)
		memw(r29+##15104) = r2.new
	}
	{
		r2 = memw(r29+##17912)
		memw(r29+##14208) = r2.new
	}
	{
		r2 = memw(r29+##17908)
		memw(r29+##14080) = r2.new
	}
	{
		r2 = memw(r29+##17904)
		memw(r29+##13824) = r2.new
	}
	{
		r2 = memw(r29+##17900)
		memw(r29+##13696) = r2.new
	}
	{
		r2 = memw(r29+##17896)
		memw(r29+##13568) = r2.new
	}
	{
		r2 = memw(r29+##17892)
		memw(r29+##13440) = r2.new
	}
	{
		r2 = memw(r29+##17888)
		memw(r29+##13312) = r2.new
	}
	{
		r2 = memw(r29+##17884)
		memw(r29+##13184) = r2.new
	}
	{
		r2 = memw(r29+##17880)
		memw(r29+##13056) = r2.new
	}
	{
		r2 = memw(r29+##17876)
		memw(r29+##12928) = r2.new
	}
	{
		r2 = memw(r29+##17872)
		memw(r29+##12800) = r2.new
	}
	{
		r2 = memw(r29+##17868)
		memw(r29+##12672) = r2.new
	}
	{
		r2 = memw(r29+##17864)
		memw(r29+##12544) = r2.new
	}
	{
		r2 = memw(r29+##17856)
		memw(r29+##12416) = r2.new
	}
	{
		r4 = memw(r29+##17860)
		memw(r29+##12288) = r4.new
	}
	{
		r2 = setbit(r3,#7)
		r0 = memw(r29+##17796)
	}
	{
		vmem(r2+#0) = v2
	}
	{
		r2 = memw(r29+##16124)
		vmem(r3+#0) = v2
	}
	{
		r2 = memw(r29+##16120)
		memw(r29+##14848) = r2
	}
	{
		r2 = memw(r29+##16116)
		memw(r29+##14720) = r2
	}
	{
		r23 = memw(r29+##16100)
		memw(r29+##10092) = r23.new
	}
	{
		r2 = memw(r29+##16112)
		memw(r29+##14592) = r2
	}
	{
		r16 = memw(r29+##16096)
		memw(r29+##10088) = r16.new
	}
	{
		r2 = memw(r29+##16108)
		memw(r29+##14464) = r2
	}
	{
		r1 = memw(r29+##16004)
		memw(r29+#3580) = r1.new
	}
	{
		r27 = memw(r29+##16104)
		memw(r29+##10096) = r27.new
	}
	{
		r17 = memw(r29+##16092)
		memw(r29+##10084) = r17.new
	}
	{
		r18 = memw(r29+##16084)
		memw(r29+##10076) = r18.new
	}
	{
		r24 = memw(r29+##16076)
		memw(r29+##10068) = r24.new
	}
	{
		r26 = memw(r29+##16064)
		memw(r29+##10056) = r26.new
	}
	{
		r21 = memw(r29+##16088)
		memw(r29+##10080) = r21.new
	}
	{
		r22 = memw(r29+##16080)
		memw(r29+##10072) = r22.new
	}
	{
		r25 = memw(r29+##16072)
		memw(r29+##10064) = r25.new
	}
	{
		r19 = memw(r29+##16068)
		memw(r29+##10052) = r19.new
	}
	{
		call ##__hexagon_modsi3
		memw(r29+##14336) = r2
	}                               // 4-byte Folded Spill
	.falign
// %bb.138:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##17792)
	}
	{
		r1 = memw(r29+##16000)
		memw(r29+##11392) = r1.new
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.139:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#12160)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##17800)
	}
	{
		r1 = memw(r29+##16008)
		memw(r29+##11264) = r1.new
	}
	{
		v22 = valign(v21,v21,#4)
	}
	{
		v22.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v22,v22,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.140:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##17804)
	}
	{
		r1 = memw(r29+##16012)
		memw(r29+##11136) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v11,v11,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.141:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##17808)
	}
	{
		r1 = memw(r29+##16016)
		memw(r29+##11008) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v20,v20,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.142:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##17812)
	}
	{
		r1 = memw(r29+##16020)
		memw(r29+##10880) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v23,v23,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.143:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##17816)
	}
	{
		r1 = memw(r29+##16024)
		memw(r29+##10752) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v19,v19,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.144:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##17820)
	}
	{
		r1 = memw(r29+##16028)
		memw(r29+##10624) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v12,v12,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.145:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##17824)
	}
	{
		r1 = memw(r29+##16032)
		memw(r29+##10496) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v9,v9,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.146:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##17828)
	}
	{
		r1 = memw(r29+##16036)
		memw(r29+##10368) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v5,v5,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.147:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##17832)
	}
	{
		r1 = memw(r29+##16040)
		memw(r29+##10240) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v16,v16,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.148:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##17836)
	}
	{
		r1 = memw(r29+##16044)
		memw(r29+##10112) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v8,v8,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.149:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##17840)
	}
	{
		r1 = memw(r29+##16048)
		memw(r29+##10108) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v2,v2,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.150:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##17844)
	}
	{
		r1 = memw(r29+##16052)
		memw(r29+##10104) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v14,v14,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.151:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##17848)
	}
	{
		r1 = memw(r29+##16056)
		memw(r29+##10100) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v10,v10,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.152:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
	}
	{
		r2 = add(r29,#12160)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##17852)
	}
	{
		r1 = memw(r29+##16060)
		memw(r29+##10060) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v1,v1,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.153:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
		r1 = r19
	}
	{
		r2 = #64
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		v23 = valign(v0,v0,#4)
	}
	{
		r2 = add(r29,#9856)
		v29 = vror(v23,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v29
	}                               // 128-byte Folded Spill
	.falign
// %bb.154:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r19 = r0
		r1 = r26
		r0 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.155:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = r25
	}
	{
		r2 = add(r29,#12544)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		v25 = valign(v24,v24,#4)
	}
	{
		v25.w = vinsert(r19)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v25,v25,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.156:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12544)
		r1 = r24
	}
	{
		r2 = add(r29,#12672)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v21,v21,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.157:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12672)
		r1 = r22
	}
	{
		r2 = add(r29,#12800)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.158:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12800)
		r1 = r18
	}
	{
		r2 = add(r29,#12928)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v18,v18,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.159:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12928)
		r1 = r21
	}
	{
		r2 = add(r29,#13056)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v29 = valign(v22,v22,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.160:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13056)
		r1 = r17
	}
	{
		r2 = add(r29,#13184)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v30 = valign(v7,v7,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.161:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13184)
		r1 = r16
	}
	{
		r2 = add(r29,#13312)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.162:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13312)
		r1 = r23
	}
	{
		r2 = add(r29,#13440)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v11 = valign(v24,v24,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.163:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = r27
	}
	{
		r2 = add(r29,#13568)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v20 = valign(v25,v25,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.164:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13696)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v23 = valign(v4,v4,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.165:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13696)
		r1 = memw(r29+##14464)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13824)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##13824)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.166:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13824)
		r1 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##14080)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v12 = valign(v27,v27,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.167:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14208)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.168:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14208)
		r1 = memw(r29+##14848)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#15104)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##15104)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v22 = valign(v28,v28,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.169:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15104)
		r24 = memw(r29+##15968)
	}
	{
		r2 = memw(r29+##17788)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##17784)
		memw(r29+##13184) = r2
	}
	{
		v9.w = vinsert(r0)
		memw(r29+##13056) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##17780)
		memw(r29+##12928) = r2.new
	}
	{
		v26 = valign(v9,v9,#4)
		r2 = memw(r29+##17776)
	}
	{
		r2 = memw(r29+##17772)
		memw(r29+##12800) = r2
	}
	{
		r2 = memw(r29+##17768)
		memw(r29+##12672) = r2
	}
	{
		r2 = memw(r29+##17764)
		memw(r29+##12544) = r2
	}
	{
		r2 = memw(r29+##17760)
		memw(r29+##12416) = r2
	}
	{
		r2 = memw(r29+##17756)
		memw(r29+##12288) = r2
	}
	{
		r2 = memw(r29+##17752)
		memw(r29+##12160) = r2
	}
	{
		r2 = memw(r29+##17748)
		memw(r29+##12032) = r2
	}
	{
		r2 = memw(r29+##17744)
		memw(r29+##11904) = r2
	}
	{
		r2 = memw(r29+##17740)
		memw(r29+##11776) = r2
	}
	{
		r2 = memw(r29+##17736)
		memw(r29+##7936) = r2
	}
	{
		r2 = memw(r29+##17728)
		memw(r29+##7808) = r2
	}
	{
		r2 = memw(r29+##17732)
		memw(r29+##7680) = r2
	}
	{
		r2 = memw(r29+##17724)
		memw(r29+##7552) = r2
	}
	{
		r2 = memw(r29+##17720)
		memw(r29+##7424) = r2
	}
	{
		r2 = memw(r29+##15996)
		memw(r29+##7296) = r2
	}
	{
		r2 = memw(r29+##15992)
		memw(r29+##14208) = r2
	}
	{
		r2 = memw(r29+##15988)
		memw(r29+##14080) = r2
	}
	{
		r2 = memw(r29+##15984)
		memw(r29+##13824) = r2
	}
	{
		r2 = memw(r29+##15980)
		memw(r29+##13696) = r2
	}
	{
		r2 = memw(r29+##15976)
		memw(r29+##13568) = r2
	}
	{
		r0 = memw(r29+##17668)
		memw(r29+##13440) = r2
	}
	{
		r2 = memw(r29+##15972)
		memw(r29+##13312) = r2.new
	}
	{
		r2 = add(r29,#9856)
	}
	{
		r2 = add(r29,#15232)
		v30 = vmem(r2+#0)
		memw(r29+##8444) = r24
	}                               // 128-byte Folded Reload
	{
		v9 = vor(v30,v26)
		r25 = memw(r29+##15964)
		vmem(r2+#0) = v9.new
	}
	{
		r18 = memw(r29+##15960)
		memw(r29+##8440) = r25
	}
	{
		r16 = memw(r29+##15936)
		memw(r29+##8436) = r18
	}
	{
		r1 = memw(r29+##15876)
		memw(r29+##8188) = r16
	}
	{
		r26 = memw(r29+##15956)
		memw(r29+##8184) = r1
	}
	{
		r20 = memw(r29+##15948)
		memw(r29+##8432) = r26
	}
	{
		r21 = memw(r29+##15932)
		memw(r29+##8424) = r20
	}
	{
		r27 = memw(r29+##15952)
		memw(r29+##8412) = r21
	}
	{
		r23 = memw(r29+##15944)
		memw(r29+##8428) = r27
	}
	{
		r19 = memw(r29+##15940)
		memw(r29+##8420) = r23
	}
	{
		r17 = memw(r29+##15928)
		memw(r29+##8416) = r19
	}
	{
		call ##__hexagon_modsi3
		memw(r29+##8408) = r17
	}                               // 4-byte Folded Spill
	.falign
// %bb.170:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r22 = r0
		r0 = memw(r29+##17664)
	}
	{
		r1 = memw(r29+##15872)
		memw(r29+##9856) = r1.new
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.171:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#9600)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##17672)
	}
	{
		r1 = memw(r29+##15880)
		memw(r29+##9852) = r1.new
	}
	{
		v28 = valign(v27,v27,#4)
	}
	{
		v28.w = vinsert(r22)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v28,v28,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.172:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#9600)
	}
	{
		r2 = add(r29,#9472)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##17676)
	}
	{
		r1 = memw(r29+##15884)
		memw(r29+##9600) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v17,v17,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.173:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#9472)
	}
	{
		r2 = add(r29,#9344)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##17680)
	}
	{
		r1 = memw(r29+##15888)
		memw(r29+##9472) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v13,v13,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.174:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#9344)
	}
	{
		r2 = add(r29,#9216)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##17684)
	}
	{
		r1 = memw(r29+##15892)
		memw(r29+##9344) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v3,v3,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.175:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#9216)
	}
	{
		r2 = add(r29,#9088)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##17688)
	}
	{
		r1 = memw(r29+##15896)
		memw(r29+##9216) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v21,v21,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.176:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#9088)
	}
	{
		r2 = add(r29,#8960)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##17692)
	}
	{
		r1 = memw(r29+##15900)
		memw(r29+##9088) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v15,v15,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.177:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#8960)
	}
	{
		r2 = add(r29,#8832)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##17696)
	}
	{
		r1 = memw(r29+##15904)
		memw(r29+##8960) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v18,v18,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.178:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#8832)
	}
	{
		r2 = add(r29,#8704)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##17700)
	}
	{
		r1 = memw(r29+##15908)
		memw(r29+##8832) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v22,v22,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.179:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#8704)
	}
	{
		r2 = add(r29,#8576)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##17704)
	}
	{
		r1 = memw(r29+##15912)
		memw(r29+##8704) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v7,v7,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.180:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#8576)
	}
	{
		r2 = add(r29,#8448)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##17708)
	}
	{
		r1 = memw(r29+##15916)
		memw(r29+##8576) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v6,v6,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.181:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#8448)
	}
	{
		r2 = add(r29,#8192)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##17712)
	}
	{
		r1 = memw(r29+##15920)
		memw(r29+##8448) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v24,v24,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.182:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#8192)
	}
	{
		r2 = add(r29,#7168)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##17716)
	}
	{
		r1 = memw(r29+##15924)
		memw(r29+##8192) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v25,v25,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.183:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7168)
		r1 = r17
	}
	{
		r2 = add(r29,#7296)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##7296)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.184:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7296)
		r1 = r21
	}
	{
		r2 = add(r29,#7424)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##7424)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v19 = valign(v30,v30,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.185:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7424)
		r1 = r19
	}
	{
		r2 = #64
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##7552)
	}                               // 4-byte Folded Reload
	{
		v29 = valign(v28,v28,#4)
	}
	{
		r2 = add(r29,#7552)
		v26 = vror(v29,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v26
	}                               // 128-byte Folded Spill
	.falign
// %bb.186:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r19 = r0
		r1 = r16
		r0 = memw(r29+##7680)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.187:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = r23
	}
	{
		r2 = add(r29,#7808)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##7808)
	}                               // 4-byte Folded Reload
	{
		v31 = valign(v30,v30,#4)
	}
	{
		v31.w = vinsert(r19)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v31,v31,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.188:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7808)
		r1 = r20
	}
	{
		r2 = add(r29,#7936)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##7936)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v2 = valign(v31,v31,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.189:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7936)
		r1 = r27
	}
	{
		r2 = add(r29,#11776)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v14 = valign(v11,v11,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.190:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11776)
		r1 = r26
	}
	{
		r2 = add(r29,#11904)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v10 = valign(v20,v20,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.191:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11904)
		r1 = r18
	}
	{
		r2 = add(r29,#12032)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v1 = valign(v23,v23,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.192:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12032)
		r1 = r25
	}
	{
		r2 = add(r29,#12160)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v17 = valign(v19,v19,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.193:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
		r1 = r24
	}
	{
		r2 = add(r29,#12288)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v13 = valign(v12,v12,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.194:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12288)
		r1 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12416)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v3 = valign(v9,v9,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.195:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12416)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12544)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v21 = valign(v5,v5,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.196:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12544)
		r1 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12672)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v15 = valign(v16,v16,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.197:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12672)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12800)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v18 = valign(v8,v8,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.198:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12800)
		r1 = memw(r29+##13824)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12928)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v6 = valign(v2,v2,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.199:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12928)
		r1 = memw(r29+##14080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13056)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v24 = valign(v14,v14,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.200:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13056)
		r1 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13184)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v15 = valign(v10,v10,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.201:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r4 = memw(r29+##18164)
		memw(r29+##12288) = r4.new
	}
	{
		r2 = add(r29,#13184)
		r3 = add(r29,#15616)
		r4 = memw(r29+##18160)
	}
	{
		r4 = memw(r29+##18156)
		memw(r29+##12160) = r4
	}
	{
		r4 = memw(r29+##18152)
		memw(r29+##12032) = r4
	}
	{
		v20 = vmem(r2+#0)
		memw(r29+##11904) = r4
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##18172)
		r4 = memw(r29+##18148)
	}
	{
		v20.w = vinsert(r0)
		memw(r29+##11776) = r4
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##18168)
		memw(r29+##12544) = r2
	}
	{
		r4 = memw(r29+##18144)
		memw(r29+##5760) = r4.new
	}
	{
		r4 = memw(r29+##18140)
		memw(r29+##5632) = r4.new
	}
	{
		r4 = memw(r29+##18136)
		memw(r29+##5504) = r4.new
	}
	{
		r4 = memw(r29+##18132)
		memw(r29+##5376) = r4.new
	}
	{
		r4 = memw(r29+##18128)
		memw(r29+##5248) = r4.new
	}
	{
		r4 = memw(r29+##18124)
		memw(r29+##5120) = r4.new
	}
	{
		r4 = memw(r29+##18120)
		memw(r29+##4992) = r4.new
	}
	{
		r4 = memw(r29+##18112)
		memw(r29+##4864) = r4.new
	}
	{
		r4 = memw(r29+##18116)
		memw(r29+##4736) = r4.new
	}
	{
		r2 = setbit(r3,#7)
		memw(r29+##12416) = r2
	}                               // 4-byte Folded Spill
	{
		r0 = memw(r29+##18052)
		v0 = vmem(r29+#4)
	}
	{
		vmem(r2+#0) = v0
	}
	{
		v0 = valign(v20,v20,#4)
		r2 = memw(r29+##15868)
		v28 = vmem(r29+#4)
	}
	{
		memw(r29+##13184) = r2
		vmem(r3+#0) = v28
	}
	{
		r2 = memw(r29+##15864)
		memw(r29+##13056) = r2.new
	}
	{
		r2 = memw(r29+##15860)
		memw(r29+##12928) = r2.new
	}
	{
		r2 = memw(r29+##15856)
		memw(r29+##12800) = r2.new
	}
	{
		r2 = memw(r29+##15852)
		memw(r29+##12672) = r2.new
	}
	{
		r2 = add(r29,#15104)
		r23 = memw(r29+##15844)
	}
	{
		r2 = add(r29,#15232)
		v16 = vmem(r2+#0)
		memw(r29+##6264) = r23
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#7552)
		r17 = memw(r29+##15836)
		v17 = vmem(r2+#0)
	}
	{
		r2 = add(r29,#15104)
		r27 = memw(r29+##15848)
		v27 = vmem(r2+#0)
	}
	{
		r16 = memw(r29+##15840)
		r21 = memw(r29+##15832)
	}
	{
		v16 = vor(v27,v0)
		memw(r29+##6252) = r21
	}                               // 4-byte Folded Spill
	{
		r18 = memw(r29+##15828)
		memw(r29+##6248) = r18.new
	}
	{
		r2 = add(r29,#15232)
		memw(r29+##6268) = r27
		vmem(r2+#0) = v16
	}                               // 256-byte Folded Spill
	{
		memw(r29+##6260) = r16
		vmem(r2+#0) = v17
	}                               // 256-byte Folded Spill
	{
		r1 = memw(r29+##15748)
		memw(r29+##6008) = r1.new
	}
	{
		r24 = memw(r29+##15820)
		memw(r29+##6240) = r24.new
	}
	{
		r26 = memw(r29+##15808)
		memw(r29+##6012) = r26.new
	}
	{
		r22 = memw(r29+##15824)
		memw(r29+##6244) = r22.new
	}
	{
		r25 = memw(r29+##15816)
		memw(r29+##6236) = r25.new
	}
	{
		r19 = memw(r29+##15812)
		memw(r29+##6232) = r19.new
	}
	{
		call ##__hexagon_modsi3
		memw(r29+##6256) = r17
	}                               // 4-byte Folded Spill
	.falign
// %bb.202:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##18048)
	}
	{
		r1 = memw(r29+##15744)
		memw(r29+##7936) = r1.new
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.203:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#7680)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##18056)
	}
	{
		r1 = memw(r29+##15752)
		memw(r29+##7808) = r1.new
	}
	{
		v2 = valign(v1,v1,#4)
	}
	{
		v2.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v2,v2,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.204:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7680)
	}
	{
		r2 = add(r29,#7552)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##18060)
	}
	{
		r1 = memw(r29+##15756)
		memw(r29+##7680) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v4,v4,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.205:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7552)
	}
	{
		r2 = add(r29,#7424)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##18064)
	}
	{
		r1 = memw(r29+##15760)
		memw(r29+##7552) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v26,v26,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.206:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7424)
	}
	{
		r2 = add(r29,#7296)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##18068)
	}
	{
		r1 = memw(r29+##15764)
		memw(r29+##7424) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v27,v27,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.207:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7296)
	}
	{
		r2 = add(r29,#7168)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##18072)
	}
	{
		r1 = memw(r29+##15768)
		memw(r29+##7296) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v0,v0,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.208:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7168)
	}
	{
		r2 = add(r29,#7040)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##18076)
	}
	{
		r1 = memw(r29+##15772)
		memw(r29+##7168) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v28,v28,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.209:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#7040)
	}
	{
		r2 = add(r29,#6912)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##18080)
	}
	{
		r1 = memw(r29+##15776)
		memw(r29+##7040) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v29,v29,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.210:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6912)
	}
	{
		r2 = add(r29,#6784)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##18084)
	}
	{
		r1 = memw(r29+##15780)
		memw(r29+##6912) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v30,v30,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.211:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6784)
	}
	{
		r2 = add(r29,#6656)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##18088)
	}
	{
		r1 = memw(r29+##15784)
		memw(r29+##6784) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v31,v31,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.212:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6656)
	}
	{
		r2 = add(r29,#6528)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##18092)
	}
	{
		r1 = memw(r29+##15788)
		memw(r29+##6656) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v11,v11,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.213:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6528)
	}
	{
		r2 = add(r29,#6400)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##18096)
	}
	{
		r1 = memw(r29+##15792)
		memw(r29+##6528) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v20,v20,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.214:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6400)
	}
	{
		r2 = add(r29,#6272)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##18100)
	}
	{
		r1 = memw(r29+##15796)
		memw(r29+##6400) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v23,v23,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.215:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6272)
	}
	{
		r2 = add(r29,#6016)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##18104)
	}
	{
		r1 = memw(r29+##15800)
		memw(r29+##6272) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v19,v19,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.216:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#6016)
	}
	{
		r2 = add(r29,#4608)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##18108)
	}
	{
		r1 = memw(r29+##15804)
		memw(r29+##6016) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v12,v12,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.217:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4608)
		r1 = r19
	}
	{
		r2 = #64
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##4736)
	}                               // 4-byte Folded Reload
	{
		v4 = valign(v29,v29,#4)
	}
	{
		r2 = add(r29,#4736)
		v31 = vror(v4,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v31
	}                               // 128-byte Folded Spill
	.falign
// %bb.218:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r19 = r0
		r1 = r26
		r0 = memw(r29+##4864)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.219:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = r25
	}
	{
		r2 = add(r29,#4992)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##4992)
	}                               // 4-byte Folded Reload
	{
		v5 = valign(v3,v3,#4)
	}
	{
		v5.w = vinsert(r19)
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v5,v5,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.220:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4992)
		r1 = r24
	}
	{
		r2 = add(r29,#5120)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##5120)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v7 = valign(v1,v1,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.221:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5120)
		r1 = r22
	}
	{
		r2 = add(r29,#5248)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##5248)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.222:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5248)
		r1 = r18
	}
	{
		r2 = add(r29,#5376)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##5376)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.223:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5376)
		r1 = r21
	}
	{
		r2 = add(r29,#5504)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##5504)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v3,v3,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.224:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5504)
		r1 = r17
	}
	{
		r2 = add(r29,#5632)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##5632)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v21,v21,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.225:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5632)
		r1 = r16
	}
	{
		r2 = add(r29,#5760)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##5760)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.226:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5760)
		r1 = r23
	}
	{
		r2 = add(r29,#11776)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v18,v18,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.227:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11776)
		r1 = r27
	}
	{
		r2 = add(r29,#11904)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v29 = valign(v22,v22,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.228:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11904)
		r1 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12032)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v30 = valign(v7,v7,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.229:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12032)
		r1 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12160)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.230:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12160)
		r1 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12288)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v11 = valign(v24,v24,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.231:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12288)
		r1 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12416)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v20 = valign(v25,v25,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.232:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12416)
		r1 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#12544)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v7 = valign(v4,v4,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.233:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#12544)
		r19 = memw(r29+##15712)
	}
	{
		r2 = memw(r29+##18044)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r2 = memw(r29+##18040)
		memw(r29+#3072) = r2
	}
	{
		r2 = memw(r29+##18036)
		memw(r29+#2944) = r2
	}
	{
		v6 = valign(v5,v5,#4)
		r2 = memw(r29+##18032)
		memw(r29+#2816) = r2
	}
	{
		r2 = memw(r29+##18028)
		memw(r29+#2560) = r2
	}
	{
		r2 = memw(r29+##18024)
		memw(r29+#2432) = r2
	}
	{
		r2 = memw(r29+##18020)
		memw(r29+#2304) = r2
	}
	{
		r2 = memw(r29+##18016)
		memw(r29+#2176) = r2
	}
	{
		r2 = memw(r29+##18012)
		memw(r29+#2048) = r2
	}
	{
		r2 = memw(r29+##18008)
		memw(r29+#1920) = r2
	}
	{
		r2 = memw(r29+##18004)
		memw(r29+#1792) = r2
	}
	{
		r2 = memw(r29+##18000)
		memw(r29+#1664) = r2
	}
	{
		r2 = memw(r29+##17996)
		memw(r29+#1536) = r2
	}
	{
		r2 = memw(r29+##17992)
		memw(r29+#1408) = r2
	}
	{
		r2 = memw(r29+##17984)
		memw(r29+#1280) = r2
	}
	{
		r2 = memw(r29+##17988)
		memw(r29+#1276) = r2
	}
	{
		r2 = memw(r29+##17980)
		memw(r29+#1024) = r2
	}
	{
		r2 = memw(r29+##17976)
		memw(r29+#896) = r2
	}
	{
		r2 = memw(r29+##15740)
		memw(r29+#768) = r2
	}
	{
		r2 = memw(r29+##15736)
		memw(r29+##12544) = r2
	}
	{
		r2 = memw(r29+##15732)
		memw(r29+##12416) = r2
	}
	{
		r2 = memw(r29+##15728)
		memw(r29+##12288) = r2
	}
	{
		r2 = memw(r29+##15724)
		memw(r29+##12160) = r2
	}
	{
		r2 = memw(r29+##15720)
		memw(r29+##12032) = r2
	}
	{
		r0 = memw(r29+##17924)
		memw(r29+##11904) = r2
	}
	{
		r2 = memw(r29+##15716)
		memw(r29+##11776) = r2.new
	}
	{
		r2 = add(r29,#4736)
	}
	{
		r2 = add(r29,#2688)
		v11 = vmem(r2+#0)
		memw(r29+##4348) = r19
	}                               // 128-byte Folded Reload
	{
		v18 = vor(v11,v6)
		r20 = memw(r29+##15708)
		vmem(r2+#0) = v18.new
	}
	{
		r26 = memw(r29+##15704)
		memw(r29+##4344) = r20
	}
	{
		r24 = memw(r29+##15680)
		memw(r29+##4340) = r26
	}
	{
		r1 = memw(r29+##15620)
		memw(r29+#4092) = r24
	}
	{
		r21 = memw(r29+##15700)
		memw(r29+#4088) = r1
	}
	{
		r27 = memw(r29+##15692)
		memw(r29+##4336) = r21
	}
	{
		r17 = memw(r29+##15676)
		memw(r29+##4328) = r27
	}
	{
		r22 = memw(r29+##15696)
		memw(r29+##4316) = r17
	}
	{
		r23 = memw(r29+##15688)
		memw(r29+##4332) = r22
	}
	{
		r16 = memw(r29+##15684)
		memw(r29+##4324) = r23
	}
	{
		r25 = memw(r29+##15672)
		memw(r29+##4320) = r16
	}
	{
		call ##__hexagon_modsi3
		memw(r29+##4312) = r25
	}                               // 4-byte Folded Spill
	.falign
// %bb.234:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r18 = r0
		r0 = memw(r29+##17920)
	}
	{
		r1 = memw(r29+##15616)
		memw(r29+##5760) = r1.new
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.235:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
	}
	{
		r2 = add(r29,#5504)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##17928)
	}
	{
		r1 = memw(r29+##15624)
		memw(r29+##5632) = r1.new
	}
	{
		v7 = valign(v8,v8,#4)
	}
	{
		v7.w = vinsert(r18)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v7,v7,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.236:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5504)
	}
	{
		r2 = add(r29,#5376)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##17932)
	}
	{
		r1 = memw(r29+##15628)
		memw(r29+##5504) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v9,v9,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.237:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5376)
	}
	{
		r2 = add(r29,#5248)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##17936)
	}
	{
		r1 = memw(r29+##15632)
		memw(r29+##5376) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v5,v5,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.238:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5248)
	}
	{
		r2 = add(r29,#5120)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##17940)
	}
	{
		r1 = memw(r29+##15636)
		memw(r29+##5248) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v16,v16,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.239:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#5120)
	}
	{
		r2 = add(r29,#4992)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##17944)
	}
	{
		r1 = memw(r29+##15640)
		memw(r29+##5120) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v8,v8,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.240:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4992)
	}
	{
		r2 = add(r29,#4864)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##17948)
	}
	{
		r1 = memw(r29+##15644)
		memw(r29+##4992) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v2,v2,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.241:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4864)
	}
	{
		r2 = add(r29,#4736)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##17952)
	}
	{
		r1 = memw(r29+##15648)
		memw(r29+##4864) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v14,v14,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.242:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4736)
	}
	{
		r2 = add(r29,#4608)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##17956)
	}
	{
		r1 = memw(r29+##15652)
		memw(r29+##4736) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v10,v10,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.243:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4608)
	}
	{
		r2 = add(r29,#4480)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##17960)
	}
	{
		r1 = memw(r29+##15656)
		memw(r29+##4608) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v1,v1,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.244:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4480)
	}
	{
		r2 = add(r29,#4352)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##17964)
	}
	{
		r1 = memw(r29+##15660)
		memw(r29+##4480) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v17,v17,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.245:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4352)
	}
	{
		r2 = add(r29,#4096)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##17968)
	}
	{
		r1 = memw(r29+##15664)
		memw(r29+##4352) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v13,v13,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.246:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#4096)
	}
	{
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##17972)
	}
	{
		r1 = memw(r29+##15668)
		memw(r29+##4096) = r1.new
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v3,v3,#4)
		vmem(r29+#2) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.247:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r1 = r25
		v26 = vmem(r29+#2)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+#768)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r29+#6) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.248:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r1 = r17
		v27 = vmem(r29+#6)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+#896)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v9 = valign(v27,v27,#4)
		vmem(r29+#7) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.249:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = #64
		r1 = r16
		v30 = vmem(r29+#7)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+#1024)
	}                               // 4-byte Folded Reload
	{
		v12 = valign(v30,v30,#4)
	}
	{
		r2 = add(r29,#1024)
		v4 = vror(v12,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v4
	}                               // 128-byte Folded Spill
	.falign
// %bb.250:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r16 = r0
		r1 = r24
		r0 = memw(r29+#1276)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.251:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = r23
	}
	{
		r2 = add(r29,#1280)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+#1280)
	}                               // 4-byte Folded Reload
	{
		v10 = valign(v9,v9,#4)
	}
	{
		v10.w = vinsert(r16)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v10,v10,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.252:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1280)
		r1 = r27
	}
	{
		r2 = add(r29,#1408)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+#1408)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.253:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1408)
		r1 = r22
	}
	{
		r2 = add(r29,#1536)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+#1536)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v5 = valign(v28,v28,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.254:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1536)
		r1 = r21
	}
	{
		r2 = add(r29,#1664)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+#1664)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.255:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = r26
	}
	{
		r2 = add(r29,#1792)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+#1792)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v8 = valign(v30,v30,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.256:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = r20
	}
	{
		r2 = add(r29,#1920)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+#1920)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v2 = valign(v31,v31,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.257:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = r19
	}
	{
		r2 = add(r29,#2048)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+#2048)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v14 = valign(v11,v11,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.258:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+#2176)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v10 = valign(v20,v20,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.259:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+#2304)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v1 = valign(v23,v23,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.260:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v17 = valign(v19,v19,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.261:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v13 = valign(v12,v12,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.262:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v3 = valign(v9,v9,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.263:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v21 = valign(v5,v5,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.264:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r1 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#3072)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+#3072)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v16,v16,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.265:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#3072)
		r8 = add(r29,#1024)
		r7 = #31
		v8 = vmem(r29+#5)
	}                               // 128-byte Folded Reload
	{
		r2 = add(r29,#2688)
		r6 = add(r29,#19968)
		r23 = add(r29,#22144)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r2 = add(r29,#15104)
		v16.w = vasr(v3.w,r7)
		v3.cur = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = add(r29,#15232)
		v11.w = vasr(v4.w,r7)
		v19 = v3
		v4.cur = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#15488)
		v14 = valign(v18,v18,#4)
		v15.w = vasr(v5.w,r7)
		v5.cur = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r4 = setbit(r6,#7)
		v27:26 = vcombine(v5,v4)
		v18 = vor(v25,v14)
		v25.cur = vmem(r8+#0)
	}                               // 128-byte Folded Reload
	{
		v23 = vand(v16,v8)
		v20 = vand(v11,v8)
		r2 = memw(r29+#508)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r5 = add(r2,#383)
		v17.w = vasr(v18.w,r7)
		v21 = vand(v15,v8)
		r1 = memw(r29+#3580)
	}                               // 4-byte Folded Reload
	{
		v5 = vsplat(r5)
		r5 = add(r29,#3584)
		r26 = add(r29,#22144)
		v22 = vand(v17,v8)
	}
	{
		r5 = add(r29,#3712)
		v29:28.w = vadd(v19:18.w,v23:22.w)
		v13 = v1
		v8 = vmem(r5+#0)
	}                               // 256-byte Folded Reload
	{
		r27 = add(r29,#19712)
		v11:10.w = vadd(v27:26.w,v21:20.w)
		v9 = vmem(r5+#0)
		vmem(r4+#0) = v29
	}                               // 256-byte Folded Reload
	{
		v12 = v1
		r4 = memw(r29+##20160)
		vmem(r6+#0) = v28
	}
	{
		r0 = setbit(r27,#7)
		v6 = v1
		r5 = memw(r29+##20164)
	}
	{
		r2 = add(r29,#17152)
		r6 = memw(r29+##20168)
		r4 = memuh(r23+r4<<#1)
	}
	{
		r3 = setbit(r2,#7)
		v4 = v5
		r10 = memw(r29+##20176)
	}
	{
		r2 = add(r29,#17408)
		r28 = memuh(r23+r10<<#1)
		r7 = memw(r29+##20172)
	}
	{
		r2 = setbit(r2,#7)
		v9:8.w = vadd(v5:4.w,v9:8.w)
		r12 = memw(r29+##20184)
	}
	{
		r9 = memw(r29+##20180)
		r17 = memw(r29+##20192)
	}
	{
		r19 = memw(r29+##20200)
		r13 = memw(r29+##20188)
	}
	{
		r21 = memw(r29+##20208)
		r18 = memw(r29+##20196)
	}
	{
		r20 = memw(r29+##20204)
		r22 = memw(r29+##20212)
	}
	{
		r15 = memuh(r23+r13<<#1)
		r13 = memuh(r23+r18<<#1)
	}
	{
		r18 = memw(r29+##20096)
		r6 = memuh(r23+r6<<#1)
	}
	{
		r7 = memuh(r23+r7<<#1)
		r5 = memuh(r23+r5<<#1)
	}
	{
		r11 = combine(r7.l,r6.l)
		r16 = combine(r5.l,r4.l)
		r10 = memuh(r23+r9<<#1)
		r9 = memuh(r23+r20<<#1)
	}
	{
		r10 = combine(r10.l,r28.l)
		r7 = memuh(r23+r22<<#1)
		r6 = memuh(r23+r21<<#1)
	}
	{
		r22 = memw(r29+##20100)
		r20 = memw(r29+##20104)
	}
	{
		r6 = combine(r7.l,r6.l)
		r21 = memw(r29+##20108)
		r18 = memuh(r23+r18<<#1)
	}
	{
		r4 = memw(r29+##20216)
		r22 = memuh(r23+r22<<#1)
	}
	{
		r8 = memuh(r23+r19<<#1)
		r5 = memw(r29+##20220)
	}
	{
		r8 = combine(r9.l,r8.l)
		r19 = memuh(r23+r20<<#1)
		r24 = memw(r29+##19972)
	}
	{
		r21 = combine(r22.l,r18.l)
		r20 = memuh(r23+r21<<#1)
		r22 = memw(r29+##19968)
	}
	{
		v12.w = vinsert(r21)
		r19 = combine(r20.l,r19.l)
		r14 = memuh(r23+r12<<#1)
		r4 = memuh(r23+r4<<#1)
	}
	{
		r12 = memuh(r23+r17<<#1)
		r17 = memw(r29+##20092)
	}
	{
		r13 = combine(r13.l,r12.l)
		v28 = valign(v12,v12,#4)
		r5 = memuh(r23+r5<<#1)
		r24 = memuh(r26+r24<<#1)
	}
	{
		v28.w = vinsert(r19)
		r17 = memuh(r23+r17<<#1)
		r23 = memuh(r26+r22<<#1)
	}
	{
		r23 = combine(r24.l,r23.l)
		r22 = memw(r29+##19976)
	}
	{
		v28 = valign(v28,v28,#4)
		r25 = memw(r29+##19980)
	}
	{
		v13.w = vinsert(r23)
		r18 = memw(r29+##20112)
		r22 = memuh(r26+r22<<#1)
	}
	{
		r24 = memw(r29+##19984)
		r23 = memuh(r26+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		v13 = valign(v13,v13,#4)
		r25 = memw(r29+##19988)
	}
	{
		v13.w = vinsert(r22)
		r18 = memuh(r26+r18<<#1)
		r22 = memuh(r26+r24<<#1)
	}
	{
		r23 = memuh(r26+r25<<#1)
		r24 = memw(r29+##19992)
	}
	{
		r22 = combine(r23.l,r22.l)
		v18 = valign(v13,v13,#4)
		r25 = memw(r29+##19996)
	}
	{
		v18.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r24 = memw(r29+##20000)
	}
	{
		r23 = memuh(r26+r25<<#1)
		r25 = memw(r29+##20004)
	}
	{
		r22 = combine(r23.l,r22.l)
		v19 = valign(v18,v18,#4)
		r20 = memw(r29+##20128)
	}
	{
		v19.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r23 = memuh(r26+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		r24 = memw(r29+##20008)
		r20 = memuh(r26+r20<<#1)
	}
	{
		v20 = valign(v19,v19,#4)
		r25 = memw(r29+##20012)
	}
	{
		v20.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r24 = memw(r29+##20016)
	}
	{
		r23 = memuh(r26+r25<<#1)
		r25 = memw(r29+##20020)
	}
	{
		r22 = combine(r23.l,r22.l)
		v21 = valign(v20,v20,#4)
		r19 = memw(r29+##20064)
	}
	{
		v21.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r23 = memuh(r26+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		r24 = memw(r29+##20024)
		r19 = memuh(r26+r19<<#1)
	}
	{
		v22 = valign(v21,v21,#4)
		r25 = memw(r29+##20028)
	}
	{
		v22.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r24 = memw(r29+##20032)
	}
	{
		r23 = memuh(r26+r25<<#1)
		r25 = memw(r29+##20036)
	}
	{
		r22 = combine(r23.l,r22.l)
		v23 = valign(v22,v22,#4)
		r21 = memw(r29+##20120)
	}
	{
		v23.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r23 = memuh(r26+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		r24 = memw(r29+##20040)
		r21 = memuh(r26+r21<<#1)
	}
	{
		v24 = valign(v23,v23,#4)
		r23 = memw(r29+##20048)
	}
	{
		r25 = memw(r29+##20044)
	}
	{
		v24.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
	}
	{
		r24 = memuh(r26+r25<<#1)
		r25 = memw(r29+##20052)
	}
	{
		r22 = combine(r24.l,r22.l)
		v25 = valign(v24,v24,#4)
		r24 = memw(r29+##20116)
	}
	{
		v25.w = vinsert(r22)
		r24 = memuh(r26+r24<<#1)
		r22 = memuh(r26+r23<<#1)
	}
	{
		r18 = combine(r24.l,r18.l)
		r23 = memuh(r26+r25<<#1)
		r25 = memw(r29+##20056)
	}
	{
		r22 = combine(r23.l,r22.l)
		r25 = memuh(r26+r25<<#1)
		r23 = memw(r29+##20060)
	}
	{
		v15 = valign(v25,v25,#4)
		r24 = memw(r29+##20132)
	}
	{
		v15.w = vinsert(r22)
		v28.w = vinsert(r18)
		r23 = memuh(r26+r23<<#1)
	}
	{
		r23 = combine(r23.l,r25.l)
		r22 = memw(r29+##20124)
		r24 = memuh(r26+r24<<#1)
	}
	{
		r20 = combine(r24.l,r20.l)
		v30 = valign(v28,v28,#4)
		r18 = memw(r29+##20136)
	}
	{
		v29 = valign(v15,v15,#4)
		r18 = memuh(r26+r18<<#1)
		r25 = memw(r29+##20068)
	}
	{
		r22 = memuh(r26+r22<<#1)
		r24 = memw(r29+##20072)
	}
	{
		v29.w = vinsert(r23)
		r21 = combine(r22.l,r21.l)
		r23 = memw(r29+##20140)
	}
	{
		v30.w = vinsert(r21)
		r22 = memw(r29+##20144)
		r25 = memuh(r26+r25<<#1)
	}
	{
		r19 = combine(r25.l,r19.l)
		r25 = memw(r29+##20148)
		r23 = memuh(r26+r23<<#1)
	}
	{
		v31 = valign(v29,v29,#4)
		r25 = memuh(r26+r25<<#1)
		r22 = memuh(r26+r22<<#1)
	}
	{
		v31.w = vinsert(r19)
		v0 = valign(v30,v30,#4)
		r21 = memw(r29+##20152)
	}
	{
		v0.w = vinsert(r20)
		r22 = combine(r25.l,r22.l)
		r21 = memuh(r26+r21<<#1)
		r24 = memuh(r26+r24<<#1)
	}
	{
		r18 = combine(r23.l,r18.l)
		r19 = memw(r29+##20156)
	}
	{
		v7 = valign(v31,v31,#4)
		r23 = memw(r29+##20080)
	}
	{
		v2 = valign(v0,v0,#4)
		r19 = memuh(r26+r19<<#1)
		r20 = memw(r29+##20076)
	}
	{
		v2.w = vinsert(r18)
		r23 = memuh(r26+r23<<#1)
		r18 = memw(r29+##20084)
	}
	{
		v3 = valign(v2,v2,#4)
		r18 = memuh(r26+r18<<#1)
		r25 = memw(r29+##20088)
	}
	{
		r18 = combine(r18.l,r23.l)
		r19 = combine(r19.l,r21.l)
		r20 = memuh(r26+r20<<#1)
	}
	{
		v3.w = vinsert(r22)
		r20 = combine(r20.l,r24.l)
		r25 = memuh(r26+r25<<#1)
	}
	{
		v7.w = vinsert(r20)
		r17 = combine(r17.l,r25.l)
	}
	{
		v12 = valign(v3,v3,#4)
		vmem(r27+#0) = v10
	}
	{
		r22 = memw(r29+##19712)
		vmem(r0+#0) = v11
	}
	{
		v12.w = vinsert(r19)
		v29 = valign(v7,v7,#4)
		r0 = memw(r29+##19716)
	}
	{
		v29.w = vinsert(r18)
		r23 = memw(r29+##19720)
		r22 = memuh(r26+r22<<#1)
	}
	{
		v16 = valign(v12,v12,#4)
		r21 = memw(r29+##19728)
		r0 = memuh(r26+r0<<#1)
	}
	{
		r0 = combine(r0.l,r22.l)
		r20 = memw(r29+##19732)
	}
	{
		v16.w = vinsert(r16)
		r22 = memw(r29+##19724)
	}
	{
		v6.w = vinsert(r0)
		r25 = memw(r29+##19904)
		r0 = memuh(r26+r23<<#1)
	}
	{
		v17 = valign(v29,v29,#4)
		r12 = memw(r29+##19920)
		r18 = memuh(r26+r22<<#1)
	}
	{
		v17.w = vinsert(r17)
		r0 = combine(r18.l,r0.l)
		v7 = valign(v16,v16,#4)
		r28 = memuh(r26+r25<<#1)
	}
	{
		v7.w = vinsert(r11)
		v6 = valign(v6,v6,#4)
		r11 = memw(r29+##19736)
	}
	{
		v6.w = vinsert(r0)
		r21 = combine(r15.l,r14.l)
		r0 = memuh(r26+r21<<#1)
		r18 = memuh(r26+r20<<#1)
	}
	{
		r0 = combine(r18.l,r0.l)
		v11 = valign(v7,v7,#4)
		r23 = memw(r29+##19740)
	}
	{
		v11.w = vinsert(r10)
		v10 = valign(v6,v6,#4)
		r12 = memuh(r26+r12<<#1)
		r11 = memuh(r26+r11<<#1)
	}
	{
		v10.w = vinsert(r0)
		r22 = memuh(r26+r23<<#1)
		r14 = memw(r29+##19912)
	}
	{
		r11 = combine(r22.l,r11.l)
		v17 = valign(v17,v17,#4)
		r0 = memw(r29+##19908)
	}
	{
		r10 = memw(r29+##19744)
		r15 = memw(r29+##19916)
	}
	{
		v18 = valign(v11,v11,#4)
		r10 = memuh(r26+r10<<#1)
		r20 = memw(r29+##19748)
	}
	{
		v18.w = vinsert(r21)
		v13 = valign(v10,v10,#4)
		r18 = memw(r29+##19752)
	}
	{
		v13.w = vinsert(r11)
		r23 = memw(r29+##19756)
		r11 = memuh(r26+r20<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		v20 = valign(v18,v18,#4)
		r21 = memw(r29+##19768)
	}
	{
		v19 = valign(v13,v13,#4)
		r11 = memuh(r26+r18<<#1)
		r22 = memuh(r26+r23<<#1)
	}
	{
		v20.w = vinsert(r13)
		v19.w = vinsert(r10)
		r13 = memw(r29+##19760)
	}
	{
		r11 = combine(r22.l,r11.l)
		r13 = memuh(r26+r13<<#1)
		r9 = memw(r29+##19764)
	}
	{
		v23 = valign(v20,v20,#4)
		r9 = memuh(r26+r9<<#1)
		r10 = memw(r29+##19840)
	}
	{
		v23.w = vinsert(r8)
		v21 = valign(v19,v19,#4)
		r10 = memuh(r26+r10<<#1)
		r16 = memuh(r26+r21<<#1)
	}
	{
		v21.w = vinsert(r11)
		r0 = memuh(r26+r0<<#1)
		r8 = memw(r29+##19776)
	}
	{
		r9 = combine(r9.l,r13.l)
		r19 = memuh(r26+r8<<#1)
		r11 = memw(r29+##19772)
	}
	{
		v23 = valign(v23,v23,#4)
		r11 = memuh(r26+r11<<#1)
		r13 = memw(r29+##19780)
	}
	{
		v23.w = vinsert(r6)
		r28 = combine(r0.l,r28.l)
		v22 = valign(v21,v21,#4)
		r13 = memuh(r26+r13<<#1)
	}
	{
		v22.w = vinsert(r9)
		r13 = combine(r13.l,r19.l)
		r20 = memw(r29+##19848)
	}
	{
		r11 = combine(r11.l,r16.l)
		r6 = add(r29,#11520)
		r9 = memw(r29+##19844)
	}
	{
		v24 = valign(v22,v22,#4)
		r16 = memuh(r26+r20<<#1)
		r8 = memw(r29+##19924)
	}
	{
		r9 = memuh(r26+r9<<#1)
		r18 = memw(r29+##19860)
	}
	{
		v24.w = vinsert(r11)
		r9 = combine(r9.l,r10.l)
		r11 = memw(r29+##19852)
	}
	{
		v1.w = vinsert(r9)
		r10 = memw(r29+##19784)
	}
	{
		v25 = valign(v24,v24,#4)
		r10 = memuh(r26+r10<<#1)
		r11 = memuh(r26+r11<<#1)
	}
	{
		v25.w = vinsert(r13)
		r11 = combine(r11.l,r16.l)
		r9 = memw(r29+##19788)
	}
	{
		v1 = valign(v1,v1,#4)
		r13 = memw(r29+##19856)
		r16 = memuh(r26+r18<<#1)
	}
	{
		v1.w = vinsert(r11)
		r13 = memuh(r26+r13<<#1)
		r11 = memw(r29+##19864)
	}
	{
		r13 = combine(r16.l,r13.l)
		v15 = valign(v25,v25,#4)
		r23 = memw(r29+##19792)
	}
	{
		r9 = memuh(r26+r9<<#1)
		r11 = memuh(r26+r11<<#1)
	}
	{
		r9 = combine(r9.l,r10.l)
		v14 = valign(v1,v1,#4)
		r10 = memw(r29+##19868)
	}
	{
		v15.w = vinsert(r9)
		r9 = memw(r29+##19872)
		r16 = memuh(r26+r23<<#1)
	}
	{
		v14.w = vinsert(r13)
		r10 = memuh(r26+r10<<#1)
		r13 = memw(r29+##19796)
	}
	{
		v30 = valign(v15,v15,#4)
		r9 = memuh(r26+r9<<#1)
		r22 = memw(r29+##19884)
	}
	{
		r10 = combine(r10.l,r11.l)
		r11 = memw(r29+##19876)
		r13 = memuh(r26+r13<<#1)
	}
	{
		r13 = combine(r13.l,r16.l)
		v28 = valign(v14,v14,#4)
		r16 = memuh(r26+r22<<#1)
	}
	{
		v28.w = vinsert(r10)
		r10 = memw(r29+##19880)
	}
	{
		r11 = memuh(r26+r11<<#1)
		r21 = memw(r29+##19892)
	}
	{
		r9 = combine(r11.l,r9.l)
		v29 = valign(v28,v28,#4)
		r11 = memw(r29+##19800)
	}
	{
		v29.w = vinsert(r9)
		r9 = memw(r29+##19804)
		r10 = memuh(r26+r10<<#1)
	}
	{
		v30.w = vinsert(r13)
		r10 = combine(r16.l,r10.l)
		r13 = memw(r29+##19888)
	}
	{
		v31 = valign(v29,v29,#4)
		r11 = memuh(r26+r11<<#1)
		r16 = memuh(r26+r21<<#1)
	}
	{
		v31.w = vinsert(r10)
		v2 = valign(v30,v30,#4)
		r10 = memw(r29+##19896)
	}
	{
		r9 = memuh(r26+r9<<#1)
		r13 = memuh(r26+r13<<#1)
	}
	{
		r9 = combine(r9.l,r11.l)
		r13 = combine(r16.l,r13.l)
		r11 = memw(r29+##19900)
	}
	{
		v0 = valign(v31,v31,#4)
		r10 = memuh(r26+r10<<#1)
		r20 = memw(r29+##19808)
	}
	{
		v2.w = vinsert(r9)
		r11 = memuh(r26+r11<<#1)
		r14 = memuh(r26+r14<<#1)
	}
	{
		v0.w = vinsert(r13)
		r10 = combine(r11.l,r10.l)
		r13 = memw(r29+##19812)
	}
	{
		v12 = valign(v2,v2,#4)
		r15 = memuh(r26+r15<<#1)
		r16 = memuh(r26+r20<<#1)
	}
	{
		r14 = combine(r15.l,r14.l)
		v3 = valign(v0,v0,#4)
		r13 = memuh(r26+r13<<#1)
		r8 = memuh(r26+r8<<#1)
	}
	{
		v3.w = vinsert(r10)
		r13 = combine(r13.l,r16.l)
		r10 = memw(r29+##19816)
	}
	{
		r9 = memw(r29+##19928)
		r19 = memw(r29+##19820)
	}
	{
		v12.w = vinsert(r13)
		r8 = combine(r8.l,r12.l)
		v26 = valign(v3,v3,#4)
		r10 = memuh(r26+r10<<#1)
	}
	{
		r16 = memuh(r26+r19<<#1)
		r11 = memw(r29+##19932)
	}
	{
		v26.w = vinsert(r28)
		r10 = combine(r16.l,r10.l)
		v16 = valign(v12,v12,#4)
		r9 = memuh(r26+r9<<#1)
	}
	{
		r0 = memw(r29+##19936)
		r27 = memw(r29+##19940)
	}
	{
		r18 = memw(r29+##19952)
		r11 = memuh(r26+r11<<#1)
	}
	{
		v16.w = vinsert(r10)
		v27 = valign(v26,v26,#4)
		r10 = memw(r29+##19960)
	}
	{
		v27.w = vinsert(r14)
		r9 = combine(r11.l,r9.l)
		r0 = memuh(r26+r0<<#1)
		r16 = memuh(r26+r18<<#1)
	}
	{
		r14 = memw(r29+##19956)
		r11 = memw(r29+##19836)
	}
	{
		v7 = valign(v16,v16,#4)
		r13 = memw(r29+##19944)
		r28 = memuh(r26+r27<<#1)
	}
	{
		v28 = valign(v27,v27,#4)
		r11 = memuh(r26+r11<<#1)
		r15 = memw(r29+##19948)
	}
	{
		v28.w = vinsert(r8)
		r28 = combine(r28.l,r0.l)
		r12 = memw(r29+##19824)
	}
	{
		r8 = memw(r29+##19828)
		r12 = memuh(r26+r12<<#1)
	}
	{
		v29 = valign(v28,v28,#4)
		r8 = memuh(r26+r8<<#1)
		r13 = memuh(r26+r13<<#1)
	}
	{
		v29.w = vinsert(r9)
		r7 = combine(r8.l,r12.l)
		r9 = memw(r29+##19832)
	}
	{
		r12 = #64
		r0 = memw(r29+##19964)
		r15 = memuh(r26+r15<<#1)
	}
	{
		v7.w = vinsert(r7)
		v6 = valign(v29,v29,#4)
		r9 = memuh(r26+r9<<#1)
		r14 = memuh(r26+r14<<#1)
	}
	{
		v6.w = vinsert(r28)
		r10 = memuh(r26+r10<<#1)
	}
	{
		r0 = memuh(r26+r0<<#1)
	}
	{
		r3 = add(r29,#17152)
		v9 = vror(v17,r12)
		vmem(r3+#0) = v9
	}
	{
		r3 = combine(r15.l,r13.l)
		v14 = valign(v6,v6,#4)
		vmem(r3+#0) = v8
	}
	{
		v14.w = vinsert(r3)
		r6 = add(r29,#11648)
		r3 = add(r29,#17408)
		v24 = vmem(r6+#0)
	}                               // 256-byte Folded Reload
	{
		v25 = vmem(r6+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = combine(r11.l,r9.l)
		v4 = valign(v7,v7,#4)
		v29:28.w = vadd(v5:4.w,v25:24.w)
		vmem(r2+#0) = v29.new
	}
	{
		v4.w = vinsert(r2)
		v13 = valign(v14,v14,#4)
		vmem(r3+#0) = v28
	}
	{
		v5 = valign(v23,v23,#4)
		r2 = memw(r29+##17404)
		memw(r29+#3072) = r2.new
	}
	{
		r2 = combine(r14.l,r16.l)
		r3 = memw(r29+##17400)
		memw(r29+#2944) = r3.new
	}
	{
		v18 = valign(v4,v4,#4)
		r3 = memw(r29+##17396)
		memw(r29+#2816) = r3.new
	}
	{
		v13.w = vinsert(r2)
		r2 = memw(r29+##17392)
		memw(r29+#2688) = r2.new
	}
	{
		r3 = combine(r5.l,r4.l)
		v21 = vror(v18,r12)
		r2 = memw(r29+##17388)
	}
	{
		v5.w = vinsert(r3)
		v19 = valign(v13,v13,#4)
		memw(r29+#2560) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##17384)
		memw(r29+#2432) = r2.new
	}
	{
		r2 = combine(r0.l,r10.l)
		v20 = valign(v5,v5,#4)
		r22 = memw(r29+##17380)
	}
	{
		v19.w = vinsert(r2)
		r2 = add(r29,#15104)
		r24 = memw(r29+##17372)
	}
	{
		r23 = memw(r29+##17376)
		r21 = memw(r29+##17364)
	}
	{
		r16 = memw(r29+##17356)
		r25 = memw(r29+##17368)
	}
	{
		v22 = valign(v19,v19,#4)
		v14 = vor(v9,v20)
		r0 = memw(r29+##17284)
	}
	{
		r27 = memw(r29+##17360)
	}
	{
		r2 = add(r29,#15232)
		r17 = memw(r29+##17352)
		vmem(r2+#0) = v14
	}
	{
		v15 = vor(v21,v22)
		vmem(r2+#0) = v15.new
	}                               // 256-byte Folded Spill
	{
		r18 = memw(r29+##17344)
		r19 = memw(r29+##17348)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.266:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##17280)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	.falign
// %bb.267:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##17288)
	}
	{
		v25 = valign(v24,v24,#4)
	}
	{
		v25.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v25,v25,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.268:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##17292)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v31,v31,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.269:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##11008)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##17296)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v11,v11,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.270:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10880)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##17300)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v15,v15,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.271:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10752)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##17304)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v21,v21,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.272:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10624)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##17308)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v15,v15,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.273:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10496)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##17312)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v18,v18,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.274:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10368)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##17316)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v22,v22,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.275:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##17320)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v7,v7,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.276:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10112)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##17324)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v6,v6,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.277:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10108)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##17328)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v24,v24,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.278:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10104)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##17332)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v25,v25,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.279:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10100)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##17336)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v4,v4,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.280:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10060)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##17340)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v26,v26,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.281:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10052)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = r19
	}
	{
		v1 = valign(v20,v20,#4)
	}
	{
		r2 = add(r29,#1920)
		v5 = vror(v1,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v5
	}                               // 128-byte Folded Spill
	.falign
// %bb.282:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r19 = r0
		r0 = r18
		r1 = memw(r29+##10056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.283:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##10064)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = r17
	}
	{
		v27 = valign(v26,v26,#4)
	}
	{
		v27.w = vinsert(r19)
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v27,v27,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.284:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10068)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r16
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v8,v8,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.285:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10072)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v2,v2,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.286:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10076)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v14,v14,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.287:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v10,v10,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.288:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10084)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v1,v1,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.289:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10088)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.290:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10092)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.291:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##10096)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v3,v3,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.292:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v21,v21,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.293:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##14464)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2688)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.294:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2688)
		r1 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v18,v18,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.295:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v29 = valign(v22,v22,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.296:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r1 = memw(r29+##14848)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#3072)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+#3072)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v7,v7,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.297:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#3072)
		r1 = memw(r29+##8184)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##17276)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r2 = memw(r29+##17272)
		memw(r29+#2944) = r2
	}
	{
		r2 = memw(r29+##17268)
		memw(r29+#2816) = r2
	}
	{
		v28 = valign(v16,v16,#4)
		r2 = memw(r29+##17264)
		memw(r29+#2688) = r2
	}
	{
		r2 = memw(r29+##17260)
		memw(r29+#2560) = r2
	}
	{
		r2 = memw(r29+##17256)
		memw(r29+#2432) = r2
	}
	{
		r2 = memw(r29+##17252)
		memw(r29+#2304) = r2
	}
	{
		r2 = memw(r29+##17248)
		memw(r29+#2176) = r2
	}
	{
		r2 = add(r29,#1920)
		r25 = memw(r29+##17216)
		memw(r29+#2048) = r2
	}
	{
		r2 = add(r29,#3200)
		r22 = memw(r29+##17244)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13 = vor(v9,v28)
		r0 = memw(r29+##17156)
	}
	{
		r21 = memw(r29+##17236)
		r24 = memw(r29+##17228)
	}
	{
		r23 = memw(r29+##17240)
		r27 = memw(r29+##17232)
	}
	{
		r16 = memw(r29+##17224)
	}
	{
		r17 = memw(r29+##17220)
		vmem(r2+#0) = v13
	}
	{
		r18 = memw(r29+##17212)
		r19 = memw(r29+##17208)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.298:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##17152)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##9856)
	}                               // 4-byte Folded Reload
	.falign
// %bb.299:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##9852)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##17160)
	}
	{
		v30 = valign(v29,v29,#4)
	}
	{
		v30.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v30,v30,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.300:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##9600)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##17164)
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v27,v27,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.301:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##9472)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##17168)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v0,v0,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.302:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##9344)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##17172)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v28,v28,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.303:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##9216)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##17176)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v29,v29,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.304:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##9088)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##17180)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v30,v30,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.305:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8960)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##17184)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v31,v31,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.306:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8832)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##17188)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v11,v11,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.307:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8704)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##17192)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v20,v20,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.308:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8576)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##17196)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v23,v23,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.309:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8448)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##17200)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v19,v19,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.310:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8192)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##17204)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v12,v12,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.311:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8408)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.312:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8412)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = r18
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v24,v24,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.313:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8416)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = r17
	}
	{
		v31 = valign(v23,v23,#4)
	}
	{
		r2 = add(r29,#1920)
		v8 = vror(v31,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v8
	}                               // 128-byte Folded Spill
	.falign
// %bb.314:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r25
		r1 = memw(r29+##8188)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.315:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##8420)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = r16
	}
	{
		v2 = valign(v0,v0,#4)
	}
	{
		v2.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v2,v2,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.316:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##8424)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v25,v25,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.317:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##8428)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v4,v4,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.318:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##8432)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.319:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##8436)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v27,v27,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.320:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##8440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.321:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##8444)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+#2048)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v5 = valign(v28,v28,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.322:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+#2176)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.323:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+#2304)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v8 = valign(v30,v30,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.324:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v2 = valign(v31,v31,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.325:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v14 = valign(v11,v11,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.326:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##13824)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2688)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v10 = valign(v20,v20,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.327:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2688)
		r1 = memw(r29+##14080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v1 = valign(v23,v23,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.328:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v19,v19,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.329:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r20 = memw(r29+##17636)
	}
	{
		r2 = memw(r29+##17660)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r2 = memw(r29+##17656)
		memw(r29+#2944) = r2
	}
	{
		r2 = memw(r29+##17652)
		memw(r29+#2816) = r2
	}
	{
		v3 = valign(v8,v8,#4)
		r2 = memw(r29+##17648)
		memw(r29+#2688) = r2
	}
	{
		r2 = memw(r29+##17644)
		memw(r29+#2560) = r2
	}
	{
		r2 = memw(r29+##17640)
		memw(r29+#2432) = r2
	}
	{
		r2 = add(r29,#3072)
		r1 = memw(r29+##6008)
		memw(r29+#2304) = r2
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#3200)
		r21 = memw(r29+##17632)
		v14 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#1920)
		r22 = memw(r29+##17628)
		v15 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#3072)
		r19 = memw(r29+##17620)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14 = vor(v16,v3)
		r24 = memw(r29+##17612)
	}
	{
		r0 = memw(r29+##17540)
		r23 = memw(r29+##17624)
	}
	{
		r27 = memw(r29+##17616)
		r16 = memw(r29+##17608)
	}
	{
		r2 = add(r29,#3200)
		vmem(r2+#0) = v14
	}                               // 256-byte Folded Spill
	{
		vmem(r2+#0) = v15
	}                               // 256-byte Folded Spill
	{
		r25 = memw(r29+##17600)
		r17 = memw(r29+##17604)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.330:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r18 = r0
		r0 = memw(r29+##17536)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##7936)
	}                               // 4-byte Folded Reload
	.falign
// %bb.331:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##7808)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##17544)
	}
	{
		v12 = valign(v7,v7,#4)
	}
	{
		v12.w = vinsert(r18)
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v12,v12,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.332:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##7680)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##17548)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v9,v9,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.333:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##7552)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##17552)
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v5,v5,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.334:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##7424)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##17556)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v16,v16,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.335:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##7296)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##17560)
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v8,v8,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.336:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##7168)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##17564)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v2,v2,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.337:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##7040)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##17568)
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v14,v14,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.338:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6912)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##17572)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v10,v10,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.339:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6784)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##17576)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v1,v1,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.340:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6656)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##17580)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v17,v17,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.341:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6528)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##17584)
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v13,v13,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.342:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6400)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##17588)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v3,v3,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.343:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6272)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##17592)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v21,v21,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.344:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6016)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##17596)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v15,v15,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.345:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6232)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = r17
	}
	{
		v10 = valign(v19,v19,#4)
	}
	{
		r2 = add(r29,#1792)
		v14 = vror(v10,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v14
	}                               // 128-byte Folded Spill
	.falign
// %bb.346:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r25
		r1 = memw(r29+##6012)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.347:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##6236)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r16
	}
	{
		v6 = valign(v16,v16,#4)
	}
	{
		v6.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v6,v6,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.348:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v12,v12,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.349:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6244)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v9,v9,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.350:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6248)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v5,v5,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.351:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6252)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v16,v16,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.352:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6256)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v8,v8,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.353:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6260)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v2,v2,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.354:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = r20
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v14,v14,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.355:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##6268)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+#2304)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v22 = valign(v10,v10,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.356:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v7 = valign(v1,v1,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.357:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.358:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2688)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.359:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2688)
		r1 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v3,v3,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.360:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v21,v21,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.361:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r1 = memw(r29+#4088)
		r25 = memw(r29+##17472)
	}                               // 4-byte Folded Reload
	{
		r2 = memw(r29+##17532)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r2 = memw(r29+##17528)
		memw(r29+#2944) = r2
	}
	{
		r2 = memw(r29+##17524)
		memw(r29+#2816) = r2
	}
	{
		v11 = valign(v2,v2,#4)
		r2 = memw(r29+##17520)
		memw(r29+#2560) = r2
	}
	{
		r2 = memw(r29+##17516)
		memw(r29+#2432) = r2
	}
	{
		r2 = memw(r29+##17512)
		memw(r29+#2304) = r2
	}
	{
		r2 = memw(r29+##17508)
		memw(r29+#2176) = r2
	}
	{
		r2 = memw(r29+##17504)
		memw(r29+#2048) = r2
	}
	{
		r2 = add(r29,#1792)
		r22 = memw(r29+##17500)
		memw(r29+#1920) = r2
	}
	{
		r2 = add(r29,#2688)
		r21 = memw(r29+##17492)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24 = vor(v2,v11)
		r0 = memw(r29+##17412)
	}
	{
		r24 = memw(r29+##17484)
		r23 = memw(r29+##17496)
	}
	{
		r27 = memw(r29+##17488)
		r16 = memw(r29+##17480)
	}
	{
		r17 = memw(r29+##17476)
		vmem(r2+#0) = v24
	}
	{
		r18 = memw(r29+##17468)
		r19 = memw(r29+##17464)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.362:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##17408)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##5760)
	}                               // 4-byte Folded Reload
	.falign
// %bb.363:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##5632)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##17416)
	}
	{
		v23 = valign(v17,v17,#4)
	}
	{
		v23.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v23,v23,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.364:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##5504)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##17420)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v18,v18,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.365:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##5376)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##17424)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v22,v22,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.366:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##5248)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##17428)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v7,v7,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.367:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##5120)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##17432)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v6,v6,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.368:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4992)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##17436)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v24,v24,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.369:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4864)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##17440)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v25,v25,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.370:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4736)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##17444)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v4,v4,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.371:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4608)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##17448)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v26,v26,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.372:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4480)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##17452)
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v27,v27,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.373:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4352)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##17456)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v0,v0,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.374:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4096)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##17460)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v28,v28,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.375:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.376:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4316)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = r18
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v18,v18,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.377:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4320)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = r17
	}
	{
		v14 = valign(v12,v12,#4)
	}
	{
		r2 = add(r29,#1792)
		v26 = vror(v14,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v26
	}                               // 128-byte Folded Spill
	.falign
// %bb.378:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r25
		r1 = memw(r29+#4092)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.379:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##4324)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1664)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = r16
	}
	{
		v9 = valign(v15,v15,#4)
	}
	{
		v9.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v9,v9,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.380:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = memw(r29+##4328)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1664)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v22,v22,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.381:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = memw(r29+##4332)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1664)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v7,v7,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.382:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = memw(r29+##4336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1664)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.383:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = memw(r29+##4340)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1664)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v24,v24,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.384:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = memw(r29+##4344)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1664)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v25,v25,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.385:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1664)
		r1 = memw(r29+##4348)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+#1920)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v23 = valign(v4,v4,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.386:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+#2048)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.387:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+#2176)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v12 = valign(v27,v27,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.388:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+#2304)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.389:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v5 = valign(v28,v28,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.390:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.391:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v8 = valign(v30,v30,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.392:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v31,v31,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.393:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r3 = add(r29,#2688)
		r9 = #31
		r4 = memw(r29+#480)
	}                               // 4-byte Folded Reload
	{
		r2 = #31
		r8 = add(r29,#19456)
		r27 = add(r29,#19200)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r3 = add(r29,#3072)
		v8.w = vasr(v22.w,r2)
		v22.cur = vmem(r3+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = add(r29,#15488)
		v4.w = vasr(v20.w,r2)
		v31 = v22
		v20.cur = vmem(r3+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = ##1431655766
		v5 = valign(v6,v6,#4)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r7:6 = mpyu(r4,r2)
		r5 = setbit(r8,#7)
		r3 = add(r29,#3200)
		r2 = memw(r29+#508)
	}                               // 4-byte Folded Reload
	{
		r6 = setbit(r2,#0)
		r2 = add(r29,#1792)
		v1 = vand(v8,v12)
		v12.cur = vmem(r29+#5)
	}                               // 128-byte Folded Reload
	{
		r4 -= mpyi(r7,#3)
		r1 = memw(r29+#3580)
		v21 = vmem(r3+#0)
	}                               // 256-byte Folded Reload
	{
		r7 = asl(r4,#8)
		r2 = add(r29,#16640)
		v30 = vor(v27,v5)
		v27.cur = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r3 = setbit(r2,#7)
		v18.w = vasr(v21.w,r9)
		v16 = v14
		v24 = vand(v4,v12)
	}
	{
		r7 = setbit(r7,#7)
		r4 = add(r26,r7)
		v13.w = vasr(v30.w,r9)
		v25 = vand(v18,v12)
	}
	{
		v0 = vand(v13,v12)
		v7 = v14
		v5 = v14
		v4 = v14
	}
	{
		r0 = setbit(r27,#7)
		r2 = add(r29,#16896)
		v3:2.w = vadd(v31:30.w,v1:0.w)
		v15:14.w = vadd(v21:20.w,v25:24.w)
	}
	{
		r2 = setbit(r2,#7)
		v3 = vsplat(r6)
		r5 = add(r26,r7)
		vmem(r5+#0) = v3
	}
	{
		r10 = memw(r29+##19648)
		vmem(r8+#0) = v2
	}
	{
		r7 = memw(r29+##19652)
		r12 = memw(r29+##19664)
	}
	{
		r11 = memw(r29+##19656)
		r13 = memw(r29+##19668)
	}
	{
		r6 = memw(r29+##19660)
		r14 = memw(r29+##19672)
	}
	{
		r15 = memw(r29+##19676)
		r28 = memw(r29+##19680)
	}
	{
		r18 = memw(r29+##19688)
		r8 = memuh(r26+r10<<#1)
	}
	{
		r7 = memuh(r26+r7<<#1)
		r12 = memuh(r26+r12<<#1)
	}
	{
		r16 = combine(r7.l,r8.l)
		r17 = memw(r29+##19684)
		r9 = memuh(r26+r11<<#1)
	}
	{
		r7 = memw(r29+##19696)
		r19 = memw(r29+##19692)
	}
	{
		r6 = memuh(r26+r6<<#1)
		r13 = memuh(r26+r13<<#1)
	}
	{
		r11 = combine(r6.l,r9.l)
		r10 = combine(r13.l,r12.l)
		r9 = memuh(r26+r14<<#1)
		r13 = memuh(r26+r15<<#1)
	}
	{
		r20 = memw(r29+##19704)
		r12 = memuh(r26+r18<<#1)
	}
	{
		r18 = memw(r29+##19584)
		r6 = memw(r29+##19700)
	}
	{
		r28 = combine(r13.l,r9.l)
		r14 = memuh(r26+r28<<#1)
		r13 = memuh(r26+r19<<#1)
	}
	{
		r12 = combine(r13.l,r12.l)
		r19 = memw(r29+##19588)
		r9 = memuh(r26+r6<<#1)
	}
	{
		r6 = memuh(r26+r20<<#1)
		r20 = memw(r29+##19456)
	}
	{
		r22 = memw(r29+##19460)
		r23 = memw(r29+##19708)
	}
	{
		r21 = memuh(r26+r20<<#1)
		r20 = memw(r29+##19464)
	}
	{
		r22 = memuh(r26+r22<<#1)
		r8 = memuh(r26+r7<<#1)
	}
	{
		r21 = combine(r22.l,r21.l)
		r8 = combine(r9.l,r8.l)
		r20 = memuh(r26+r20<<#1)
		r7 = memuh(r26+r23<<#1)
	}
	{
		v16.w = vinsert(r21)
		r15 = memuh(r26+r17<<#1)
		r23 = memw(r29+##19468)
	}
	{
		r15 = combine(r15.l,r14.l)
		r22 = memw(r29+##19472)
		r19 = memuh(r26+r19<<#1)
	}
	{
		r21 = memuh(r26+r23<<#1)
		r23 = memw(r29+##19476)
	}
	{
		r20 = combine(r21.l,r20.l)
		v19 = valign(v16,v16,#4)
		r18 = memuh(r26+r18<<#1)
	}
	{
		v19.w = vinsert(r20)
		r17 = memw(r29+##19580)
		r20 = memuh(r26+r22<<#1)
	}
	{
		r18 = combine(r19.l,r18.l)
		r21 = memuh(r26+r23<<#1)
		r22 = memw(r29+##19480)
	}
	{
		r20 = combine(r21.l,r20.l)
		v20 = valign(v19,v19,#4)
		r17 = memuh(r26+r17<<#1)
	}
	{
		v20.w = vinsert(r20)
		r23 = memw(r29+##19484)
	}
	{
		r20 = memuh(r26+r22<<#1)
		r22 = memw(r29+##19488)
	}
	{
		v7.w = vinsert(r18)
		r21 = memuh(r26+r23<<#1)
		r23 = memw(r29+##19492)
	}
	{
		r20 = combine(r21.l,r20.l)
		v21 = valign(v20,v20,#4)
		r25 = memw(r29+##19600)
	}
	{
		v21.w = vinsert(r20)
		v11 = valign(v7,v7,#4)
		r20 = memuh(r26+r22<<#1)
		r21 = memuh(r26+r23<<#1)
	}
	{
		r20 = combine(r21.l,r20.l)
		r22 = memw(r29+##19496)
		r25 = memuh(r26+r25<<#1)
	}
	{
		v22 = valign(v21,v21,#4)
		r23 = memw(r29+##19500)
	}
	{
		v22.w = vinsert(r20)
		r20 = memuh(r26+r22<<#1)
		r22 = memw(r29+##19504)
	}
	{
		r21 = memuh(r26+r23<<#1)
		r23 = memw(r29+##19508)
	}
	{
		r20 = combine(r21.l,r20.l)
		v9 = valign(v22,v22,#4)
		r24 = memw(r29+##19524)
	}
	{
		v9.w = vinsert(r20)
		r20 = memuh(r26+r22<<#1)
		r22 = memw(r29+##19512)
	}
	{
		r21 = memuh(r26+r23<<#1)
		r23 = memw(r29+##19516)
	}
	{
		r20 = combine(r21.l,r20.l)
		v10 = valign(v9,v9,#4)
		r22 = memuh(r26+r22<<#1)
	}
	{
		v10.w = vinsert(r20)
		r21 = memw(r29+##19592)
		r23 = memuh(r26+r23<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		r20 = memw(r29+##19520)
	}
	{
		r20 = memuh(r26+r20<<#1)
		r21 = memuh(r26+r21<<#1)
	}
	{
		v1 = valign(v10,v10,#4)
		r23 = memw(r29+##19596)
	}
	{
		v1.w = vinsert(r22)
		r22 = memuh(r26+r24<<#1)
		r24 = memw(r29+##19528)
	}
	{
		r20 = combine(r22.l,r20.l)
		r23 = memuh(r26+r23<<#1)
		r19 = memw(r29+##19608)
	}
	{
		r21 = combine(r23.l,r21.l)
		r24 = memuh(r26+r24<<#1)
		r22 = memw(r29+##19532)
	}
	{
		v11.w = vinsert(r21)
		v26 = valign(v1,v1,#4)
		r18 = memw(r29+##19612)
	}
	{
		v26.w = vinsert(r20)
		r20 = memw(r29+##19604)
		r22 = memuh(r26+r22<<#1)
	}
	{
		v29 = valign(v11,v11,#4)
		r20 = memuh(r26+r20<<#1)
		r18 = memuh(r26+r18<<#1)
	}
	{
		r20 = combine(r20.l,r25.l)
		r22 = combine(r22.l,r24.l)
		r24 = memw(r29+##19616)
	}
	{
		v28 = valign(v26,v26,#4)
		r19 = memuh(r26+r19<<#1)
		r23 = memw(r29+##19536)
	}
	{
		v28.w = vinsert(r22)
		v29.w = vinsert(r20)
		r18 = combine(r18.l,r19.l)
		r24 = memuh(r26+r24<<#1)
	}
	{
		r22 = memw(r29+##19620)
		r25 = memw(r29+##19624)
	}
	{
		v27 = valign(v28,v28,#4)
		r25 = memuh(r26+r25<<#1)
		r21 = memw(r29+##19540)
	}
	{
		v26 = valign(v29,v29,#4)
		r21 = memuh(r26+r21<<#1)
		r22 = memuh(r26+r22<<#1)
	}
	{
		v26.w = vinsert(r18)
		r22 = combine(r22.l,r24.l)
		r20 = memw(r29+##19628)
	}
	{
		r19 = memw(r29+##19544)
		r23 = memuh(r26+r23<<#1)
	}
	{
		r21 = combine(r21.l,r23.l)
		v0 = valign(v26,v26,#4)
		r18 = memw(r29+##19548)
	}
	{
		v0.w = vinsert(r22)
		r19 = memuh(r26+r19<<#1)
		r23 = memw(r29+##19632)
	}
	{
		v27.w = vinsert(r21)
		r18 = memuh(r26+r18<<#1)
		r20 = memuh(r26+r20<<#1)
	}
	{
		r18 = combine(r18.l,r19.l)
		r20 = combine(r20.l,r25.l)
		r24 = memw(r29+##19640)
	}
	{
		v2 = valign(v0,v0,#4)
		r24 = memuh(r26+r24<<#1)
		r21 = memw(r29+##19636)
	}
	{
		v2.w = vinsert(r20)
		r22 = memw(r29+##19644)
		r23 = memuh(r26+r23<<#1)
	}
	{
		v7 = valign(v27,v27,#4)
		r22 = memuh(r26+r22<<#1)
		r21 = memuh(r26+r21<<#1)
	}
	{
		r19 = memw(r29+##19552)
		r20 = memw(r29+##19560)
	}
	{
		r21 = combine(r21.l,r23.l)
		r19 = memuh(r26+r19<<#1)
		r23 = memw(r29+##19568)
	}
	{
		v12 = valign(v2,v2,#4)
		r20 = memuh(r26+r20<<#1)
		r25 = memw(r29+##19556)
	}
	{
		v7.w = vinsert(r18)
		v12.w = vinsert(r21)
		r23 = memuh(r26+r23<<#1)
	}
	{
		r22 = combine(r22.l,r24.l)
		r18 = memw(r29+##19564)
		r25 = memuh(r26+r25<<#1)
	}
	{
		r21 = memw(r29+##19572)
		r24 = memw(r29+##19576)
	}
	{
		r19 = combine(r25.l,r19.l)
		v10 = valign(v12,v12,#4)
		r18 = memuh(r26+r18<<#1)
	}
	{
		v10.w = vinsert(r22)
		r18 = combine(r18.l,r20.l)
		v16 = valign(v7,v7,#4)
		r21 = memuh(r26+r21<<#1)
	}
	{
		r21 = combine(r21.l,r23.l)
		r24 = memuh(r26+r24<<#1)
	}
	{
		r23 = combine(r17.l,r24.l)
		v6 = valign(v10,v10,#4)
	}
	{
		v6.w = vinsert(r16)
		v16.w = vinsert(r19)
		vmem(r27+#0) = v14
	}
	{
		r22 = memw(r29+##19200)
		vmem(r0+#0) = v15
	}
	{
		v17 = valign(v6,v6,#4)
		r0 = memw(r29+##19204)
	}
	{
		v11 = valign(v16,v16,#4)
		r20 = memw(r29+##19208)
		r22 = memuh(r26+r22<<#1)
	}
	{
		v17.w = vinsert(r11)
		r11 = memw(r29+##19216)
		r0 = memuh(r26+r0<<#1)
	}
	{
		v11.w = vinsert(r18)
		r0 = combine(r0.l,r22.l)
		r18 = memw(r29+##19220)
	}
	{
		v15 = valign(v17,v17,#4)
		r22 = memw(r29+##19212)
	}
	{
		v5.w = vinsert(r0)
		r14 = memw(r29+##19400)
		r0 = memuh(r26+r20<<#1)
	}
	{
		v15.w = vinsert(r10)
		r10 = memw(r29+##19224)
		r20 = memuh(r26+r22<<#1)
	}
	{
		r0 = combine(r20.l,r0.l)
		v23 = valign(v11,v11,#4)
		r10 = memuh(r26+r10<<#1)
		r14 = memuh(r26+r14<<#1)
	}
	{
		v23.w = vinsert(r21)
		v14 = valign(v5,v5,#4)
		r27 = memw(r29+##19440)
	}
	{
		v14.w = vinsert(r0)
		v31 = valign(v15,v15,#4)
		r0 = memuh(r26+r11<<#1)
		r11 = memuh(r26+r18<<#1)
	}
	{
		v31.w = vinsert(r28)
		r0 = combine(r11.l,r0.l)
		r11 = memw(r29+##19228)
	}
	{
		v20 = valign(v23,v23,#4)
		r24 = memw(r29+##19396)
	}
	{
		v20.w = vinsert(r23)
		v9 = valign(v14,v14,#4)
		r13 = memw(r29+##19244)
	}
	{
		v9.w = vinsert(r0)
		v13 = valign(v31,v31,#4)
		r0 = memw(r29+##19392)
	}
	{
		r11 = memuh(r26+r11<<#1)
		r22 = memw(r29+##19236)
	}
	{
		v13.w = vinsert(r15)
		r10 = combine(r11.l,r10.l)
		r15 = memw(r29+##19240)
	}
	{
		v5 = valign(v9,v9,#4)
		r15 = memuh(r26+r15<<#1)
		r11 = memw(r29+##19232)
	}
	{
		v5.w = vinsert(r10)
		v19 = valign(v13,v13,#4)
		r13 = memuh(r26+r13<<#1)
		r10 = memuh(r26+r11<<#1)
	}
	{
		v19.w = vinsert(r12)
		r13 = combine(r13.l,r15.l)
		v20 = valign(v20,v20,#4)
		r11 = memuh(r26+r22<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		v18 = valign(v5,v5,#4)
		r12 = memw(r29+##19256)
	}
	{
		v19 = valign(v19,v19,#4)
		r19 = memuh(r26+r12<<#1)
		r11 = memw(r29+##19328)
	}
	{
		v18.w = vinsert(r10)
		r11 = memuh(r26+r11<<#1)
		r15 = memw(r29+##19260)
	}
	{
		v19.w = vinsert(r8)
		r15 = memuh(r26+r15<<#1)
		r10 = memw(r29+##19248)
	}
	{
		r20 = memw(r29+##19336)
		r21 = memw(r29+##19252)
	}
	{
		r15 = combine(r15.l,r19.l)
		v21 = valign(v18,v18,#4)
		r16 = memuh(r26+r21<<#1)
		r10 = memuh(r26+r10<<#1)
	}
	{
		v21.w = vinsert(r13)
		r10 = combine(r16.l,r10.l)
		r12 = memw(r29+##19404)
	}
	{
		v18 = valign(v19,v19,#4)
		r13 = memw(r29+##19332)
		r16 = memuh(r26+r20<<#1)
	}
	{
		v22 = valign(v21,v21,#4)
		r13 = memuh(r26+r13<<#1)
		r23 = memw(r29+##19272)
	}
	{
		v22.w = vinsert(r10)
		r10 = memw(r29+##19340)
	}
	{
		r13 = combine(r13.l,r11.l)
		r11 = memw(r29+##19264)
	}
	{
		v4.w = vinsert(r13)
		r10 = memuh(r26+r10<<#1)
		r13 = memw(r29+##19268)
	}
	{
		r10 = combine(r10.l,r16.l)
		v8 = valign(v22,v22,#4)
		r13 = memuh(r26+r13<<#1)
		r11 = memuh(r26+r11<<#1)
	}
	{
		v8.w = vinsert(r15)
		r13 = combine(r13.l,r11.l)
		r15 = memw(r29+##19344)
	}
	{
		v4 = valign(v4,v4,#4)
		r15 = memuh(r26+r15<<#1)
		r18 = memw(r29+##19348)
	}
	{
		v4.w = vinsert(r10)
		r10 = memw(r29+##19352)
		r28 = memuh(r26+r24<<#1)
	}
	{
		v1 = valign(v8,v8,#4)
		r10 = memuh(r26+r10<<#1)
		r16 = memuh(r26+r18<<#1)
	}
	{
		v1.w = vinsert(r13)
		v9 = valign(v4,v4,#4)
		r11 = memw(r29+##19356)
	}
	{
		r15 = combine(r16.l,r15.l)
		r11 = memuh(r26+r11<<#1)
		r13 = memw(r29+##19360)
	}
	{
		v9.w = vinsert(r15)
		v28 = valign(v1,v1,#4)
		r16 = memuh(r26+r23<<#1)
		r13 = memuh(r26+r13<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		r0 = memuh(r26+r0<<#1)
		r15 = memw(r29+##19276)
	}
	{
		r28 = combine(r28.l,r0.l)
		v10 = valign(v9,v9,#4)
		r11 = memw(r29+##19364)
	}
	{
		v10.w = vinsert(r10)
		r11 = memuh(r26+r11<<#1)
		r15 = memuh(r26+r15<<#1)
	}
	{
		r15 = combine(r15.l,r16.l)
		r13 = combine(r11.l,r13.l)
		r10 = memw(r29+##19368)
	}
	{
		r22 = memw(r29+##19372)
		r11 = memw(r29+##19280)
	}
	{
		v28.w = vinsert(r15)
		v11 = valign(v10,v10,#4)
		r10 = memuh(r26+r10<<#1)
		r12 = memuh(r26+r12<<#1)
	}
	{
		v11.w = vinsert(r13)
		r16 = memuh(r26+r22<<#1)
		r13 = memw(r29+##19284)
	}
	{
		r10 = combine(r16.l,r10.l)
		v25 = valign(v28,v28,#4)
		r15 = memw(r29+##19376)
	}
	{
		r12 = combine(r12.l,r14.l)
		r11 = memuh(r26+r11<<#1)
		r21 = memw(r29+##19380)
	}
	{
		v29 = valign(v11,v11,#4)
		r13 = memuh(r26+r13<<#1)
		r15 = memuh(r26+r15<<#1)
	}
	{
		v29.w = vinsert(r10)
		r13 = combine(r13.l,r11.l)
		r10 = memw(r29+##19384)
	}
	{
		v25.w = vinsert(r13)
		r16 = memuh(r26+r21<<#1)
		r11 = memw(r29+##19388)
	}
	{
		r15 = combine(r16.l,r15.l)
		v24 = valign(v29,v29,#4)
		r10 = memuh(r26+r10<<#1)
	}
	{
		v24.w = vinsert(r15)
		r11 = memuh(r26+r11<<#1)
		r20 = memw(r29+##19288)
	}
	{
		r10 = combine(r11.l,r10.l)
		v7 = valign(v25,v25,#4)
		r13 = memw(r29+##19408)
	}
	{
		v0 = valign(v24,v24,#4)
		r16 = memuh(r26+r20<<#1)
		r0 = memw(r29+##19296)
	}
	{
		v0.w = vinsert(r10)
		r13 = memuh(r26+r13<<#1)
		r15 = memw(r29+##19292)
	}
	{
		r11 = memw(r29+##19412)
		r25 = memw(r29+##19300)
	}
	{
		v2 = valign(v0,v0,#4)
		r11 = memuh(r26+r11<<#1)
		r10 = memw(r29+##19416)
	}
	{
		v2.w = vinsert(r28)
		r13 = combine(r11.l,r13.l)
		r0 = memuh(r26+r0<<#1)
		r15 = memuh(r26+r15<<#1)
	}
	{
		r15 = combine(r15.l,r16.l)
		r19 = memw(r29+##19420)
		r10 = memuh(r26+r10<<#1)
	}
	{
		v7.w = vinsert(r15)
		r28 = memuh(r26+r25<<#1)
		r15 = memw(r29+##19424)
	}
	{
		r28 = combine(r28.l,r0.l)
		v12 = valign(v2,v2,#4)
		r16 = memuh(r26+r19<<#1)
	}
	{
		v12.w = vinsert(r12)
		v2 = v3
		r12 = memw(r29+##19432)
	}
	{
		v16 = valign(v7,v7,#4)
		r0 = memw(r29+##19436)
		r15 = memuh(r26+r15<<#1)
	}
	{
		v16.w = vinsert(r28)
		v10 = valign(v12,v12,#4)
		r11 = memw(r29+##19304)
	}
	{
		r10 = combine(r16.l,r10.l)
		r14 = memw(r29+##19428)
		r12 = memuh(r26+r12<<#1)
	}
	{
		v10.w = vinsert(r13)
		r13 = memw(r29+##19308)
		r11 = memuh(r26+r11<<#1)
	}
	{
		v11 = valign(v16,v16,#4)
		r14 = memuh(r26+r14<<#1)
		r18 = memw(r29+##19444)
	}
	{
		r14 = combine(r14.l,r15.l)
		r13 = memuh(r26+r13<<#1)
		r15 = memw(r29+##19448)
	}
	{
		v6 = valign(v10,v10,#4)
		r0 = memuh(r26+r0<<#1)
		r28 = memuh(r26+r27<<#1)
	}
	{
		v6.w = vinsert(r10)
		r12 = combine(r0.l,r12.l)
		r10 = memw(r29+##19312)
	}
	{
		r13 = combine(r13.l,r11.l)
		r10 = memuh(r26+r10<<#1)
		r11 = memw(r29+##19316)
	}
	{
		v11.w = vinsert(r13)
		v17 = valign(v6,v6,#4)
		r13 = memw(r29+##19320)
	}
	{
		r5 = add(r29,#3584)
		v13 = vmem(r5+#0)
	}
	{
		v17.w = vinsert(r14)
		v23 = valign(v11,v11,#4)
		r14 = memw(r29+##19452)
	}
	{
		r5 = add(r29,#3712)
		r13 = memuh(r26+r13<<#1)
		v16 = vmem(r5+#0)
	}                               // 256-byte Folded Reload
	{
		r11 = memuh(r26+r11<<#1)
		r14 = memuh(r26+r14<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		v14 = valign(v17,v17,#4)
		r11 = memw(r29+##19324)
	}
	{
		v17 = vmem(r5+#0)
	}                               // 256-byte Folded Reload
	{
		v23.w = vinsert(r10)
		v14.w = vinsert(r12)
		v7:6.w = vadd(v3:2.w,v17:16.w)
		r0 = memuh(r26+r18<<#1)
	}
	{
		r10 = #64
		r12 = memuh(r26+r15<<#1)
		r11 = memuh(r26+r11<<#1)
	}
	{
		r4 = combine(r11.l,r13.l)
		v26 = valign(v23,v23,#4)
		v5 = vmem(r4+#0)
	}
	{
		v27 = valign(v14,v14,#4)
	}
	{
		v26.w = vinsert(r4)
		r4 = combine(r7.l,r6.l)
		r3 = add(r29,#16640)
		vmem(r3+#0) = v7
	}
	{
		v18.w = vinsert(r4)
		v15 = vror(v20,r10)
	}
	{
		r3 = combine(r0.l,r28.l)
		vmem(r3+#0) = v6
	}
	{
		v27.w = vinsert(r3)
		r3 = add(r29,#11520)
		v22 = valign(v18,v18,#4)
	}
	{
		r3 = add(r29,#11648)
		v4 = vor(v15,v22)
		v6 = vmem(r3+#0)
	}                               // 256-byte Folded Reload
	{
		v21 = valign(v27,v27,#4)
		v7 = vmem(r3+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#16896)
		v3 = valign(v26,v26,#4)
		v11:10.w = vadd(v3:2.w,v7:6.w)
		vmem(r2+#0) = v11.new
	}
	{
		r2 = combine(r14.l,r12.l)
		vmem(r2+#0) = v10
	}
	{
		v30 = vror(v3,r10)
		r3 = memw(r29+##16892)
		memw(r29+#3072) = r3.new
	}
	{
		v21.w = vinsert(r2)
		r2 = memw(r29+##16888)
		memw(r29+#2944) = r2.new
	}
	{
		r3 = add(r29,#15104)
		r2 = memw(r29+##16884)
		memw(r29+#2816) = r2.new
	}
	{
		v31 = valign(v21,v21,#4)
		r2 = memw(r29+##16880)
		memw(r29+#2688) = r2.new
	}
	{
		v1 = vor(v30,v31)
		r2 = memw(r29+##16876)
		memw(r29+#2560) = r2.new
	}
	{
		r3 = add(r29,#15232)
		r2 = ##67372036
		v22 = vmem(r3+#0)
	}                               // 256-byte Folded Reload
	{
		r21 = memw(r29+##16872)
		v23 = vmem(r3+#0)
	}
	{
		v22.h += vmpyi(v4.h,r2.b)
		v23.h += vmpyi(v1.h,r2.b)
		r22 = memw(r29+##16868)
	}
	{
		r2 = ##101058054
		r23 = memw(r29+##16864)
	}
	{
		v22.h += vmpyi(v5.h,r2.b)
		r24 = memw(r29+##16860)
	}
	{
		v23.h += vmpyi(v13.h,r2.b)
		r2 = add(r29,#15104)
		r26 = memw(r29+##16852)
	}
	{
		r16 = memw(r29+##16844)
		r25 = memw(r29+##16856)
	}
	{
		r0 = memw(r29+##16772)
		r27 = memw(r29+##16848)
	}
	{
		r17 = memw(r29+##16840)
	}
	{
		r2 = add(r29,#15232)
		vmem(r2+#0) = v22
	}                               // 256-byte Folded Spill
	{
		vmem(r2+#0) = v23
	}                               // 256-byte Folded Spill
	{
		r18 = memw(r29+##16832)
		r19 = memw(r29+##16836)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.394:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##16768)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	.falign
// %bb.395:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##16776)
	}
	{
		v27 = valign(v26,v26,#4)
	}
	{
		v27.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v27,v27,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.396:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##16780)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v9,v9,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.397:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##11008)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##16784)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v5,v5,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.398:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10880)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##16788)
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v11,v11,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.399:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10752)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##16792)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v29,v29,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.400:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10624)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##16796)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v30,v30,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.401:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10496)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##16800)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v31,v31,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.402:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10368)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##16804)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v11,v11,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.403:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##16808)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v20,v20,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.404:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10112)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##16812)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v23,v23,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.405:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10108)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##16816)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v19,v19,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.406:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10104)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##16820)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v12,v12,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.407:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10100)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##16824)
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v9,v9,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.408:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10060)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##16828)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v5,v5,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.409:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10052)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r19
	}
	{
		v28 = valign(v16,v16,#4)
	}
	{
		r2 = add(r29,#2048)
		v1 = vror(v28,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v1
	}                               // 128-byte Folded Spill
	.falign
// %bb.410:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r19 = r0
		r0 = r18
		r1 = memw(r29+##10056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.411:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##10064)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = r17
	}
	{
		v30 = valign(v29,v29,#4)
	}
	{
		v30.w = vinsert(r19)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v30,v30,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.412:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10068)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = r16
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v20,v20,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.413:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10072)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v23,v23,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.414:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10076)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v19,v19,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.415:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v12,v12,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.416:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10084)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v9,v9,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.417:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10088)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v5,v5,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.418:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10092)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v16,v16,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.419:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##10096)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v8,v8,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.420:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v18 = valign(v2,v2,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.421:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##14464)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2688)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v6 = valign(v14,v14,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.422:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2688)
		r1 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v24 = valign(v10,v10,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.423:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v22 = valign(v1,v1,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.424:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r1 = memw(r29+##14848)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#3072)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+#3072)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v17,v17,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.425:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#3072)
		r21 = memw(r29+##16736)
	}
	{
		r2 = memw(r29+##16764)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r2 = memw(r29+##16760)
		memw(r29+#2944) = r2
	}
	{
		r2 = memw(r29+##16756)
		memw(r29+#2816) = r2
	}
	{
		v31 = valign(v14,v14,#4)
		r2 = memw(r29+##16752)
		memw(r29+#2688) = r2
	}
	{
		r2 = memw(r29+##16748)
		memw(r29+#2560) = r2
	}
	{
		r2 = memw(r29+##16744)
		memw(r29+#2432) = r2
	}
	{
		r2 = memw(r29+##16740)
		memw(r29+#2304) = r2
	}
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8184)
		memw(r29+#2176) = r2
	}                               // 4-byte Folded Reload
	{
		r25 = memw(r29+##16704)
		r22 = memw(r29+##16732)
	}
	{
		r2 = add(r29,#3200)
		r0 = memw(r29+##16644)
		v10 = vmem(r2+#0)
	}
	{
		v7 = vor(v10,v31)
		r26 = memw(r29+##16724)
	}
	{
		r24 = memw(r29+##16716)
		r23 = memw(r29+##16728)
	}
	{
		r27 = memw(r29+##16720)
		r16 = memw(r29+##16712)
	}
	{
		r17 = memw(r29+##16708)
	}
	{
		vmem(r2+#0) = v7
	}                               // 256-byte Folded Spill
	{
		r18 = memw(r29+##16700)
		r19 = memw(r29+##16696)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.426:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##16640)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##9856)
	}                               // 4-byte Folded Reload
	.falign
// %bb.427:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##9852)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##16648)
	}
	{
		v2 = valign(v0,v0,#4)
	}
	{
		v2.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v2,v2,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.428:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##9600)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##16652)
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v16,v16,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.429:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##9472)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##16656)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v8,v8,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.430:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##9344)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##16660)
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v2,v2,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.431:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##9216)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##16664)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v14,v14,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.432:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##9088)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##16668)
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v10,v10,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.433:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8960)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##16672)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v1,v1,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.434:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8832)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##16676)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v17,v17,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.435:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8704)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##16680)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v13,v13,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.436:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8576)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##16684)
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v3,v3,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.437:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8448)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##16688)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v21,v21,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.438:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8192)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##16692)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v15,v15,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.439:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8408)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v13,v13,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.440:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8412)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = r18
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v3,v3,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.441:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##8416)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r17
	}
	{
		v7 = valign(v8,v8,#4)
	}
	{
		r2 = add(r29,#2048)
		v13 = vror(v7,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v13
	}                               // 128-byte Folded Spill
	.falign
// %bb.442:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r25
		r1 = memw(r29+##8188)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.443:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##8420)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = r16
	}
	{
		v10 = valign(v12,v12,#4)
	}
	{
		v10.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v10,v10,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.444:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8424)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v21,v21,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.445:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8428)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v15,v15,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.446:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8432)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v18,v18,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.447:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8436)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v22,v22,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.448:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v7,v7,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.449:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##8444)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v6,v6,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.450:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+#2176)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v31 = valign(v24,v24,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.451:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+#2304)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v11 = valign(v25,v25,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.452:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v20 = valign(v4,v4,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.453:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v23 = valign(v26,v26,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.454:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##13824)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2688)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v19 = valign(v27,v27,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.455:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2688)
		r1 = memw(r29+##14080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v12 = valign(v0,v0,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.456:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v28,v28,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.457:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r20 = memw(r29+##17124)
	}
	{
		r2 = memw(r29+##17148)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r2 = memw(r29+##17144)
		memw(r29+#2944) = r2
	}
	{
		r2 = memw(r29+##17140)
		memw(r29+#2816) = r2
	}
	{
		v16 = valign(v10,v10,#4)
		r2 = memw(r29+##17136)
		memw(r29+#2688) = r2
	}
	{
		r2 = memw(r29+##17132)
		memw(r29+#2560) = r2
	}
	{
		r2 = add(r29,#3072)
		r1 = memw(r29+##6008)
		memw(r29+#2432) = r2
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#3200)
		r19 = memw(r29+##17128)
		v24 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#2048)
		r21 = memw(r29+##17120)
		v25 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#3072)
		r22 = memw(r29+##17116)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24 = vor(v17,v16)
		r26 = memw(r29+##17108)
	}
	{
		r24 = memw(r29+##17100)
		r0 = memw(r29+##17028)
	}
	{
		r23 = memw(r29+##17112)
		r27 = memw(r29+##17104)
	}
	{
		r2 = add(r29,#3200)
		r16 = memw(r29+##17096)
		vmem(r2+#0) = v24
	}
	{
		vmem(r2+#0) = v25
	}                               // 256-byte Folded Spill
	{
		r25 = memw(r29+##17088)
		r17 = memw(r29+##17092)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.458:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r18 = r0
		r0 = memw(r29+##17024)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##7936)
	}                               // 4-byte Folded Reload
	.falign
// %bb.459:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##7808)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##17032)
	}
	{
		v11 = valign(v6,v6,#4)
	}
	{
		v11.w = vinsert(r18)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v11,v11,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.460:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##7680)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##17036)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v18,v18,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.461:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##7552)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##17040)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v22,v22,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.462:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##7424)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##17044)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v7,v7,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.463:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##7296)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##17048)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v6,v6,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.464:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##7168)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##17052)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v24,v24,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.465:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##7040)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##17056)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v25,v25,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.466:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6912)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##17060)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v4,v4,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.467:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6784)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##17064)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v26,v26,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.468:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6656)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##17068)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v27,v27,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.469:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6528)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##17072)
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v0,v0,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.470:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6400)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##17076)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v28,v28,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.471:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6272)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##17080)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v29,v29,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.472:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6016)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##17084)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v30,v30,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.473:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6232)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = r17
	}
	{
		v17 = valign(v2,v2,#4)
	}
	{
		r2 = add(r29,#1920)
		v21 = vror(v17,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v21
	}                               // 128-byte Folded Spill
	.falign
// %bb.474:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r25
		r1 = memw(r29+##6012)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.475:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##6236)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = r16
	}
	{
		v23 = valign(v20,v20,#4)
	}
	{
		v23.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v23,v23,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.476:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v29,v29,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.477:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6244)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v30,v30,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.478:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6248)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v31,v31,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.479:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6252)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v11,v11,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.480:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6256)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v20,v20,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.481:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6260)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v23,v23,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.482:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = r20
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v19,v19,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.483:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##6268)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v12,v12,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.484:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v13 = valign(v9,v9,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.485:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v3 = valign(v5,v5,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.486:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2688)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+#2688)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v21 = valign(v16,v16,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.487:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2688)
		r1 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v15 = valign(v8,v8,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.488:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v2,v2,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.489:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r21 = memw(r29+##16992)
		r1 = memw(r29+#4088)
	}
	{
		r2 = memw(r29+##17020)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r2 = memw(r29+##17016)
		memw(r29+#2944) = r2
	}
	{
		r2 = memw(r29+##17012)
		memw(r29+#2816) = r2
	}
	{
		v14 = valign(v1,v1,#4)
		r2 = memw(r29+##17008)
		memw(r29+#2560) = r2
	}
	{
		r2 = memw(r29+##17004)
		memw(r29+#2432) = r2
	}
	{
		r2 = memw(r29+##17000)
		memw(r29+#2304) = r2
	}
	{
		r2 = memw(r29+##16996)
		memw(r29+#2176) = r2
	}
	{
		r2 = add(r29,#1920)
		r25 = memw(r29+##16960)
		memw(r29+#2048) = r2
	}
	{
		r2 = add(r29,#2688)
		r0 = memw(r29+##16900)
		v3 = vmem(r2+#0)
	}
	{
		v4 = vor(v3,v14)
		r22 = memw(r29+##16988)
	}
	{
		r26 = memw(r29+##16980)
		r24 = memw(r29+##16972)
	}
	{
		r23 = memw(r29+##16984)
		r27 = memw(r29+##16976)
	}
	{
		r16 = memw(r29+##16968)
		r17 = memw(r29+##16964)
	}
	{
		vmem(r2+#0) = v4
	}                               // 128-byte Folded Spill
	{
		r18 = memw(r29+##16956)
		r19 = memw(r29+##16952)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.490:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##16896)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##5760)
	}                               // 4-byte Folded Reload
	.falign
// %bb.491:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##5632)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##16904)
	}
	{
		v19 = valign(v15,v15,#4)
	}
	{
		v19.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v19,v19,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.492:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##5504)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##16908)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v31,v31,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.493:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##5376)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##16912)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v11,v11,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.494:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##5248)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##16916)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v20,v20,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.495:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##5120)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##16920)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v23,v23,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.496:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4992)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##16924)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v19,v19,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.497:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4864)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##16928)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v12,v12,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.498:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4736)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##16932)
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v9,v9,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.499:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4608)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##16936)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v5,v5,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.500:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4480)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##16940)
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v16,v16,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.501:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4352)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##16944)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v8,v8,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.502:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4096)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##16948)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v2,v2,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.503:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v14,v14,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.504:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4316)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1920)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = r18
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v10,v10,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.505:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1920)
		r1 = memw(r29+##4320)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = r17
	}
	{
		v9 = valign(v14,v14,#4)
	}
	{
		r2 = add(r29,#1920)
		v0 = vror(v9,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v0
	}                               // 128-byte Folded Spill
	.falign
// %bb.506:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r25
		r1 = memw(r29+#4092)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.507:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##4324)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r16
	}
	{
		v5 = valign(v8,v8,#4)
	}
	{
		v5.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v5,v5,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.508:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4328)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v1,v1,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.509:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4332)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v17,v17,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.510:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v13,v13,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.511:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4340)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v3,v3,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.512:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4344)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v21,v21,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.513:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##4348)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#1792)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v15,v15,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.514:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#1792)
		r1 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2048)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+#2048)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v18,v18,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.515:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2048)
		r1 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2176)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+#2176)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v22,v22,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.516:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2176)
		r1 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2304)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+#2304)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v29 = valign(v7,v7,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.517:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2304)
		r1 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2432)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+#2432)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v30 = valign(v6,v6,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.518:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2432)
		r1 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2560)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+#2560)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v31 = valign(v24,v24,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.519:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2560)
		r1 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2816)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+#2816)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v11 = valign(v25,v25,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.520:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2816)
		r1 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#2944)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v4,v4,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.521:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#2944)
		r7 = #31
		r6 = add(r29,#18944)
		v10 = vmem(r29+#5)
	}                               // 128-byte Folded Reload
	{
		r4 = setbit(r6,#7)
		r2 = add(r29,#2688)
		r23 = add(r29,#22144)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r2 = add(r29,#3072)
		v18.w = vasr(v7.w,r7)
		v7.cur = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = add(r29,#3200)
		v13.w = vasr(v22.w,r7)
		v17 = vand(v18,v10)
		v22.cur = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#15488)
		v3 = valign(v24,v24,#4)
		v21.w = vasr(v23.w,r7)
		v23.cur = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r7 = #31
		v31:30 = vcombine(v23,v22)
		r2 = memw(r29+#508)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r5 = setbit(r2,#1)
		r2 = add(r29,#16128)
		v5 = v7
		r1 = memw(r29+#3580)
	}                               // 4-byte Folded Reload
	{
		r3 = setbit(r2,#7)
		v1 = vsplat(r5)
		r2 = add(r29,#1920)
		r5 = add(r29,#3584)
	}
	{
		r27 = add(r29,#22144)
		v4 = vor(v28,v3)
		v0 = v1
		v28.cur = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r5 = add(r29,#3712)
		v14 = v2
		v9 = v2
		v18 = vmem(r5+#0)
	}                               // 256-byte Folded Reload
	{
		v22.w = vasr(v4.w,r7)
		v12 = vand(v13,v10)
		v13 = vand(v21,v10)
		v19 = vmem(r5+#0)
	}                               // 256-byte Folded Reload
	{
		r26 = add(r29,#18688)
		v7:6.w = vadd(v1:0.w,v19:18.w)
		v16 = vand(v22,v10)
		v8 = v2
	}
	{
		r0 = setbit(r26,#7)
		r2 = add(r29,#16384)
		v19:18.w = vadd(v5:4.w,v17:16.w)
		v13:12.w = vadd(v31:30.w,v13:12.w)
	}
	{
		r2 = setbit(r2,#7)
		vmem(r4+#0) = v19
	}
	{
		r4 = memw(r29+##19136)
		vmem(r6+#0) = v18
	}
	{
		r5 = memw(r29+##19140)
		r6 = memw(r29+##19144)
	}
	{
		r8 = memw(r29+##19152)
		r7 = memw(r29+##19148)
	}
	{
		r9 = memw(r29+##19156)
		r12 = memw(r29+##19160)
	}
	{
		r17 = memw(r29+##19168)
		r13 = memw(r29+##19164)
	}
	{
		r19 = memw(r29+##19176)
		r21 = memw(r29+##19184)
	}
	{
		r18 = memw(r29+##19172)
		r20 = memw(r29+##19180)
	}
	{
		r22 = memw(r29+##19188)
		r15 = memuh(r23+r13<<#1)
	}
	{
		r13 = memuh(r23+r18<<#1)
		r18 = memw(r29+##19072)
	}
	{
		r6 = memuh(r23+r6<<#1)
		r7 = memuh(r23+r7<<#1)
	}
	{
		r11 = combine(r7.l,r6.l)
		r10 = memuh(r23+r9<<#1)
		r9 = memuh(r23+r20<<#1)
	}
	{
		r7 = memuh(r23+r22<<#1)
		r22 = memw(r29+##19076)
	}
	{
		r20 = memw(r29+##19080)
		r6 = memuh(r23+r21<<#1)
	}
	{
		r6 = combine(r7.l,r6.l)
		r4 = memuh(r23+r4<<#1)
		r5 = memuh(r23+r5<<#1)
	}
	{
		r16 = combine(r5.l,r4.l)
		r14 = memuh(r23+r12<<#1)
		r21 = memw(r29+##19084)
	}
	{
		r4 = memw(r29+##19192)
		r18 = memuh(r23+r18<<#1)
	}
	{
		r22 = memuh(r23+r22<<#1)
		r28 = memuh(r23+r8<<#1)
	}
	{
		r10 = combine(r10.l,r28.l)
		r8 = memuh(r23+r19<<#1)
		r5 = memw(r29+##19196)
	}
	{
		r8 = combine(r9.l,r8.l)
		r21 = combine(r22.l,r18.l)
		r19 = memuh(r23+r20<<#1)
		r20 = memuh(r23+r21<<#1)
	}
	{
		r22 = memw(r29+##18944)
		r24 = memw(r29+##18948)
	}
	{
		v9.w = vinsert(r21)
		r19 = combine(r20.l,r19.l)
		r4 = memuh(r23+r4<<#1)
		r12 = memuh(r23+r17<<#1)
	}
	{
		r13 = combine(r13.l,r12.l)
		r17 = memw(r29+##19068)
		r24 = memuh(r27+r24<<#1)
	}
	{
		r5 = memuh(r23+r5<<#1)
		r25 = memw(r29+##18956)
	}
	{
		r17 = memuh(r23+r17<<#1)
		r23 = memuh(r27+r22<<#1)
	}
	{
		r23 = combine(r24.l,r23.l)
		r22 = memw(r29+##18952)
	}
	{
		r22 = memuh(r27+r22<<#1)
		r18 = memw(r29+##19088)
	}
	{
		v14.w = vinsert(r23)
		r24 = memw(r29+##18960)
		r23 = memuh(r27+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		v16 = valign(v14,v14,#4)
		r25 = memw(r29+##18964)
	}
	{
		v16.w = vinsert(r22)
		r18 = memuh(r27+r18<<#1)
		r22 = memuh(r27+r24<<#1)
	}
	{
		r23 = memuh(r27+r25<<#1)
		r24 = memw(r29+##18968)
	}
	{
		r22 = combine(r23.l,r22.l)
		v17 = valign(v16,v16,#4)
		r25 = memw(r29+##18972)
	}
	{
		v17.w = vinsert(r22)
		r22 = memuh(r27+r24<<#1)
		r24 = memw(r29+##18976)
	}
	{
		r23 = memuh(r27+r25<<#1)
		r25 = memw(r29+##18980)
	}
	{
		r22 = combine(r23.l,r22.l)
		v25 = valign(v17,v17,#4)
	}
	{
		v25.w = vinsert(r22)
		r22 = memuh(r27+r24<<#1)
		r23 = memuh(r27+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		r24 = memw(r29+##18984)
	}
	{
		v26 = valign(v25,v25,#4)
		r25 = memw(r29+##18988)
	}
	{
		v26.w = vinsert(r22)
		r22 = memuh(r27+r24<<#1)
		r24 = memw(r29+##18992)
	}
	{
		r23 = memuh(r27+r25<<#1)
		r25 = memw(r29+##18996)
	}
	{
		r22 = combine(r23.l,r22.l)
		v27 = valign(v26,v26,#4)
		r20 = memw(r29+##19104)
	}
	{
		v27.w = vinsert(r22)
		v26 = valign(v9,v9,#4)
		r22 = memuh(r27+r24<<#1)
		r23 = memuh(r27+r25<<#1)
	}
	{
		v26.w = vinsert(r19)
		r22 = combine(r23.l,r22.l)
		r24 = memw(r29+##19000)
	}
	{
		v28 = valign(v27,v27,#4)
		r25 = memw(r29+##19004)
		r20 = memuh(r27+r20<<#1)
	}
	{
		v28.w = vinsert(r22)
		v11 = valign(v26,v26,#4)
		r22 = memuh(r27+r24<<#1)
	}
	{
		r24 = memw(r29+##19008)
		r23 = memuh(r27+r25<<#1)
	}
	{
		r22 = combine(r23.l,r22.l)
		v29 = valign(v28,v28,#4)
		r25 = memw(r29+##19012)
	}
	{
		v29.w = vinsert(r22)
		r22 = memuh(r27+r24<<#1)
		r24 = memw(r29+##19016)
	}
	{
		r23 = memuh(r27+r25<<#1)
		r25 = memw(r29+##19020)
	}
	{
		r22 = combine(r23.l,r22.l)
		v24 = valign(v29,v29,#4)
		r23 = memw(r29+##19024)
	}
	{
		r19 = memw(r29+##19040)
		r21 = memw(r29+##19096)
	}
	{
		v24.w = vinsert(r22)
		r22 = memuh(r27+r24<<#1)
	}
	{
		r24 = memuh(r27+r25<<#1)
		r25 = memw(r29+##19028)
	}
	{
		r22 = combine(r24.l,r22.l)
		v25 = valign(v24,v24,#4)
		r24 = memw(r29+##19092)
	}
	{
		v25.w = vinsert(r22)
		r19 = memuh(r27+r19<<#1)
		r22 = memuh(r27+r23<<#1)
	}
	{
		r23 = memuh(r27+r25<<#1)
		r25 = memw(r29+##19032)
	}
	{
		r22 = combine(r23.l,r22.l)
		r24 = memuh(r27+r24<<#1)
		r23 = memw(r29+##19036)
	}
	{
		r18 = combine(r24.l,r18.l)
		v10 = valign(v25,v25,#4)
		r25 = memuh(r27+r25<<#1)
		r21 = memuh(r27+r21<<#1)
	}
	{
		v10.w = vinsert(r22)
		v11.w = vinsert(r18)
		r23 = memuh(r27+r23<<#1)
	}
	{
		r23 = combine(r23.l,r25.l)
		r22 = memw(r29+##19100)
	}
	{
		v20 = valign(v11,v11,#4)
		r18 = memw(r29+##19112)
	}
	{
		v27 = valign(v10,v10,#4)
		r18 = memuh(r27+r18<<#1)
		r25 = memw(r29+##19044)
	}
	{
		r22 = memuh(r27+r22<<#1)
		r24 = memw(r29+##19108)
	}
	{
		v27.w = vinsert(r23)
		r21 = combine(r22.l,r21.l)
		r23 = memw(r29+##19116)
	}
	{
		v20.w = vinsert(r21)
		r22 = memw(r29+##19120)
		r25 = memuh(r27+r25<<#1)
	}
	{
		r19 = combine(r25.l,r19.l)
		r24 = memuh(r27+r24<<#1)
		r25 = memw(r29+##19124)
	}
	{
		r20 = combine(r24.l,r20.l)
		v23 = valign(v27,v27,#4)
		r25 = memuh(r27+r25<<#1)
		r22 = memuh(r27+r22<<#1)
	}
	{
		v23.w = vinsert(r19)
		v14 = valign(v20,v20,#4)
		r21 = memw(r29+##19128)
	}
	{
		v14.w = vinsert(r20)
		r22 = combine(r25.l,r22.l)
		r21 = memuh(r27+r21<<#1)
		r23 = memuh(r27+r23<<#1)
	}
	{
		r18 = combine(r23.l,r18.l)
		r24 = memw(r29+##19048)
	}
	{
		v19 = valign(v23,v23,#4)
		r24 = memuh(r27+r24<<#1)
		r19 = memw(r29+##19132)
	}
	{
		v15 = valign(v14,v14,#4)
		r19 = memuh(r27+r19<<#1)
		r23 = memw(r29+##19056)
	}
	{
		v15.w = vinsert(r18)
		r23 = memuh(r27+r23<<#1)
		r20 = memw(r29+##19052)
	}
	{
		r18 = memw(r29+##19060)
		r25 = memw(r29+##19064)
	}
	{
		r19 = combine(r19.l,r21.l)
		v30 = valign(v15,v15,#4)
		r18 = memuh(r27+r18<<#1)
	}
	{
		r18 = combine(r18.l,r23.l)
		r20 = memuh(r27+r20<<#1)
		r25 = memuh(r27+r25<<#1)
	}
	{
		v30.w = vinsert(r22)
		r20 = combine(r20.l,r24.l)
		r17 = combine(r17.l,r25.l)
	}
	{
		v19.w = vinsert(r20)
	}
	{
		v9 = valign(v30,v30,#4)
		vmem(r26+#0) = v12
	}
	{
		r22 = memw(r29+##18688)
		vmem(r0+#0) = v13
	}
	{
		v9.w = vinsert(r19)
		v31 = valign(v19,v19,#4)
		r0 = memw(r29+##18692)
	}
	{
		v31.w = vinsert(r18)
		r23 = memw(r29+##18696)
		r22 = memuh(r27+r22<<#1)
	}
	{
		v18 = valign(v9,v9,#4)
		r21 = memw(r29+##18704)
		r0 = memuh(r27+r0<<#1)
	}
	{
		r0 = combine(r0.l,r22.l)
		r20 = memw(r29+##18708)
	}
	{
		v18.w = vinsert(r16)
		r22 = memw(r29+##18700)
	}
	{
		v8.w = vinsert(r0)
		r24 = memw(r29+##18880)
		r0 = memuh(r27+r23<<#1)
	}
	{
		v15 = valign(v31,v31,#4)
		r12 = memw(r29+##18896)
		r18 = memuh(r27+r22<<#1)
	}
	{
		v15.w = vinsert(r17)
		r0 = combine(r18.l,r0.l)
		v5 = valign(v18,v18,#4)
		r28 = memuh(r27+r24<<#1)
	}
	{
		v5.w = vinsert(r11)
		v8 = valign(v8,v8,#4)
		r11 = memw(r29+##18712)
	}
	{
		v8.w = vinsert(r0)
		r21 = combine(r15.l,r14.l)
		r0 = memuh(r27+r21<<#1)
		r18 = memuh(r27+r20<<#1)
	}
	{
		r0 = combine(r18.l,r0.l)
		v21 = valign(v5,v5,#4)
		r23 = memw(r29+##18716)
	}
	{
		v21.w = vinsert(r10)
		v3 = valign(v8,v8,#4)
		r12 = memuh(r27+r12<<#1)
		r11 = memuh(r27+r11<<#1)
	}
	{
		v3.w = vinsert(r0)
		r22 = memuh(r27+r23<<#1)
		r14 = memw(r29+##18888)
	}
	{
		r11 = combine(r22.l,r11.l)
		v15 = valign(v15,v15,#4)
		r0 = memw(r29+##18884)
	}
	{
		r10 = memw(r29+##18720)
		r15 = memw(r29+##18892)
	}
	{
		v9 = valign(v21,v21,#4)
		r10 = memuh(r27+r10<<#1)
		r20 = memw(r29+##18724)
	}
	{
		v9.w = vinsert(r21)
		v22 = valign(v3,v3,#4)
		r18 = memw(r29+##18728)
	}
	{
		v22.w = vinsert(r11)
		r23 = memw(r29+##18732)
		r11 = memuh(r27+r20<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		v13 = valign(v9,v9,#4)
		r21 = memw(r29+##18744)
	}
	{
		v12 = valign(v22,v22,#4)
		r11 = memuh(r27+r18<<#1)
		r22 = memuh(r27+r23<<#1)
	}
	{
		v13.w = vinsert(r13)
		v12.w = vinsert(r10)
		r13 = memw(r29+##18736)
	}
	{
		r11 = combine(r22.l,r11.l)
		r13 = memuh(r27+r13<<#1)
		r9 = memw(r29+##18740)
	}
	{
		v22 = valign(v13,v13,#4)
		r9 = memuh(r27+r9<<#1)
		r10 = memw(r29+##18816)
	}
	{
		v22.w = vinsert(r8)
		v16 = valign(v12,v12,#4)
		r10 = memuh(r27+r10<<#1)
		r16 = memuh(r27+r21<<#1)
	}
	{
		v16.w = vinsert(r11)
		r0 = memuh(r27+r0<<#1)
		r8 = memw(r29+##18752)
	}
	{
		r9 = combine(r9.l,r13.l)
		r19 = memuh(r27+r8<<#1)
		r11 = memw(r29+##18748)
	}
	{
		v3 = valign(v22,v22,#4)
		r11 = memuh(r27+r11<<#1)
		r13 = memw(r29+##18756)
	}
	{
		v3.w = vinsert(r6)
		r28 = combine(r0.l,r28.l)
		v17 = valign(v16,v16,#4)
		r13 = memuh(r27+r13<<#1)
	}
	{
		v17.w = vinsert(r9)
		r13 = combine(r13.l,r19.l)
		r20 = memw(r29+##18824)
	}
	{
		r11 = combine(r11.l,r16.l)
		r6 = add(r29,#11520)
		r9 = memw(r29+##18820)
	}
	{
		v28 = valign(v17,v17,#4)
		r16 = memuh(r27+r20<<#1)
		r8 = memw(r29+##18900)
	}
	{
		r9 = memuh(r27+r9<<#1)
		r18 = memw(r29+##18836)
	}
	{
		v28.w = vinsert(r11)
		r9 = combine(r9.l,r10.l)
		r11 = memw(r29+##18828)
	}
	{
		v2.w = vinsert(r9)
		r10 = memw(r29+##18760)
	}
	{
		v29 = valign(v28,v28,#4)
		r10 = memuh(r27+r10<<#1)
		r11 = memuh(r27+r11<<#1)
	}
	{
		v29.w = vinsert(r13)
		r11 = combine(r11.l,r16.l)
		r9 = memw(r29+##18764)
	}
	{
		v2 = valign(v2,v2,#4)
		r13 = memw(r29+##18832)
		r16 = memuh(r27+r18<<#1)
	}
	{
		v2.w = vinsert(r11)
		r11 = memw(r29+##18840)
		r9 = memuh(r27+r9<<#1)
	}
	{
		r9 = combine(r9.l,r10.l)
		v4 = valign(v29,v29,#4)
		r10 = memw(r29+##18844)
	}
	{
		r13 = memuh(r27+r13<<#1)
		r11 = memuh(r27+r11<<#1)
	}
	{
		r13 = combine(r16.l,r13.l)
		v27 = valign(v2,v2,#4)
		r10 = memuh(r27+r10<<#1)
	}
	{
		v4.w = vinsert(r9)
		r10 = combine(r10.l,r11.l)
		r9 = memw(r29+##18848)
	}
	{
		v27.w = vinsert(r13)
		r23 = memw(r29+##18768)
	}
	{
		v11 = valign(v4,v4,#4)
		r9 = memuh(r27+r9<<#1)
		r13 = memw(r29+##18772)
	}
	{
		r16 = memuh(r27+r23<<#1)
		r11 = memw(r29+##18852)
	}
	{
		v10 = valign(v27,v27,#4)
		r13 = memuh(r27+r13<<#1)
		r22 = memw(r29+##18860)
	}
	{
		v10.w = vinsert(r10)
		r13 = combine(r13.l,r16.l)
		r10 = memw(r29+##18856)
	}
	{
		r11 = memuh(r27+r11<<#1)
		r16 = memuh(r27+r22<<#1)
	}
	{
		r9 = combine(r11.l,r9.l)
		v5 = valign(v10,v10,#4)
		r11 = memw(r29+##18776)
	}
	{
		v5.w = vinsert(r9)
		r9 = memw(r29+##18780)
		r10 = memuh(r27+r10<<#1)
	}
	{
		v11.w = vinsert(r13)
		r10 = combine(r16.l,r10.l)
		r13 = memw(r29+##18864)
	}
	{
		v8 = valign(v5,v5,#4)
		r21 = memw(r29+##18868)
		r11 = memuh(r27+r11<<#1)
	}
	{
		v8.w = vinsert(r10)
		v23 = valign(v11,v11,#4)
		r10 = memw(r29+##18872)
	}
	{
		r9 = memuh(r27+r9<<#1)
		r13 = memuh(r27+r13<<#1)
	}
	{
		r9 = combine(r9.l,r11.l)
		r16 = memuh(r27+r21<<#1)
		r11 = memw(r29+##18876)
	}
	{
		r13 = combine(r16.l,r13.l)
		v20 = valign(v8,v8,#4)
		r10 = memuh(r27+r10<<#1)
		r14 = memuh(r27+r14<<#1)
	}
	{
		v23.w = vinsert(r9)
		v20.w = vinsert(r13)
		r11 = memuh(r27+r11<<#1)
		r8 = memuh(r27+r8<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		r15 = memuh(r27+r15<<#1)
		r20 = memw(r29+##18784)
	}
	{
		r14 = combine(r15.l,r14.l)
		r8 = combine(r8.l,r12.l)
		r13 = memw(r29+##18788)
	}
	{
		v14 = valign(v20,v20,#4)
		r0 = memw(r29+##18792)
		r16 = memuh(r27+r20<<#1)
	}
	{
		r9 = memw(r29+##18904)
		r25 = memw(r29+##18796)
	}
	{
		v14.w = vinsert(r10)
		v19 = valign(v23,v23,#4)
		r0 = memuh(r27+r0<<#1)
		r13 = memuh(r27+r13<<#1)
	}
	{
		r13 = combine(r13.l,r16.l)
		r11 = memw(r29+##18908)
		r9 = memuh(r27+r9<<#1)
	}
	{
		v9 = valign(v14,v14,#4)
		r10 = memw(r29+##18912)
	}
	{
		v9.w = vinsert(r28)
		r28 = memuh(r27+r25<<#1)
		r11 = memuh(r27+r11<<#1)
	}
	{
		v19.w = vinsert(r13)
		r9 = combine(r11.l,r9.l)
		r12 = memw(r29+##18936)
	}
	{
		r28 = combine(r28.l,r0.l)
		r10 = memuh(r27+r10<<#1)
		r19 = memw(r29+##18916)
	}
	{
		v9 = valign(v9,v9,#4)
		r11 = memw(r29+##18808)
	}
	{
		v9.w = vinsert(r14)
		r14 = memw(r29+##18928)
		r16 = memuh(r27+r19<<#1)
	}
	{
		r10 = combine(r16.l,r10.l)
		r0 = memw(r29+##18932)
		r11 = memuh(r27+r11<<#1)
	}
	{
		v18 = valign(v19,v19,#4)
		r13 = memw(r29+##18920)
		r14 = memuh(r27+r14<<#1)
	}
	{
		v18.w = vinsert(r28)
		v13 = valign(v9,v9,#4)
		r15 = memw(r29+##18924)
	}
	{
		v13.w = vinsert(r8)
		r13 = memuh(r27+r13<<#1)
		r8 = memw(r29+##18800)
	}
	{
		r26 = memw(r29+##18804)
		r15 = memuh(r27+r15<<#1)
	}
	{
		r7 = combine(r15.l,r13.l)
		v21 = valign(v18,v18,#4)
		r28 = memuh(r27+r26<<#1)
		r8 = memuh(r27+r8<<#1)
	}
	{
		v8 = valign(v13,v13,#4)
		r12 = memuh(r27+r12<<#1)
		r18 = memw(r29+##18812)
	}
	{
		v8.w = vinsert(r9)
		r0 = memuh(r27+r0<<#1)
		r9 = memw(r29+##18940)
	}
	{
		r8 = combine(r28.l,r8.l)
		r15 = #64
		r16 = memuh(r27+r18<<#1)
	}
	{
		v21.w = vinsert(r8)
		v16 = valign(v8,v8,#4)
		r9 = memuh(r27+r9<<#1)
	}
	{
		v16.w = vinsert(r10)
	}
	{
		r3 = add(r29,#16128)
		v27 = valign(v21,v21,#4)
		vmem(r3+#0) = v7
	}
	{
		r3 = combine(r16.l,r11.l)
		v22 = valign(v16,v16,#4)
		vmem(r3+#0) = v6
	}
	{
		v22.w = vinsert(r7)
		v27.w = vinsert(r3)
		r6 = add(r29,#11648)
		v10 = vmem(r6+#0)
	}                               // 256-byte Folded Reload
	{
		r3 = add(r29,#16384)
		v17 = vror(v15,r15)
		v11 = vmem(r6+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = combine(r0.l,r14.l)
		v1 = valign(v22,v22,#4)
		v31:30.w = vadd(v1:0.w,v11:10.w)
		vmem(r2+#0) = v31.new
	}
	{
		v1.w = vinsert(r2)
		r3 = combine(r5.l,r4.l)
		v0 = valign(v3,v3,#4)
		vmem(r3+#0) = v30
	}
	{
		v11 = valign(v27,v27,#4)
		r2 = memw(r29+##16380)
	}
	{
		v0.w = vinsert(r3)
		memw(r29+##11520) = r2
	}                               // 4-byte Folded Spill
	{
		v12 = valign(v1,v1,#4)
		r2 = memw(r29+##16376)
		memw(r29+#3584) = r2.new
	}
	{
		v13 = valign(v0,v0,#4)
		r2 = memw(r29+##16372)
		memw(r29+#3580) = r2.new
	}
	{
		r2 = combine(r9.l,r12.l)
		r3 = memw(r29+##16368)
		memw(r29+#3072) = r3.new
	}
	{
		v12.w = vinsert(r2)
		r2 = add(r29,#15104)
		v16 = vror(v11,r15)
	}
	{
		r3 = memw(r29+##16364)
		memw(r29+#2944) = r3.new
	}
	{
		r2 = add(r29,#15232)
		v17 = vor(v17,v13)
		v25 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		v28 = valign(v12,v12,#4)
		r21 = memw(r29+##16360)
	}
	{
		r22 = memw(r29+##16356)
		v26 = vmem(r2+#0)
	}
	{
		r2 = ##67372036
		v29 = vor(v16,v28)
	}
	{
		v25.h += vmpyi(v17.h,r2.b)
		r23 = memw(r29+##16352)
	}
	{
		r24 = memw(r29+##16348)
		r26 = memw(r29+##16340)
	}
	{
		v26.h += vmpyi(v29.h,r2.b)
		r2 = add(r29,#15104)
		r16 = memw(r29+##16332)
	}
	{
		r0 = memw(r29+##16260)
		r25 = memw(r29+##16344)
	}
	{
		r27 = memw(r29+##16336)
		r17 = memw(r29+##16328)
	}
	{
		r2 = add(r29,#15232)
		vmem(r2+#0) = v25
	}                               // 256-byte Folded Spill
	{
		vmem(r2+#0) = v26
	}                               // 256-byte Folded Spill
	{
		r18 = memw(r29+##16320)
		r19 = memw(r29+##16324)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.522:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##16256)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	.falign
// %bb.523:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##16264)
	}
	{
		v30 = valign(v2,v2,#4)
	}
	{
		v30.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v30,v30,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.524:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##11136)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##16268)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v10,v10,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.525:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##11008)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##16272)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v1,v1,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.526:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10880)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##16276)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v14,v14,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.527:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10752)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##16280)
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v10,v10,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.528:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10624)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##16284)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v1,v1,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.529:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10496)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##16288)
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.530:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10368)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##16292)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.531:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##16296)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v3,v3,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.532:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10112)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##16300)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v21,v21,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.533:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10108)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##16304)
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.534:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10104)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##16308)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v18,v18,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.535:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10100)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##16312)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v22,v22,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.536:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10060)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##16316)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v7,v7,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.537:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10052)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = r19
	}
	{
		v31 = valign(v17,v17,#4)
	}
	{
		r2 = add(r29,#11136)
		v18 = vror(v31,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v18
	}                               // 128-byte Folded Spill
	.falign
// %bb.538:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r19 = r0
		r0 = r18
		r1 = memw(r29+##10056)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.539:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##10064)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = r17
	}
	{
		v16 = valign(v10,v10,#4)
	}
	{
		v16.w = vinsert(r19)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v16,v16,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.540:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10068)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = r16
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v26,v26,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.541:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10072)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v27,v27,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.542:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10076)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v0,v0,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.543:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v28,v28,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.544:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10084)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = r24
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v29,v29,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.545:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10088)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v30,v30,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.546:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10092)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v31,v31,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.547:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##10096)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11392)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v11,v11,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.548:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11392)
		r1 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14336)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+#2944)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v14 = valign(v20,v20,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.549:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14336)
		r1 = memw(r29+##14464)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14464)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+#3072)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v10 = valign(v23,v23,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.550:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14464)
		r1 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14592)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+#3580)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v1 = valign(v19,v19,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.551:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14592)
		r1 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14720)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+#3584)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v17 = valign(v12,v12,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.552:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14720)
		r1 = memw(r29+##14848)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14848)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##11520)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v29 = valign(v9,v9,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.553:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14848)
		r21 = memw(r29+##16224)
	}
	{
		r2 = memw(r29+##16252)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##16248)
		memw(r29+##14720) = r2
	}
	{
		v17.w = vinsert(r0)
		memw(r29+##14592) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##16244)
		memw(r29+##14464) = r2.new
	}
	{
		v11 = valign(v17,v17,#4)
		r2 = memw(r29+##16240)
	}
	{
		r2 = memw(r29+##16236)
		memw(r29+##14336) = r2
	}
	{
		r2 = memw(r29+##16232)
		memw(r29+##11520) = r2
	}
	{
		r2 = memw(r29+##16228)
		memw(r29+##11392) = r2
	}
	{
		r2 = add(r29,#11136)
		memw(r29+##11264) = r2
	}                               // 4-byte Folded Spill
	{
		r1 = memw(r29+##8184)
		r24 = memw(r29+##16192)
	}                               // 4-byte Folded Reload
	{
		r0 = memw(r29+##16132)
		r22 = memw(r29+##16220)
	}
	{
		r2 = add(r29,#14976)
		r26 = memw(r29+##16212)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29 = vor(v15,v11)
		r23 = memw(r29+##16204)
	}
	{
		r25 = memw(r29+##16216)
		r27 = memw(r29+##16208)
	}
	{
		r16 = memw(r29+##16200)
	}
	{
		r17 = memw(r29+##16196)
		vmem(r2+#0) = v29
	}
	{
		r18 = memw(r29+##16188)
		r19 = memw(r29+##16184)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.554:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##16128)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##9856)
	}                               // 4-byte Folded Reload
	.falign
// %bb.555:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##9852)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##16136)
	}
	{
		v20 = valign(v17,v17,#4)
	}
	{
		v20.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v20,v20,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.556:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##9600)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##16140)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.557:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##9472)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##16144)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v24,v24,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.558:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##9344)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##16148)
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v25,v25,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.559:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##9216)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = memw(r29+##16152)
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v4,v4,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.560:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##9088)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = memw(r29+##16156)
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v26,v26,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.561:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8960)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = memw(r29+##16160)
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v27,v27,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.562:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8832)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = memw(r29+##16164)
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v0,v0,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.563:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8704)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = memw(r29+##16168)
	}
	{
		call ##__hexagon_modsi3
		v5 = valign(v28,v28,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.564:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8576)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##16172)
	}
	{
		call ##__hexagon_modsi3
		v16 = valign(v29,v29,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.565:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8448)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##16176)
	}
	{
		call ##__hexagon_modsi3
		v8 = valign(v30,v30,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.566:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8192)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##16180)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v31,v31,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.567:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8408)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v5,v5,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.568:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8412)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r18
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v16,v16,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.569:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11136)
		r1 = memw(r29+##8416)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = r17
	}
	{
		v23 = valign(v13,v13,#4)
	}
	{
		r2 = add(r29,#11136)
		v7 = vror(v23,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v7
	}                               // 128-byte Folded Spill
	.falign
// %bb.570:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r24
		r1 = memw(r29+##8188)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.571:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##8420)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = r16
	}
	{
		v12 = valign(v14,v14,#4)
	}
	{
		v12.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v12,v12,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.572:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##8424)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v8,v8,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.573:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##8428)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v2,v2,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.574:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##8432)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v14,v14,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.575:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##8436)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v10,v10,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.576:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##8440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v1,v1,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.577:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##8444)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11008)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v17,v17,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.578:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#11008)
		r1 = memw(r29+##13312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13312)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##11264)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v13,v13,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.579:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13312)
		r1 = memw(r29+##13440)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##11392)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v3,v3,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.580:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##13568)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##11520)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v26 = valign(v21,v21,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.581:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14336)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v27 = valign(v15,v15,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.582:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14336)
		r1 = memw(r29+##13824)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14464)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##14464)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v0 = valign(v18,v18,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.583:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14464)
		r1 = memw(r29+##14080)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14592)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v22,v22,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.584:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14592)
		r1 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14720)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v30 = valign(v7,v7,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.585:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14720)
		r20 = memw(r29+##16612)
	}
	{
		r2 = memw(r29+##16636)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##16632)
		memw(r29+##14720) = r2
	}
	{
		v13.w = vinsert(r0)
		memw(r29+##14592) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##16628)
		memw(r29+##14464) = r2.new
	}
	{
		v19 = valign(v13,v13,#4)
		r2 = memw(r29+##16624)
	}
	{
		r2 = memw(r29+##16620)
		memw(r29+##14336) = r2
	}
	{
		r2 = add(r29,#14848)
		memw(r29+##14208) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = add(r29,#14976)
		r1 = memw(r29+##6008)
		v0 = vmem(r2+#0)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#11136)
		r19 = memw(r29+##16616)
		v1 = vmem(r2+#0)
	}
	{
		r2 = add(r29,#14848)
		r21 = memw(r29+##16608)
		v22 = vmem(r2+#0)
	}
	{
		r22 = memw(r29+##16604)
		r26 = memw(r29+##16596)
	}
	{
		v0 = vor(v22,v19)
		r23 = memw(r29+##16588)
	}
	{
		r0 = memw(r29+##16516)
		r25 = memw(r29+##16600)
	}
	{
		r27 = memw(r29+##16592)
		r16 = memw(r29+##16584)
	}
	{
		r2 = add(r29,#14976)
		vmem(r2+#0) = v0
	}                               // 256-byte Folded Spill
	{
		vmem(r2+#0) = v1
	}                               // 256-byte Folded Spill
	{
		r24 = memw(r29+##16576)
		r17 = memw(r29+##16580)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.586:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r18 = r0
		r0 = memw(r29+##16512)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##7936)
	}                               // 4-byte Folded Reload
	.falign
// %bb.587:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##7808)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##16520)
	}
	{
		v5 = valign(v9,v9,#4)
	}
	{
		v5.w = vinsert(r18)
	}
	{
		call ##__hexagon_modsi3
		v2 = valign(v5,v5,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.588:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##7680)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##16524)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v11,v11,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.589:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##7552)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##16528)
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v20,v20,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.590:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##7424)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = memw(r29+##16532)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v23,v23,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.591:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##7296)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = memw(r29+##16536)
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v19,v19,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.592:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##7168)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = memw(r29+##16540)
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v12,v12,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.593:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##7040)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = memw(r29+##16544)
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v9,v9,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.594:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6912)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = memw(r29+##16548)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v5,v5,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.595:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6784)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = memw(r29+##16552)
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v16,v16,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.596:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6656)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = memw(r29+##16556)
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v8,v8,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.597:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6528)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = memw(r29+##16560)
	}
	{
		call ##__hexagon_modsi3
		v6 = valign(v2,v2,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.598:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6400)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##16564)
	}
	{
		call ##__hexagon_modsi3
		v24 = valign(v14,v14,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.599:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6272)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##16568)
	}
	{
		call ##__hexagon_modsi3
		v22 = valign(v10,v10,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.600:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6016)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##16572)
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v1,v1,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.601:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6232)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = r17
	}
	{
		v18 = valign(v3,v3,#4)
	}
	{
		r2 = add(r29,#13568)
		v24 = vror(v18,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v24
	}                               // 128-byte Folded Spill
	.falign
// %bb.602:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r24
		r1 = memw(r29+##6012)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.603:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##6236)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r16
	}
	{
		v13 = valign(v8,v8,#4)
	}
	{
		v13.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v13,v13,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.604:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6240)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v6,v6,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.605:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6244)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v24,v24,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.606:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6248)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v25,v25,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.607:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6252)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v4 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v4.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v20 = valign(v4,v4,#4)
		vmem(r2+#0) = v20.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.608:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6256)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v26 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v26.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v23 = valign(v26,v26,#4)
		vmem(r2+#0) = v23.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.609:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6260)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v27 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v27.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v19 = valign(v27,v27,#4)
		vmem(r2+#0) = v19.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.610:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6264)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v0 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v0.w = vinsert(r0)
		r0 = r20
	}
	{
		call ##__hexagon_modsi3
		v12 = valign(v0,v0,#4)
		vmem(r2+#0) = v12.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.611:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##6268)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v28 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v28.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v9 = valign(v28,v28,#4)
		vmem(r2+#0) = v9.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.612:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##12672)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14208)
		v29 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v29.w = vinsert(r0)
		r0 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v5 = valign(v29,v29,#4)
		vmem(r2+#0) = v5.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.613:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14208)
		r1 = memw(r29+##12800)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14336)
		v30 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v30.w = vinsert(r0)
		r0 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v16 = valign(v30,v30,#4)
		vmem(r2+#0) = v16.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.614:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14336)
		r1 = memw(r29+##12928)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14464)
		v31 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v31.w = vinsert(r0)
		r0 = memw(r29+##14464)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v8 = valign(v31,v31,#4)
		vmem(r2+#0) = v8.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.615:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14464)
		r1 = memw(r29+##13056)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14592)
		v11 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v11.w = vinsert(r0)
		r0 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v2 = valign(v11,v11,#4)
		vmem(r2+#0) = v2.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.616:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14592)
		r1 = memw(r29+##13184)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14720)
		v20 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v20.w = vinsert(r0)
		r0 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v31 = valign(v20,v20,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.617:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14720)
		r21 = memw(r29+##16480)
		r1 = memw(r29+#4088)
	}
	{
		r2 = memw(r29+##16508)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		r2 = memw(r29+##16504)
		memw(r29+##14720) = r2
	}
	{
		v3.w = vinsert(r0)
		memw(r29+##14592) = r2
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+##16500)
		memw(r29+##14336) = r2.new
	}
	{
		v15 = valign(v3,v3,#4)
		r2 = memw(r29+##16496)
	}
	{
		r2 = memw(r29+##16492)
		memw(r29+##14208) = r2
	}
	{
		r2 = memw(r29+##16488)
		memw(r29+##14080) = r2
	}
	{
		r2 = memw(r29+##16484)
		memw(r29+##13824) = r2
	}
	{
		r2 = add(r29,#13568)
		memw(r29+##13696) = r2
	}                               // 4-byte Folded Spill
	{
		r24 = memw(r29+##16448)
		r22 = memw(r29+##16476)
	}
	{
		r2 = add(r29,#14464)
		r0 = memw(r29+##16388)
		v6 = vmem(r2+#0)
	}
	{
		v25 = vor(v6,v15)
		r26 = memw(r29+##16468)
	}
	{
		r23 = memw(r29+##16460)
		r25 = memw(r29+##16472)
	}
	{
		r27 = memw(r29+##16464)
		r16 = memw(r29+##16456)
	}
	{
		r17 = memw(r29+##16452)
	}
	{
		vmem(r2+#0) = v25
	}                               // 128-byte Folded Spill
	{
		r18 = memw(r29+##16444)
		r19 = memw(r29+##16440)
	}
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.618:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r20 = r0
		r0 = memw(r29+##16384)
	}
	{
		call ##__hexagon_modsi3
		r1 = memw(r29+##5760)
	}                               // 4-byte Folded Reload
	.falign
// %bb.619:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##5632)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##16392)
	}
	{
		v21 = valign(v3,v3,#4)
	}
	{
		v21.w = vinsert(r20)
	}
	{
		call ##__hexagon_modsi3
		v7 = valign(v21,v21,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.620:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##5504)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##16396)
	}
	{
		call ##__hexagon_modsi3
		v25 = valign(v17,v17,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.621:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##5376)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##16400)
	}
	{
		call ##__hexagon_modsi3
		v4 = valign(v13,v13,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.622:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##5248)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##16404)
	}
	{
		call ##__hexagon_modsi3
		v26 = valign(v3,v3,#4)
		vmem(r2+#0) = v26.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.623:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##5120)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##16408)
	}
	{
		call ##__hexagon_modsi3
		v27 = valign(v21,v21,#4)
		vmem(r2+#0) = v27.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.624:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4992)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v15 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v15.w = vinsert(r0)
		r0 = memw(r29+##16412)
	}
	{
		call ##__hexagon_modsi3
		v0 = valign(v15,v15,#4)
		vmem(r2+#0) = v0.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.625:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4864)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v18 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v18.w = vinsert(r0)
		r0 = memw(r29+##16416)
	}
	{
		call ##__hexagon_modsi3
		v28 = valign(v18,v18,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.626:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4736)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r0 = memw(r29+##16420)
	}
	{
		call ##__hexagon_modsi3
		v29 = valign(v22,v22,#4)
		vmem(r2+#0) = v29.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.627:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4608)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = memw(r29+##16424)
	}
	{
		call ##__hexagon_modsi3
		v30 = valign(v7,v7,#4)
		vmem(r2+#0) = v30.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.628:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4480)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v6 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v6.w = vinsert(r0)
		r0 = memw(r29+##16428)
	}
	{
		call ##__hexagon_modsi3
		v31 = valign(v6,v6,#4)
		vmem(r2+#0) = v31.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.629:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4352)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v24 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v24.w = vinsert(r0)
		r0 = memw(r29+##16432)
	}
	{
		call ##__hexagon_modsi3
		v11 = valign(v24,v24,#4)
		vmem(r2+#0) = v11.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.630:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4096)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v25 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v25.w = vinsert(r0)
		r0 = memw(r29+##16436)
	}
	{
		call ##__hexagon_modsi3
		v14 = valign(v25,v25,#4)
		vmem(r2+#0) = v14.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.631:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4312)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v23 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v23.w = vinsert(r0)
		r0 = r19
	}
	{
		call ##__hexagon_modsi3
		v10 = valign(v23,v23,#4)
		vmem(r2+#0) = v10.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.632:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4316)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13568)
		v19 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v19.w = vinsert(r0)
		r0 = r18
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v19,v19,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.633:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13568)
		r1 = memw(r29+##4320)
	}                               // 4-byte Folded Reload
	{
		r2 = #64
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = r17
	}
	{
		v22 = valign(v21,v21,#4)
	}
	{
		r2 = add(r29,#13568)
		v29 = vror(v22,r2)
	}
	{
		call ##__hexagon_modsi3
		vmem(r2+#0) = v29
	}                               // 128-byte Folded Spill
	.falign
// %bb.634:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r17 = r0
		r0 = r24
		r1 = memw(r29+#4092)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
	}
	.falign
// %bb.635:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#15488)
		r1 = memw(r29+##4324)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v7 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v7.w = vinsert(r0)
		r0 = r16
	}
	{
		v6 = valign(v7,v7,#4)
	}
	{
		v6.w = vinsert(r17)
	}
	{
		call ##__hexagon_modsi3
		v1 = valign(v6,v6,#4)
		vmem(r2+#0) = v1.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.636:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##4328)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v12 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v12.w = vinsert(r0)
		r0 = r23
	}
	{
		call ##__hexagon_modsi3
		v17 = valign(v12,v12,#4)
		vmem(r2+#0) = v17.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.637:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##4332)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v9 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v9.w = vinsert(r0)
		r0 = r27
	}
	{
		call ##__hexagon_modsi3
		v13 = valign(v9,v9,#4)
		vmem(r2+#0) = v13.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.638:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##4336)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v5 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v5.w = vinsert(r0)
		r0 = r26
	}
	{
		call ##__hexagon_modsi3
		v3 = valign(v5,v5,#4)
		vmem(r2+#0) = v3.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.639:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##4340)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v16 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v16.w = vinsert(r0)
		r0 = r25
	}
	{
		call ##__hexagon_modsi3
		v21 = valign(v16,v16,#4)
		vmem(r2+#0) = v21.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.640:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##4344)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v8 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v8.w = vinsert(r0)
		r0 = r22
	}
	{
		call ##__hexagon_modsi3
		v15 = valign(v8,v8,#4)
		vmem(r2+#0) = v15.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.641:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##4348)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13440)
		v2 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v2.w = vinsert(r0)
		r0 = r21
	}
	{
		call ##__hexagon_modsi3
		v18 = valign(v2,v2,#4)
		vmem(r2+#0) = v18.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.642:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13440)
		r1 = memw(r29+##11776)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13696)
		v14 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r0)
		r0 = memw(r29+##13696)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v6 = valign(v14,v14,#4)
		vmem(r2+#0) = v6.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.643:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13696)
		r1 = memw(r29+##11904)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#13824)
		v10 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v10.w = vinsert(r0)
		r0 = memw(r29+##13824)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v24 = valign(v10,v10,#4)
		vmem(r2+#0) = v24.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.644:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#13824)
		r1 = memw(r29+##12032)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14080)
		v1 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v1.w = vinsert(r0)
		r0 = memw(r29+##14080)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v22 = valign(v1,v1,#4)
		vmem(r2+#0) = v22.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.645:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14080)
		r1 = memw(r29+##12160)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14208)
		v17 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v17.w = vinsert(r0)
		r0 = memw(r29+##14208)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v7 = valign(v17,v17,#4)
		vmem(r2+#0) = v7.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.646:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14208)
		r1 = memw(r29+##12288)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14336)
		v13 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v13.w = vinsert(r0)
		r0 = memw(r29+##14336)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v25 = valign(v13,v13,#4)
		vmem(r2+#0) = v25.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.647:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14336)
		r1 = memw(r29+##12416)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14592)
		v3 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v3.w = vinsert(r0)
		r0 = memw(r29+##14592)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v4 = valign(v3,v3,#4)
		vmem(r2+#0) = v4.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.648:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r2 = add(r29,#14592)
		r1 = memw(r29+##12544)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r29,#14720)
		v21 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v21.w = vinsert(r0)
		r0 = memw(r29+##14720)
	}                               // 4-byte Folded Reload
	{
		call ##__hexagon_modsi3
		v28 = valign(v21,v21,#4)
		vmem(r2+#0) = v28.new
	}                               // 128-byte Folded Spill
	.falign
// %bb.649:                             // %"consume rows"
                                        //   in Loop: Header=BB120_6 Depth=3
	{
		r4 = add(r29,#14848)
		r2 = add(r29,#14720)
		r5 = #31
		v5 = vmem(r29+#5)
	}                               // 128-byte Folded Reload
	{
		r4 = add(r29,#14976)
		r3 = add(r29,#18432)
		v0.w = vasr(v18.w,r5)
		v18.cur = vmem(r4+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r29,#14464)
		r23 = add(r29,#22144)
		v20 = vand(v0,v5)
		v22 = vmem(r2+#0)
	}                               // 128-byte Folded Reload
	{
		v22.w = vinsert(r0)
		r4 = add(r29,#15488)
		v25.w = vasr(v19.w,r5)
		v19.cur = vmem(r4+#0)
	}                               // 256-byte Folded Reload
	{
		v11 = v16
		v21 = vand(v25,v5)
		r4 = memw(r29+#504)
		v16.cur = vmem(r4+#0)
	}                               // 128-byte Folded Reload
	{
		r4 = add(r4,#128)
		v1.w = vasr(v6.w,r5)
		v6.cur = vmem(r2+#0)
		memw(r29+#504) = r4.new
	}                               // 128-byte Folded Reload
	{
		r5 = add(r29,#13568)
		v4 = valign(v22,v22,#4)
		v15 = v6
		r4 = memw(r29+#484)
	}                               // 4-byte Folded Reload
	{
		r4 = add(r4,#128)
		v14 = vor(v30,v4)
		v30.cur = vmem(r5+#0)
		memw(r29+#484) = r4.new
	}                               // 128-byte Folded Reload
	{
		r2 = setbit(r3,#7)
		r4 = #31
		v23 = vand(v1,v5)
		v24 = v16
	}
	{
		r26 = add(r29,#18176)
		v26.w = vasr(v14.w,r4)
		v3 = v16
		v0 = v16
	}
	{
		r0 = setbit(r26,#7)
		v17:16.w = vadd(v19:18.w,v21:20.w)
		v22 = vand(v26,v5)
	}
	{
		v27:26.w = vadd(v15:14.w,v23:22.w)
		vmem(r2+#0) = v27.new
	}
	{
		r4 = memw(r29+##18632)
		vmem(r3+#0) = v26
	}
	{
		r2 = memw(r29+##18624)
		r5 = memw(r29+##18636)
	}
	{
		r3 = memw(r29+##18628)
		r6 = memw(r29+##18640)
	}
	{
		r2 = memuh(r23+r2<<#1)
		r4 = memuh(r23+r4<<#1)
	}
	{
		r3 = memuh(r23+r3<<#1)
		r5 = memuh(r23+r5<<#1)
	}
	{
		r15 = combine(r3.l,r2.l)
		r13 = combine(r5.l,r4.l)
		r2 = memw(r29+##18644)
	}
	{
		r4 = memw(r29+##18648)
		r5 = memw(r29+##18652)
	}
	{
		r1 = memw(r29+##18656)
		r7 = memw(r29+##18660)
	}
	{
		r3 = memuh(r23+r6<<#1)
		r2 = memuh(r23+r2<<#1)
	}
	{
		r12 = combine(r2.l,r3.l)
		r4 = memuh(r23+r4<<#1)
		r3 = memuh(r23+r5<<#1)
	}
	{
		r9 = combine(r3.l,r4.l)
		r5 = memuh(r23+r1<<#1)
		r1 = memw(r29+##18560)
	}
	{
		r2 = memw(r29+##18664)
		r3 = memw(r29+##18668)
	}
	{
		r28 = memw(r29+##18680)
		r22 = memuh(r23+r1<<#1)
	}
	{
		r1 = memw(r29+##18564)
		r6 = memuh(r23+r2<<#1)
	}
	{
		r2 = memw(r29+##18672)
		r10 = memw(r29+##18568)
	}
	{
		r1 = memuh(r23+r1<<#1)
		r11 = memw(r29+##18572)
	}
	{
		r7 = memuh(r23+r7<<#1)
		r4 = memuh(r23+r2<<#1)
	}
	{
		r8 = combine(r7.l,r5.l)
		r28 = combine(r1.l,r22.l)
		r10 = memuh(r23+r10<<#1)
		r2 = memuh(r23+r28<<#1)
	}
	{
		v24.w = vinsert(r28)
		r7 = memuh(r23+r3<<#1)
		r5 = memw(r29+##18676)
	}
	{
		r7 = combine(r7.l,r6.l)
		r16 = memw(r29+##18576)
		r11 = memuh(r23+r11<<#1)
	}
	{
		r10 = combine(r11.l,r10.l)
		r16 = memuh(r23+r16<<#1)
		r3 = memw(r29+##18684)
	}
	{
		v23 = valign(v24,v24,#4)
		r17 = memw(r29+##18580)
	}
	{
		v23.w = vinsert(r10)
		r14 = memw(r29+##18556)
	}
	{
		r18 = memw(r29+##18584)
		r24 = memw(r29+##18592)
	}
	{
		v28 = valign(v23,v23,#4)
		r17 = memuh(r23+r17<<#1)
		r1 = memw(r29+##18588)
	}
	{
		r10 = combine(r17.l,r16.l)
		r11 = memw(r29+##18596)
		r18 = memuh(r23+r18<<#1)
	}
	{
		v28.w = vinsert(r10)
		r16 = memw(r29+##18600)
		r1 = memuh(r23+r1<<#1)
	}
	{
		r1 = combine(r1.l,r18.l)
		r28 = memuh(r23+r24<<#1)
		r11 = memuh(r23+r11<<#1)
	}
	{
		r21 = memw(r29+##18616)
		r17 = memw(r29+##18604)
	}
	{
		r28 = combine(r11.l,r28.l)
		v29 = valign(v28,v28,#4)
		r16 = memuh(r23+r16<<#1)
	}
	{
		v29.w = vinsert(r1)
		r11 = memw(r29+##18620)
		r17 = memuh(r23+r17<<#1)
	}
	{
		r10 = memw(r29+##18488)
		r1 = memw(r29+##18496)
	}
	{
		v2 = valign(v29,v29,#4)
		r19 = memw(r29+##18492)
		r3 = memuh(r23+r3<<#1)
	}
	{
		v2.w = vinsert(r28)
		r10 = memuh(r23+r10<<#1)
		r22 = memw(r29+##18608)
	}
	{
		r16 = combine(r17.l,r16.l)
		r22 = memuh(r23+r22<<#1)
		r17 = memw(r29+##18500)
	}
	{
		v30 = valign(v2,v2,#4)
		r20 = memw(r29+##18612)
		r1 = memuh(r23+r1<<#1)
	}
	{
		r2 = combine(r3.l,r2.l)
		r19 = memuh(r23+r19<<#1)
		r25 = memw(r29+##18508)
	}
	{
		v30.w = vinsert(r16)
		r19 = combine(r19.l,r10.l)
		r10 = memw(r29+##18504)
	}
	{
		r17 = memuh(r23+r17<<#1)
		r20 = memuh(r23+r20<<#1)
	}
	{
		r18 = combine(r17.l,r1.l)
		r10 = memuh(r23+r10<<#1)
		r28 = memuh(r23+r25<<#1)
	}
	{
		r17 = combine(r28.l,r10.l)
		v10 = valign(v30,v30,#4)
		r1 = memw(r29+##18512)
	}
	{
		r16 = combine(r20.l,r22.l)
		r20 = memw(r29+##18516)
		r10 = memuh(r23+r21<<#1)
	}
	{
		r22 = memw(r29+##18520)
		r21 = memw(r29+##18528)
	}
	{
		v10.w = vinsert(r16)
		r1 = memuh(r23+r1<<#1)
		r27 = memw(r29+##18524)
	}
	{
		r20 = memuh(r23+r20<<#1)
		r28 = memuh(r23+r21<<#1)
	}
	{
		r16 = combine(r20.l,r1.l)
		v10 = valign(v10,v10,#4)
		r20 = memw(r29+##18532)
	}
	{
		r21 = memw(r29+##18432)
		r5 = memuh(r23+r5<<#1)
	}
	{
		r4 = combine(r5.l,r4.l)
		r27 = add(r29,#22144)
		r14 = memuh(r23+r14<<#1)
		r1 = memuh(r23+r27<<#1)
	}
	{
		r22 = memuh(r23+r22<<#1)
		r11 = memuh(r23+r11<<#1)
	}
	{
		r1 = combine(r1.l,r22.l)
		r10 = combine(r11.l,r10.l)
		r23 = memw(r29+##18436)
	}
	{
		r23 = memuh(r27+r23<<#1)
		r22 = memuh(r27+r21<<#1)
	}
	{
		v10.w = vinsert(r10)
		r22 = combine(r23.l,r22.l)
		r21 = memw(r29+##18440)
	}
	{
		r21 = memuh(r27+r21<<#1)
		r25 = memw(r29+##18552)
	}
	{
		v6 = valign(v10,v10,#4)
		r23 = memw(r29+##18444)
	}
	{
		v11.w = vinsert(r22)
		v6.w = vinsert(r15)
	}
	{
		r22 = memuh(r27+r23<<#1)
		r23 = memw(r29+##18448)
	}
	{
		r21 = combine(r22.l,r21.l)
		v31 = valign(v11,v11,#4)
		r22 = memw(r29+##18452)
	}
	{
		v31.w = vinsert(r21)
		v7 = valign(v6,v6,#4)
		r22 = memuh(r27+r22<<#1)
		r21 = memuh(r27+r23<<#1)
	}
	{
		v7.w = vinsert(r13)
		r21 = combine(r22.l,r21.l)
		r23 = memw(r29+##18456)
	}
	{
		v24 = valign(v31,v31,#4)
		r22 = memw(r29+##18460)
	}
	{
		v24.w = vinsert(r21)
		v10 = valign(v7,v7,#4)
		r22 = memuh(r27+r22<<#1)
		r21 = memuh(r27+r23<<#1)
	}
	{
		v10.w = vinsert(r12)
		r21 = combine(r22.l,r21.l)
		r23 = memw(r29+##18464)
	}
	{
		v25 = valign(v24,v24,#4)
		r22 = memw(r29+##18468)
	}
	{
		v25.w = vinsert(r21)
		v1 = valign(v10,v10,#4)
		r22 = memuh(r27+r22<<#1)
		r21 = memuh(r27+r23<<#1)
	}
	{
		v1.w = vinsert(r9)
		r21 = combine(r22.l,r21.l)
		r23 = memw(r29+##18472)
	}
	{
		v26 = valign(v25,v25,#4)
		r22 = memw(r29+##18476)
	}
	{
		v26.w = vinsert(r21)
		r21 = memuh(r27+r23<<#1)
		r23 = memw(r29+##18480)
	}
	{
		r22 = memuh(r27+r22<<#1)
		r24 = memw(r29+##18548)
	}
	{
		r21 = combine(r22.l,r21.l)
		v27 = valign(v26,v26,#4)
		r22 = memw(r29+##18484)
	}
	{
		v27.w = vinsert(r21)
		r21 = memuh(r27+r23<<#1)
		r23 = memw(r29+##18544)
	}
	{
		r22 = memuh(r27+r22<<#1)
	}
	{
		r21 = combine(r22.l,r21.l)
		v12 = valign(v27,v27,#4)
		r22 = memuh(r27+r20<<#1)
	}
	{
		v12.w = vinsert(r21)
		r28 = combine(r22.l,r28.l)
		r21 = memw(r29+##18540)
	}
	{
		v30 = valign(v12,v12,#4)
	}
	{
		v30.w = vinsert(r19)
		r19 = memw(r29+##18536)
		r21 = memuh(r27+r21<<#1)
	}
	{
		v9 = valign(v30,v30,#4)
		r20 = memuh(r27+r19<<#1)
		r19 = memuh(r27+r24<<#1)
	}
	{
		v9.w = vinsert(r18)
		r18 = memuh(r27+r23<<#1)
	}
	{
		v31 = valign(v9,v9,#4)
	}
	{
		v31.w = vinsert(r17)
		r17 = memuh(r27+r25<<#1)
		vmem(r26+#0) = v16
	}
	{
		r14 = combine(r14.l,r17.l)
		r23 = memw(r29+##18176)
		vmem(r0+#0) = v17
	}
	{
		v4 = valign(v31,v31,#4)
		r11 = memuh(r27+r23<<#1)
		r0 = memw(r29+##18180)
	}
	{
		v4.w = vinsert(r16)
		r10 = memw(r29+##18184)
	}
	{
		r0 = memuh(r27+r0<<#1)
		r26 = memw(r29+##18204)
	}
	{
		r0 = combine(r0.l,r11.l)
		v5 = valign(v4,v4,#4)
		r11 = memw(r29+##18200)
	}
	{
		v5.w = vinsert(r1)
		v3.w = vinsert(r0)
		r1 = memw(r29+##18188)
	}
	{
		r0 = memuh(r27+r10<<#1)
		r10 = memw(r29+##18192)
	}
	{
		v13 = valign(v3,v3,#4)
		r1 = memuh(r27+r1<<#1)
		r13 = memuh(r27+r11<<#1)
	}
	{
		r24 = combine(r1.l,r0.l)
		r1 = combine(r21.l,r20.l)
		r0 = memw(r29+##18196)
	}
	{
		v13.w = vinsert(r24)
		v8 = valign(v5,v5,#4)
		r15 = memuh(r27+r10<<#1)
	}
	{
		v8.w = vinsert(r28)
		r25 = memuh(r27+r0<<#1)
		r10 = memw(r29+##18208)
	}
	{
		r15 = combine(r25.l,r15.l)
		r0 = combine(r19.l,r18.l)
		r11 = memw(r29+##18212)
	}
	{
		v9 = valign(v13,v13,#4)
		r12 = memuh(r27+r10<<#1)
		r6 = memw(r29+##18368)
	}
	{
		v9.w = vinsert(r15)
		v3 = valign(v8,v8,#4)
	}
	{
		v3.w = vinsert(r1)
		r15 = memuh(r27+r11<<#1)
		r11 = memw(r29+##18224)
	}
	{
		r12 = combine(r15.l,r12.l)
		v13 = valign(v1,v1,#4)
		r6 = memuh(r27+r6<<#1)
		r1 = memuh(r27+r26<<#1)
	}
	{
		v13.w = vinsert(r8)
		r13 = combine(r1.l,r13.l)
		v11 = valign(v9,v9,#4)
		r8 = memuh(r27+r11<<#1)
	}
	{
		v11.w = vinsert(r13)
		v7 = valign(v3,v3,#4)
		r15 = memw(r29+##18232)
	}
	{
		v7.w = vinsert(r0)
		r1 = memw(r29+##18220)
	}
	{
		v21 = valign(v13,v13,#4)
		r0 = memw(r29+##18216)
	}
	{
		v21.w = vinsert(r7)
		v12 = valign(v11,v11,#4)
		r10 = memuh(r27+r1<<#1)
	}
	{
		v12.w = vinsert(r12)
		v18 = valign(v7,v7,#4)
		r9 = memuh(r27+r0<<#1)
	}
	{
		v18.w = vinsert(r14)
		r9 = combine(r10.l,r9.l)
		r0 = memw(r29+##18236)
	}
	{
		v11 = valign(v21,v21,#4)
		r14 = memw(r29+##18228)
	}
	{
		v11.w = vinsert(r4)
		v14 = valign(v12,v12,#4)
		r1 = memw(r29+##18304)
	}
	{
		v14.w = vinsert(r9)
		v18 = valign(v18,v18,#4)
		r12 = memuh(r27+r14<<#1)
		r9 = memuh(r27+r15<<#1)
	}
	{
		r8 = combine(r12.l,r8.l)
		r10 = memw(r29+##18308)
		r12 = memuh(r27+r1<<#1)
	}
	{
		v15 = valign(v14,v14,#4)
		r1 = memw(r29+##18312)
		r7 = memuh(r27+r0<<#1)
	}
	{
		v15.w = vinsert(r8)
		r5 = memw(r29+##18240)
		r8 = memuh(r27+r10<<#1)
	}
	{
		r8 = combine(r8.l,r12.l)
		r7 = combine(r7.l,r9.l)
		r14 = memw(r29+##18316)
	}
	{
		v0.w = vinsert(r8)
		v16 = valign(v15,v15,#4)
		r11 = memw(r29+##18244)
	}
	{
		v16.w = vinsert(r7)
		r15 = memw(r29+##18320)
		r5 = memuh(r27+r5<<#1)
	}
	{
		r7 = memuh(r27+r1<<#1)
		r12 = memuh(r27+r14<<#1)
	}
	{
		r7 = combine(r12.l,r7.l)
		v0 = valign(v0,v0,#4)
		r8 = memuh(r27+r15<<#1)
		r9 = memuh(r27+r11<<#1)
	}
	{
		r5 = combine(r9.l,r5.l)
		v28 = valign(v16,v16,#4)
		r1 = memw(r29+##18324)
	}
	{
		v0.w = vinsert(r7)
		v28.w = vinsert(r5)
		r5 = memw(r29+##18328)
	}
	{
		r9 = memuh(r27+r1<<#1)
		r11 = memw(r29+##18332)
	}
	{
		r8 = combine(r9.l,r8.l)
		v29 = valign(v0,v0,#4)
		r10 = memw(r29+##18248)
	}
	{
		v29.w = vinsert(r8)
		r9 = memuh(r27+r11<<#1)
		r14 = memw(r29+##18336)
	}
	{
		v30 = valign(v28,v28,#4)
		r12 = memuh(r27+r10<<#1)
		r0 = memw(r29+##18252)
	}
	{
		r5 = memuh(r27+r5<<#1)
		r15 = memw(r29+##18340)
	}
	{
		r5 = combine(r9.l,r5.l)
		v2 = valign(v29,v29,#4)
		r7 = memuh(r27+r0<<#1)
		r8 = memuh(r27+r14<<#1)
	}
	{
		v2.w = vinsert(r5)
		r7 = combine(r7.l,r12.l)
		r1 = memw(r29+##18344)
	}
	{
		r12 = memuh(r27+r15<<#1)
		r10 = memw(r29+##18348)
	}
	{
		r8 = combine(r12.l,r8.l)
		v31 = valign(v2,v2,#4)
		r0 = memw(r29+##18256)
	}
	{
		r5 = memw(r29+##18260)
		r11 = memw(r29+##18352)
	}
	{
		v31.w = vinsert(r8)
		v30.w = vinsert(r7)
		r9 = memuh(r27+r0<<#1)
		r7 = memuh(r27+r1<<#1)
	}
	{
		r12 = memuh(r27+r10<<#1)
		r5 = memuh(r27+r5<<#1)
	}
	{
		r7 = combine(r12.l,r7.l)
		r5 = combine(r5.l,r9.l)
		v17 = valign(v31,v31,#4)
		r8 = memuh(r27+r11<<#1)
	}
	{
		v17.w = vinsert(r7)
		r15 = memw(r29+##18264)
	}
	{
		v19 = valign(v30,v30,#4)
		r12 = memuh(r27+r15<<#1)
		r14 = memw(r29+##18356)
	}
	{
		r0 = memw(r29+##18268)
		r1 = memw(r29+##18364)
	}
	{
		v19.w = vinsert(r5)
		r9 = memuh(r27+r14<<#1)
		r5 = memw(r29+##18360)
	}
	{
		r8 = combine(r9.l,r8.l)
		v24 = valign(v17,v17,#4)
		r10 = memw(r29+##18372)
	}
	{
		v24.w = vinsert(r8)
		v17 = valign(v11,v11,#4)
		r5 = memuh(r27+r5<<#1)
		r9 = memuh(r27+r1<<#1)
	}
	{
		v26 = valign(v19,v19,#4)
		r11 = memw(r29+##18376)
		r8 = memuh(r27+r10<<#1)
	}
	{
		v17.w = vinsert(r2)
		r5 = combine(r9.l,r5.l)
		v25 = valign(v24,v24,#4)
		r7 = memuh(r27+r0<<#1)
	}
	{
		r6 = combine(r8.l,r6.l)
		r7 = combine(r7.l,r12.l)
		r13 = memw(r29+##18272)
	}
	{
		v25.w = vinsert(r5)
		v22 = valign(v17,v17,#4)
		r14 = memw(r29+##18384)
	}
	{
		r0 = memw(r29+##18380)
		r5 = memw(r29+##18276)
	}
	{
		v26.w = vinsert(r7)
		v27 = valign(v25,v25,#4)
		r12 = memuh(r27+r11<<#1)
		r9 = memuh(r27+r13<<#1)
	}
	{
		v27.w = vinsert(r6)
		r7 = memuh(r27+r0<<#1)
		r8 = memuh(r27+r14<<#1)
	}
	{
		r7 = combine(r7.l,r12.l)
		r0 = memw(r29+##18388)
		r5 = memuh(r27+r5<<#1)
	}
	{
		r5 = combine(r5.l,r9.l)
		v31 = valign(v26,v26,#4)
		r1 = memw(r29+##18392)
	}
	{
		v30 = valign(v27,v27,#4)
		r12 = memuh(r27+r0<<#1)
		r6 = memw(r29+##18280)
	}
	{
		v30.w = vinsert(r7)
		v31.w = vinsert(r5)
		r5 = memw(r29+##18396)
	}
	{
		r8 = combine(r12.l,r8.l)
		v4 = valign(v30,v30,#4)
		r15 = memw(r29+##18284)
	}
	{
		v4.w = vinsert(r8)
		r10 = memw(r29+##18400)
		r7 = memuh(r27+r1<<#1)
	}
	{
		v5 = valign(v31,v31,#4)
		r5 = memuh(r27+r5<<#1)
		r13 = memw(r29+##18288)
	}
	{
		r5 = combine(r5.l,r7.l)
		v6 = valign(v4,v4,#4)
		r6 = memuh(r27+r6<<#1)
		r9 = memuh(r27+r15<<#1)
	}
	{
		r6 = combine(r9.l,r6.l)
		r8 = memuh(r27+r13<<#1)
		r11 = memw(r29+##18404)
	}
	{
		v6.w = vinsert(r5)
		v5.w = vinsert(r6)
		r0 = memw(r29+##18292)
	}
	{
		r1 = memw(r29+##18300)
		r14 = memw(r29+##18408)
	}
	{
		r12 = memuh(r27+r10<<#1)
		r9 = memuh(r27+r11<<#1)
	}
	{
		r9 = combine(r9.l,r12.l)
		v10 = valign(v6,v6,#4)
		r5 = memw(r29+##18296)
	}
	{
		v10.w = vinsert(r9)
		r5 = memuh(r27+r5<<#1)
		r6 = memuh(r27+r0<<#1)
	}
	{
		r6 = combine(r6.l,r8.l)
		v7 = valign(v5,v5,#4)
		r15 = memw(r29+##18412)
	}
	{
		v7.w = vinsert(r6)
		r0 = memuh(r27+r14<<#1)
	}
	{
		v3 = valign(v10,v10,#4)
		r6 = memuh(r27+r1<<#1)
		r1 = memuh(r27+r15<<#1)
	}
	{
		r3 = combine(r1.l,r0.l)
		r4 = combine(r6.l,r5.l)
		r5 = memw(r29+##18416)
	}
	{
		v3.w = vinsert(r3)
		r0 = #64
		r3 = memw(r29+##18420)
	}
	{
		v14 = valign(v7,v7,#4)
		r5 = memuh(r27+r5<<#1)
		v2 = vmem(r29+#4)
	}                               // 128-byte Folded Reload
	{
		v14.w = vinsert(r4)
		v20 = vror(v18,r0)
		r4 = memw(r29+##18424)
	}
	{
		v19 = valign(v3,v3,#4)
		v28 = vor(v20,v22)
		r2 = memuh(r27+r4<<#1)
		r3 = memuh(r27+r3<<#1)
	}
	{
		r3 = combine(r3.l,r5.l)
		v1 = valign(v14,v14,#4)
		r5 = memw(r29+##18428)
	}
	{
		v19.w = vinsert(r3)
		r4 = memw(r29+#480)
	}                               // 4-byte Folded Reload
	{
		v23 = vror(v1,r0)
		r3 = memuh(r27+r5<<#1)
	}
	{
		r2 = combine(r3.l,r2.l)
		v21 = valign(v19,v19,#4)
		r3 = memw(r29+#244)
	}                               // 4-byte Folded Reload
	{
		v21.w = vinsert(r2)
		r2 = add(r29,#15104)
	}
	{
		r2 = add(r29,#15232)
		v0 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		v30 = valign(v21,v21,#4)
		r2 = memw(r29+#252)
		v1 = vmem(r2+#0)
	}                               // 256-byte Folded Reload
	{
		r2 = add(r4,r2)
		r4 = add(r4,#1)
		v29 = vor(v23,v30)
	}
	{
		r2 = addasl(r3,r2,#7)
		v27:26.h = vadd(v1:0.h,v29:28.h)
	}
	{
		v31.b = vpacko(v27.h,v26.h)
	}
	{
		vmemu(r2+#0) = v31
	}
	{
		r2 = memw(r29+#248)
	}                               // 4-byte Folded Reload
	{
		p1 = cmp.eq(r4,r2)
		r2 = memw(r29+#488)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r2,#128)
		memw(r29+#488) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+#492)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r2,#128)
		memw(r29+#492) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+#496)
	}                               // 4-byte Folded Reload
	{
		r2 = add(r2,#128)
		memw(r29+#496) = r2.new
	}                               // 4-byte Folded Spill
	{
		r2 = memw(r29+#500)
	}                               // 4-byte Folded Reload
	{
		if (!p1) jump:nt .LBB120_6
		r2 = add(r2,#128)
		memw(r29+#500) = r2.new
	}                               // 4-byte Folded Spill
	.falign
.LBB120_650:                            // %"end for output.s0.x.x"
                                        //   in Loop: Header=BB120_4 Depth=2
	{
		r3 = memw(r29+#240)
		r2 = memw(r29+#216)
	}                               // 4-byte Folded Reload
	{
		r3 = add(r3,#1)
		r1 = memw(r29+#224)
		memw(r29+#240) = r3.new
	}                               // 4-byte Folded Reload
	{
		p1 = cmp.eq(r3,#4)
		r3 = add(r1,r2)
		r0 = memw(r29+#228)
		memw(r29+#224) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = add(r0,r2)
		r1 = memw(r29+#232)
		memw(r29+#228) = r3.new
	}                               // 4-byte Folded Reload
	{
		r3 = add(r1,r2)
		r4 = memw(r29+#220)
		memw(r29+#232) = r3.new
	}                               // 4-byte Folded Reload
	{
		r4 = add(r4,r2)
		r0 = memw(r29+#236)
		memw(r29+#220) = r4.new
	}                               // 4-byte Folded Reload
	{
		if (!p1) jump:nt .LBB120_4
		r3 = add(r0,r2)
		if (p1) r4 = memw(r29+#184)
		memw(r29+#236) = r3.new
	}                               // 4-byte Folded Reload
// %bb.651:                             // %"end for output.s0.y.yi"
                                        //   in Loop: Header=BB120_3 Depth=1
	{
		r3 = memw(r29+#160)
		r13 = memw(r29+#196)
	}                               // 4-byte Folded Reload
	{
		r4 = add(r4,r3)
		r13 = add(r13,r3)
		r18 = memw(r29+#200)
		r2 = memw(r29+#164)
	}                               // 4-byte Folded Reload
	{
		r9 = memw(r29+#180)
		r14 = memw(r29+#192)
	}                               // 4-byte Folded Reload
	{
		r9 = add(r9,r3)
		r14 = add(r14,r3)
		r15 = memw(r29+#188)
	}                               // 4-byte Folded Reload
	{
		r15 = add(r15,r3)
	}
	{
		r18 = add(r18,#1)
		if (!cmp.eq(r18.new,r2)) jump:t ##.LBB120_3
	}
	.falign
.LBB120_652:                            // %call_destructor.exit
	{
		call ##halide_qurt_hvx_unlock_as_destructor
		r1:0 = combine(#1,#0)
	}
	.falign
// %bb.653:                             // %call_destructor.exit
	{
		r0 = #0
		r17:16 = memd(r30+#-8)
		r19:18 = memd(r30+#-16)
	}                               // 8-byte Folded Reload
	{
		r21:20 = memd(r30+#-24)
		r23:22 = memd(r30+#-32)
	}                               // 8-byte Folded Reload
	{
		r25:24 = memd(r30+#-40)
		r27:26 = memd(r30+#-48)
	}                               // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end120:
	.size	gaussian5x5_hvx128, .Lfunc_end120-gaussian5x5_hvx128
                                        // -- End function
	.section	.text.gaussian5x5_hvx128_argv,"ax",@progbits
	.globl	gaussian5x5_hvx128_argv // -- Begin function gaussian5x5_hvx128_argv
	.balign 32
	.type	gaussian5x5_hvx128_argv,@function
gaussian5x5_hvx128_argv:                // @gaussian5x5_hvx128_argv
// %bb.0:                               // %entry
	{
		allocframe(r29,#0):raw
	}
	{
		call ##gaussian5x5_hvx128
		r1 = memw(r0+#4)
		r0 = memw(r0+#0)
	}
	{
		r0 = #0
		dealloc_return
	}
.Lfunc_end121:
	.size	gaussian5x5_hvx128_argv, .Lfunc_end121-gaussian5x5_hvx128_argv
                                        // -- End function
	.section	.text.gaussian5x5_hvx128_metadata,"ax",@progbits
	.globl	gaussian5x5_hvx128_metadata // -- Begin function gaussian5x5_hvx128_metadata
	.balign 32
	.type	gaussian5x5_hvx128_metadata,@function
gaussian5x5_hvx128_metadata:            // @gaussian5x5_hvx128_metadata
// %bb.0:                               // %entry
	{
		r0 = add(pc,##.Lgaussian5x5_hvx128_metadata_storage@PCREL)
	}
	{
		jumpr r31
	}
.Lfunc_end122:
	.size	gaussian5x5_hvx128_metadata, .Lfunc_end122-gaussian5x5_hvx128_metadata
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
	.string	"output"
	.size	.Lstr.110, 7

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
	.word	2                       // 0x2
	.word	2                       // 0x2
	.byte	1                       // 0x1
	.byte	8                       // 0x8
	.half	1                       // 0x1
	.word	0
	.word	0
	.word	0
	.size	.L__unnamed_1, 56

	.type	.Lstr.111,@object       // @str.111
	.section	.rodata,"a",@progbits
	.p2align	7
.Lstr.111:
	.string	"hexagon-32-noos-hvx_128-no_asserts-no_bounds_query"
	.size	.Lstr.111, 51

	.type	.Lstr.112,@object       // @str.112
	.p2align	5
.Lstr.112:
	.string	"gaussian5x5_hvx128"
	.size	.Lstr.112, 19

	.type	.Lgaussian5x5_hvx128_metadata_storage,@object // @gaussian5x5_hvx128_metadata_storage
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.Lgaussian5x5_hvx128_metadata_storage:
	.word	0                       // 0x0
	.word	2                       // 0x2
	.word	.L__unnamed_1
	.word	.Lstr.111
	.word	.Lstr.112
	.size	.Lgaussian5x5_hvx128_metadata_storage, 20

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
