	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.8.3 MPLAB XC32 Compiler v2.50 (pic32mx)
 #	compiled by GNU C version 4.8.2, GMP version 4.3.2, MPFR version 3.0.1-p4, MPC version 0.9
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed build/default/production/main.i
 # -mpic32mxlibs -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm
 # -mconfig-data-dir=C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC32MX_DFP/1.5.259/xc32/32MX370F512L
 # -isystem C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC32MX_DFP/1.5.259/include
 # -mresource=C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC32MX_DFP/1.5.259/xc32
 # -mprocessor=32MX370F512L
 # -mdfp=C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC32MX_DFP/1.5.259
 # -mips32r2 -mabi=32 -mpic32mxlibs -msoft-float -mno-legacy-libc
 # -auxbase-strip build/default/production/main.o -g -O1 -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
 # -fbranch-count-reg -fcombine-stack-adjustments -fcommon -fcompare-elim
 # -fcprop-registers -fdebug-types-section -fdefer-pop -fdelayed-branch
 # -fdelete-null-pointer-checks -fearly-inlining
 # -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
 # -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
 # -fif-conversion -fif-conversion2 -finline -finline-atomics
 # -finline-functions-called-once -fipa-profile -fipa-pure-const
 # -fipa-reference -fira-hoist-pressure -fira-share-save-slots
 # -fira-share-spill-slots -fivopts -fkeep-static-consts
 # -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
 # -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
 # -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 # -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
 # -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
 # -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 # -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
 # -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr
 # -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
 # -fvar-tracking -fvar-tracking-assignments -fverbose-asm
 # -fzero-initialized-in-bss -mbranch-likely -mcheck-zero-division
 # -mdivide-traps -mdouble-float -mel -membedded-data -mexplicit-relocs
 # -mextern-sdata -mfp32 -mfused-madd -mgp32 -mgpopt -mimadd -mlocal-sdata
 # -mlong32 -mno-mdmx -mno-mips16 -mno-mips3d -mshared -msoft-float
 # -msplit-addresses

	.section	.text,code
.Ltext0:
	.align	2
	.globl	main
.LFB4 = .
	.file 1 "c:/users/antho/documents/programmes/s4app3/laboratoire 1/labo1.x/main.c"
	.loc 1 15 0
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
.LCFI0 = .
	sw	$31,44($sp)	 #,
	sw	$18,40($sp)	 #,
	sw	$17,36($sp)	 #,
.LCFI1 = .
	.loc 1 16 0
	jal	LED_Init	 #
	sw	$16,32($sp)	 #,

.LVL0 = .
	.loc 1 17 0
	jal	SWT_Init	 #
	move	$16,$0	 # no,

.LVL1 = .
	.loc 1 36 0
	li	$18,1			# 0x1	 # tmp288,
	.loc 1 37 0
	j	.L2	 #
	li	$17,8			# 0x8	 # tmp290,

.LVL2 = .
.L3:
.LBB2 = .
	.loc 1 27 0
	jal	SWT_GetValue	 #
	move	$4,$16	 #, no

.LVL3 = .
	addiu	$4,$sp,16	 #,,
	addu	$3,$4,$16	 # tmp270,, no
	sb	$2,0($3)	 #, valueSW
	.loc 1 28 0
	sb	$0,8($3)	 #, valueLED
.LVL4 = .
	addiu	$16,$16,1	 # no, no,
.LVL5 = .
.L6:
.L2:
.LBE2 = .
	.loc 1 26 0
	slt	$2,$16,8	 # tmp272, no,
	bne	$2,$0,.L3
	nop
	 #, tmp272,,
	.loc 1 34 0
	jal	fct_S	 #
	addiu	$4,$sp,16	 #,,

.LVL6 = .
	.loc 1 36 0
	andi	$2,$2,0x00ff	 # D.8937,
	addiu	$3,$sp,16	 #,,
	addu	$2,$3,$2	 # tmp275,, D.8937
.LVL7 = .
	sb	$18,8($2)	 # tmp288, valueLED
.LVL8 = .
	.loc 1 37 0
	move	$16,$0	 # no,
.LVL9 = .
	addiu	$4,$sp,24	 #,,
.L8:
	addu	$2,$4,$16	 # D.8941,, no
.LBB3 = .
	.loc 1 38 0
	move	$4,$16	 #, no
	jal	LED_SetValue	 #
	lbu	$5,0($2)	 #, MEM[base: _29, offset: 0B]

.LVL10 = .
.LBE3 = .
	.loc 1 37 0
	addiu	$16,$16,1	 # no, no,
.LVL11 = .
	bne	$16,$17,.L8	 #, no, tmp290,
	addiu	$4,$sp,24	 #,,

	j	.L6	 #
	move	$16,$0	 # no,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
.LFE4:
	.size	main, .-main
	.align	2
	.globl	fct_C
.LFB5 = .
	.loc 1 43 0
	.set	nomips16
	.set	nomicromips
	.ent	fct_C
	.type	fct_C, @function
fct_C:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL12 = .
	.loc 1 47 0
	move	$3,$0	 # i,
	li	$6,8			# 0x8	 # tmp238,
.LVL13 = .
.L11:
	addu	$5,$4,$3	 # D.8951, valueSW, i
	.loc 1 49 0
	lbu	$5,0($5)	 # D.8950, MEM[base: _12, offset: 0B]
.LVL14 = .
	.loc 1 47 0
	addiu	$3,$3,1	 # i, i,
.LVL15 = .
	bne	$3,$6,.L11	 #, i, tmp238,
	addu	$2,$2,$5	 # noLED, noLED, D.8950

	.loc 1 55 0
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fct_C
.LFE5:
	.size	fct_C, .-fct_C
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.byte	0x92
	.uleb128 0x2
	.byte	0x91
	.uleb128 0x3
	.byte	0x90
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	2
.LEFDE2:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x313
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v2.50\000"
	.byte	0x1
	.ascii	"main.c\000"
	.ascii	"C:/Users/antho/Documents/Programmes/S4APP3/Laboratoire 1"
	.ascii	"/Labo1.X\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x3
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0xf
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x234
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.4byte	0xca
	.byte	0x1
	.4byte	0x158
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x11
	.4byte	0xca
	.byte	0x1
	.4byte	0x16b
	.uleb128 0x5
	.byte	0
	.uleb128 0x6
	.ascii	"valueSW\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x234
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.ascii	"valueLED\000"
	.byte	0x1
	.byte	0x13
	.4byte	0x234
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x7
	.ascii	"noLED\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x96
	.4byte	.LLST0
	.uleb128 0x7
	.ascii	"no\000"
	.byte	0x1
	.byte	0x15
	.4byte	0xca
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x1e0
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x1b
	.4byte	0xca
	.byte	0x1
	.4byte	0x1cf
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LVL3
	.4byte	0x2a2
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x211
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x26
	.4byte	0xca
	.byte	0x1
	.4byte	0x200
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LVL10
	.4byte	0x2b5
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL0
	.4byte	0x2c8
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x2db
	.uleb128 0x9
	.4byte	.LVL6
	.4byte	0x2ee
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x96
	.4byte	0x244
	.uleb128 0xd
	.4byte	0x244
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0xe
	.byte	0x1
	.ascii	"fct_C\000"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0xca
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x29c
	.uleb128 0xf
	.ascii	"valueSW\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0x29c
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.ascii	"noLED\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xca
	.byte	0x1
	.byte	0x52
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0xca
	.4byte	.LLST2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x96
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x1b
	.4byte	0xca
	.byte	0x1
	.4byte	0x2b5
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x26
	.4byte	0xca
	.byte	0x1
	.4byte	0x2c8
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.4byte	0xca
	.byte	0x1
	.4byte	0x2db
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x11
	.4byte	0xca
	.byte	0x1
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"fct_S\000"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	0x308
	.byte	0x1
	.4byte	0x308
	.uleb128 0x12
	.4byte	0x310
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x10
	.byte	0x4
	.4byte	0x308
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF3:
	.ascii	"LED_SetValue\000"
.LASF1:
	.ascii	"SWT_Init\000"
.LASF2:
	.ascii	"SWT_GetValue\000"
.LASF0:
	.ascii	"LED_Init\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v2.50"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
