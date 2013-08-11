	.file	"dma.c"
@ GNU C version 3.3.2 (arm-thumb-elf)
@	compiled by GNU C version 3.3.1 (cygming special).
@ GGC heuristics: --param ggc-min-expand=99 --param ggc-min-heapsize=129839
@ options passed:  -fpreprocessed -mthumb-interwork -mlong-calls
@ -auxbase-strip -O2 -Wall -fverbose-asm
@ options enabled:  -fdefer-pop -fomit-frame-pointer
@ -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
@ -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
@ -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
@ -freg-struct-return -fgcse -fgcse-lm -fgcse-sm -floop-optimize
@ -fcrossjumping -fif-conversion -fif-conversion2 -frerun-cse-after-loop
@ -frerun-loop-opt -fdelete-null-pointer-checks -fschedule-insns
@ -fschedule-insns2 -fsched-interblock -fsched-spec -fbranch-count-reg
@ -freorder-blocks -freorder-functions -fcprop-registers -fcommon
@ -fverbose-asm -fgnu-linker -fregmove -foptimize-register-move
@ -fargument-alias -fstrict-aliasing -fmerge-constants
@ -fzero-initialized-in-bss -fident -fpeephole2 -fguess-branch-probability
@ -fmath-errno -ftrapping-math -mapcs -mapcs-frame -mapcs-32 -msoft-float
@ -mthumb-interwork -mlong-calls

	.text
	.align	2
	.global	dmaTransfer
	.type	dmaTransfer, %function
dmaTransfer:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	lr, [sp, #8]	@  mode,  mode
	add	r3, r3, r3, asl #1	@  channel,  channel
	mov	r4, #67108864
	mov	r3, r3, asl #2
	add	r4, r4, #176
	add	ip, r3, r4
	orr	lr, lr, r2	@  mode,  numTransfers
	mov	r2, #0
	str	r2, [ip, #8]	@  <variable>.cnt
	str	r1, [r3, r4]	@  source,  <variable>.src
	str	r0, [ip, #4]	@  destination,  <variable>.dst
	str	lr, [ip, #8]	@  <variable>.cnt
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	dmaTransfer, .-dmaTransfer
	.ident	"GCC: (GNU) 3.3.2"
