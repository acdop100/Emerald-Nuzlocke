@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.type	 sArrowPressed,object
	.size	 sArrowPressed,1
sArrowPressed:
	.byte	0x0
	.section .rodata
	.align	1, 0
	.type	 sUnknown_0855C604,object
sUnknown_0855C604:
	.short	0x0
	.short	0x7fff
	.short	0x2adf
	.short	0x1f8
	.short	0x423f
	.short	0xcdf
	.short	0x2529
	.short	0x675a
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x0
	.size	 sUnknown_0855C604,32
	.type	 sEqualSignGfx,object
sEqualSignGfx:
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x1f
	.byte	0x11
	.byte	0x11
	.byte	0xf8
	.byte	0x8f
	.byte	0x88
	.byte	0x88
	.byte	0xf8
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x1f
	.byte	0x11
	.byte	0x11
	.byte	0xf8
	.byte	0x8f
	.byte	0x88
	.byte	0x88
	.byte	0xf8
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.size	 sEqualSignGfx,64
	.align	2, 0
	.type	 sOptionMenuItemsNames,object
	.size	 sOptionMenuItemsNames,28
sOptionMenuItemsNames:
	.word	gText_TextSpeed
	.word	gText_BattleScene
	.word	gText_BattleStyle
	.word	gText_Sound
	.word	gText_ButtonMode
	.word	gText_Frame
	.word	gText_OptionMenuCancel
	.align	2, 0
	.type	 sOptionMenuWinTemplates,object
sOptionMenuWinTemplates:
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x1
	.short	0x2
	.byte	0x0
	.byte	0x2
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.byte	0x1
	.short	0x36
	.byte	0xff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.size	 sOptionMenuWinTemplates,24
	.align	2, 0
	.type	 sOptionMenuBgTemplates,object
	.size	 sOptionMenuBgTemplates,8
sOptionMenuBgTemplates:
	.byte	0xe5
	.byte	0x1
	.byte	0x0
	.space	1
	.byte	0xf4
	.byte	0x11
	.byte	0x0
	.space	1
	.align	1, 0
	.type	 sUnknown_0855C6A0,object
sUnknown_0855C6A0:
	.short	0x7e51
	.size	 sUnknown_0855C6A0,2
.text
	.align	2, 0
	.type	 MainCB2,function
	.thumb_func
MainCB2:
	push	{lr}
	bl	RunTasks
	bl	AnimateSprites
	bl	BuildOamBuffer
	bl	UpdatePaletteFade
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 MainCB2,.Lfe1-MainCB2
	.align	2, 0
	.type	 VBlankCB,function
	.thumb_func
VBlankCB:
	push	{lr}
	bl	LoadOam
	bl	ProcessSpriteCopyRequests
	bl	TransferPlttBuffer
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 VBlankCB,.Lfe2-VBlankCB
	.align	2, 0
	.globl	CB2_InitOptionMenu
	.type	 CB2_InitOptionMenu,function
	.thumb_func
CB2_InitOptionMenu:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0xc
	ldr	r1, .L27
	mov	r2, #0x87
	lsl	r2, r2, #0x3
	add	r0, r1, r2
	ldrb	r0, [r0]
	add	r2, r1, #0
	cmp	r0, #0xb
	bhi	.L7	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L27+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L28:
	.align	2, 0
.L27:
	.word	gMain
	.word	.L24
	.align	2, 0
	.align	2, 0
.L24:
	.word	.L7
	.word	.L8
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
.L7:
	mov	r0, #0x0
	bl	SetVBlankCallback
	ldr	r1, .L29
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	b	.L25
.L30:
	.align	2, 0
.L29:
	.word	gMain
.L8:
	mov	r3, #0xc0
	lsl	r3, r3, #0x13
	mov	r4, #0xc0
	lsl	r4, r4, #0x9
	add	r1, sp, #0x8
	mov	r8, r1
	add	r2, sp, #0x4
	mov	r6, #0x0
	ldr	r1, .L31
	mov	r5, #0x80
	lsl	r5, r5, #0x5
	ldr	r7, .L31+0x4
	mov	r0, #0x81
	lsl	r0, r0, #0x18
	mov	ip, r0
.L11:
	strh	r6, [r2]
	add	r0, sp, #0x4
	str	r0, [r1]
	str	r3, [r1, #0x4]
	str	r7, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	add	r3, r3, r5
	sub	r4, r4, r5
	cmp	r4, r5
	bhi	.L11	@cond_branch
	strh	r6, [r2]
	add	r2, sp, #0x4
	str	r2, [r1]
	str	r3, [r1, #0x4]
	lsr	r0, r4, #0x1
	mov	r2, ip
	orr	r0, r0, r2
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	mov	r0, #0xe0
	lsl	r0, r0, #0x13
	mov	r3, #0x80
	lsl	r3, r3, #0x3
	mov	r4, #0x0
	str	r4, [sp, #0x8]
	ldr	r2, .L31
	mov	r1, r8
	str	r1, [r2]
	str	r0, [r2, #0x4]
	lsr	r0, r3, #0x2
	mov	r1, #0x85
	lsl	r1, r1, #0x18
	orr	r0, r0, r1
	str	r0, [r2, #0x8]
	ldr	r0, [r2, #0x8]
	mov	r1, #0xa0
	lsl	r1, r1, #0x13
	add	r0, sp, #0x4
	strh	r4, [r0]
	str	r0, [r2]
	str	r1, [r2, #0x4]
	lsr	r3, r3, #0x1
	mov	r0, #0x81
	lsl	r0, r0, #0x18
	orr	r3, r3, r0
	str	r3, [r2, #0x8]
	ldr	r0, [r2, #0x8]
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x0
	bl	ResetBgsAndClearDma3BusyFlags
	ldr	r1, .L31+0x8
	mov	r0, #0x0
	mov	r2, #0x2
	bl	InitBgsFromTemplates
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	mov	r0, #0x2
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	mov	r0, #0x2
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	mov	r0, #0x3
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	mov	r0, #0x3
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	ldr	r0, .L31+0xc
	bl	InitWindows
	bl	DeactivateAllTextPrinters
	mov	r0, #0x40
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x44
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x48
	mov	r1, #0x1
	bl	SetGpuReg
	mov	r0, #0x4a
	mov	r1, #0x23
	bl	SetGpuReg
	mov	r0, #0x50
	mov	r1, #0xc1
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x4
	bl	SetGpuReg
	mov	r1, #0xc1
	lsl	r1, r1, #0x6
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r0, #0x0
	bl	ShowBg
	mov	r0, #0x1
	bl	ShowBg
	b	.L26
.L32:
	.align	2, 0
.L31:
	.word	0x40000d4
	.word	-0x7efff800
	.word	sOptionMenuBgTemplates
	.word	sOptionMenuWinTemplates
.L14:
	bl	ResetPaletteFade
	bl	ScanlineEffect_Stop
	bl	ResetTasks
	bl	ResetSpriteData
	ldr	r1, .L33
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	b	.L25
.L34:
	.align	2, 0
.L33:
	.word	gMain
.L15:
	ldr	r0, .L35
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x14]
	lsr	r0, r0, #0x3
	bl	GetWindowFrameTilesPal
	ldr	r1, [r0]
	mov	r2, #0x90
	lsl	r2, r2, #0x1
	mov	r3, #0xd1
	lsl	r3, r3, #0x1
	mov	r0, #0x1
	bl	LoadBgTiles
	b	.L26
.L36:
	.align	2, 0
.L35:
	.word	gSaveBlock2Ptr
.L16:
	ldr	r0, .L37
	mov	r1, #0x0
	mov	r2, #0x2
	bl	LoadPalette
	ldr	r0, .L37+0x4
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x14]
	lsr	r0, r0, #0x3
	bl	GetWindowFrameTilesPal
	ldr	r0, [r0, #0x4]
	mov	r1, #0x70
	mov	r2, #0x20
	bl	LoadPalette
	ldr	r1, .L37+0x8
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	b	.L25
.L38:
	.align	2, 0
.L37:
	.word	sUnknown_0855C6A0
	.word	gSaveBlock2Ptr
	.word	gMain
.L17:
	ldr	r0, .L39
	mov	r1, #0x10
	mov	r2, #0x20
	bl	LoadPalette
	b	.L26
.L40:
	.align	2, 0
.L39:
	.word	sUnknown_0855C604
.L18:
	mov	r0, #0x0
	bl	PutWindowTilemap
	bl	DrawTextOption
	ldr	r1, .L41
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	b	.L25
.L42:
	.align	2, 0
.L41:
	.word	gMain
.L19:
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r2, r0
	b	.L25
.L20:
	mov	r0, #0x1
	bl	PutWindowTilemap
	bl	DrawOptionMenuTexts
	ldr	r1, .L43
	mov	r2, #0x87
	lsl	r2, r2, #0x3
	add	r1, r1, r2
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.L21:
	bl	sub_80BB154
	ldr	r1, .L43
	mov	r0, #0x87
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	b	.L25
.L44:
	.align	2, 0
.L43:
	.word	gMain
.L22:
	ldr	r0, .L45
	mov	r1, #0x0
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L45+0x4
	lsl	r4, r0, #0x2
	add	r4, r4, r0
	lsl	r4, r4, #0x3
	add	r4, r4, r1
	mov	r0, #0x0
	strh	r0, [r4, #0x8]
	ldr	r0, .L45+0x8
	ldr	r2, [r0]
	ldrb	r0, [r2, #0x14]
	lsl	r0, r0, #0x1d
	lsr	r0, r0, #0x1d
	strh	r0, [r4, #0xa]
	ldrb	r1, [r2, #0x15]
	lsl	r1, r1, #0x1d
	lsr	r1, r1, #0x1f
	strh	r1, [r4, #0xc]
	ldrb	r1, [r2, #0x15]
	lsl	r1, r1, #0x1e
	lsr	r1, r1, #0x1f
	strh	r1, [r4, #0xe]
	ldrb	r1, [r2, #0x15]
	lsl	r1, r1, #0x1f
	lsr	r1, r1, #0x1f
	strh	r1, [r4, #0x10]
	ldrb	r1, [r2, #0x13]
	strh	r1, [r4, #0x12]
	ldrb	r1, [r2, #0x14]
	lsr	r1, r1, #0x3
	strh	r1, [r4, #0x14]
	bl	TextSpeed_DrawChoices
	ldrb	r0, [r4, #0xc]
	bl	BattleScene_DrawChoices
	ldrb	r0, [r4, #0xe]
	bl	BattleStyle_DrawChoices
	ldrb	r0, [r4, #0x10]
	bl	Sound_DrawChoices
	ldrb	r0, [r4, #0x12]
	bl	ButtonMode_DrawChoices
	ldrb	r0, [r4, #0x14]
	bl	FrameType_DrawChoices
	ldrb	r0, [r4, #0x8]
	bl	HighlightOptionMenuItem
	mov	r0, #0x1
	mov	r1, #0x3
	bl	CopyWindowToVram
.L26:
	ldr	r1, .L45+0xc
	mov	r2, #0x87
	lsl	r2, r2, #0x3
	add	r1, r1, r2
.L25:
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	b	.L5
.L46:
	.align	2, 0
.L45:
	.word	Task_OptionMenuFadeIn
	.word	gTasks
	.word	gSaveBlock2Ptr
	.word	gMain
.L23:
	mov	r0, #0x1
	neg	r0, r0
	mov	r1, #0x0
	str	r1, [sp]
	mov	r2, #0x10
	mov	r3, #0x0
	bl	BeginNormalPaletteFade
	ldr	r0, .L47
	bl	SetVBlankCallback
	ldr	r0, .L47+0x4
	bl	SetMainCallback2
.L5:
	add	sp, sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L48:
	.align	2, 0
.L47:
	.word	VBlankCB
	.word	MainCB2
.Lfe3:
	.size	 CB2_InitOptionMenu,.Lfe3-CB2_InitOptionMenu
	.align	2, 0
	.type	 Task_OptionMenuFadeIn,function
	.thumb_func
Task_OptionMenuFadeIn:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L51
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L50	@cond_branch
	ldr	r0, .L51+0x4
	lsl	r1, r2, #0x2
	add	r1, r1, r2
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, .L51+0x8
	str	r0, [r1]
.L50:
	pop	{r0}
	bx	r0
.L52:
	.align	2, 0
.L51:
	.word	gPaletteFade
	.word	gTasks
	.word	Task_OptionMenuProcessInput
.Lfe4:
	.size	 Task_OptionMenuFadeIn,.Lfe4-Task_OptionMenuFadeIn
	.align	2, 0
	.type	 Task_OptionMenuProcessInput,function
	.thumb_func
Task_OptionMenuProcessInput:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r0, .L86
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L54	@cond_branch
	ldr	r0, .L86+0x4
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x6
	beq	.LCB609
	b	.L53	@long jump
.LCB609:
	b	.L83
.L87:
	.align	2, 0
.L86:
	.word	gMain
	.word	gTasks
.L54:
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L57	@cond_branch
	ldr	r0, .L88
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r0
.L83:
	ldr	r0, .L88+0x4
	str	r0, [r1]
	b	.L53
.L89:
	.align	2, 0
.L88:
	.word	gTasks
	.word	Task_OptionMenuSave
.L57:
	mov	r0, #0x40
	and	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	cmp	r6, #0
	beq	.L59	@cond_branch
	ldr	r1, .L90
	lsl	r2, r4, #0x2
	add	r0, r2, r4
	lsl	r0, r0, #0x3
	add	r3, r0, r1
	ldrh	r5, [r3, #0x8]
	mov	r6, #0x8
	ldrsh	r0, [r3, r6]
	add	r7, r1, #0
	cmp	r0, #0
	ble	.L60	@cond_branch
	sub	r0, r5, #0x1
	b	.L85
.L91:
	.align	2, 0
.L90:
	.word	gTasks
.L60:
	mov	r0, #0x6
	b	.L85
.L59:
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L63	@cond_branch
	ldr	r1, .L92
	lsl	r2, r4, #0x2
	add	r0, r2, r4
	lsl	r0, r0, #0x3
	add	r3, r0, r1
	ldrh	r5, [r3, #0x8]
	mov	r7, #0x8
	ldrsh	r0, [r3, r7]
	add	r7, r1, #0
	cmp	r0, #0x5
	bgt	.L64	@cond_branch
	add	r0, r5, #0x1
.L85:
	strh	r0, [r3, #0x8]
	b	.L65
.L93:
	.align	2, 0
.L92:
	.word	gTasks
.L64:
	strh	r6, [r3, #0x8]
.L65:
	add	r0, r2, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r7
	ldrb	r0, [r0, #0x8]
	bl	HighlightOptionMenuItem
	b	.L53
.L63:
	ldr	r0, .L94
	lsl	r2, r4, #0x2
	add	r1, r2, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r3, #0x8
	ldrsh	r1, [r1, r3]
	add	r7, r0, #0
	cmp	r1, #0x5
	bls	.LCB741
	b	.L53	@long jump
.LCB741:
	lsl	r0, r1, #0x2
	ldr	r1, .L94+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L95:
	.align	2, 0
.L94:
	.word	gTasks
	.word	.L81
	.align	2, 0
	.align	2, 0
.L81:
	.word	.L68
	.word	.L70
	.word	.L72
	.word	.L74
	.word	.L76
	.word	.L78
.L68:
	add	r4, r2, r4
	lsl	r4, r4, #0x3
	add	r4, r4, r7
	ldrb	r5, [r4, #0xa]
	add	r0, r5, #0
	bl	TextSpeed_ProcessInput
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	strh	r0, [r4, #0xa]
	mov	r6, #0xa
	ldrsh	r0, [r4, r6]
	cmp	r5, r0
	beq	.L67	@cond_branch
	add	r0, r1, #0
	bl	TextSpeed_DrawChoices
	b	.L67
.L70:
	add	r4, r2, r4
	lsl	r4, r4, #0x3
	add	r4, r4, r7
	ldrb	r5, [r4, #0xc]
	add	r0, r5, #0
	bl	BattleScene_ProcessInput
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	strh	r0, [r4, #0xc]
	mov	r7, #0xc
	ldrsh	r0, [r4, r7]
	cmp	r5, r0
	beq	.L67	@cond_branch
	add	r0, r1, #0
	bl	BattleScene_DrawChoices
	b	.L67
.L72:
	add	r4, r2, r4
	lsl	r4, r4, #0x3
	add	r4, r4, r7
	ldrb	r5, [r4, #0xe]
	add	r0, r5, #0
	bl	BattleStyle_ProcessInput
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	strh	r0, [r4, #0xe]
	mov	r2, #0xe
	ldrsh	r0, [r4, r2]
	cmp	r5, r0
	beq	.L67	@cond_branch
	add	r0, r1, #0
	bl	BattleStyle_DrawChoices
	b	.L67
.L74:
	add	r4, r2, r4
	lsl	r4, r4, #0x3
	add	r4, r4, r7
	ldrb	r5, [r4, #0x10]
	add	r0, r5, #0
	bl	Sound_ProcessInput
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	strh	r0, [r4, #0x10]
	mov	r3, #0x10
	ldrsh	r0, [r4, r3]
	cmp	r5, r0
	beq	.L67	@cond_branch
	add	r0, r1, #0
	bl	Sound_DrawChoices
	b	.L67
.L76:
	add	r4, r2, r4
	lsl	r4, r4, #0x3
	add	r4, r4, r7
	ldrb	r5, [r4, #0x12]
	add	r0, r5, #0
	bl	ButtonMode_ProcessInput
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	strh	r0, [r4, #0x12]
	mov	r6, #0x12
	ldrsh	r0, [r4, r6]
	cmp	r5, r0
	beq	.L67	@cond_branch
	add	r0, r1, #0
	bl	ButtonMode_DrawChoices
	b	.L67
.L78:
	add	r4, r2, r4
	lsl	r4, r4, #0x3
	add	r4, r4, r7
	ldrb	r5, [r4, #0x14]
	add	r0, r5, #0
	bl	FrameType_ProcessInput
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	strh	r0, [r4, #0x14]
	mov	r7, #0x14
	ldrsh	r0, [r4, r7]
	cmp	r5, r0
	beq	.L67	@cond_branch
	add	r0, r1, #0
	bl	FrameType_DrawChoices
.L67:
	ldr	r1, .L96
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.L53	@cond_branch
	mov	r0, #0x0
	strb	r0, [r1]
	mov	r0, #0x1
	mov	r1, #0x2
	bl	CopyWindowToVram
.L53:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L97:
	.align	2, 0
.L96:
	.word	sArrowPressed
.Lfe5:
	.size	 Task_OptionMenuProcessInput,.Lfe5-Task_OptionMenuProcessInput
	.align	2, 0
	.type	 Task_OptionMenuSave,function
	.thumb_func
Task_OptionMenuSave:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r6, .L99
	ldr	r3, [r6]
	ldr	r1, .L99+0x4
	lsl	r4, r0, #0x2
	add	r4, r4, r0
	lsl	r4, r4, #0x3
	add	r4, r4, r1
	mov	r0, #0x7
	ldrb	r1, [r4, #0xa]
	and	r1, r1, r0
	ldrb	r2, [r3, #0x14]
	mov	r0, #0x8
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x14]
	ldr	r3, [r6]
	mov	r5, #0x1
	ldrb	r1, [r4, #0xc]
	and	r1, r1, r5
	lsl	r1, r1, #0x2
	ldrb	r2, [r3, #0x15]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x15]
	ldr	r3, [r6]
	ldrb	r1, [r4, #0xe]
	and	r1, r1, r5
	lsl	r1, r1, #0x1
	ldrb	r2, [r3, #0x15]
	mov	r0, #0x3
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x15]
	ldr	r3, [r6]
	ldrb	r1, [r4, #0x10]
	and	r1, r1, r5
	ldrb	r2, [r3, #0x15]
	mov	r0, #0x2
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x15]
	ldr	r1, [r6]
	ldrh	r0, [r4, #0x12]
	mov	r5, #0x0
	strb	r0, [r1, #0x13]
	ldr	r3, [r6]
	ldrb	r1, [r4, #0x14]
	lsl	r1, r1, #0x3
	ldrb	r2, [r3, #0x14]
	mov	r0, #0x7
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x14]
	mov	r0, #0x1
	neg	r0, r0
	str	r5, [sp]
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x10
	bl	BeginNormalPaletteFade
	ldr	r0, .L99+0x8
	str	r0, [r4]
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L100:
	.align	2, 0
.L99:
	.word	gSaveBlock2Ptr
	.word	gTasks
	.word	Task_OptionMenuFadeOut
.Lfe6:
	.size	 Task_OptionMenuSave,.Lfe6-Task_OptionMenuSave
	.align	2, 0
	.type	 Task_OptionMenuFadeOut,function
	.thumb_func
Task_OptionMenuFadeOut:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L103
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L102	@cond_branch
	add	r0, r2, #0
	bl	DestroyTask
	bl	FreeAllWindowBuffers
	ldr	r0, .L103+0x4
	ldr	r0, [r0, #0x8]
	bl	SetMainCallback2
.L102:
	pop	{r0}
	bx	r0
.L104:
	.align	2, 0
.L103:
	.word	gPaletteFade
	.word	gMain
.Lfe7:
	.size	 Task_OptionMenuFadeOut,.Lfe7-Task_OptionMenuFadeOut
	.align	2, 0
	.type	 HighlightOptionMenuItem,function
	.thumb_func
HighlightOptionMenuItem:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r1, #0x87
	lsl	r1, r1, #0x5
	mov	r0, #0x40
	bl	SetGpuReg
	lsl	r4, r4, #0x4
	add	r1, r4, #0
	add	r1, r1, #0x28
	lsl	r1, r1, #0x8
	add	r4, r4, #0x38
	orr	r1, r1, r4
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r0, #0x44
	bl	SetGpuReg
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 HighlightOptionMenuItem,.Lfe8-HighlightOptionMenuItem
	.align	2, 0
	.type	 DrawOptionMenuChoice,function
	.thumb_func
DrawOptionMenuChoice:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x1c
	add	r4, r0, #0
	lsl	r1, r1, #0x18
	lsr	r6, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r5, r2, #0x18
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	mov	r2, #0x0
	ldrb	r1, [r4]
	add	r0, r1, #0
	cmp	r0, #0xff
	beq	.L108	@cond_branch
.L110:
	mov	r0, sp
	add	r0, r0, r2
	add	r0, r0, #0xc
	strb	r1, [r0]
	add	r4, r4, #0x1
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldrb	r1, [r4]
	add	r0, r1, #0
	cmp	r0, #0xff
	beq	.L108	@cond_branch
	cmp	r2, #0xe
	bls	.L110	@cond_branch
.L108:
	cmp	r3, #0
	beq	.L113	@cond_branch
	add	r1, sp, #0xc
	mov	r0, #0x4
	strb	r0, [r1, #0x2]
	mov	r0, #0x5
	strb	r0, [r1, #0x5]
.L113:
	mov	r1, sp
	add	r1, r1, r2
	add	r1, r1, #0xc
	mov	r0, #0xff
	strb	r0, [r1]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [sp]
	mov	r0, #0xff
	str	r0, [sp, #0x4]
	mov	r0, #0x0
	str	r0, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0x1
	add	r2, sp, #0xc
	add	r3, r6, #0
	bl	AddTextPrinterParameterized
	add	sp, sp, #0x1c
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 DrawOptionMenuChoice,.Lfe9-DrawOptionMenuChoice
	.align	2, 0
	.type	 TextSpeed_ProcessInput,function
	.thumb_func
TextSpeed_ProcessInput:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	ldr	r2, .L121
	ldrh	r1, [r2, #0x2e]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L115	@cond_branch
	cmp	r3, #0x1
	bhi	.L116	@cond_branch
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	b	.L117
.L122:
	.align	2, 0
.L121:
	.word	gMain
.L116:
	mov	r3, #0x0
.L117:
	ldr	r1, .L123
	mov	r0, #0x1
	strb	r0, [r1]
.L115:
	ldrh	r1, [r2, #0x2e]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L118	@cond_branch
	cmp	r3, #0
	beq	.L119	@cond_branch
	sub	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	b	.L120
.L124:
	.align	2, 0
.L123:
	.word	sArrowPressed
.L119:
	mov	r3, #0x2
.L120:
	ldr	r1, .L125
	mov	r0, #0x1
	strb	r0, [r1]
.L118:
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.L126:
	.align	2, 0
.L125:
	.word	sArrowPressed
.Lfe10:
	.size	 TextSpeed_ProcessInput,.Lfe10-TextSpeed_ProcessInput
	.align	2, 0
	.type	 TextSpeed_DrawChoices,function
	.thumb_func
TextSpeed_DrawChoices:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	mov	r2, #0x0
	strb	r2, [r1]
	strb	r2, [r1, #0x1]
	strb	r2, [r1, #0x2]
	add	r1, r1, r0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r4, .L128
	mov	r0, sp
	ldrb	r3, [r0]
	add	r0, r4, #0
	mov	r1, #0x68
	bl	DrawOptionMenuChoice
	mov	r0, #0x1
	add	r1, r4, #0
	mov	r2, #0x0
	bl	GetStringWidth
	add	r4, r0, #0
	ldr	r0, .L128+0x4
	mov	r8, r0
	mov	r0, #0x1
	mov	r1, r8
	mov	r2, #0x0
	bl	GetStringWidth
	add	r5, r0, #0
	ldr	r6, .L128+0x8
	mov	r0, #0x1
	add	r1, r6, #0
	mov	r2, #0x0
	bl	GetStringWidth
	sub	r5, r5, #0x5e
	sub	r4, r4, r5
	sub	r4, r4, r0
	lsr	r0, r4, #0x1f
	add	r4, r4, r0
	asr	r4, r4, #0x1
	add	r4, r4, #0x68
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x1]
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0x0
	bl	DrawOptionMenuChoice
	mov	r0, #0x1
	add	r1, r6, #0
	mov	r2, #0xc6
	bl	GetStringRightAlignXOffset
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x2]
	add	r0, r6, #0
	mov	r2, #0x0
	bl	DrawOptionMenuChoice
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L129:
	.align	2, 0
.L128:
	.word	gText_TextSpeedSlow
	.word	gText_TextSpeedMid
	.word	gText_TextSpeedFast
.Lfe11:
	.size	 TextSpeed_DrawChoices,.Lfe11-TextSpeed_DrawChoices
	.align	2, 0
	.type	 BattleScene_ProcessInput,function
	.thumb_func
BattleScene_ProcessInput:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L132
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x30
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L131	@cond_branch
	mov	r1, #0x1
	eor	r2, r2, r1
	ldr	r0, .L132+0x4
	strb	r1, [r0]
.L131:
	add	r0, r2, #0
	pop	{r1}
	bx	r1
.L133:
	.align	2, 0
.L132:
	.word	gMain
	.word	sArrowPressed
.Lfe12:
	.size	 BattleScene_ProcessInput,.Lfe12-BattleScene_ProcessInput
	.align	2, 0
	.type	 BattleScene_DrawChoices,function
	.thumb_func
BattleScene_DrawChoices:
	push	{r4, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	mov	r2, #0x0
	strb	r2, [r1]
	strb	r2, [r1, #0x1]
	add	r1, r1, r0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r0, .L135
	mov	r1, sp
	ldrb	r3, [r1]
	mov	r1, #0x68
	mov	r2, #0x10
	bl	DrawOptionMenuChoice
	ldr	r4, .L135+0x4
	mov	r0, #0x1
	add	r1, r4, #0
	mov	r2, #0xc6
	bl	GetStringRightAlignXOffset
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x1]
	add	r0, r4, #0
	mov	r2, #0x10
	bl	DrawOptionMenuChoice
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.L136:
	.align	2, 0
.L135:
	.word	gText_BattleSceneOn
	.word	gText_BattleSceneOff
.Lfe13:
	.size	 BattleScene_DrawChoices,.Lfe13-BattleScene_DrawChoices
	.align	2, 0
	.type	 BattleStyle_ProcessInput,function
	.thumb_func
BattleStyle_ProcessInput:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L139
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x30
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L138	@cond_branch
	mov	r1, #0x1
	eor	r2, r2, r1
	ldr	r0, .L139+0x4
	strb	r1, [r0]
.L138:
	add	r0, r2, #0
	pop	{r1}
	bx	r1
.L140:
	.align	2, 0
.L139:
	.word	gMain
	.word	sArrowPressed
.Lfe14:
	.size	 BattleStyle_ProcessInput,.Lfe14-BattleStyle_ProcessInput
	.align	2, 0
	.type	 BattleStyle_DrawChoices,function
	.thumb_func
BattleStyle_DrawChoices:
	push	{r4, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	mov	r2, #0x0
	strb	r2, [r1]
	strb	r2, [r1, #0x1]
	add	r1, r1, r0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r0, .L142
	mov	r1, sp
	ldrb	r3, [r1]
	mov	r1, #0x68
	mov	r2, #0x20
	bl	DrawOptionMenuChoice
	ldr	r4, .L142+0x4
	mov	r0, #0x1
	add	r1, r4, #0
	mov	r2, #0xc6
	bl	GetStringRightAlignXOffset
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x1]
	add	r0, r4, #0
	mov	r2, #0x20
	bl	DrawOptionMenuChoice
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.L143:
	.align	2, 0
.L142:
	.word	gText_BattleStyleShift
	.word	gText_BattleStyleSet
.Lfe15:
	.size	 BattleStyle_DrawChoices,.Lfe15-BattleStyle_DrawChoices
	.align	2, 0
	.type	 Sound_ProcessInput,function
	.thumb_func
Sound_ProcessInput:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r0, .L146
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x30
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L145	@cond_branch
	mov	r4, #0x1
	eor	r5, r5, r4
	add	r0, r5, #0
	bl	SetPokemonCryStereo
	ldr	r0, .L146+0x4
	strb	r4, [r0]
.L145:
	add	r0, r5, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L147:
	.align	2, 0
.L146:
	.word	gMain
	.word	sArrowPressed
.Lfe16:
	.size	 Sound_ProcessInput,.Lfe16-Sound_ProcessInput
	.align	2, 0
	.type	 Sound_DrawChoices,function
	.thumb_func
Sound_DrawChoices:
	push	{r4, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	mov	r2, #0x0
	strb	r2, [r1]
	strb	r2, [r1, #0x1]
	add	r1, r1, r0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r0, .L149
	mov	r1, sp
	ldrb	r3, [r1]
	mov	r1, #0x68
	mov	r2, #0x30
	bl	DrawOptionMenuChoice
	ldr	r4, .L149+0x4
	mov	r0, #0x1
	add	r1, r4, #0
	mov	r2, #0xc6
	bl	GetStringRightAlignXOffset
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x1]
	add	r0, r4, #0
	mov	r2, #0x30
	bl	DrawOptionMenuChoice
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.L150:
	.align	2, 0
.L149:
	.word	gText_SoundMono
	.word	gText_SoundStereo
.Lfe17:
	.size	 Sound_DrawChoices,.Lfe17-Sound_DrawChoices
	.align	2, 0
	.type	 FrameType_ProcessInput,function
	.thumb_func
FrameType_ProcessInput:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r0, .L158
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L152	@cond_branch
	cmp	r4, #0x12
	bhi	.L153	@cond_branch
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	b	.L154
.L159:
	.align	2, 0
.L158:
	.word	gMain
.L153:
	mov	r4, #0x0
.L154:
	add	r0, r4, #0
	bl	GetWindowFrameTilesPal
	ldr	r1, [r0]
	mov	r2, #0x90
	lsl	r2, r2, #0x1
	mov	r3, #0xd1
	lsl	r3, r3, #0x1
	mov	r0, #0x1
	bl	LoadBgTiles
	add	r0, r4, #0
	bl	GetWindowFrameTilesPal
	ldr	r0, [r0, #0x4]
	mov	r1, #0x70
	mov	r2, #0x20
	bl	LoadPalette
	ldr	r1, .L160
	mov	r0, #0x1
	strb	r0, [r1]
.L152:
	ldr	r0, .L160+0x4
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L155	@cond_branch
	cmp	r4, #0
	beq	.L156	@cond_branch
	sub	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	b	.L157
.L161:
	.align	2, 0
.L160:
	.word	sArrowPressed
	.word	gMain
.L156:
	mov	r4, #0x13
.L157:
	add	r0, r4, #0
	bl	GetWindowFrameTilesPal
	ldr	r1, [r0]
	mov	r2, #0x90
	lsl	r2, r2, #0x1
	mov	r3, #0xd1
	lsl	r3, r3, #0x1
	mov	r0, #0x1
	bl	LoadBgTiles
	add	r0, r4, #0
	bl	GetWindowFrameTilesPal
	ldr	r0, [r0, #0x4]
	mov	r1, #0x70
	mov	r2, #0x20
	bl	LoadPalette
	ldr	r1, .L162
	mov	r0, #0x1
	strb	r0, [r1]
.L155:
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L163:
	.align	2, 0
.L162:
	.word	sArrowPressed
.Lfe18:
	.size	 FrameType_ProcessInput,.Lfe18-FrameType_ProcessInput
	.align	2, 0
	.type	 FrameType_DrawChoices,function
	.thumb_func
FrameType_DrawChoices:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x10
	lsl	r0, r0, #0x18
	mov	r1, #0x80
	lsl	r1, r1, #0x11
	add	r0, r0, r1
	lsr	r6, r0, #0x18
	mov	r5, #0x0
	ldr	r1, .L174
	ldrb	r0, [r1]
	ldr	r7, .L174+0x4
	cmp	r0, #0xff
	beq	.L166	@cond_branch
	add	r2, r1, #0
.L168:
	mov	r0, sp
	add	r1, r0, r5
	add	r0, r5, r2
	ldrb	r0, [r0]
	strb	r0, [r1]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	add	r0, r5, r2
	ldrb	r0, [r0]
	cmp	r0, #0xff
	beq	.L166	@cond_branch
	cmp	r5, #0x5
	bls	.L168	@cond_branch
.L166:
	add	r0, r6, #0
	mov	r1, #0xa
	bl	__udivsi3
	add	r2, r0, #0
	lsl	r0, r2, #0x18
	cmp	r0, #0
	beq	.L171	@cond_branch
	mov	r0, sp
	add	r1, r0, r5
	add	r0, r2, #0
	add	r0, r0, #0xa1
	strb	r0, [r1]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	mov	r1, sp
	add	r4, r1, r5
	add	r0, r6, #0
	mov	r1, #0xa
	bl	__umodsi3
	add	r0, r0, #0xa1
	strb	r0, [r4]
	b	.L173
.L175:
	.align	2, 0
.L174:
	.word	gText_FrameTypeNumber
	.word	gText_FrameType
.L171:
	mov	r0, sp
	add	r4, r0, r5
	add	r0, r6, #0
	mov	r1, #0xa
	bl	__umodsi3
	add	r0, r0, #0xa1
	strb	r0, [r4]
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	mov	r0, sp
	add	r1, r0, r5
	mov	r0, #0x77
	strb	r0, [r1]
.L173:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	mov	r0, sp
	add	r1, r0, r5
	mov	r0, #0xff
	strb	r0, [r1]
	add	r0, r7, #0
	mov	r1, #0x68
	mov	r2, #0x50
	mov	r3, #0x0
	bl	DrawOptionMenuChoice
	mov	r0, sp
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r3, #0x1
	bl	DrawOptionMenuChoice
	add	sp, sp, #0x10
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe19:
	.size	 FrameType_DrawChoices,.Lfe19-FrameType_DrawChoices
	.align	2, 0
	.type	 ButtonMode_ProcessInput,function
	.thumb_func
ButtonMode_ProcessInput:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	ldr	r2, .L183
	ldrh	r1, [r2, #0x2e]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L177	@cond_branch
	cmp	r3, #0x1
	bhi	.L178	@cond_branch
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	b	.L179
.L184:
	.align	2, 0
.L183:
	.word	gMain
.L178:
	mov	r3, #0x0
.L179:
	ldr	r1, .L185
	mov	r0, #0x1
	strb	r0, [r1]
.L177:
	ldrh	r1, [r2, #0x2e]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L180	@cond_branch
	cmp	r3, #0
	beq	.L181	@cond_branch
	sub	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	b	.L182
.L186:
	.align	2, 0
.L185:
	.word	sArrowPressed
.L181:
	mov	r3, #0x2
.L182:
	ldr	r1, .L187
	mov	r0, #0x1
	strb	r0, [r1]
.L180:
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.L188:
	.align	2, 0
.L187:
	.word	sArrowPressed
.Lfe20:
	.size	 ButtonMode_ProcessInput,.Lfe20-ButtonMode_ProcessInput
	.align	2, 0
	.type	 ButtonMode_DrawChoices,function
	.thumb_func
ButtonMode_DrawChoices:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	mov	r2, #0x0
	strb	r2, [r1]
	strb	r2, [r1, #0x1]
	strb	r2, [r1, #0x2]
	add	r1, r1, r0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r4, .L190
	mov	r0, sp
	ldrb	r3, [r0]
	add	r0, r4, #0
	mov	r1, #0x68
	mov	r2, #0x40
	bl	DrawOptionMenuChoice
	mov	r0, #0x1
	add	r1, r4, #0
	mov	r2, #0x0
	bl	GetStringWidth
	add	r4, r0, #0
	ldr	r0, .L190+0x4
	mov	r8, r0
	mov	r0, #0x1
	mov	r1, r8
	mov	r2, #0x0
	bl	GetStringWidth
	add	r5, r0, #0
	ldr	r6, .L190+0x8
	mov	r0, #0x1
	add	r1, r6, #0
	mov	r2, #0x0
	bl	GetStringWidth
	sub	r5, r5, #0x5e
	sub	r4, r4, r5
	sub	r4, r4, r0
	lsr	r0, r4, #0x1f
	add	r4, r4, r0
	asr	r4, r4, #0x1
	add	r4, r4, #0x68
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x1]
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0x40
	bl	DrawOptionMenuChoice
	mov	r0, #0x1
	add	r1, r6, #0
	mov	r2, #0xc6
	bl	GetStringRightAlignXOffset
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r0, sp
	ldrb	r3, [r0, #0x2]
	add	r0, r6, #0
	mov	r2, #0x40
	bl	DrawOptionMenuChoice
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L191:
	.align	2, 0
.L190:
	.word	gText_ButtonTypeNormal
	.word	gText_ButtonTypeLR
	.word	gText_ButtonTypeLEqualsA
.Lfe21:
	.size	 ButtonMode_DrawChoices,.Lfe21-ButtonMode_DrawChoices
	.align	2, 0
	.type	 DrawTextOption,function
	.thumb_func
DrawTextOption:
	push	{lr}
	add	sp, sp, #-0xc
	mov	r0, #0x0
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r2, .L193
	mov	r0, #0x1
	str	r0, [sp]
	mov	r0, #0xff
	str	r0, [sp, #0x4]
	mov	r0, #0x0
	str	r0, [sp, #0x8]
	mov	r1, #0x1
	mov	r3, #0x8
	bl	AddTextPrinterParameterized
	mov	r0, #0x0
	mov	r1, #0x3
	bl	CopyWindowToVram
	add	sp, sp, #0xc
	pop	{r0}
	bx	r0
.L194:
	.align	2, 0
.L193:
	.word	gText_Option
.Lfe22:
	.size	 DrawTextOption,.Lfe22-DrawTextOption
	.align	2, 0
	.type	 DrawOptionMenuTexts,function
	.thumb_func
DrawOptionMenuTexts:
	push	{r4, r5, lr}
	add	sp, sp, #-0xc
	mov	r0, #0x1
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	mov	r4, #0x0
	ldr	r5, .L201
.L199:
	lsl	r0, r4, #0x2
	add	r0, r0, r5
	ldr	r2, [r0]
	lsl	r0, r4, #0x4
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [sp]
	mov	r0, #0xff
	str	r0, [sp, #0x4]
	mov	r0, #0x0
	str	r0, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r3, #0x8
	bl	AddTextPrinterParameterized
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x6
	bls	.L199	@cond_branch
	mov	r0, #0x1
	mov	r1, #0x3
	bl	CopyWindowToVram
	add	sp, sp, #0xc
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L202:
	.align	2, 0
.L201:
	.word	sOptionMenuItemsNames
.Lfe23:
	.size	 DrawOptionMenuTexts,.Lfe23-DrawOptionMenuTexts
	.align	2, 0
	.type	 sub_80BB154,function
	.thumb_func
sub_80BB154:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0xc
	mov	r4, #0x1
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r5, #0x7
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0xd1
	lsl	r1, r1, #0x1
	mov	r2, #0x1
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect
	mov	r0, #0x1b
	mov	r8, r0
	str	r0, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	ldr	r1, .L204
	mov	r2, #0x2
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0xd2
	lsl	r1, r1, #0x1
	mov	r2, #0x1c
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	mov	r6, #0x2
	str	r6, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	ldr	r1, .L204+0x4
	mov	r2, #0x1
	mov	r3, #0x1
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r6, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	ldr	r1, .L204+0x8
	mov	r2, #0x1c
	mov	r3, #0x1
	bl	FillBgTilemapBufferRect
	mov	r7, #0xd4
	lsl	r7, r7, #0x1
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	add	r1, r7, #0
	mov	r2, #0x1
	mov	r3, #0x3
	bl	FillBgTilemapBufferRect
	ldr	r0, .L204+0xc
	mov	sl, r0
	mov	r0, r8
	str	r0, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, sl
	mov	r2, #0x2
	mov	r3, #0x3
	bl	FillBgTilemapBufferRect
	mov	r0, #0xd5
	lsl	r0, r0, #0x1
	mov	r9, r0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, r9
	mov	r2, #0x1c
	mov	r3, #0x3
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0xd1
	lsl	r1, r1, #0x1
	mov	r2, #0x1
	mov	r3, #0x4
	bl	FillBgTilemapBufferRect
	mov	r0, #0x1a
	mov	r8, r0
	str	r0, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	ldr	r1, .L204
	mov	r2, #0x2
	mov	r3, #0x4
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, #0xd2
	lsl	r1, r1, #0x1
	mov	r2, #0x1c
	mov	r3, #0x4
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	mov	r6, #0x12
	str	r6, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	ldr	r1, .L204+0x4
	mov	r2, #0x1
	mov	r3, #0x5
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r6, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	ldr	r1, .L204+0x8
	mov	r2, #0x1c
	mov	r3, #0x5
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	add	r1, r7, #0
	mov	r2, #0x1
	mov	r3, #0x13
	bl	FillBgTilemapBufferRect
	mov	r0, r8
	str	r0, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, sl
	mov	r2, #0x2
	mov	r3, #0x13
	bl	FillBgTilemapBufferRect
	str	r4, [sp]
	str	r4, [sp, #0x4]
	str	r5, [sp, #0x8]
	mov	r0, #0x1
	mov	r1, r9
	mov	r2, #0x1c
	mov	r3, #0x13
	bl	FillBgTilemapBufferRect
	mov	r0, #0x1
	bl	CopyBgTilemapBufferToVram
	add	sp, sp, #0xc
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L205:
	.align	2, 0
.L204:
	.word	0x1a3
	.word	0x1a5
	.word	0x1a7
	.word	0x1a9
.Lfe24:
	.size	 sub_80BB154,.Lfe24-sub_80BB154
.text
	.align	2, 0

