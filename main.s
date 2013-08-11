	.file	"main.c"
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

	.global	videoBuffer
	.data
	.align	2
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.global	scanlineCounter
	.align	2
	.type	scanlineCounter, %object
	.size	scanlineCounter, 4
scanlineCounter:
	.word	67108870
	.global	rawButtons
	.align	2
	.type	rawButtons, %object
	.size	rawButtons, 4
rawButtons:
	.word	67109168
	.global	player
	.align	2
	.type	player, %object
	.size	player, 48
player:
	.word	90
	.word	116
	.word	0
	.word	0
	.word	0
	.word	32768
	.word	32768
	.word	16
	.word	36
	.word	8
	.word	0
	.word	1
	.global	tutSprites
	.align	2
	.type	tutSprites, %object
	.size	tutSprites, 48
tutSprites:
	.word	50
	.word	150
	.word	1
	.word	1
	.word	2
	.word	0
	.word	49152
	.word	32
	.word	32
	.word	32
	.word	1
	.word	1
	.global	gameSprites
	.align	2
	.type	gameSprites, %object
	.size	gameSprites, 336
gameSprites:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	138
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	9
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	266
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	9
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	266
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	9
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	266
	.word	0
	.word	32768
	.word	16
	.word	16
	.word	9
	.word	2
	.word	0
	.global	sbbX
	.bss
	.global	sbbX
	.align	2
	.type	sbbX, %object
	.size	sbbX, 4
sbbX:
	.space	4
	.global	sbbY
	.global	sbbY
	.align	2
	.type	sbbY, %object
	.size	sbbY, 4
sbbY:
	.space	4
	.global	sbbW
	.global	sbbW
	.align	2
	.type	sbbW, %object
	.size	sbbW, 4
sbbW:
	.space	4
	.global	sbbH
	.global	sbbH
	.align	2
	.type	sbbH, %object
	.size	sbbH, 4
sbbH:
	.space	4
	.global	hOff
	.global	hOff
	.align	2
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.global	bigHOff
	.global	bigHOff
	.align	2
	.type	bigHOff, %object
	.size	bigHOff, 4
bigHOff:
	.space	4
	.global	vOff
	.global	vOff
	.align	2
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.global	bigVOff
	.global	bigVOff
	.align	2
	.type	bigVOff, %object
	.size	bigVOff, 4
bigVOff:
	.space	4
	.global	theta
	.global	theta
	.align	2
	.type	theta, %object
	.size	theta, 4
theta:
	.space	4
	.global	deltaTheta
	.data
	.align	2
	.type	deltaTheta, %object
	.size	deltaTheta, 4
deltaTheta:
	.word	30
	.global	playerVel
	.align	2
	.type	playerVel, %object
	.size	playerVel, 4
playerVel:
	.word	4
	.global	oops
	.section	.rodata
	.type	oops, %object
	.size	oops, 14
oops:
	.byte	65
	.byte	32
	.byte	65
	.byte	78
	.byte	68
	.byte	32
	.byte	66
	.byte	32
	.byte	83
	.byte	80
	.byte	73
	.byte	78
	.byte	33
	.byte	0
	.global	eek
	.type	eek, %object
	.size	eek, 12
eek:
	.byte	65
	.byte	82
	.byte	82
	.byte	79
	.byte	87
	.byte	83
	.byte	32
	.byte	77
	.byte	79
	.byte	86
	.byte	69
	.byte	0
	.global	pardon
	.type	pardon, %object
	.size	pardon, 15
pardon:
	.byte	83
	.byte	84
	.byte	65
	.byte	82
	.byte	84
	.byte	32
	.byte	84
	.byte	79
	.byte	32
	.byte	82
	.byte	69
	.byte	83
	.byte	69
	.byte	84
	.byte	0
	.global	stringFlag
	.bss
	.global	stringFlag
	.align	2
	.type	stringFlag, %object
	.size	stringFlag, 4
stringFlag:
	.space	4
	.global	samplesA
	.global	samplesA
	.align	2
	.type	samplesA, %object
	.size	samplesA, 4
samplesA:
	.space	4
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L5
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
.L2:
	b	.L2
.L6:
	.align	2
.L5:
	.word	runMainMenu
	.size	main, .-main
	.align	2
	.global	loadSprites
	.type	loadSprites, %function
loadSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	mov	r5, #-2147483648
	mov	r8, r0	@  obstacles
	mov	r0, #83886080
	ldr	r4, .L31
	mov	r9, r1	@  numSprites
	add	r0, r0, #512
	ldr	r1, .L31+4
	mov	r2, #256
	mov	r3, #3
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r4
	mov	r0, #100663296
	ldr	sl, .L31+8	@  obstacles
	add	r0, r0, #65536
	ldr	r1, .L31+12
	mov	r2, #16384
	mov	r3, #3
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r4
	mov	r5, #0	@  i
	sub	r1, fp, #40	@  numSprites
	mov	ip, #-2130706432
	str	r5, [r1, #-4]!	@  i
	mov	r0, sl	@  obstacles
	mov	r2, #512
	mov	r3, #3
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+16
	ldrh	r2, [r3, #0]	@  player.row
	ldrh	r4, [r3, #20]	@  player.shape
	ldrh	r0, [r3, #16]	@  player.start
	ldrh	r1, [r3, #4]	@  player.col
	ldrh	ip, [r3, #24]	@  player.size
	ldr	lr, [r3, #40]	@  player.pal
	orr	r2, r2, r4
	orr	r2, r2, #768
	orr	r1, r1, ip
	orr	r0, r0, lr, asl #12
	strh	r2, [sl, #0]	@ movhi 	@  <variable>.attr0
	cmp	r5, r9	@  i,  numSprites
	mov	r2, #256	@ movhi
	strh	r1, [sl, #2]	@ movhi 	@  <variable>.attr1
	strh	r0, [sl, #4]	@ movhi 	@  <variable>.attr2
	strh	r2, [sl, #6]	@ movhi 	@  <variable>.pa
	strh	r2, [sl, #30]	@ movhi 	@  <variable>.pd
	bge	.L28
	mov	r7, r5	@  i,  i
	mov	r6, sl	@  obstacles,  obstacles
	mov	r5, r9	@  i,  numSprites
.L12:
	add	r3, r7, r8	@  i,  obstacles
	ldrh	r1, [r7, r8]	@  <variable>.row
	ldrh	r0, [r3, #16]	@  <variable>.start
	ldrh	r4, [r3, #20]	@  <variable>.shape
	ldrh	r2, [r3, #4]	@  <variable>.col
	ldrh	ip, [r3, #24]	@  <variable>.size
	ldr	lr, [r3, #40]	@  <variable>.pal
	orr	r1, r1, r4
	orr	r2, r2, ip
	orr	r0, r0, lr, asl #12
	subs	r5, r5, #1	@  i,  i
	strh	r1, [r6, #8]	@ movhi 	@  <variable>.attr0
	strh	r2, [r6, #10]	@ movhi 	@  <variable>.attr1
	strh	r0, [r6, #12]	@ movhi 	@  <variable>.attr2
	add	r7, r7, #48	@  i,  i
	add	r6, r6, #8	@  obstacles,  obstacles
	bne	.L12
	cmp	r9, #0	@  numSprites
	ble	.L28
	mov	r1, sl	@  obstacles,  obstacles
	add	r0, r8, #44	@  obstacles
	mov	r2, sl	@  obstacles,  obstacles
	mov	r5, r9	@  i,  numSprites
.L19:
	ldr	r3, [r0, #0]	@  <variable>.active
	cmp	r3, #0
	movne	r3, #0	@ movhi
	moveq	r3, #512	@ movhi
	strneh	r3, [r2, #8]	@ movhi 	@  <variable>.attr0
	streqh	r3, [r1, #8]	@ movhi 	@  <variable>.attr0
	subs	r5, r5, #1	@  i,  i
	add	r0, r0, #48
	add	r2, r2, #8	@  obstacles,  obstacles
	add	r1, r1, #8	@  obstacles,  obstacles
	bne	.L19
.L28:
	cmp	r9, #127	@  i
	mov	r5, r9	@  i,  numSprites
	bgt	.L30
	mov	r3, r9, asl #3	@  i
	add	r3, r3, #117440512
	rsb	r5, r9, #128	@  i,  i
.L24:
	mov	r2, #512	@ movhi
	subs	r5, r5, #1	@  i,  i
	strh	r2, [r3, #0]	@ movhi 	@  <variable>.attr0
	add	r3, r3, #8
	bne	.L24
.L30:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	dmaTransfer
	.word	spritesPal
	.word	shadowOAM
	.word	spritesTiles
	.word	player
	.size	loadSprites, .-loadSprites
	.align	2
	.global	updateSprites
	.type	updateSprites, %function
updateSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	r3, .L44
	ldrh	r2, [r3, #0]	@  player.row
	ldrh	r4, [r3, #20]	@  player.shape
	ldrh	lr, [r3, #16]	@  player.start
	ldrh	ip, [r3, #4]	@  player.col
	ldrh	r5, [r3, #24]	@  player.size
	ldr	r6, [r3, #40]	@  player.pal
	orr	r2, r2, r4
	ldr	r3, .L44+4
	mov	r8, #0	@  i
	orr	ip, ip, r5
	orr	lr, lr, r6, asl #12
	orr	r2, r2, #768
	cmp	r8, r1	@  i,  numSprites
	strh	r2, [r3, #0]	@ movhi 	@  <variable>.attr0
	strh	ip, [r3, #2]	@ movhi 	@  <variable>.attr1
	strh	lr, [r3, #4]	@ movhi 	@  <variable>.attr2
	mov	sl, r0	@  obstacles
	bge	.L43
	mov	r7, r8	@  i,  i
	mov	r6, r3
	mov	r8, r1	@  i,  numSprites
.L41:
	add	r5, r7, sl	@  i,  obstacles
	ldr	r3, [r5, #44]	@  <variable>.active
	cmp	r3, #0
	moveq	r3, #512	@ movhi
	streqh	r3, [r6, #8]	@ movhi 	@  <variable>.attr0
	beq	.L36
	ldrh	r2, [r5, #4]	@  <variable>.col
	ldrh	r0, [r5, #24]	@  <variable>.size
	ldr	r4, [r5, #8]	@  <variable>.xVel
	ldr	ip, [r5, #40]	@  <variable>.pal
	ldrh	r3, [r5, #16]	@  <variable>.start
	orr	r2, r2, r0
	strh	r2, [r6, #10]	@ movhi 	@  <variable>.attr1
	orr	r3, r3, ip, asl #12
	cmp	r4, #0
	strh	r3, [r6, #12]	@ movhi 	@  <variable>.attr2
	ldrh	r1, [r7, sl]	@  <variable>.row
	ldrlth	r3, [r6, #10]	@  <variable>.attr1
	ldrh	lr, [r5, #20]	@  <variable>.shape
	orrlt	r3, r3, #4096
	orr	r1, r1, lr
	strh	r1, [r6, #8]	@ movhi 	@  <variable>.attr0
	strlth	r3, [r6, #10]	@ movhi 	@  <variable>.attr1
.L36:
	subs	r8, r8, #1	@  i,  i
	add	r7, r7, #48	@  i,  i
	add	r6, r6, #8
	bne	.L41
.L43:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	player
	.word	shadowOAM
	.size	updateSprites, .-updateSprites
	.global	__floatsisf
	.global	__divsi3
	.align	2
	.global	setAffineMatrix
	.type	setAffineMatrix, %function
setAffineMatrix:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r6, .L47
	mov	r8, r3
	mov	r3, r0	@  index
	sub	fp, ip, #4
	add	r6, r6, r3, asl #5	@  index
	mov	r0, r1	@  theta
	ldr	r3, .L47+4
	mov	r4, r2, asl #16
	mov	lr, pc
	bx	r3
	ldr	r9, .L47+8
	mov	r5, r0	@  index
	mov	lr, pc
	bx	r9
	mov	r4, r4, asr #16	@  sx
	mov	r0, r0, asl #16	@  index
	ldr	r7, .L47+12
	mov	r1, r4	@  sx
	mov	r0, r0, asr #8	@  index
	mov	lr, pc
	bx	r7
	mov	r3, r0	@  index
	strh	r3, [r6, #6]	@ movhi 	@  index,  <variable>.pa
	ldr	sl, .L47+16
	mov	r0, r5	@  index
	mov	lr, pc
	bx	sl
	mov	r0, r0, asl #16	@  index
	mov	r0, r0, asr #8
	mov	r1, r4	@  sx
	rsb	r0, r0, #0	@  index
	mov	lr, pc
	bx	r7
	mov	r3, r0	@  index
	strh	r3, [r6, #14]	@ movhi 	@  index,  <variable>.pb
	mov	r0, r5	@  index
	mov	lr, pc
	bx	sl
	mov	r8, r8, asl #16
	mov	r8, r8, asr #16	@  sy
	mov	r0, r0, asl #16	@  index
	mov	r1, r8	@  sy
	mov	r0, r0, asr #8	@  index
	mov	lr, pc
	bx	r7
	mov	r3, r0	@  index
	strh	r3, [r6, #22]	@ movhi 	@  index,  <variable>.pc
	mov	r0, r5	@  index
	mov	lr, pc
	bx	r9
	mov	r0, r0, asl #16	@  index
	mov	r0, r0, asr #8	@  index
	mov	r1, r8	@  sy
	mov	lr, pc
	bx	r7
	strh	r0, [r6, #30]	@ movhi 	@  index,  <variable>.pd
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	shadowOAM
	.word	__floatsisf
	.word	cosine
	.word	__divsi3
	.word	sine
	.size	setAffineMatrix, .-setAffineMatrix
	.align	2
	.global	checkColl
	.type	checkColl, %function
checkColl:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	sub	fp, ip, #4
	ldr	ip, [fp, #4]	@  by,  by
	rsb	r1, ip, r1	@  by,  ay
	mul	lr, r1, r1
	rsb	r0, r3, r0	@  bx,  ax
	mla	lr, r0, r0, lr
	ldr	r3, [fp, #8]	@  bRad,  bRad
	add	r4, r2, r3	@  aRad,  bRad
	mov	r0, lr	@  ax
	add	r1, r4, #1	@  ay
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	cmp	r0, r4	@  r
	movlt	r0, #0	@  ax
	movge	r0, #1	@  ax
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	intRoot
	.size	checkColl, .-checkColl
	.align	2
	.global	waitForVBlank
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L61
	@ lr needed for prologue
.L55:
	ldr	r2, [r1, #0]	@  scanlineCounter
	ldrh	r3, [r2, #0]
	cmp	r3, #160
	bhi	.L55
.L58:
	ldrh	r3, [r2, #0]
	cmp	r3, #159
	bls	.L58
	bx	lr
.L62:
	.align	2
.L61:
	.word	scanlineCounter
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	intRoot
	.type	intRoot, %function
intRoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0	@  a
	mov	r0, #0	@  ans
	cmp	r0, r2	@  ans,  a
	cmplt	r0, r1	@  ans,  max
	@ lr needed for prologue
	bge	.L69
.L67:
	add	r0, r0, #1	@  ans,  ans
	mul	r3, r0, r0	@  ans,  ans
	cmp	r3, r2	@  a
	cmplt	r0, r1	@  ans,  max
	blt	.L67
.L69:
	sub	r0, r0, #1	@  a,  ans
	bx	lr
	.size	intRoot, .-intRoot
	.align	2
	.global	writeText
	.type	writeText, %function
writeText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	mov	lr, r1	@  y
	mov	r3, #0	@ movhi
	sub	r1, fp, #28	@  y
	mov	r6, #100663296	@  tMap
	mov	r4, r0	@  x
	strh	r3, [r1, #-2]!	@ movhi 
	mov	r0, r0, asr #31	@  x
	mov	r3, lr, asr #31	@  y
	mov	ip, #-2130706432
	add	r6, r6, #53248	@  tMap,  tMap
	add	lr, lr, r3, lsr #29	@  y
	add	r4, r4, r0, lsr #29	@  x
	mov	r3, #3
	mov	r5, r2	@  text
	mov	r0, r6	@  tMap
	mov	r2, #1024
	str	ip, [sp, #0]
	ldr	ip, .L78
	mov	r7, lr, asr r3	@  tileRow
	mov	r4, r4, asr r3	@  tileCol
	mov	lr, pc
	bx	ip
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ * text
	mov	r1, #0	@  i
	cmp	r2, #0
	mov	r0, r1	@  offset,  i
	beq	.L77
	add	lr, r4, r7, asl #5	@  tileCol,  tileRow
.L75:
	add	r3, r4, r0	@  tileCol,  offset
	cmp	r3, #29
	movgt	r0, #0	@  offset
	addgt	lr, lr, #32
	add	r3, lr, r0	@  offset
	sub	r2, r2, #32
	mov	r3, r3, asl #1
	strh	r2, [r3, r6]	@ movhi 	@ * tMap
	add	r1, r1, #1	@  i,  i
	ldrb	r2, [r5, r1]	@ zero_extendqisi2	@ * i
	cmp	r2, #0
	add	r0, r0, #1	@  offset,  offset
	bne	.L75
.L77:
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	dmaTransfer
	.size	writeText, .-writeText
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L81
	mov	r2, #50331648
	mov	r1, #67108864
	add	r2, r2, #32512
	add	r0, r1, #512
	str	r3, [r2, #252]
	add	r1, r1, #520
	mov	r3, #1	@ movhi
	strh	r3, [r1, #0]	@ movhi 
	mov	r3, #8	@ movhi
	@ lr needed for prologue
	strh	r3, [r0, #0]	@ movhi 
	bx	lr
.L82:
	.align	2
.L81:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r3, #67108864
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	lr, #0
	add	r3, r3, #520
	mov	r5, #512
	strh	lr, [r3, #0]	@ movhi 
	add	r5, r5, #67108866
	ldrh	r6, [r5, #0]
	cmp	r6, #8
	ldr	r4, .L87
	ldr	r7, .L87+4
	beq	.L86
.L84:
	mov	r3, #67108864
	add	r3, r3, #520
	mov	r2, #1	@ movhi
	strh	r2, [r3, #0]	@ movhi 
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L86:
	ldr	r1, [r4, #0]	@  samplesA
	ldr	ip, [r7, #12]	@  beatClip.end
	add	r1, r1, #1
	mov	r0, #67108864
	cmp	r1, ip, asl #2
	mov	r2, lr
	add	r0, r0, #160
	mov	r3, #1
	str	r1, [r4, #0]	@  samplesA
	bne	.L84
	mov	ip, #-1241513984
	str	lr, [r4, #0]	@  samplesA
	ldr	r1, [r7, #0]	@  beatClip.data
	str	ip, [sp, #0]
	ldr	r4, .L87+8
	mov	lr, pc
	bx	r4
	strh	r6, [r5, #0]	@ movhi 
	b	.L84
.L88:
	.align	2
.L87:
	.word	samplesA
	.word	beatClip
	.word	dmaTransfer
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	rotCenter
	.type	rotCenter, %function
rotCenter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L98
	ldr	r2, [r3, #0]	@  theta
	sub	r3, r2, #45
	cmp	r3, #89
	ldr	r0, .L98+4
	movls	r3, #32
	sub	r1, r2, #135
	@ lr needed for prologue
	strls	r3, [r0, #32]	@  player.centerY
	movls	r2, #20
	bls	.L96
	cmp	r1, #89
	ldr	r0, .L98+4
	sub	r3, r2, #225
	bhi	.L92
	mov	r3, #28
.L97:
	str	r3, [r0, #32]	@  player.centerY
	mov	r2, #16
.L96:
	str	r2, [r0, #28]	@  player.centerX
	bx	lr
.L92:
	cmp	r3, #89
	ldr	r0, .L98+4
	movls	r3, #32
	movls	r2, #12
	strls	r3, [r0, #32]	@  player.centerY
	strls	r2, [r0, #28]	@  player.centerX
	bxls	lr
	mov	r3, #36
	b	.L97
.L99:
	.align	2
.L98:
	.word	theta
	.word	player
	.size	rotCenter, .-rotCenter
	.align	2
	.global	runMainMenu
	.type	runMainMenu, %function
runMainMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	mov	r4, #0
	sub	sp, sp, #4
	sub	fp, ip, #4
	mov	r6, #1	@  choice
	mov	r0, r4
	mov	r1, r4
	mov	r2, r4
	ldr	r5, .L128
	mov	r3, r6	@  choice
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r7, .L128+4
	mov	r2, #256
	mov	r1, #1024
	add	r2, r2, #67108866
	add	r1, r1, #3
	mov	r3, #67108864
	mov	ip, #-2080374784
	strh	r4, [r2, #0]	@ movhi 
	ldr	r0, [r7, #0]	@  videoBuffer
	strh	r1, [r3, #0]	@ movhi 
	mov	r2, #19200
	ldr	r1, .L128+8
	mov	r3, #3
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r4, .L128+12
	ldr	r5, .L128+16
	ldr	r8, .L128+20
	ldr	r9, .L128+24
	ldr	sl, .L128+28
.L126:
	ldr	r3, [r4, #0]	@  buttons
	ldr	r2, [r8, #0]	@  rawButtons
	str	r3, [r5, #0]	@  lastButtons
	ldr	r3, [r2, #0]
	cmp	r6, #0	@  choice
	mvn	r3, r3
	str	r3, [r4, #0]	@  buttons
	beq	.L104
	mov	lr, #37120
	mov	ip, #7360
	mov	r0, #53504
	mov	r1, #28416
	ldr	r3, [r7, #0]	@  videoBuffer
	add	lr, lr, #88
	add	ip, ip, #39
	add	r0, r0, #24
	add	r1, r1, #123
	mov	r2, #69	@  i
.L109:
	subs	r2, r2, #1	@  i,  i
	strh	ip, [r3, lr]	@ movhi 
	strh	r1, [r3, r0]	@ movhi 
	add	r3, r3, #2
	bpl	.L109
.L110:
	ldr	r2, [r5, #0]	@  lastButtons
	tst	r2, #64
	bne	.L118
	ldr	r3, [r4, #0]	@  buttons
	tst	r3, #64
	bne	.L117
.L118:
	tst	r2, #128
	bne	.L116
	ldr	r3, [r4, #0]	@  buttons
	tst	r3, #128
	beq	.L116
.L117:
	eor	r6, r6, #1	@  choice,  choice
.L116:
	ldr	r3, [r5, #0]	@  lastButtons
	tst	r3, #8
	bne	.L126
	ldr	r3, [r4, #0]	@  buttons
	tst	r3, #8
	beq	.L126
	cmp	r6, #0	@  choice
	bne	.L127
	mov	lr, pc
	bx	sl
	b	.L126
.L127:
	mov	lr, pc
	bx	r9
	b	.L126
.L104:
	mov	lr, #37120
	mov	ip, #28416
	mov	r0, #53504
	mov	r1, #7360
	ldr	r3, [r7, #0]	@  videoBuffer
	add	lr, lr, #88
	add	ip, ip, #123
	add	r0, r0, #24
	add	r1, r1, #39
	mov	r2, #69	@  i
.L115:
	subs	r2, r2, #1	@  i,  i
	strh	ip, [r3, lr]	@ movhi 
	strh	r1, [r3, r0]	@ movhi 
	add	r3, r3, #2
	bpl	.L115
	b	.L110
.L129:
	.align	2
.L128:
	.word	dmaTransfer
	.word	videoBuffer
	.word	splashBitmap
	.word	buttons
	.word	lastButtons
	.word	rawButtons
	.word	runGame
	.word	runTutorial
	.size	runMainMenu, .-runMainMenu
	.global	__floatsidf
	.global	__gtdf2
	.global	__ltdf2
	.global	__ledf2
	.align	2
	.global	runTutorial
	.type	runTutorial, %function
runTutorial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	mov	r0, #4864	@ movhi
	sub	sp, sp, #12
	sub	fp, ip, #4
	mov	r6, #67108864
	mov	r5, #-2147483648
	mov	r1, #7296	@ movhi
	mov	r2, #256
	strh	r0, [r6, #0]	@ movhi 
	strh	r1, [r6, #10]	@ movhi 
	mov	r0, #83886080
	ldr	r1, .L176+24
	mov	r3, #3
	str	r5, [sp, #0]
	ldr	ip, .L176+28
	mov	lr, pc
	bx	ip
	mov	r0, #100663296
	ldr	r1, .L176+32
	mov	r2, #2848
	mov	r3, #3
	str	r5, [sp, #0]
	ldr	ip, .L176+28
	mov	lr, pc
	bx	ip
	ldr	r4, .L176+36
	ldr	ip, .L176+40
	mov	r0, #100663296
	str	r4, [ip, #0]	@  map
	mov	r1, r4
	add	r0, r0, #57344
	mov	r2, #1024
	mov	r3, #3
	str	r5, [sp, #0]
	ldr	ip, .L176+28
	mov	lr, pc
	bx	ip
	mov	r3, #6784
	add	r3, r3, #4
	mov	r0, #100663296
	strh	r3, [r6, #8]	@ movhi 
	add	r0, r0, #16384
	ldr	r1, .L176+44
	mov	r2, #2048
	mov	r3, #3
	str	r5, [sp, #0]
	ldr	ip, .L176+28
	mov	lr, pc
	bx	ip
	mov	r5, #0
	sub	r1, fp, #40
	mov	ip, #-2130706432
	mov	r0, #100663296
	strh	r5, [r1, #-2]!	@ movhi 
	add	r0, r0, #53248
	mov	r2, #1024
	mov	r3, #3
	str	ip, [sp, #0]
	ldr	ip, .L176+28
	mov	lr, pc
	bx	ip
	ldr	r4, .L176+48
	ldr	r3, .L176+52
	mov	r2, #44032
	add	r2, r2, #68
	str	r3, [r4, #0]	@  beatClip.data
	str	r2, [r4, #12]	@  beatClip.end
	stmib	r4, {r2, r5}	@ phole stm
	bl	setupInterrupts
	mov	r2, #256
	mvn	r3, #1520
	add	lr, r6, r2
	sub	r3, r3, #1
	mov	ip, #2816
	strh	r3, [lr, #0]	@ movhi 
	add	r2, r2, #67108866
	add	ip, ip, #4
	mov	r3, #192	@ movhi
	strh	r3, [r2, #0]	@ movhi 
	strh	ip, [r6, #130]	@ movhi 
	mov	ip, #128	@ movhi
	strh	ip, [r6, #132]	@ movhi 
	ldr	ip, .L176+56
	ldr	r1, [r4, #0]	@  beatClip.data
	ldr	r7, .L176+60	@  obstacles
	mov	r4, #-1241513984
	str	r5, [ip, #0]	@  samplesA
	mov	r2, r5
	add	r0, r6, #160
	mov	r3, #1
	ldr	ip, .L176+28
	str	r4, [sp, #0]
	mov	lr, pc
	bx	ip
	mov	r0, r7	@  obstacles
	mov	r1, #1
	bl	loadSprites
	ldr	sl, .L176+64
	ldr	r9, .L176+68
	ldr	r8, .L176+72
.L164:
	ldr	r3, [sl, #0]	@  buttons
	ldr	r1, .L176+76
	ldr	r0, .L176+80
	ldr	r2, [r1, #0]	@  rawButtons
	str	r3, [r0, #0]	@  lastButtons
	ldr	r1, [r2, #0]
	tst	r3, #8
	mvn	r1, r1
	str	r1, [sl, #0]	@  buttons
	bne	.L134
	tst	r1, #8
	bne	.L171
.L134:
	ldr	r3, [sl, #0]	@  buttons
	tst	r3, #1
	ldrne	ip, .L176+84
	ldrne	r3, [r9, #0]	@  theta
	ldrne	r2, [ip, #0]	@  deltaTheta
	addne	r3, r3, r2
	bne	.L165
	tst	r3, #2
	ldrne	r0, .L176+84
	ldrne	r3, [r9, #0]	@  theta
	ldrne	r2, [r0, #0]	@  deltaTheta
	rsbne	r3, r2, r3
	bne	.L165
	ldr	r6, [r9, #0]	@  tMap,  theta
	ldr	r2, .L176+88
	mov	r0, r6	@  tMap
	mov	lr, pc
	bx	r2
	adr	r2, .L176
	ldmia	r2, {r2-r3}
	ldr	ip, .L176+92
	mov	r5, r1	@  tMap
	mov	r4, r0	@  tMap
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  tMap
	ble	.L139
	adr	r2, .L176+8
	ldmia	r2, {r2-r3}
	mov	r1, r5	@  tMap
	mov	r0, r4	@  tMap
	ldr	ip, .L176+96
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  tMap
	ldrlt	r0, .L176+84
	ldrlt	r3, [r0, #0]	@  deltaTheta
	addlt	r3, r3, r3, lsr #31
	addlt	r3, r6, r3, asr #1	@  tMap
	strlt	r3, [r9, #0]	@  theta
.L139:
	ldr	r6, [r9, #0]	@  tMap,  theta
	ldr	r2, .L176+88
	mov	r0, r6	@  tMap
	mov	lr, pc
	bx	r2
	adr	r2, .L176
	ldmia	r2, {r2-r3}
	ldr	ip, .L176+100
	mov	r5, r1	@  tMap
	mov	r4, r0	@  tMap
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  tMap
	ble	.L172
.L136:
	ldr	r3, [r9, #0]	@  theta
	cmp	r3, #360
	subge	r3, r3, #360
	strge	r3, [r9, #0]	@  theta
	cmp	r3, #0
	addlt	r2, r3, #360
	ldrlt	r3, .L176+68
	strlt	r2, [r3, #0]	@  theta
	bl	rotCenter
	ldr	r3, [sl, #0]	@  buttons
	tst	r3, #32
	beq	.L147
	ldr	r2, [r8, #4]	@  player.col
	cmp	r2, #0
	ldrgt	r1, .L176+104
	ldrgt	r3, [r1, #0]	@  playerVel
	rsbgt	r3, r3, r2
	ble	.L147
.L166:
	str	r3, [r8, #4]	@  player.col
.L148:
	ldr	r3, [sl, #0]	@  buttons
	tst	r3, #64
	beq	.L150
	ldr	r2, [r8, #0]	@  player.row
	cmp	r2, #3
	ldrgt	r0, .L176+104
	ldrgt	r3, [r0, #0]	@  playerVel
	rsbgt	r3, r3, r2
	bgt	.L167
.L150:
	ldr	r3, [sl, #0]	@  buttons
	tst	r3, #128
	beq	.L151
	ldr	r2, [r8, #0]	@  player.row
	add	r3, r2, #128
	cmp	r3, #239
	bgt	.L151
	ldr	r1, .L176+104
	ldr	r3, [r1, #0]	@  playerVel
	add	r3, r2, r3
.L167:
	str	r3, [r8, #0]	@  player.row
.L151:
	add	r2, r7, #4	@  obstacles
	ldmia	r2, {r1, r2}
	add	r1, r1, r2
	ldr	r3, [r7, #0]	@  <variable>.row
	add	r2, r7, #8
	ldmia	r2, {r2, ip}	@ phole ldm
	cmp	r1, #0
	add	r3, r3, ip
	str	r3, [r7, #0]	@  <variable>.row
	str	r1, [r7, #4]	@  <variable>.col
	ldrlt	r6, [r7, #36]	@  <variable>.radius
	rsblt	r2, r2, #0
	movlt	r3, #0
	blt	.L168
	ldr	r6, [r7, #36]	@  <variable>.radius
	mov	r0, r6, asl #1
	add	r3, r1, r0
	cmp	r3, #240
	ble	.L154
	rsb	r3, r0, #240
	rsb	r2, r2, #0
.L168:
	str	r3, [r7, #4]	@  <variable>.col
	str	r2, [r7, #8]	@  <variable>.xVel
.L154:
	ldr	r5, [r7, #0]	@  <variable>.row
	cmp	r5, #0
	blt	.L173
	mov	r2, r6, asl #1
	add	r3, r5, r2
	cmp	r3, #160
	rsbgt	r2, r2, #160
	rsbgt	r3, ip, #0
	strgt	r3, [r7, #12]	@  <variable>.yVel
	strgt	r2, [r7, #0]	@  <variable>.row
	movgt	r5, r2
.L157:
	ldr	r2, [r8, #32]	@  player.centerY
	ldr	r1, [r8, #0]	@  player.row
	ldr	r0, [r8, #4]	@  player.col
	ldr	r4, [r8, #28]	@  player.centerX
	ldr	r3, [r7, #4]	@  <variable>.col
	ldr	lr, [r7, #28]	@  <variable>.centerX
	ldr	ip, [r7, #32]	@  <variable>.centerY
	add	r1, r1, r2
	add	r1, r1, #1
	add	ip, r5, ip
	ldr	r2, [r8, #36]	@  player.radius
	add	r0, r0, r4	@  tMap
	add	r3, r3, lr
	str	ip, [sp, #0]
	str	r6, [sp, #4]
	bl	checkColl
	cmp	r0, #0	@  tMap
	ldr	r1, .L176+72
	bne	.L159
	ldr	ip, .L176+108
	ldr	r3, [r7, #8]	@  <variable>.xVel
	ldr	r0, [ip, #0]	@  stringFlag
	ldr	r2, [r7, #12]	@  <variable>.yVel
	rsb	r3, r3, #0
	rsb	r2, r2, #0
	cmp	r0, #0
	str	r3, [r7, #8]	@  <variable>.xVel
	str	r2, [r7, #12]	@  <variable>.yVel
	beq	.L174
	cmp	r0, #1
	beq	.L175
	ldr	r2, [r1, #32]	@  player.centerY
	ldr	r0, [r1, #4]	@  player.col
	ldr	r3, [r1, #28]	@  player.centerX
	ldr	r1, [r1, #0]	@  player.row
	add	r1, r1, r2
	ldr	r2, .L176+112
.L170:
	add	r0, r0, r3	@  tMap
.L169:
	bl	writeText
	ldr	r0, .L176+108
	ldr	r3, [r0, #0]	@  stringFlag
	ldr	r1, .L176+116
	add	r3, r3, #1
	smull	ip, r2, r1, r3
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, asl #1
	rsb	r3, r2, r3
	str	r3, [r0, #0]	@  stringFlag
.L159:
	ldr	r0, .L176+60
	mov	r1, #1
	bl	updateSprites
	mov	r2, #256
	mov	r3, r2
	ldr	r1, [r9, #0]	@  theta
	mov	r0, #0
	bl	setAffineMatrix
	ldr	r0, .L176+120
	ldr	r3, [r0, #0]	@  vOff
	sub	r3, r3, #1
	str	r3, [r0, #0]	@  vOff
	bl	waitForVBlank
	mov	ip, #-2147483648
	mov	r0, #117440512
	ldr	r1, .L176+124
	mov	r3, #3
	str	ip, [sp, #0]
	mov	r2, #512
	ldr	ip, .L176+28
	mov	lr, pc
	bx	ip
	ldr	r0, .L176+120
	ldr	r1, .L176+128
	ldrh	r0, [r0, #0]	@ movhi	@  vOff
	ldrh	r1, [r1, #0]	@ movhi	@  hOff
	mov	r3, #67108864
	strh	r0, [r3, #22]	@ movhi 
	strh	r1, [r3, #20]	@ movhi 
	b	.L164
.L175:
	ldr	r2, [r1, #32]	@  player.centerY
	ldr	r0, [r1, #4]	@  player.col
	ldr	r3, [r1, #28]	@  player.centerX
	ldr	r1, [r1, #0]	@  player.row
	add	r1, r1, r2
	ldr	r2, .L176+132
	b	.L170
.L174:
	ldr	r2, [r8, #28]	@  player.centerX
	ldr	r0, [r8, #4]	@  player.col
	ldr	r1, [r8, #0]	@  player.row
	ldr	r3, [r8, #32]	@  player.centerY
	add	r0, r0, r2	@  tMap
	ldr	r2, .L176+136
	add	r1, r1, r3
	b	.L169
.L173:
	mov	r2, #0
	rsb	r3, ip, #0
	mov	r5, r2
	str	r3, [r7, #12]	@  <variable>.yVel
	str	r2, [r7, #0]	@  <variable>.row
	b	.L157
.L147:
	ldr	r3, [sl, #0]	@  buttons
	tst	r3, #16
	beq	.L148
	ldr	r2, [r8, #4]	@  player.col
	add	r3, r2, #32
	cmp	r3, #239
	bgt	.L148
	ldr	ip, .L176+104
	ldr	r3, [ip, #0]	@  playerVel
	add	r3, r2, r3
	b	.L166
.L172:
	adr	r2, .L176+16
	ldmia	r2, {r2-r3}
	mov	r1, r5	@  tMap
	mov	r0, r4	@  tMap
	ldr	ip, .L176+92
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  tMap
	ble	.L136
	ldr	r0, .L176+84
	ldr	r3, [r0, #0]	@  deltaTheta
	add	r3, r3, r3, lsr #31
	sub	r3, r6, r3, asr #1	@  tMap
.L165:
	str	r3, [r9, #0]	@  theta
	b	.L136
.L171:
	bl	runMainMenu
	b	.L134
.L177:
	.align	2
.L176:
	.word	1080459264
	.word	0
	.word	1081507840
	.word	0
	.word	0
	.word	0
	.word	tutorialBGPal
	.word	dmaTransfer
	.word	tutorialBGTiles
	.word	tutorialBGMap
	.word	map
	.word	fontTiles
	.word	beatClip
	.word	tutorialBGM
	.word	samplesA
	.word	tutSprites
	.word	buttons
	.word	theta
	.word	player
	.word	rawButtons
	.word	lastButtons
	.word	deltaTheta
	.word	__floatsidf
	.word	__gtdf2
	.word	__ltdf2
	.word	__ledf2
	.word	playerVel
	.word	stringFlag
	.word	pardon
	.word	1431655766
	.word	vOff
	.word	shadowOAM
	.word	hOff
	.word	eek
	.word	oops
	.size	runTutorial, .-runTutorial
	.global	__umodsi3
	.align	2
	.global	runGame
	.type	runGame, %function
runGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	mvn	r3, #25344
	sub	sp, sp, #12
	sub	fp, ip, #4
	mov	r6, #67108864
	mov	r4, #-2147483648
	sub	r3, r3, #127
	mov	r0, #4608	@ movhi
	ldr	r1, .L247+24
	strh	r3, [r6, #10]	@ movhi 
	strh	r0, [r6, #0]	@ movhi 
	mov	r2, #256
	mov	r0, #83886080
	mov	r3, #3
	str	r4, [sp, #0]
	ldr	ip, .L247+28
	mov	lr, pc
	bx	ip
	mov	r2, #28416
	mov	r0, #100663296
	ldr	r1, .L247+32
	add	r2, r2, #96
	mov	r3, #3
	str	r4, [sp, #0]
	ldr	ip, .L247+28
	mov	lr, pc
	bx	ip
	ldr	lr, .L247+36
	ldr	ip, .L247+40
	ldr	r1, [lr, #0]	@  sbbY
	ldr	lr, .L247+44
	mov	r0, #100663296
	add	r1, ip, r1, asl #11
	str	r4, [sp, #0]
	add	r0, r0, #57344
	str	ip, [lr, #0]	@  map
	mov	r2, #1024
	mov	r3, #3
	ldr	ip, .L247+28
	mov	lr, pc
	bx	ip
	ldr	lr, .L247+36
	mov	r3, #2
	str	r3, [lr, #0]	@  sbbY
	ldr	r3, .L247+48
	mov	r5, #0	@  ticker
	ldr	r0, .L247+52
	mov	r2, #3
	str	r5, [r3, #0]	@  ticker,  bigHOff
	ldr	r3, .L247+56
	str	r2, [r0, #0]	@  sbbH
	mov	r2, #96
	ldr	r4, .L247+60
	str	r2, [r3, #0]	@  vOff
	ldr	ip, .L247+64
	ldr	r2, .L247+68
	ldr	lr, .L247+72
	mov	r1, #79872
	add	r1, r1, #60
	mov	r3, #608
	str	r3, [ip, #0]	@  bigVOff
	str	r2, [r4, #0]	@  beatClip.data
	str	r1, [r4, #12]	@  beatClip.end
	str	r1, [r4, #4]	@  beatClip.length
	str	r5, [lr, #0]	@  ticker,  hOff
	str	r5, [r4, #8]	@  ticker,  beatClip.start
	bl	setupInterrupts
	mov	r2, #256
	mvn	r3, #1520
	add	lr, r6, r2
	sub	r3, r3, #1
	mov	ip, #2816
	strh	r3, [lr, #0]	@ movhi 
	add	r2, r2, #67108866
	add	ip, ip, #4
	mov	r3, #192	@ movhi
	strh	r3, [r2, #0]	@ movhi 
	strh	ip, [r6, #130]	@ movhi 
	mov	ip, #128	@ movhi
	strh	ip, [r6, #132]	@ movhi 
	ldr	ip, .L247+76
	ldr	r1, [r4, #0]	@  beatClip.data
	mov	r0, #1
	ldr	sl, .L247+80	@  obstacles
	mov	r4, #-1241513984
	str	r5, [ip, #0]	@  ticker,  samplesA
	str	r0, [fp, #-44]	@  loadNew
	mov	r2, r5	@  ticker
	add	r0, r6, #160
	mov	r3, #1
	ldr	ip, .L247+28
	str	r4, [sp, #0]
	mov	lr, pc
	bx	ip
	mov	r0, sl	@  obstacles
	mov	r1, #7
	bl	loadSprites
	ldr	r9, .L247+84
.L235:
	ldr	lr, .L247+88
	ldr	r1, .L247+92
	ldr	r3, [lr, #0]	@  buttons
	ldr	r0, .L247+96
	ldr	r2, [r1, #0]	@  rawButtons
	str	r3, [r0, #0]	@  lastButtons
	ldr	r1, [r2, #0]
	tst	r3, #8
	mvn	r1, r1
	str	r1, [lr, #0]	@  buttons
	bne	.L182
	tst	r1, #8
	bne	.L242
.L182:
	ldr	r0, .L247+80
	mov	r1, #7
	ldr	r2, .L247+100
	mov	lr, pc
	bx	r2
	ldr	ip, .L247+88
	ldr	r3, [ip, #0]	@  buttons
	tst	r3, #1
	beq	.L184
	ldr	lr, .L247+104
	ldr	r0, .L247+108
	ldr	r3, [lr, #0]	@  theta
	ldr	r2, [r0, #0]	@  deltaTheta
	add	r3, r3, r2
	str	r3, [lr, #0]	@  theta
.L185:
	ldr	r1, .L247+104
	ldr	r3, [r1, #0]	@  theta
	cmp	r3, #360
	subge	r3, r3, #360
	strge	r3, [r1, #0]	@  theta
	cmp	r3, #0
	addlt	r2, r3, #360
	ldrlt	r3, .L247+104
	strlt	r2, [r3, #0]	@  theta
	bl	rotCenter
	ldr	r2, .L247+88
	ldr	r3, [r2, #0]	@  buttons
	tst	r3, #32
	beq	.L196
	ldr	r2, [r9, #4]	@  player.col
	cmp	r2, #0
	ldrgt	ip, .L247+112
	ldrgt	r3, [ip, #0]	@  playerVel
	rsbgt	r3, r3, r2
	ble	.L196
.L238:
	str	r3, [r9, #4]	@  player.col
.L197:
	ldr	r1, .L247+88
	ldr	r3, [r1, #0]	@  buttons
	tst	r3, #64
	beq	.L199
	ldr	r2, [r9, #0]	@  player.row
	cmp	r2, #2
	ldrgt	ip, .L247+112
	ldrgt	r3, [ip, #0]	@  playerVel
	rsbgt	r3, r3, r2
	bgt	.L239
.L199:
	ldr	lr, .L247+88
	ldr	r3, [lr, #0]	@  buttons
	tst	r3, #128
	beq	.L200
	ldr	r2, [r9, #0]	@  player.row
	add	r3, r2, #128
	cmp	r3, #239
	bgt	.L200
	ldr	r0, .L247+112
	ldr	r3, [r0, #0]	@  playerVel
	add	r3, r2, r3
.L239:
	str	r3, [r9, #0]	@  player.row
.L200:
	mov	r8, #0	@  i
	mov	r6, sl	@  obstacles,  obstacles
	mov	r7, r8	@  i,  i
.L231:
	ldr	r3, [r6, #44]	@  <variable>.active
	cmp	r3, #0
	beq	.L204
	ldr	r3, [r7, sl]	@  <variable>.row
	ldr	r2, [r6, #12]	@  <variable>.yVel
	ldr	r0, [r6, #16]	@  <variable>.start
	add	ip, r6, #4	@  obstacles
	ldmia	ip, {r1, ip}
	add	r1, r1, ip
	add	r3, r3, r2
	cmp	r0, #146
	str	r3, [r7, sl]	@  <variable>.row
	str	r1, [r6, #4]	@  <variable>.col
	beq	.L213
	bgt	.L221
	cmp	r0, #14
	beq	.L210
	bgt	.L222
	cmp	r0, #10
	beq	.L209
.L207:
	ldr	r2, [r6, #4]	@  <variable>.col
	cmp	r2, #0
	movlt	lr, #0
	strlt	lr, [r6, #4]	@  <variable>.col
	strlt	lr, [r6, #44]	@  <variable>.active
	blt	.L225
	ldr	r3, [r6, #36]	@  <variable>.radius
	mov	r3, r3, asl #1
	add	r2, r2, r3
	cmp	r2, #240
	rsbgt	r3, r3, #240
	movgt	r0, #0
	strgt	r3, [r6, #4]	@  <variable>.col
	strgt	r0, [r6, #44]	@  <variable>.active
.L225:
	ldr	r3, [r7, sl]	@  <variable>.row
	cmp	r3, #0
	movlt	r1, #0
	strlt	r1, [r7, sl]	@  <variable>.row
	strlt	r1, [r6, #44]	@  <variable>.active
	blt	.L228
	ldr	r2, [sl, #36]	@  <variable>.radius
	ldr	r3, [sl, #0]	@  <variable>.row
	mov	r2, r2, asl #1
	add	r3, r3, r2
	cmp	r3, #160
	rsbgt	r3, r2, #160
	movgt	r2, #0
	strgt	r3, [sl, #0]	@  <variable>.row
	strgt	r2, [r6, #44]	@  <variable>.active
.L228:
	ldr	r4, [r6, #28]	@  <variable>.centerX
	ldr	r3, [r6, #4]	@  <variable>.col
	ldr	r2, [r9, #32]	@  player.centerY
	ldr	r1, [r9, #0]	@  player.row
	ldr	lr, [r6, #32]	@  <variable>.centerY
	ldr	r0, [r9, #4]	@  player.col
	ldr	r5, [r9, #28]	@  player.centerX
	ldr	ip, [r7, sl]	@  <variable>.row
	add	r1, r1, r2
	add	r3, r3, r4	@  loadNew
	ldr	r4, [r6, #36]	@  <variable>.radius
	add	ip, ip, lr
	ldr	r2, [r9, #36]	@  loadNew,  player.radius
	add	r0, r0, r5	@  obstacles
	add	r1, r1, #1
	str	ip, [sp, #0]
	str	r4, [sp, #4]
	bl	checkColl
	cmp	r0, #0	@  obstacles
	beq	.L243
.L204:
	add	r8, r8, #1	@  i,  i
	cmp	r8, #6	@  i
	add	r7, r7, #48	@  i,  i
	add	r6, r6, #48	@  obstacles,  obstacles
	ble	.L231
	ldr	r0, .L247+80
	mov	r1, #7
	bl	updateSprites
	ldr	r3, .L247+104
	mov	r2, #256
	ldr	r1, [r3, #0]	@  theta
	mov	r0, #0
	mov	r3, r2
	bl	setAffineMatrix
	ldr	ip, .L247+64
	ldr	r2, [ip, #0]	@  bigVOff
	cmp	r2, #0
	ble	.L232
	ldr	lr, .L247+56
	ldr	r3, [lr, #0]	@  vOff
	sub	r2, r2, #1
	sub	r3, r3, #1
	str	r3, [lr, #0]	@  vOff
	str	r2, [ip, #0]	@  bigVOff
.L232:
	ldr	r0, .L247+56
	ldr	r2, [r0, #0]	@  vOff
	cmp	r2, #0
	blt	.L244
.L233:
	mov	r4, #-2147483648
	bl	waitForVBlank
	mov	r0, #117440512
	ldr	r1, .L247+116
	mov	r2, #512
	mov	r3, #3
	str	r4, [sp, #0]
	ldr	ip, .L247+28
	mov	lr, pc
	bx	ip
	ldr	lr, [fp, #-44]	@  loadNew
	cmp	lr, #0
	bne	.L245
.L234:
	ldr	r3, .L247+56
	ldr	r0, .L247+72
	ldrh	r3, [r3, #0]	@ movhi	@  vOff
	ldrh	r0, [r0, #0]	@ movhi	@  hOff
	mov	r2, #67108864
	strh	r3, [r2, #22]	@ movhi 
	strh	r0, [r2, #20]	@ movhi 
	b	.L235
.L245:
	ldr	r0, .L247+36
	ldr	r2, .L247+44
	ldr	r3, [r0, #0]	@  sbbY
	ldr	r1, [r2, #0]	@  map
	mov	r0, #100663296
	add	r1, r1, r3, asl #11
	ldr	ip, .L247+28
	mov	r2, #1024
	mov	r3, #3
	add	r0, r0, #57344
	str	r4, [sp, #0]
	mov	lr, pc
	bx	ip
	ldr	lr, .L247+36
	ldr	r2, .L247+52
	ldr	r0, [lr, #0]	@  sbbY
	ldr	r1, [r2, #0]	@  sbbH
	ldr	r3, .L247+120
	add	r0, r0, #1	@  obstacles
	mov	lr, pc
	bx	r3
	ldr	ip, .L247+44
	ldr	r1, [ip, #0]	@  map
	add	r1, r1, r0, asl #11	@  obstacles
	mov	r0, #100663296
	add	r0, r0, #59392
	mov	r2, #1024
	mov	r3, #3
	str	r4, [sp, #0]
	ldr	ip, .L247+28
	mov	lr, pc
	bx	ip
	mov	lr, #0
	str	lr, [fp, #-44]	@  loadNew
	b	.L234
.L244:
	ldr	r1, .L247+36
	ldr	r3, [r1, #0]	@  sbbY
	add	r2, r2, #256
	sub	r3, r3, #1
	str	r2, [r0, #0]	@  vOff
	mov	r2, #1
	str	r3, [r1, #0]	@  sbbY
	str	r2, [fp, #-44]	@  loadNew
	b	.L233
.L243:
	bl	runMainMenu
	b	.L204
.L209:
	mov	r3, #14
.L241:
	str	r3, [r6, #16]	@  <variable>.start
	b	.L207
.L222:
	cmp	r0, #138
	beq	.L211
	cmp	r0, #142
	bne	.L207
	mov	r3, #146
	b	.L241
.L211:
	mov	r3, #142
	b	.L241
.L210:
	mov	r3, #10
	b	.L241
.L221:
	mov	r2, #268
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L216
	bgt	.L223
	cmp	r0, #150
	beq	.L214
	mov	r3, #264
	add	r3, r3, #2
	cmp	r0, r3
	streq	r2, [r6, #16]	@  <variable>.start
	b	.L207
.L214:
	mov	r3, #138
	b	.L241
.L223:
	mov	r3, #272
	add	r3, r3, #2
	cmp	r0, r3
	beq	.L217
	mov	r3, #276
	add	r3, r3, #2
	cmp	r0, r3
	bne	.L207
	mov	r3, #264
.L240:
	add	r3, r3, #2
	b	.L241
.L217:
	mov	r3, #276
	b	.L240
.L216:
	mov	r3, #272
	b	.L240
.L213:
	mov	r3, #150
	b	.L241
.L196:
	ldr	lr, .L247+88
	ldr	r3, [lr, #0]	@  buttons
	tst	r3, #16
	beq	.L197
	ldr	r2, [r9, #4]	@  player.col
	add	r3, r2, #32
	cmp	r3, #239
	bgt	.L197
	ldr	r0, .L247+112
	ldr	r3, [r0, #0]	@  playerVel
	add	r3, r2, r3
	b	.L238
.L184:
	tst	r3, #2
	beq	.L186
	ldr	r1, .L247+104
	ldr	ip, .L247+108
	ldr	r3, [r1, #0]	@  theta
	ldr	r2, [ip, #0]	@  deltaTheta
	rsb	r3, r2, r3
	str	r3, [r1, #0]	@  theta
	b	.L185
.L186:
	ldr	lr, .L247+104
	ldr	r6, [lr, #0]	@  obstacles,  theta
	ldr	r2, .L247+124
	mov	r0, r6	@  obstacles
	mov	lr, pc
	bx	r2
	adr	r2, .L247
	ldmia	r2, {r2-r3}
	ldr	ip, .L247+128
	mov	r5, r1	@  obstacles
	mov	r4, r0	@  obstacles
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  obstacles
	ble	.L188
	adr	r2, .L247+8
	ldmia	r2, {r2-r3}
	mov	r1, r5	@  obstacles
	mov	r0, r4	@  obstacles
	ldr	ip, .L247+132
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  obstacles
	blt	.L246
.L188:
	ldr	r1, .L247+104
	ldr	r6, [r1, #0]	@  obstacles,  theta
	ldr	r2, .L247+124
	mov	r0, r6	@  obstacles
	mov	lr, pc
	bx	r2
	adr	r2, .L247
	ldmia	r2, {r2-r3}
	ldr	ip, .L247+136
	mov	r5, r1	@  obstacles
	mov	r4, r0	@  obstacles
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  obstacles
	bgt	.L185
	adr	r2, .L247+16
	ldmia	r2, {r2-r3}
	mov	r1, r5	@  obstacles
	mov	r0, r4	@  obstacles
	ldr	ip, .L247+128
	mov	lr, pc
	bx	ip
	cmp	r0, #0	@  obstacles
	ble	.L185
	ldr	lr, .L247+108
	ldr	r3, [lr, #0]	@  deltaTheta
	ldr	r0, .L247+104
	add	r3, r3, r3, lsr #31
	sub	r3, r6, r3, asr #1	@  obstacles
	str	r3, [r0, #0]	@  theta
	b	.L185
.L246:
	ldr	lr, .L247+108
	ldr	r3, [lr, #0]	@  deltaTheta
	ldr	r0, .L247+104
	add	r3, r3, r3, lsr #31
	add	r3, r6, r3, asr #1	@  obstacles
	str	r3, [r0, #0]	@  theta
	b	.L188
.L242:
	bl	runMainMenu
	b	.L182
.L248:
	.align	2
.L247:
	.word	1080459264
	.word	0
	.word	1081507840
	.word	0
	.word	0
	.word	0
	.word	cityPal
	.word	dmaTransfer
	.word	cityTiles
	.word	sbbY
	.word	cityMap
	.word	map
	.word	bigHOff
	.word	sbbH
	.word	vOff
	.word	beatClip
	.word	bigVOff
	.word	reggaeLoop
	.word	hOff
	.word	samplesA
	.word	gameSprites
	.word	player
	.word	buttons
	.word	rawButtons
	.word	lastButtons
	.word	spawnSprite
	.word	theta
	.word	deltaTheta
	.word	playerVel
	.word	shadowOAM
	.word	__umodsi3
	.word	__floatsidf
	.word	__gtdf2
	.word	__ltdf2
	.word	__ledf2
	.size	runGame, .-runGame
	.align	2
	.global	spawnSprite
	.type	spawnSprite, %function
spawnSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	ldr	r8, .L254
	mov	r7, r0	@  obstacles
	mov	lr, pc
	bx	r8
	ldr	r3, .L254+4
	smull	r1, r2, r3, r0	@  obstacles
	mov	r3, r0, asr #31	@  obstacles
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, asl #2
	rsb	r0, r3, r0	@  obstacles
	add	r4, r0, #1	@  s
	add	r3, r4, r4, asl #1	@  s,  s
	mov	r6, r3, asl #4
	add	r5, r6, r7	@  obstacles
	ldr	r3, [r5, #44]	@  <variable>.active
	cmp	r3, #0
	ldr	sl, .L254+8
	beq	.L253
.L249:
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L253:
	mov	r3, #1
	str	r3, [r5, #44]	@  <variable>.active
	mov	lr, pc
	bx	r8
	ldr	r3, .L254+12
	smull	r1, r2, r3, r0	@  obstacles
	mov	r3, r0, asr #31	@  obstacles
	add	r2, r2, r0	@  obstacles
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, asl #4
	sub	r0, r0, r3, asl #3	@  obstacles
	str	r0, [r6, r7]	@  <variable>.row
	mov	lr, pc
	bx	r8
	smull	r2, r3, sl, r0	@  obstacles
	sub	r3, r3, r0, asr #31	@  obstacles
	add	r3, r3, r3, asl #1
	rsb	r0, r3, r0	@  obstacles
	sub	r0, r0, #2
	ands	r3, r4, #1	@  s
	str	r0, [r5, #12]	@  <variable>.yVel
	bne	.L251
	str	r3, [r5, #4]	@  <variable>.col
	mov	lr, pc
	bx	r8
	smull	r1, r3, sl, r0	@  obstacles
	sub	r3, r3, r0, asr #31	@  obstacles
	add	r3, r3, r3, asl #1
	rsb	r0, r3, r0	@  obstacles
	add	r0, r0, #1
	str	r0, [r5, #8]	@  <variable>.xVel
	b	.L249
.L251:
	mov	r3, #200
	str	r3, [r5, #4]	@  <variable>.col
	mov	lr, pc
	bx	r8
	smull	r2, r3, sl, r0	@  obstacles
	sub	r3, r3, r0, asr #31	@  obstacles
	add	r3, r3, r3, asl #1
	rsb	r3, r0, r3	@  obstacles
	sub	r3, r3, #1
	str	r3, [r5, #8]	@  <variable>.xVel
	b	.L249
.L255:
	.align	2
.L254:
	.word	rand
	.word	1717986919
	.word	1431655766
	.word	-2004318071
	.size	spawnSprite, .-spawnSprite
	.comm	buttons, 4, 32
	.comm	lastButtons, 4, 32
	.comm	shadowOAM, 1024, 32
	.comm	map, 4, 32
	.comm	beatClip, 16, 32
	.ident	"GCC: (GNU) 3.3.2"
