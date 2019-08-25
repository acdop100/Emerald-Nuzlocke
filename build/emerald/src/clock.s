@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.type	 InitTimeBasedEvents,function
	.thumb_func
InitTimeBasedEvents:
	push	{lr}
	ldr	r0, .L3
	bl	FlagSet
	bl	RtcCalcLocalTime
	ldr	r0, .L3+0x4
	ldr	r2, [r0]
	add	r2, r2, #0xa0
	ldr	r3, .L3+0x8
	ldr	r0, [r3]		@ created by thumb_load_double_from_address
	ldr	r1, [r3, #0x4]		@ created by thumb_load_double_from_address
	str	r0, [r2]
	str	r1, [r2, #0x4]
	ldr	r0, .L3+0xc
	ldrh	r1, [r3]
	bl	VarSet
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	0x895
	.word	gSaveBlock2Ptr
	.word	gLocalTime
	.word	0x4040
.Lfe1:
	.size	 InitTimeBasedEvents,.Lfe1-InitTimeBasedEvents
	.align	2, 0
	.globl	DoTimeBasedEvents
	.type	 DoTimeBasedEvents,function
	.thumb_func
DoTimeBasedEvents:
	push	{r4, lr}
	ldr	r0, .L7
	bl	FlagGet
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L6	@cond_branch
	bl	sub_813B9C0
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L6	@cond_branch
	bl	RtcCalcLocalTime
	ldr	r4, .L7+0x4
	add	r0, r4, #0
	bl	UpdatePerDay
	add	r0, r4, #0
	bl	UpdatePerMinute
.L6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2, 0
.L7:
	.word	0x895
	.word	gLocalTime
.Lfe2:
	.size	 DoTimeBasedEvents,.Lfe2-DoTimeBasedEvents
	.align	2, 0
	.type	 UpdatePerDay,function
	.thumb_func
UpdatePerDay:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	ldr	r0, .L11
	bl	GetVarPointer
	add	r6, r0, #0
	ldrh	r0, [r6]
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	cmp	r0, r1
	beq	.L10	@cond_branch
	cmp	r0, r1
	bgt	.L10	@cond_branch
	ldrh	r4, [r5]
	sub	r4, r4, r0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	bl	ClearDailyFlags
	add	r0, r4, #0
	bl	UpdateDewfordTrendPerDay
	add	r0, r4, #0
	bl	UpdateTVShowsPerDay
	add	r0, r4, #0
	bl	UpdateWeatherPerDay
	add	r0, r4, #0
	bl	UpdatePartyPokerusTime
	add	r0, r4, #0
	bl	UpdateMirageRnd
	add	r0, r4, #0
	bl	UpdateBirchState
	add	r0, r4, #0
	bl	UpdateFrontierManiac
	add	r0, r4, #0
	bl	UpdateFrontierGambler
	add	r0, r4, #0
	bl	SetShoalItemFlag
	add	r0, r4, #0
	bl	SetRandomLotteryNumber
	ldrh	r0, [r5]
	strh	r0, [r6]
.L10:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L12:
	.align	2, 0
.L11:
	.word	0x4040
.Lfe3:
	.size	 UpdatePerDay,.Lfe3-UpdatePerDay
	.align	2, 0
	.type	 UpdatePerMinute,function
	.thumb_func
UpdatePerMinute:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x8
	add	r5, r0, #0
	mov	r4, sp
	ldr	r6, .L16
	ldr	r1, [r6]
	add	r1, r1, #0xa0
	mov	r0, sp
	add	r2, r5, #0
	bl	CalcTimeDifference
	mov	r0, sp
	mov	r2, #0x0
	ldrsh	r1, [r0, r2]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r1, r0, #0x4
	sub	r1, r1, r0
	lsl	r1, r1, #0x5
	mov	r2, #0x2
	ldrsb	r2, [r4, r2]
	lsl	r0, r2, #0x4
	sub	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r1, r1, r0
	mov	r0, #0x3
	ldrsb	r0, [r4, r0]
	add	r0, r1, r0
	cmp	r0, #0
	beq	.L14	@cond_branch
	cmp	r0, #0
	blt	.L14	@cond_branch
	bl	BerryTreeTimeUpdate
	ldr	r2, [r6]
	add	r2, r2, #0xa0
	ldr	r0, [r5]		@ created by thumb_load_double_from_address
	ldr	r1, [r5, #0x4]		@ created by thumb_load_double_from_address
	str	r0, [r2]
	str	r1, [r2, #0x4]
.L14:
	add	sp, sp, #0x8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L17:
	.align	2, 0
.L16:
	.word	gSaveBlock2Ptr
.Lfe4:
	.size	 UpdatePerMinute,.Lfe4-UpdatePerMinute
	.align	2, 0
	.type	 ReturnFromStartWallClock,function
	.thumb_func
ReturnFromStartWallClock:
	push	{lr}
	bl	InitTimeBasedEvents
	ldr	r0, .L19
	bl	SetMainCallback2
	pop	{r0}
	bx	r0
.L20:
	.align	2, 0
.L19:
	.word	CB2_ReturnToFieldContinueScriptPlayMapMusic
.Lfe5:
	.size	 ReturnFromStartWallClock,.Lfe5-ReturnFromStartWallClock
	.align	2, 0
	.globl	StartWallClock
	.type	 StartWallClock,function
	.thumb_func
StartWallClock:
	push	{lr}
	ldr	r0, .L22
	bl	SetMainCallback2
	ldr	r1, .L22+0x4
	ldr	r0, .L22+0x8
	str	r0, [r1, #0x8]
	pop	{r0}
	bx	r0
.L23:
	.align	2, 0
.L22:
	.word	CB2_StartWallClock
	.word	gMain
	.word	ReturnFromStartWallClock
.Lfe6:
	.size	 StartWallClock,.Lfe6-StartWallClock
.text
	.align	2, 0

