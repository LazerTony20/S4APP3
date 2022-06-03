	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.8.3 MPLAB XC32 Compiler v2.50 (pic32mx)
 #	compiled by GNU C version 4.8.2, GMP version 4.3.2, MPFR version 3.0.1-p4, MPC version 0.9
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed build/default/debug/main.i -mpic32mxlibs
 # -fvar-tracking -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm
 # -mconfig-data-dir=C:/Program Files/Microchip/MPLABX/v5.45/packs/Microchip/PIC32MX_DFP/1.3.231/xc32/32MX370F512L
 # -isystem C:/Program Files/Microchip/MPLABX/v5.45/packs/Microchip/PIC32MX_DFP/1.3.231/include
 # -mresource=C:/Program Files/Microchip/MPLABX/v5.45/packs/Microchip/PIC32MX_DFP/1.3.231/xc32
 # -mprocessor=32MX370F512L
 # -mdfp=C:/Program Files/Microchip/MPLABX/v5.45/packs/Microchip/PIC32MX_DFP/1.3.231
 # -mips32r2 -mabi=32 -mpic32mxlibs -mdebugger -msoft-float
 # -mno-legacy-libc -auxbase-strip build/default/debug/main.o -g -O1
 # -fframe-base-loclist -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
 # -fbranch-count-reg -fcombine-stack-adjustments -fcommon -fcompare-elim
 # -fcprop-registers -fdebug-types-section -fdefer-pop -fdelayed-branch
 # -fdelete-null-pointer-checks -fearly-inlining
 # -feliminate-unused-debug-types -fforward-propagate -fframe-base-loclist
 # -ffunction-cse -fgcse-lm -fgnu-runtime -fguess-branch-probability
 # -fident -fif-conversion -fif-conversion2 -finline -finline-atomics
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
	.globl	Timer1ISR
.LFB4 = .
	.file 1 "d:/onedrive - usherbrooke/s4/~s4-h21/labo/timer1_interrupt_x_tuteur/timer1_interrupt.x/main.c"
	.loc 1 17 0
	.set	nomips16
	.set	nomicromips
	.ent	Timer1ISR
	.type	Timer1ISR, @function
Timer1ISR:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x0000000c,-20
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: AUTO_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp	 #,
	mfc0	$27,$14	 #,
	mfc0	$26,$12,2	 #
	addiu	$sp,$sp,-24	 #,,
.LCFI0 = .
	sw	$27,20($sp)	 #,
	mfc0	$27,$12	 #,
	sw	$26,12($sp)	 #,
	sw	$27,16($sp)	 #,
	ins	$27,$0,1,15	 #,,,
	ori	$27,$27,0x800	 #,,
	mtc0	$27,$12	 #,
	sw	$3,4($sp)	 #,
	sw	$2,0($sp)	 #,
.LCFI1 = .
	.loc 1 18 0
	li	$2,1			# 0x1	 # tmp226,
	sw	$2,%gp_rel(Flag_1s)($28)	 # tmp226, Flag_1s
	.loc 1 20 0
	lui	$2,%hi(IFS0)	 # tmp227,
	lw	$3,%lo(IFS0)($2)	 # tmp228,
	ins	$3,$0,4,1	 # tmp228,,,
	sw	$3,%lo(IFS0)($2)	 # tmp228,
	.loc 1 21 0
	lw	$2,12($sp)	 #,
	andi	$2,$2,0xf	 #,,
	bne	$2,$0,.L5
	nop
	 #,,,
	lw	$3,4($sp)	 #,
	lw	$2,0($sp)	 #,
.L5:
	di
	ehb
	lw	$26,20($sp)	 #,
	lw	$27,16($sp)	 #,
	mtc0	$26,$14	 #,
	lw	$26,12($sp)	 #,
	addiu	$sp,$sp,24	 #,,
.LCFI2 = .
	mtc0	$26,$12,2	 #
	wrpgpr	$sp,$sp	 #,
	mtc0	$27,$12	 #,
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Timer1ISR
.LFE4:
	.size	Timer1ISR, .-Timer1ISR
	.align	2
	.globl	initialize_timer_interrupt
.LFB5 = .
	.loc 1 25 0
	.set	nomips16
	.set	nomicromips
	.ent	initialize_timer_interrupt
	.type	initialize_timer_interrupt, @function
initialize_timer_interrupt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 26 0
	lui	$2,%hi(T1CON)	 # tmp226,
	lhu	$3,%lo(T1CON)($2)	 #,
	li	$4,3			# 0x3	 # tmp229,
	ins	$3,$4,4,2	 # tmp228, tmp229,,
	sh	$3,%lo(T1CON)($2)	 # tmp228,
	.loc 1 27 0
	lhu	$3,%lo(T1CON)($2)	 #,
	ins	$3,$0,7,1	 # tmp231,,,
	sh	$3,%lo(T1CON)($2)	 # tmp231,
	.loc 1 28 0
	lhu	$3,%lo(T1CON)($2)	 #,
	ins	$3,$0,1,1	 # tmp233,,,
	sh	$3,%lo(T1CON)($2)	 # tmp233,
	.loc 1 29 0
	li	$4,187			# 0xbb	 # tmp235,
	lui	$3,%hi(PR1)	 # tmp234,
	sw	$4,%lo(PR1)($3)	 # tmp235, PR1
	.loc 1 31 0
	lui	$3,%hi(TMR1)	 # tmp236,
	sw	$0,%lo(TMR1)($3)	 #, TMR1
	.loc 1 32 0
	lui	$3,%hi(IPC1)	 # tmp237,
	lw	$4,%lo(IPC1)($3)	 # tmp239,
	li	$5,2			# 0x2	 # tmp240,
	ins	$4,$5,2,3	 # tmp239, tmp240,,
	sw	$4,%lo(IPC1)($3)	 # tmp239,
	.loc 1 33 0
	lw	$4,%lo(IPC1)($3)	 # tmp242,
	ins	$4,$0,0,2	 # tmp242,,,
	sw	$4,%lo(IPC1)($3)	 # tmp242,
	.loc 1 34 0
	lui	$3,%hi(IFS0)	 # tmp243,
	lw	$4,%lo(IFS0)($3)	 # tmp244,
	ins	$4,$0,4,1	 # tmp244,,,
	sw	$4,%lo(IFS0)($3)	 # tmp244,
	.loc 1 35 0
	lui	$3,%hi(IEC0)	 # tmp245,
	lw	$5,%lo(IEC0)($3)	 # tmp247,
	li	$4,1			# 0x1	 # tmp248,
	ins	$5,$4,4,1	 # tmp247, tmp248,,
	sw	$5,%lo(IEC0)($3)	 # tmp247,
	.loc 1 36 0
	lhu	$3,%lo(T1CON)($2)	 #,
	ins	$3,$4,15,1	 # tmp251, tmp248,,
	sh	$3,%lo(T1CON)($2)	 # tmp251,
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initialize_timer_interrupt
.LFE5:
	.size	initialize_timer_interrupt, .-initialize_timer_interrupt
	.align	2
	.globl	main
.LFB6 = .
	.loc 1 39 0
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
.LCFI3 = .
	sw	$31,20($sp)	 #,
.LCFI4 = .
	.loc 1 40 0
	jal	LED_Init	 #
.LVL0 = .
	.loc 1 41 0
	jal	initialize_timer_interrupt	 #
.LVL1 = .
.LBB2 = .
	.loc 1 44 0
 #APP
 # 44 "main.c" 1
	mfc0 $3,$13	 # val
 # 0 "" 2
.LVL2 = .
 #NO_APP
	li	$2,8388608			# 0x800000	 # tmp231,
	or	$2,$3,$2	 # val, val, tmp231
.LVL3 = .
 #APP
 # 44 "main.c" 1
	mtc0 $2,$13	 # val
 # 0 "" 2
.LVL4 = .
 #NO_APP
	lui	$2,%hi(INTCON)	 # tmp233,
	lw	$3,%lo(INTCON)($2)	 # tmp235,
	li	$4,1			# 0x1	 # tmp236,
	ins	$3,$4,12,1	 # tmp235, tmp236,,
	sw	$3,%lo(INTCON)($2)	 # tmp235,
	ei	$2
.LBE2 = .
	.loc 1 39 0
	li	$3,500			# 0x1f4	 # D.8447,
.LVL5 = .
.L9:
	.loc 1 48 0
	lw	$2,%gp_rel(Flag_1s)($28)	 # Flag_1s.0, Flag_1s
	beq	$2,$0,.L9	 #, Flag_1s.0,,
	.loc 1 49 0
	sw	$0,%gp_rel(Flag_1s)($28)	 #, Flag_1s
.LVL6 = .
	addiu	$3,$3,-1	 # D.8447, D.8447,
.LVL7 = .
	.loc 1 50 0
	bne	$3,$0,.L9	 #, D.8447,,
.LVL8 = .
.LBB3 = .
	.loc 1 52 0
	.set	noreorder
	.set	nomacro
	jal	LED_ToggleValue	 #
	move	$4,$0	 #,
	.set	macro
	.set	reorder

.LVL9 = .
.LBE3 = .
	.loc 1 39 0
	.set	noreorder
	.set	nomacro
	j	.L9	 #
	li	$3,500			# 0x1f4	 # D.8447,
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
.LFE6:
	.size	main, .-main
	.section	.sbss,bss
	.align	2
	.type	Flag_1s, @object
	.size	Flag_1s, 4
Flag_1s:
	.space	4
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9a
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x82
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x9f
	.uleb128 0x1
	.align	2
.LEFDE4:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files/microchip/mplabx/v5.45/packs/microchip/pic32mx_dfp/1.3.231/include/proc/p32mx370f512l.h"
	.file 3 "c:/program files/microchip/xc32/v2.50/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xbee
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v2.50\000"
	.byte	0x1
	.ascii	"main.c\000"
	.ascii	"D:/OneDrive - USherbrooke/S4/~S4-H21/Labo/Timer1_interru"
	.ascii	"pt_X_TUTEUR/Timer1_interrupt.X\000"
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
	.uleb128 0x3
	.ascii	"__uint32_t\000"
	.byte	0x3
	.byte	0x33
	.4byte	0xf9
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0xd3
	.4byte	0x1ce
	.uleb128 0x5
	.ascii	"TCS\000"
	.byte	0x2
	.byte	0xd5
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TSYNC\000"
	.byte	0x2
	.byte	0xd6
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TCKPS\000"
	.byte	0x2
	.byte	0xd8
	.4byte	0xe7
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TGATE\000"
	.byte	0x2
	.byte	0xda
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TWIP\000"
	.byte	0x2
	.byte	0xdc
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TWDIS\000"
	.byte	0x2
	.byte	0xdd
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"SIDL\000"
	.byte	0x2
	.byte	0xde
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ON\000"
	.byte	0x2
	.byte	0xe0
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0xe2
	.4byte	0x1ff
	.uleb128 0x5
	.ascii	"TCKPS0\000"
	.byte	0x2
	.byte	0xe4
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TCKPS1\000"
	.byte	0x2
	.byte	0xe5
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0xe7
	.4byte	0x22c
	.uleb128 0x5
	.ascii	"TSIDL\000"
	.byte	0x2
	.byte	0xe9
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TON\000"
	.byte	0x2
	.byte	0xeb
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0xed
	.4byte	0x244
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.byte	0xee
	.4byte	0xe7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0xd2
	.4byte	0x261
	.uleb128 0x7
	.4byte	0x134
	.uleb128 0x7
	.4byte	0x1ce
	.uleb128 0x7
	.4byte	0x1ff
	.uleb128 0x7
	.4byte	0x22c
	.byte	0
	.uleb128 0x3
	.ascii	"__T1CONbits_t\000"
	.byte	0x2
	.byte	0xf0
	.4byte	0x244
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xe48
	.4byte	0x320
	.uleb128 0x9
	.ascii	"INT0EP\000"
	.byte	0x2
	.2byte	0xe49
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT1EP\000"
	.byte	0x2
	.2byte	0xe4a
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT2EP\000"
	.byte	0x2
	.2byte	0xe4b
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT3EP\000"
	.byte	0x2
	.2byte	0xe4c
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT4EP\000"
	.byte	0x2
	.2byte	0xe4d
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"TPC\000"
	.byte	0x2
	.2byte	0xe4f
	.4byte	0xe7
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"MVEC\000"
	.byte	0x2
	.2byte	0xe51
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"SS0\000"
	.byte	0x2
	.2byte	0xe53
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xe55
	.4byte	0x33a
	.uleb128 0x9
	.ascii	"w\000"
	.byte	0x2
	.2byte	0xe56
	.4byte	0xe7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.2byte	0xe47
	.4byte	0x34e
	.uleb128 0x7
	.4byte	0x276
	.uleb128 0x7
	.4byte	0x320
	.byte	0
	.uleb128 0xb
	.ascii	"__INTCONbits_t\000"
	.byte	0x2
	.2byte	0xe58
	.4byte	0x33a
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xe6d
	.4byte	0x5f5
	.uleb128 0x9
	.ascii	"CTIF\000"
	.byte	0x2
	.2byte	0xe6e
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"CS0IF\000"
	.byte	0x2
	.2byte	0xe6f
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"CS1IF\000"
	.byte	0x2
	.2byte	0xe70
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT0IF\000"
	.byte	0x2
	.2byte	0xe71
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T1IF\000"
	.byte	0x2
	.2byte	0xe72
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC1EIF\000"
	.byte	0x2
	.2byte	0xe73
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC1IF\000"
	.byte	0x2
	.2byte	0xe74
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC1IF\000"
	.byte	0x2
	.2byte	0xe75
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT1IF\000"
	.byte	0x2
	.2byte	0xe76
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T2IF\000"
	.byte	0x2
	.2byte	0xe77
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC2EIF\000"
	.byte	0x2
	.2byte	0xe78
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC2IF\000"
	.byte	0x2
	.2byte	0xe79
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC2IF\000"
	.byte	0x2
	.2byte	0xe7a
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT2IF\000"
	.byte	0x2
	.2byte	0xe7b
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T3IF\000"
	.byte	0x2
	.2byte	0xe7c
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC3EIF\000"
	.byte	0x2
	.2byte	0xe7d
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC3IF\000"
	.byte	0x2
	.2byte	0xe7e
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC3IF\000"
	.byte	0x2
	.2byte	0xe7f
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT3IF\000"
	.byte	0x2
	.2byte	0xe80
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T4IF\000"
	.byte	0x2
	.2byte	0xe81
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC4EIF\000"
	.byte	0x2
	.2byte	0xe82
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC4IF\000"
	.byte	0x2
	.2byte	0xe83
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC4IF\000"
	.byte	0x2
	.2byte	0xe84
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT4IF\000"
	.byte	0x2
	.2byte	0xe85
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T5IF\000"
	.byte	0x2
	.2byte	0xe86
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC5EIF\000"
	.byte	0x2
	.2byte	0xe87
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC5IF\000"
	.byte	0x2
	.2byte	0xe88
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC5IF\000"
	.byte	0x2
	.2byte	0xe89
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"AD1IF\000"
	.byte	0x2
	.2byte	0xe8a
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"FSCMIF\000"
	.byte	0x2
	.2byte	0xe8b
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"RTCCIF\000"
	.byte	0x2
	.2byte	0xe8c
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"FCEIF\000"
	.byte	0x2
	.2byte	0xe8d
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xe8f
	.4byte	0x60f
	.uleb128 0x9
	.ascii	"w\000"
	.byte	0x2
	.2byte	0xe90
	.4byte	0xe7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.2byte	0xe6c
	.4byte	0x623
	.uleb128 0x7
	.4byte	0x365
	.uleb128 0x7
	.4byte	0x5f5
	.byte	0
	.uleb128 0xb
	.ascii	"__IFS0bits_t\000"
	.byte	0x2
	.2byte	0xe92
	.4byte	0x60f
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xedb
	.4byte	0x8c8
	.uleb128 0x9
	.ascii	"CTIE\000"
	.byte	0x2
	.2byte	0xedc
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"CS0IE\000"
	.byte	0x2
	.2byte	0xedd
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"CS1IE\000"
	.byte	0x2
	.2byte	0xede
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT0IE\000"
	.byte	0x2
	.2byte	0xedf
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T1IE\000"
	.byte	0x2
	.2byte	0xee0
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC1EIE\000"
	.byte	0x2
	.2byte	0xee1
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC1IE\000"
	.byte	0x2
	.2byte	0xee2
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC1IE\000"
	.byte	0x2
	.2byte	0xee3
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT1IE\000"
	.byte	0x2
	.2byte	0xee4
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T2IE\000"
	.byte	0x2
	.2byte	0xee5
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC2EIE\000"
	.byte	0x2
	.2byte	0xee6
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC2IE\000"
	.byte	0x2
	.2byte	0xee7
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC2IE\000"
	.byte	0x2
	.2byte	0xee8
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT2IE\000"
	.byte	0x2
	.2byte	0xee9
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T3IE\000"
	.byte	0x2
	.2byte	0xeea
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC3EIE\000"
	.byte	0x2
	.2byte	0xeeb
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC3IE\000"
	.byte	0x2
	.2byte	0xeec
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC3IE\000"
	.byte	0x2
	.2byte	0xeed
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT3IE\000"
	.byte	0x2
	.2byte	0xeee
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T4IE\000"
	.byte	0x2
	.2byte	0xeef
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC4EIE\000"
	.byte	0x2
	.2byte	0xef0
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC4IE\000"
	.byte	0x2
	.2byte	0xef1
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC4IE\000"
	.byte	0x2
	.2byte	0xef2
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT4IE\000"
	.byte	0x2
	.2byte	0xef3
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T5IE\000"
	.byte	0x2
	.2byte	0xef4
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC5EIE\000"
	.byte	0x2
	.2byte	0xef5
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC5IE\000"
	.byte	0x2
	.2byte	0xef6
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC5IE\000"
	.byte	0x2
	.2byte	0xef7
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"AD1IE\000"
	.byte	0x2
	.2byte	0xef8
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"FSCMIE\000"
	.byte	0x2
	.2byte	0xef9
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"RTCCIE\000"
	.byte	0x2
	.2byte	0xefa
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"FCEIE\000"
	.byte	0x2
	.2byte	0xefb
	.4byte	0xe7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xefd
	.4byte	0x8e2
	.uleb128 0x9
	.ascii	"w\000"
	.byte	0x2
	.2byte	0xefe
	.4byte	0xe7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.2byte	0xeda
	.4byte	0x8f6
	.uleb128 0x7
	.4byte	0x638
	.uleb128 0x7
	.4byte	0x8c8
	.byte	0
	.uleb128 0xb
	.ascii	"__IEC0bits_t\000"
	.byte	0x2
	.2byte	0xf00
	.4byte	0x8e2
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xf61
	.4byte	0x9b5
	.uleb128 0x9
	.ascii	"T1IS\000"
	.byte	0x2
	.2byte	0xf62
	.4byte	0xe7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"T1IP\000"
	.byte	0x2
	.2byte	0xf63
	.4byte	0xe7
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC1IS\000"
	.byte	0x2
	.2byte	0xf65
	.4byte	0xe7
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"IC1IP\000"
	.byte	0x2
	.2byte	0xf66
	.4byte	0xe7
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC1IS\000"
	.byte	0x2
	.2byte	0xf68
	.4byte	0xe7
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"OC1IP\000"
	.byte	0x2
	.2byte	0xf69
	.4byte	0xe7
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT1IS\000"
	.byte	0x2
	.2byte	0xf6b
	.4byte	0xe7
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"INT1IP\000"
	.byte	0x2
	.2byte	0xf6c
	.4byte	0xe7
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.2byte	0xf6e
	.4byte	0x9cf
	.uleb128 0x9
	.ascii	"w\000"
	.byte	0x2
	.2byte	0xf6f
	.4byte	0xe7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.2byte	0xf60
	.4byte	0x9e3
	.uleb128 0x7
	.4byte	0x90b
	.uleb128 0x7
	.4byte	0x9b5
	.byte	0
	.uleb128 0xb
	.ascii	"__IPC1bits_t\000"
	.byte	0x2
	.2byte	0xf71
	.4byte	0x9cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0xc
	.byte	0x1
	.ascii	"Timer1ISR\000"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.ascii	"initialize_timer_interrupt\000"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x27
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xaff
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x28
	.4byte	0xe0
	.byte	0x1
	.4byte	0xa8e
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.ascii	"count\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0xe0
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0xabc
	.uleb128 0x11
	.ascii	"val\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xf9
	.4byte	.LLST3
	.byte	0
	.uleb128 0x12
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0xaec
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x34
	.4byte	0xe0
	.byte	0x1
	.4byte	0xadc
	.uleb128 0x10
	.byte	0
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0xbcf
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL0
	.4byte	0xbe2
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0xa35
	.byte	0
	.uleb128 0x16
	.ascii	"Flag_1s\000"
	.byte	0x1
	.byte	0xe
	.4byte	0xb14
	.byte	0x5
	.byte	0x3
	.4byte	Flag_1s
	.uleb128 0x17
	.4byte	0xe0
	.uleb128 0x18
	.ascii	"T1CONbits\000"
	.byte	0x2
	.byte	0xf1
	.ascii	"T1CON\000"
	.4byte	0xb32
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	0x261
	.uleb128 0x19
	.ascii	"TMR1\000"
	.byte	0x2
	.byte	0xf6
	.4byte	0xb45
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	0xe7
	.uleb128 0x19
	.ascii	"PR1\000"
	.byte	0x2
	.byte	0xfb
	.4byte	0xb45
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"INTCONbits\000"
	.byte	0x2
	.2byte	0xe59
	.ascii	"INTCON\000"
	.4byte	0xb73
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	0x34e
	.uleb128 0x1a
	.ascii	"IFS0bits\000"
	.byte	0x2
	.2byte	0xe93
	.ascii	"IFS0\000"
	.4byte	0xb90
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	0x623
	.uleb128 0x1a
	.ascii	"IEC0bits\000"
	.byte	0x2
	.2byte	0xf01
	.ascii	"IEC0\000"
	.4byte	0xbad
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	0x8f6
	.uleb128 0x1a
	.ascii	"IPC1bits\000"
	.byte	0x2
	.2byte	0xf72
	.ascii	"IPC1\000"
	.4byte	0xbca
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9e3
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x34
	.4byte	0xe0
	.byte	0x1
	.4byte	0xbe2
	.uleb128 0x10
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x28
	.4byte	0xe0
	.byte	0x1
	.uleb128 0x10
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x7
	.byte	0xa
	.2byte	0x1f4
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x7
	.byte	0xa
	.2byte	0x1f5
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x7
	.byte	0xa
	.2byte	0x1f4
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
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
.LASF1:
	.ascii	"LED_ToggleValue\000"
.LASF0:
	.ascii	"LED_Init\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v2.50"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_4
	.section	.vector_4,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_4
__vector_dispatch_4:
	j	Timer1ISR
	nop
	.set reorder
	.end	__vector_dispatch_4
	.size	__vector_dispatch_4, .-__vector_dispatch_4
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
