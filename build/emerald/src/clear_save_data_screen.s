@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sClearSaveBgTemplates,object
	.size	 sClearSaveBgTemplates,8
sClearSaveBgTemplates:
	.byte	0xf0
	.byte	0x1
	.byte	0x0
	.space	1
	.byte	0xe3
	.byte	0x11
	.byte	0x0
	.space	1
	.align	2, 0
	.type	 sClearSaveTextWindow,object
sClearSaveTextWindow:
	.byte	0x0
	.byte	0x3
	.byte	0xf
	.byte	0x1a
	.byte	0x4
	.byte	0xf
	.short	0xb
	.byte	0xff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.size	 sClearSaveTextWindow,16
	.align	2, 0
	.type	 sClearSaveYesNo,object
sClearSaveYesNo:
	.byte	0x0
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.byte	0x4
	.byte	0xf
	.short	0x73
	.size	 sClearSaveYesNo,8
.text
	.align	2, 0
	.globl	CB2_InitClearSaveDataScreen
	.type	 CB2_InitClearSaveDataScreen,function
	.thumb_func
CB2_InitClearSaveDataScreen:
	push	{lr}
	bl	SetupClearSaveDataScreen
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L3	@cond_branch
	ldr	r0, .L4
	mov	r1, #0x0
	bl	CreateTask
.L3:
	pop	{r0}
	bx	r0
.L5:
	.align	2, 0
.L4:
	.word	Task_DoClearSaveDataScreenYesNo
.Lfe1:
	.size	 CB2_InitClearSaveDataScreen,.Lfe1-CB2_InitClearSaveDataScreen
	.align	2, 0
	.type	 Task_DoClearSaveDataScreenYesNo,function
	.thumb_func
Task_DoClearSaveDataScreenYesNo:
	push	{r4, lr}
	add	sp, sp, #-0xc
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x2
	mov	r3, #0xe
	bl	DrawStdFrameWithCustomTileAndPalette
	ldr	r2, .L7
	mov	r0, #0x1
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	mov	r1, #0x1
	mov	r3, #0x0
	bl	AddTextPrinterParameterized
	ldr	r0, .L7+0x4
	mov	r1, #0x2
	mov	r2, #0xe
	mov	r3, #0x1
	bl	CreateYesNoMenu
	ldr	r1, .L7+0x8
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L7+0xc
	str	r1, [r0]
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2, 0
.L7:
	.word	gText_ClearAllSaveData
	.word	sClearSaveYesNo
	.word	gTasks
	.word	Task_ClearSaveDataScreenYesNoChoice
.Lfe2:
	.size	 Task_DoClearSaveDataScreenYesNo,.Lfe2-Task_DoClearSaveDataScreenYesNo
	.align	2, 0
	.type	 Task_ClearSaveDataScreenYesNoChoice,function
	.thumb_func
Task_ClearSaveDataScreenYesNoChoice:
	push	{r4, r5, lr}
	add	sp, sp, #-0xc
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	bl	Menu_ProcessInputNoWrapClearOnChoose
	lsl	r0, r0, #0x18
	asr	r4, r0, #0x18
	cmp	r4, #0
	beq	.L11	@cond_branch
	cmp	r4, #0
	bgt	.L16	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	cmp	r4, r0
	beq	.L13	@cond_branch
	b	.L10
.L16:
	cmp	r4, #0x1
	beq	.L13	@cond_branch
	b	.L10
.L11:
	mov	r0, #0x0
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r2, .L17
	mov	r0, #0x1
	str	r0, [sp]
	str	r4, [sp, #0x4]
	str	r4, [sp, #0x8]
	mov	r0, #0x0
	mov	r1, #0x1
	mov	r3, #0x0
	bl	AddTextPrinterParameterized
	ldr	r1, .L17+0x4
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L17+0x8
	str	r1, [r0]
	b	.L10
.L18:
	.align	2, 0
.L17:
	.word	gText_ClearingData
	.word	gTasks
	.word	Task_ClearSaveData
.L13:
	mov	r0, #0x5
	bl	PlaySE
	add	r0, r5, #0
	bl	DestroyTask
	ldr	r0, .L19
	bl	SetMainCallback2
.L10:
	add	sp, sp, #0xc
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L20:
	.align	2, 0
.L19:
	.word	CB2_FadeAndDoReset
.Lfe3:
	.size	 Task_ClearSaveDataScreenYesNoChoice,.Lfe3-Task_ClearSaveDataScreenYesNoChoice
	.align	2, 0
	.type	 Task_ClearSaveData,function
	.thumb_func
Task_ClearSaveData:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	bl	ClearSaveData
	add	r0, r4, #0
	bl	DestroyTask
	ldr	r0, .L22
	bl	SetMainCallback2
	pop	{r4}
	pop	{r0}
	bx	r0
.L23:
	.align	2, 0
.L22:
	.word	CB2_FadeAndDoReset
.Lfe4:
	.size	 Task_ClearSaveData,.Lfe4-Task_ClearSaveData
	.align	2, 0
	.globl	Task_ClearSaveData2
	.type	 Task_ClearSaveData2,function
	.thumb_func
Task_ClearSaveData2:
	push	{lr}
	bl	ClearSaveData
	ldr	r0, .L25
	bl	SetMainCallback2
	pop	{r0}
	bx	r0
.L26:
	.align	2, 0
.L25:
	.word	CB2_FadeAndDoReset
.Lfe5:
	.size	 Task_ClearSaveData2,.Lfe5-Task_ClearSaveData2
	.align	2, 0
	.type	 MainCB,function
	.thumb_func
MainCB:
	push	{lr}
	bl	RunTasks
	bl	UpdatePaletteFade
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 MainCB,.Lfe6-MainCB
	.align	2, 0
	.type	 VBlankCB,function
	.thumb_func
VBlankCB:
	push	{lr}
	bl	TransferPlttBuffer
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 VBlankCB,.Lfe7-VBlankCB
	.align	2, 0
	.type	 SetupClearSaveDataScreen,function
	.thumb_func
SetupClearSaveDataScreen:
	push	{r4, lr}
	add	sp, sp, #-0xc
	ldr	r0, .L47
	mov	r1, #0x87
	lsl	r1, r1, #0x3
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L32	@cond_branch
	cmp	r0, #0x1
	bne	.LCB243
	b	.L43	@long jump
.LCB243:
.L32:
	mov	r0, #0x0
	bl	SetVBlankCallback
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x10
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x12
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x1c
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x1e
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x40
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x44
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x48
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x4a
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x50
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	add	r0, sp, #0x4
	mov	r4, #0x0
	strh	r4, [r0]
	ldr	r1, .L47+0x4
	str	r0, [r1]
	mov	r0, #0xc0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r0, .L47+0x8
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	mov	r2, #0x0
	str	r2, [sp, #0x8]
	add	r0, sp, #0x8
	str	r0, [r1]
	mov	r0, #0xe0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r0, .L47+0xc
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	add	r0, sp, #0x4
	strh	r2, [r0]
	str	r0, [r1]
	ldr	r0, .L47+0x10
	str	r0, [r1, #0x4]
	ldr	r0, .L47+0x14
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	bl	ResetPaletteFade
	ldr	r2, .L47+0x18
	ldr	r0, .L47+0x1c
	strh	r0, [r2]
	ldr	r1, .L47+0x20
	strh	r0, [r1]
	ldr	r0, .L47+0x24
	strh	r0, [r2, #0x2]
	strh	r0, [r1, #0x2]
	mov	r1, #0x0
	ldr	r3, .L47+0x28
	ldr	r0, .L47+0x2c
	add	r2, r0, #0
.L36:
	lsl	r0, r1, #0x1
	add	r0, r0, r3
	strh	r2, [r0]
	add	r0, r1, #0x1
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0xf
	bls	.L36	@cond_branch
	mov	r1, #0x0
	ldr	r4, .L47+0x30
	mov	r3, #0x1
	ldr	r2, .L47+0x34
.L41:
	lsl	r0, r1, #0x1
	add	r0, r0, r4
	strh	r3, [r0]
	add	r0, r1, #0x1
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, r2
	bls	.L41	@cond_branch
	bl	ResetTasks
	bl	ResetSpriteData
	mov	r0, #0x0
	bl	ResetBgsAndClearDma3BusyFlags
	ldr	r1, .L47+0x38
	mov	r0, #0x0
	mov	r2, #0x2
	bl	InitBgsFromTemplates
	mov	r1, #0x82
	lsl	r1, r1, #0x5
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r0, #0x0
	bl	ShowBg
	mov	r0, #0x3
	bl	ShowBg
	mov	r0, #0x50
	mov	r1, #0x0
	bl	SetGpuReg
	bl	InitClearSaveDataScreenWindows
	ldr	r0, .L47+0x3c
	str	r0, [sp]
	mov	r1, #0x0
	mov	r2, #0x10
	mov	r3, #0x0
	bl	BeginNormalPaletteFade
	mov	r0, #0x1
	bl	EnableInterrupts
	ldr	r0, .L47+0x40
	bl	SetVBlankCallback
	ldr	r0, .L47
	mov	r1, #0x87
	lsl	r1, r1, #0x3
	add	r0, r0, r1
	mov	r1, #0x1
	strb	r1, [r0]
	b	.L30
.L48:
	.align	2, 0
.L47:
	.word	gMain
	.word	0x40000d4
	.word	-0x7eff4000
	.word	-0x7affff00
	.word	0x5000002
	.word	-0x7efffe01
	.word	gPlttBufferUnfaded
	.word	0x7fff
	.word	gPlttBufferFaded
	.word	0x3945
	.word	0x6000020
	.word	0x1111
	.word	0x600f000
	.word	0x3ff
	.word	sClearSaveBgTemplates
	.word	0xffff
	.word	VBlankCB
.L43:
	bl	UpdatePaletteFade
	ldr	r0, .L49
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L30	@cond_branch
	ldr	r0, .L49+0x4
	bl	SetMainCallback2
	mov	r0, #0x1
	b	.L46
.L50:
	.align	2, 0
.L49:
	.word	gPaletteFade
	.word	MainCB
.L30:
	mov	r0, #0x0
.L46:
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 SetupClearSaveDataScreen,.Lfe8-SetupClearSaveDataScreen
	.align	2, 0
	.type	 CB2_FadeAndDoReset,function
	.thumb_func
CB2_FadeAndDoReset:
	push	{r4, lr}
	add	sp, sp, #-0x4
	ldr	r0, .L58
	mov	r1, #0x87
	lsl	r1, r1, #0x3
	add	r4, r0, r1
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.L54	@cond_branch
	cmp	r0, #0x1
	beq	.L55	@cond_branch
.L54:
	ldr	r0, .L58+0x4
	str	r0, [sp]
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x10
	bl	BeginNormalPaletteFade
	mov	r0, #0x1
	strb	r0, [r4]
	b	.L52
.L59:
	.align	2, 0
.L58:
	.word	gMain
	.word	0xffff
.L55:
	bl	UpdatePaletteFade
	ldr	r0, .L60
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L52	@cond_branch
	bl	FreeAllWindowBuffers
	bl	DoSoftReset
.L52:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.L61:
	.align	2, 0
.L60:
	.word	gPaletteFade
.Lfe9:
	.size	 CB2_FadeAndDoReset,.Lfe9-CB2_FadeAndDoReset
	.align	2, 0
	.type	 InitClearSaveDataScreenWindows,function
	.thumb_func
InitClearSaveDataScreenWindows:
	push	{lr}
	ldr	r0, .L63
	bl	InitWindows
	bl	DeactivateAllTextPrinters
	mov	r0, #0x0
	mov	r1, #0x0
	bl	FillWindowPixelBuffer
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x2
	mov	r3, #0xe0
	bl	LoadWindowGfx
	ldr	r0, .L63+0x4
	mov	r1, #0xf0
	mov	r2, #0x20
	bl	LoadPalette
	pop	{r0}
	bx	r0
.L64:
	.align	2, 0
.L63:
	.word	sClearSaveTextWindow
	.word	gUnknown_0860F074
.Lfe10:
	.size	 InitClearSaveDataScreenWindows,.Lfe10-InitClearSaveDataScreenWindows
.text
	.align	2, 0
