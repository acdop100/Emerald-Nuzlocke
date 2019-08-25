@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 gUnknown_02022C90,object
	.size	 gUnknown_02022C90,4
gUnknown_02022C90:
	.word	0x0
.text
	.align	2, 0
	.globl	sub_8020C00
	.type	 sub_8020C00,function
	.thumb_func
sub_8020C00:
	ldr	r0, .L3
	ldr	r0, [r0]
	bx	lr
.L4:
	.align	2, 0
.L3:
	.word	gUnknown_02022C90
.Lfe1:
	.size	 sub_8020C00,.Lfe1-sub_8020C00
	.align	2, 0
	.globl	sub_8020C0C
	.type	 sub_8020C0C,function
	.thumb_func
sub_8020C0C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r5, .L10
	ldr	r0, [r5]
	cmp	r0, #0
	bne	.L6	@cond_branch
	mov	r0, #0x2
	b	.L9
.L11:
	.align	2, 0
.L10:
	.word	gUnknown_02022C90
.L6:
	cmp	r4, #0
	bne	.L7	@cond_branch
	ldr	r4, [r0]
.L7:
	ldrb	r0, [r0, #0xa]
	bl	DestroyTask
	ldr	r0, [r5]
	bl	Free
	mov	r0, #0x0
	str	r0, [r5]
	add	r0, r4, #0
	bl	SetMainCallback2
	ldr	r0, .L12
	cmp	r4, r0
	bne	.L8	@cond_branch
	ldr	r2, .L12+0x4
	ldrb	r0, [r2]
	mov	r1, #0x4
	orr	r0, r0, r1
	strb	r0, [r2]
	mov	r0, #0xc8
	lsl	r0, r0, #0x1
	bl	PlayNewMapMusic
	ldr	r0, .L12+0x8
	bl	SetMainCallback1
.L8:
	mov	r0, #0x0
.L9:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L13:
	.align	2, 0
.L12:
	.word	CB2_ReturnToField
	.word	gTextFlags
	.word	CB1_Overworld
.Lfe2:
	.size	 sub_8020C0C,.Lfe2-sub_8020C0C
	.align	2, 0
	.globl	sub_8020C70
	.type	 sub_8020C70,function
	.thumb_func
sub_8020C70:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0xc
	add	r4, r0, #0
	mov	r0, #0x0
	mov	r8, r0
	ldr	r0, .L21
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L16	@cond_branch
	ldr	r0, .L21+0x4
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.L15	@cond_branch
.L16:
	add	r0, r4, #0
	bl	SetMainCallback2
	ldr	r0, .L21+0x8
	mov	r1, r8
	strh	r1, [r0, #0x10]
	strh	r1, [r0, #0x12]
	b	.L20
.L22:
	.align	2, 0
.L21:
	.word	gReceivedRemoteLinkPlayers
	.word	gWirelessCommType
	.word	gUnknown_03005000
.L15:
	bl	GetLinkPlayerCount
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	bl	GetMultiplayerId
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r0, r8
	cmp	r0, #0x1
	bls	.L18	@cond_branch
	cmp	r7, r8
	bcc	.L17	@cond_branch
.L18:
	add	r0, r4, #0
	bl	SetMainCallback2
	ldr	r0, .L23
	mov	r1, #0x0
	strh	r1, [r0, #0x10]
	strh	r1, [r0, #0x12]
	b	.L20
.L24:
	.align	2, 0
.L23:
	.word	gUnknown_03005000
.L17:
	ldr	r6, .L25
	ldr	r0, .L25+0x4
	bl	AllocZeroed
	add	r5, r0, #0
	str	r5, [r6]
	cmp	r5, #0
	bne	.L19	@cond_branch
	add	r0, r4, #0
	bl	SetMainCallback2
	ldr	r0, .L25+0x8
	strh	r5, [r0, #0x10]
	strh	r5, [r0, #0x12]
.L20:
	add	r0, r0, #0xee
	ldrb	r1, [r0]
	mov	r1, #0x1
	strb	r1, [r0]
	b	.L14
.L26:
	.align	2, 0
.L25:
	.word	gUnknown_02022C90
	.word	0x41c0
	.word	gUnknown_03005000
.L19:
	str	r4, [r5]
	mov	r4, #0x0
	strb	r7, [r5, #0x8]
	ldr	r0, [r6]
	mov	r1, r8
	strb	r1, [r0, #0x9]
	ldr	r0, [r6]
	bl	sub_8020FC4
	ldr	r1, [r6]
	mov	r2, #0x1
	mov	r0, #0x1
	strh	r0, [r1, #0x12]
	strb	r2, [r1, #0xe]
	ldr	r1, [r6]
	mov	r0, #0x6
	strb	r0, [r1, #0xf]
	ldr	r0, [r6]
	add	r0, r0, #0x36
	mov	r2, #0x1
	neg	r2, r2
	mov	r1, #0x10
	str	r1, [sp]
	str	r4, [sp, #0x4]
	str	r4, [sp, #0x8]
	mov	r1, #0x1
	mov	r3, #0x0
	bl	sub_8024604
	ldr	r2, [r6]
	add	r2, r2, #0x36
	mov	r0, #0x4
	mov	r1, #0x1
	bl	sub_8022BEC
	ldr	r0, .L27
	bl	SetMainCallback2
	ldr	r0, .L27+0x4
	mov	r1, #0x8
	bl	CreateTask
	ldr	r1, [r6]
	strb	r0, [r1, #0xa]
	ldr	r2, .L27+0x8
	ldrb	r1, [r2]
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
.L14:
	add	sp, sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L28:
	.align	2, 0
.L27:
	.word	sub_8020F88
	.word	sub_8020FA0
	.word	gTextFlags
.Lfe3:
	.size	 sub_8020C70,.Lfe3-sub_8020C70
	.align	2, 0
	.type	 sub_8020D8C,function
	.thumb_func
sub_8020D8C:
	push	{r4, lr}
	add	sp, sp, #-0xc
	ldr	r1, .L32
	ldrh	r0, [r1]
	sub	r0, r0, #0x85
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0x2b
	bls	.L30	@cond_branch
	mov	r0, #0x85
	strh	r0, [r1]
	b	.L31
.L33:
	.align	2, 0
.L32:
	.word	gSpecialVar_ItemId
.L30:
	ldrh	r0, [r1]
	mov	r1, #0x1
	bl	RemoveBagItem
.L31:
	ldr	r4, .L34
	ldr	r2, [r4]
	ldrb	r0, [r2, #0x8]
	lsl	r0, r0, #0x5
	add	r0, r2, r0
	ldr	r1, .L34+0x4
	ldrh	r1, [r1]
	sub	r1, r1, #0x85
	add	r0, r0, #0xa4
	mov	r3, #0x0
	strh	r1, [r0]
	mov	r0, #0x1
	strb	r0, [r2, #0xe]
	ldr	r1, [r4]
	mov	r0, #0x9
	strb	r0, [r1, #0xf]
	ldr	r0, [r4]
	add	r0, r0, #0x36
	mov	r2, #0x1
	neg	r2, r2
	mov	r1, #0x10
	str	r1, [sp]
	str	r3, [sp, #0x4]
	str	r3, [sp, #0x8]
	mov	r1, #0x0
	bl	sub_8024604
	ldr	r2, [r4]
	add	r2, r2, #0x36
	mov	r0, #0x4
	mov	r1, #0x1
	bl	sub_8022BEC
	ldr	r0, .L34+0x8
	mov	r1, #0x8
	bl	CreateTask
	ldr	r1, [r4]
	strb	r0, [r1, #0xa]
	ldr	r0, .L34+0xc
	bl	SetMainCallback2
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r0}
	bx	r0
.L35:
	.align	2, 0
.L34:
	.word	gUnknown_02022C90
	.word	gSpecialVar_ItemId
	.word	sub_8020FA0
	.word	sub_8020F88
.Lfe4:
	.size	 sub_8020D8C,.Lfe4-sub_8020D8C
	.align	2, 0
	.globl	sub_8020E1C
	.type	 sub_8020E1C,function
	.thumb_func
sub_8020E1C:
	push	{lr}
	ldr	r0, .L37
	ldr	r0, [r0]
	ldrb	r0, [r0, #0xa]
	bl	DestroyTask
	ldr	r0, .L37+0x4
	bl	sub_81AABF0
	pop	{r0}
	bx	r0
.L38:
	.align	2, 0
.L37:
	.word	gUnknown_02022C90
	.word	sub_8020D8C
.Lfe5:
	.size	 sub_8020E1C,.Lfe5-sub_8020E1C
	.align	2, 0
	.type	 sub_8020E3C,function
	.thumb_func
sub_8020E3C:
	push	{lr}
	ldr	r0, .L40
	bl	SetVBlankCallback
	pop	{r0}
	bx	r0
.L41:
	.align	2, 0
.L40:
	.word	sub_8020F74
.Lfe6:
	.size	 sub_8020E3C,.Lfe6-sub_8020E3C
	.align	2, 0
	.globl	sub_8020E4C
	.type	 sub_8020E4C,function
	.thumb_func
sub_8020E4C:
	push	{lr}
	mov	r0, #0x0
	bl	SetVBlankCallback
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 sub_8020E4C,.Lfe7-sub_8020E4C
	.align	2, 0
	.globl	sub_8020E58
	.type	 sub_8020E58,function
	.thumb_func
sub_8020E58:
	push	{r4, r5, r6, lr}
	ldr	r4, .L59
	ldr	r0, [r4]
	add	r0, r0, #0x6c
	ldrh	r2, [r0]
	lsl	r2, r2, #0x8
	mov	r1, #0xf0
	lsl	r1, r1, #0x6
	add	r0, r2, #0
	bl	sub_81515FC
	add	r2, r0, #0
	ldr	r0, [r4]
	add	r0, r0, #0x72
	ldrh	r3, [r0]
	lsl	r3, r3, #0x8
	add	r0, r3, #0
	add	r1, r2, #0
	bl	sub_81515FC
	add	r3, r0, #0
	ldr	r0, .L59+0x4
	and	r3, r3, r0
	ldr	r2, [r4]
	strh	r3, [r2, #0x16]
	ldrb	r0, [r2, #0x9]
	cmp	r0, #0x3
	beq	.L47	@cond_branch
	cmp	r0, #0x3
	bgt	.L55	@cond_branch
	cmp	r0, #0x2
	beq	.L45	@cond_branch
	b	.L44
.L60:
	.align	2, 0
.L59:
	.word	gUnknown_02022C90
	.word	0xffff
.L55:
	cmp	r0, #0x4
	beq	.L49	@cond_branch
	cmp	r0, #0x5
	beq	.L51	@cond_branch
	b	.L44
.L45:
	ldr	r5, .L61
	ldr	r1, [r5]
	mov	r0, #0xf6
	lsl	r0, r0, #0x1
	add	r1, r1, r0
	lsl	r0, r3, #0x10
	lsr	r0, r0, #0x10
	ldrh	r1, [r1]
	cmp	r0, r1
	bls	.L44	@cond_branch
	add	r2, r2, #0x25
	ldrb	r0, [r2]
	mov	r1, #0x2
	orr	r0, r0, r1
	strb	r0, [r2]
	ldr	r0, [r5]
	ldr	r1, [r4]
	ldrh	r1, [r1, #0x16]
	mov	r2, #0xf6
	lsl	r2, r2, #0x1
	b	.L57
.L62:
	.align	2, 0
.L61:
	.word	gSaveBlock2Ptr
.L47:
	ldr	r5, .L63
	ldr	r0, [r5]
	mov	r6, #0xf7
	lsl	r6, r6, #0x1
	b	.L58
.L64:
	.align	2, 0
.L63:
	.word	gSaveBlock2Ptr
.L49:
	ldr	r5, .L65
	ldr	r1, [r5]
	mov	r0, #0xf8
	lsl	r0, r0, #0x1
	add	r1, r1, r0
	lsl	r0, r3, #0x10
	lsr	r0, r0, #0x10
	ldrh	r1, [r1]
	cmp	r0, r1
	bls	.L44	@cond_branch
	add	r2, r2, #0x25
	ldrb	r0, [r2]
	mov	r1, #0x2
	orr	r0, r0, r1
	strb	r0, [r2]
	ldr	r0, [r5]
	ldr	r1, [r4]
	ldrh	r1, [r1, #0x16]
	mov	r2, #0xf8
	lsl	r2, r2, #0x1
.L57:
	add	r0, r0, r2
	strh	r1, [r0]
	b	.L44
.L66:
	.align	2, 0
.L65:
	.word	gSaveBlock2Ptr
.L51:
	ldr	r5, .L67
	ldr	r0, [r5]
	mov	r6, #0xf9
	lsl	r6, r6, #0x1
.L58:
	add	r1, r0, r6
	lsl	r0, r3, #0x10
	lsr	r0, r0, #0x10
	ldrh	r1, [r1]
	cmp	r0, r1
	bls	.L44	@cond_branch
	add	r2, r2, #0x25
	ldrb	r0, [r2]
	mov	r1, #0x2
	orr	r0, r0, r1
	strb	r0, [r2]
	ldr	r1, [r5]
	ldr	r0, [r4]
	ldrh	r0, [r0, #0x16]
	add	r1, r1, r6
	strh	r0, [r1]
.L44:
	ldr	r4, .L67+0x4
	ldr	r1, [r4]
	ldr	r0, [r1, #0x68]
	str	r0, [r1, #0x1c]
	bl	GiveBerryPowder
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L43	@cond_branch
	ldr	r0, [r4]
	add	r0, r0, #0x25
	ldrb	r1, [r0]
	mov	r2, #0x1
	orr	r1, r1, r2
	strb	r1, [r0]
.L43:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L68:
	.align	2, 0
.L67:
	.word	gSaveBlock2Ptr
	.word	gUnknown_02022C90
.Lfe8:
	.size	 sub_8020E58,.Lfe8-sub_8020E58
	.align	2, 0
	.type	 sub_8020F74,function
	.thumb_func
sub_8020F74:
	push	{lr}
	bl	TransferPlttBuffer
	bl	LoadOam
	bl	ProcessSpriteCopyRequests
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 sub_8020F74,.Lfe9-sub_8020F74
	.align	2, 0
	.type	 sub_8020F88,function
	.thumb_func
sub_8020F88:
	push	{lr}
	bl	RunTasks
	bl	RunTextPrinters
	bl	AnimateSprites
	bl	BuildOamBuffer
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 sub_8020F88,.Lfe10-sub_8020F88
	.align	2, 0
	.type	 sub_8020FA0,function
	.thumb_func
sub_8020FA0:
	push	{r4, lr}
	ldr	r4, .L73
	ldr	r0, [r4]
	ldr	r2, [r0, #0x4]
	cmp	r2, #0
	beq	.L72	@cond_branch
	add	r1, r0, #0
	add	r1, r1, #0x36
	bl	_call_via_r2
.L72:
	ldr	r0, [r4]
	bl	sub_8021450
	pop	{r4}
	pop	{r0}
	bx	r0
.L74:
	.align	2, 0
.L73:
	.word	gUnknown_02022C90
.Lfe11:
	.size	 sub_8020FA0,.Lfe11-sub_8020FA0
	.align	2, 0
	.globl	sub_8020FC4
	.type	 sub_8020FC4,function
	.thumb_func
sub_8020FC4:
	.syntax unified

    push {r4-r6,lr}
    adds r6, r0, 0
    movs r5, 0
    b _08020FE6
LOOP_1:
    lsls r0, r5, 5
    adds r0, 0x98
    adds r0, r6, r0
    lsls r1, r5, 3
    subs r1, r5
    lsls r1, 2
    ldr r2, =gLinkPlayers + 8
    adds r1, r2
    bl StringCopy
    adds r0, r5, 0x1
    lsls r0, 24
    lsrs r5, r0, 24
_08020FE6:
    ldrb r0, [r6, 0x9]
    cmp r5, r0
    bcc LOOP_1
    cmp r5, 0x4
    bhi _08021012
_08020FF0:
    lsls r4, r5, 5
    adds r0, r4, 0
    adds r0, 0x98
    adds r0, r6, r0
    movs r1, 0x1
    movs r2, 0x7
    bl memset
    adds r4, r6, r4
    adds r4, 0x9F
    movs r0, 0xFF
    strb r0, [r4]
    adds r0, r5, 0x1
    lsls r0, 24
    lsrs r5, r0, 24
    cmp r5, 0x4
    bls _08020FF0
_08021012:
    ldr r0, =gSaveBlock2Ptr
    ldr r0, [r0]
    ldrb r0, [r0, 0x14]
    lsls r0, 29
    lsrs r0, 29
    cmp r0, 0x1
    beq _0802103E
    cmp r0, 0x1
    bgt _08021034
    cmp r0, 0
    beq _0802103A
    b _08021046
    .pool
_08021034:
    cmp r0, 0x2
    beq _08021042
    b _08021046
_0802103A:
    movs r0, 0x8
    b _08021044
_0802103E:
    movs r0, 0x4
    b _08021044
_08021042:
    movs r0, 0x1
_08021044:
    strb r0, [r6, 0xB]
_08021046:
    pop {r4-r6}
    pop {r0}
    bx r0
.syntax divided
	.code	16
.Lfe12:
	.size	 sub_8020FC4,.Lfe12-sub_8020FC4
	.align	2, 0
	.globl	sub_802104C
	.type	 sub_802104C,function
	.thumb_func
sub_802104C:
	push	{r4, r5, lr}
	add	sp, sp, #-0xc
	bl	sub_8020C00
	add	r5, r0, #0
	cmp	r5, #0
	bne	.L77	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	b	.L92
.L77:
	ldrb	r0, [r5, #0xc]
	cmp	r0, #0x9
	bls	.LCB687
	b	.L78	@long jump
.LCB687:
	lsl	r0, r0, #0x2
	ldr	r1, .L94
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L95:
	.align	2, 0
.L94:
	.word	.L90
	.align	2, 0
	.align	2, 0
.L90:
	.word	.L79
	.word	.L80
	.word	.L81
	.word	.L82
	.word	.L83
	.word	.L84
	.word	.L85
	.word	.L87
	.word	.L88
	.word	.L89
.L79:
	mov	r0, #0x0
	bl	SetVBlankCallback
	mov	r0, #0x0
	bl	SetHBlankCallback
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	bl	ScanlineEffect_Stop
	bl	reset_temp_tile_data_buffers
	b	.L78
.L80:
	add	r0, sp, #0x8
	mov	r4, #0x0
	strh	r4, [r0]
	mov	r1, #0xe0
	lsl	r1, r1, #0x13
	ldr	r2, .L96
	bl	CpuSet
	ldr	r0, .L96+0x4
	strb	r4, [r0]
	mov	r0, #0x3
	bl	sub_8034C54
	b	.L78
.L97:
	.align	2, 0
.L96:
	.word	0x1000200
	.word	gReservedSpritePaletteCount
.L81:
	bl	ResetPaletteFade
	bl	ResetSpriteData
	bl	FreeAllSpritePalettes
	b	.L78
.L82:
	mov	r0, #0x0
	bl	ResetBgsAndClearDma3BusyFlags
	ldr	r1, .L98
	mov	r0, #0x0
	mov	r2, #0x4
	bl	InitBgsFromTemplates
	mov	r0, #0xe0
	lsl	r0, r0, #0x1
	add	r1, r5, r0
	mov	r0, #0x1
	bl	SetBgTilemapBuffer
	mov	r0, #0x87
	lsl	r0, r0, #0x6
	add	r1, r5, r0
	mov	r0, #0x2
	bl	SetBgTilemapBuffer
	mov	r0, #0xc7
	lsl	r0, r0, #0x6
	add	r1, r5, r0
	mov	r0, #0x3
	bl	SetBgTilemapBuffer
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	mov	r0, #0x0
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
	mov	r0, #0x50
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0x0
	bl	SetGpuReg
	b	.L78
.L99:
	.align	2, 0
.L98:
	.word	gUnknown_082F32C8
.L83:
	mov	r4, #0x20
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	str	r4, [sp]
	mov	r0, #0x40
	str	r0, [sp, #0x4]
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x2
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x3
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	b	.L78
.L84:
	mov	r0, #0x0
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x1
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x2
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x3
	bl	CopyBgTilemapBufferToVram
	ldr	r1, .L100
	mov	r0, #0x0
	str	r0, [sp]
	mov	r0, #0x1
	mov	r2, #0x0
	mov	r3, #0x0
	bl	decompress_and_copy_tile_data_to_vram
	b	.L78
.L101:
	.align	2, 0
.L100:
	.word	gUnknown_08DE34B8
.L85:
	bl	free_temp_tile_data_buffers_if_possible
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.LCB880
	b	.L93	@long jump
.LCB880:
	bl	InitStandardTextBoxWindows
	bl	sub_8197200
	add	r0, r5, #0
	bl	sub_8022588
	add	r0, r5, #0
	bl	sub_8022600
	ldr	r0, .L102
	ldrb	r1, [r0, #0x8]
	mov	r2, #0x80
	orr	r1, r1, r2
	strb	r1, [r0, #0x8]
	b	.L78
.L103:
	.align	2, 0
.L102:
	.word	gPaletteFade
.L87:
	ldr	r0, .L104
	mov	r2, #0xc0
	lsl	r2, r2, #0x1
	mov	r1, #0x0
	bl	LoadPalette
	ldr	r1, .L104+0x4
	mov	r0, #0x1
	mov	r2, #0x0
	mov	r3, #0x0
	bl	CopyToBgTilemapBuffer
	ldr	r1, .L104+0x8
	mov	r0, #0x2
	mov	r2, #0x0
	mov	r3, #0x0
	bl	CopyToBgTilemapBuffer
	ldr	r1, .L104+0xc
	mov	r0, #0x3
	mov	r2, #0x0
	mov	r3, #0x0
	bl	CopyToBgTilemapBuffer
	add	r0, r5, #0
	bl	sub_80226D0
	mov	r0, #0x1
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x2
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x3
	bl	CopyBgTilemapBufferToVram
	b	.L78
.L105:
	.align	2, 0
.L104:
	.word	gUnknown_08DE3398
	.word	gBerryCrushGrinderTopTilemap
	.word	gBerryCrushContainerCapTilemap
	.word	gBerryCrushBackgroundTilemap
.L88:
	bl	LoadWirelessStatusIndicatorSpriteGfx
	mov	r0, #0x0
	mov	r1, #0x0
	bl	CreateWirelessStatusIndicatorSprite
	add	r0, r5, #0
	bl	sub_8022730
	ldr	r0, .L106
	ldrh	r1, [r0]
	neg	r1, r1
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r0, #0x16
	bl	SetGpuReg
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	b	.L78
.L107:
	.align	2, 0
.L106:
	.word	gSpriteCoordOffsetY
.L89:
	ldr	r2, .L108
	ldrb	r1, [r2, #0x8]
	mov	r0, #0x7f
	and	r0, r0, r1
	strb	r0, [r2, #0x8]
	mov	r0, #0x1
	neg	r0, r0
	mov	r1, #0x10
	mov	r2, #0x0
	bl	BlendPalettes
	mov	r0, #0x0
	bl	ShowBg
	mov	r0, #0x1
	bl	ShowBg
	mov	r0, #0x2
	bl	ShowBg
	mov	r0, #0x3
	bl	ShowBg
	mov	r1, #0x82
	lsl	r1, r1, #0x5
	mov	r0, #0x0
	bl	SetGpuRegBits
	bl	sub_8020E3C
	mov	r0, #0x0
	strb	r0, [r5, #0xc]
	mov	r0, #0x1
	b	.L92
.L109:
	.align	2, 0
.L108:
	.word	gPaletteFade
.L78:
	ldrb	r0, [r5, #0xc]
	add	r0, r0, #0x1
	strb	r0, [r5, #0xc]
.L93:
	mov	r0, #0x0
.L92:
	add	sp, sp, #0xc
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe13:
	.size	 sub_802104C,.Lfe13-sub_802104C
	.align	2, 0
	.globl	sub_802130C
	.type	 sub_802130C,function
	.thumb_func
sub_802130C:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	bl	sub_8020C00
	add	r5, r0, #0
	cmp	r5, #0
	bne	.L111	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	b	.L125
.L111:
	ldrb	r0, [r5, #0xc]
	cmp	r0, #0x7
	bls	.LCB1047
	b	.L112	@long jump
.LCB1047:
	lsl	r0, r0, #0x2
	ldr	r1, .L127
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L128:
	.align	2, 0
.L127:
	.word	.L123
	.align	2, 0
	.align	2, 0
.L123:
	.word	.L113
	.word	.L114
	.word	.L116
	.word	.L117
	.word	.L119
	.word	.L120
	.word	.L121
	.word	.L122
.L113:
	bl	sub_8010434
	b	.L112
.L114:
	bl	IsLinkTaskFinished
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L126	@cond_branch
.L116:
	mov	r0, #0x1
	neg	r0, r0
	mov	r1, #0x0
	str	r1, [sp]
	mov	r2, #0x0
	mov	r3, #0x10
	bl	BeginNormalPaletteFade
	bl	UpdatePaletteFade
	b	.L112
.L117:
	bl	UpdatePaletteFade
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L112	@cond_branch
	b	.L126
.L119:
	mov	r4, #0x20
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x1
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x2
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	str	r4, [sp]
	str	r4, [sp, #0x4]
	mov	r0, #0x3
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	FillBgTilemapBufferRect_Palette0
	mov	r0, #0x0
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x1
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x2
	bl	CopyBgTilemapBufferToVram
	mov	r0, #0x3
	bl	CopyBgTilemapBufferToVram
	b	.L112
.L120:
	bl	FreeAllWindowBuffers
	mov	r0, #0x0
	bl	HideBg
	mov	r0, #0x0
	bl	UnsetBgTilemapBuffer
	mov	r0, #0x1
	bl	HideBg
	mov	r0, #0x1
	bl	UnsetBgTilemapBuffer
	mov	r0, #0x2
	bl	HideBg
	mov	r0, #0x2
	bl	UnsetBgTilemapBuffer
	mov	r0, #0x3
	bl	HideBg
	mov	r0, #0x3
	bl	UnsetBgTilemapBuffer
	mov	r1, #0x82
	lsl	r1, r1, #0x5
	mov	r0, #0x0
	bl	ClearGpuRegBits
	b	.L112
.L121:
	bl	DestroyWirelessStatusIndicatorSprite
	add	r0, r5, #0
	bl	sub_8022960
	bl	sub_8034CC8
	b	.L112
.L122:
	mov	r0, #0x0
	strb	r0, [r5, #0xc]
	mov	r0, #0x1
	b	.L125
.L112:
	ldrb	r0, [r5, #0xc]
	add	r0, r0, #0x1
	strb	r0, [r5, #0xc]
.L126:
	mov	r0, #0x0
.L125:
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 sub_802130C,.Lfe14-sub_802130C
	.align	2, 0
	.type	 sub_8021450,function
	.thumb_func
sub_8021450:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r0, .L131
	ldrh	r1, [r4, #0x2c]
	ldrh	r2, [r4, #0x2a]
	add	r1, r1, r2
	strh	r1, [r0]
	neg	r1, r1
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r0, #0x16
	bl	SetGpuReg
	ldrh	r0, [r4, #0x12]
	cmp	r0, #0x7
	bne	.L130	@cond_branch
	mov	r1, #0x9c
	lsl	r1, r1, #0x1
	add	r0, r4, r1
	ldrh	r1, [r4, #0x28]
	bl	sub_8022524
.L130:
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L132:
	.align	2, 0
.L131:
	.word	gSpriteCoordOffsetY
.Lfe15:
	.size	 sub_8021450,.Lfe15-sub_8021450
	.align	2, 0
	.globl	sub_8021488
	.type	 sub_8021488,function
	.thumb_func
sub_8021488:
	mov	r1, #0x0
	ldr	r2, .L134
	strh	r2, [r0, #0x2a]
	strh	r1, [r0, #0x2c]
	ldr	r0, .L134+0x4
	strh	r1, [r0]
	ldr	r0, .L134+0x8
	strh	r2, [r0]
	bx	lr
.L135:
	.align	2, 0
.L134:
	.word	0xff98
	.word	gSpriteCoordOffsetX
	.word	gSpriteCoordOffsetY
.Lfe16:
	.size	 sub_8021488,.Lfe16-sub_8021488
	.align	2, 0
	.globl	sub_80214A8
	.type	 sub_80214A8,function
	.thumb_func
sub_80214A8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x8
	mov	sl, r0
	str	r1, [sp]
	mov	r0, #0x0
	mov	r9, r0
	mov	r1, sl
	ldrb	r1, [r1, #0x9]
	cmp	r9, r1
	bcc	.LCB1283
	b	.L138	@long jump
.LCB1283:
.L140:
	ldr	r1, .L144
	mov	r2, r9
	lsl	r0, r2, #0x1
	add	r0, r0, r1
	ldrh	r2, [r0]
	mov	r1, r9
	lsl	r0, r1, #0x5
	add	r0, r0, sl
	add	r0, r0, #0xa4
	ldrh	r3, [r0]
	add	r3, r3, #0x85
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	ldr	r0, .L144+0x4
	add	r1, r2, #0
	bl	AddCustomItemIconSprite
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r2, r9
	lsl	r3, r2, #0x2
	ldr	r1, [sp]
	add	r1, r1, #0x38
	add	r6, r1, r3
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	ldr	r0, .L144+0x8
	add	r1, r1, r0
	str	r1, [r6]
	ldrb	r0, [r1, #0x5]
	mov	r2, #0xc
	orr	r0, r0, r2
	strb	r0, [r1, #0x5]
	ldr	r2, [r6]
	add	r2, r2, #0x2c
	ldrb	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strb	r0, [r2]
	ldr	r1, [r6]
	ldr	r0, [sp]
	add	r0, r0, #0xc
	add	r0, r0, r3
	mov	r8, r0
	ldr	r0, [r0]
	ldrh	r0, [r0, #0x8]
	add	r0, r0, #0x78
	strh	r0, [r1, #0x20]
	ldr	r1, [r6]
	ldr	r0, .L144+0xc
	strh	r0, [r1, #0x22]
	ldr	r3, [r6]
	add	r5, r3, #0
	add	r5, r5, #0x2e
	mov	r0, #0x80
	lsl	r0, r0, #0x2
	strh	r0, [r5, #0x2]
	mov	r0, #0x20
	strh	r0, [r5, #0x4]
	mov	r0, #0x70
	strh	r0, [r5, #0xe]
	mov	r2, r8
	ldr	r1, [r2]
	ldrh	r0, [r1, #0xa]
	ldrh	r1, [r1, #0x8]
	sub	r0, r0, r1
	lsl	r0, r0, #0x10
	asr	r1, r0, #0x10
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L141	@cond_branch
	add	r0, r1, #0x3
.L141:
	asr	r0, r0, #0x2
	strh	r0, [r5, #0xc]
	lsl	r0, r1, #0x17
	lsr	r7, r0, #0x10
	mov	r2, #0x80
	lsl	r2, r2, #0x2
	add	r2, r2, #0x20
	lsr	r2, r2, #0x1
	mov	r0, #0x7
	mov	r1, #0xfe
	lsl	r1, r1, #0x6
	str	r3, [sp, #0x4]
	bl	sub_81515D4
	add	r4, r0, #0
	ldr	r0, [r6]
	ldrh	r0, [r0, #0x20]
	lsl	r0, r0, #0x7
	ldr	r3, [sp, #0x4]
	strh	r0, [r3, #0x2e]
	lsl	r1, r7, #0x10
	asr	r1, r1, #0x10
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	mov	r0, #0x7
	add	r2, r4, #0
	bl	sub_81515D4
	strh	r0, [r5, #0x6]
	mov	r0, #0x7
	add	r1, r4, #0
	mov	r2, #0x55
	bl	sub_8151550
	add	r2, r0, #0
	mov	r0, #0x0
	strh	r0, [r5, #0x8]
	lsl	r2, r2, #0x10
	asr	r2, r2, #0x10
	mov	r0, #0x7
	mov	r1, #0xfe
	lsl	r1, r1, #0x6
	bl	sub_81515D4
	strh	r0, [r5, #0xa]
	ldrh	r0, [r5, #0xe]
	ldr	r2, .L144+0x10
	add	r1, r2, #0
	orr	r0, r0, r1
	strh	r0, [r5, #0xe]
	mov	r1, r8
	ldr	r0, [r1]
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	cmp	r0, #0
	bge	.L139	@cond_branch
	ldr	r0, [r6]
	mov	r1, #0x1
	bl	StartSpriteAffineAnim
.L139:
	mov	r0, r9
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	mov	r0, sl
	ldrb	r0, [r0, #0x9]
	cmp	r9, r0
	bcs	.LCB1454
	b	.L140	@long jump
.LCB1454:
.L138:
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L145:
	.align	2, 0
.L144:
	.word	gUnknown_082F41E8
	.word	gUnknown_082F436C
	.word	gSprites
	.word	0xfff0
	.word	-0x8000
.Lfe17:
	.size	 sub_80214A8,.Lfe17-sub_80214A8
	.align	2, 0
	.globl	sub_8021608
	.type	 sub_8021608,function
	.thumb_func
sub_8021608:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	add	r4, r5, #0
	add	r4, r4, #0x2e
	ldrh	r0, [r4, #0x4]
	ldrh	r1, [r4, #0x2]
	add	r0, r0, r1
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x18
	ldrh	r2, [r5, #0x26]
	add	r0, r0, r2
	strh	r0, [r5, #0x26]
	mov	r1, #0xe
	ldrsh	r0, [r4, r1]
	mov	r6, #0x80
	lsl	r6, r6, #0x8
	and	r0, r0, r6
	cmp	r0, #0
	beq	.L147	@cond_branch
	ldrh	r0, [r4, #0x6]
	ldrh	r2, [r5, #0x2e]
	add	r0, r0, r2
	strh	r0, [r5, #0x2e]
	ldrh	r0, [r4, #0xa]
	ldrh	r1, [r4, #0x8]
	add	r0, r0, r1
	strh	r0, [r4, #0x8]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x17
	mov	r2, #0xc
	ldrsh	r1, [r4, r2]
	bl	Sin
	strh	r0, [r5, #0x24]
	mov	r1, #0xe
	ldrsh	r0, [r4, r1]
	and	r0, r0, r6
	cmp	r0, #0
	beq	.L147	@cond_branch
	ldrh	r0, [r4, #0x8]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x17
	cmp	r0, #0x7e
	ble	.L147	@cond_branch
	mov	r0, #0x0
	strh	r0, [r5, #0x24]
	ldrh	r1, [r4, #0xe]
	ldr	r0, .L150
	and	r0, r0, r1
	strh	r0, [r4, #0xe]
.L147:
	ldrh	r0, [r4]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x17
	strh	r0, [r5, #0x20]
	mov	r2, #0x22
	ldrsh	r1, [r5, r2]
	mov	r2, #0x26
	ldrsh	r0, [r5, r2]
	add	r1, r1, r0
	ldrh	r2, [r4, #0xe]
	ldr	r0, .L150
	and	r0, r0, r2
	cmp	r1, r0
	blt	.L149	@cond_branch
	ldr	r0, .L150+0x4
	str	r0, [r5, #0x1c]
	add	r0, r5, #0
	bl	FreeSpriteOamMatrix
	add	r0, r5, #0
	bl	DestroySprite
.L149:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L151:
	.align	2, 0
.L150:
	.word	0x7fff
	.word	SpriteCallbackDummy
.Lfe18:
	.size	 sub_8021608,.Lfe18-sub_8021608
	.align	2, 0
	.globl	sub_80216A8
	.type	 sub_80216A8,function
	.thumb_func
sub_80216A8:
	push	{r4, r5, r6, r7, lr}
	add	r6, r0, #0
	mov	r5, #0x0
	ldrb	r0, [r6, #0x9]
	cmp	r5, r0
	bcs	.L154	@cond_branch
	ldr	r7, .L158
.L156:
	lsl	r0, r5, #0x1
	add	r0, r0, r7
	ldrh	r4, [r0]
	add	r0, r4, #0
	bl	FreeSpritePaletteByTag
	add	r0, r4, #0
	bl	FreeSpriteTilesByTag
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldrb	r0, [r6, #0x9]
	cmp	r5, r0
	bcc	.L156	@cond_branch
.L154:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L159:
	.align	2, 0
.L158:
	.word	gUnknown_082F41E8
.Lfe19:
	.size	 sub_80216A8,.Lfe19-sub_80216A8
	.align	2, 0
	.globl	sub_80216E0
	.type	 sub_80216E0,function
	.thumb_func
sub_80216E0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x10
	add	r6, r0, #0
	str	r1, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	mov	r1, #0x4e
	add	r1, r1, r6
	mov	sl, r1
	mov	r9, r0
	ldrb	r2, [r6, #0x9]
	cmp	r0, r2
	bcs	.L162	@cond_branch
	ldr	r7, .L185
.L164:
	mov	r3, sl
	ldrh	r0, [r3, #0xa]
	mov	r4, r9
	lsl	r1, r4, #0x1
	add	r1, r1, r9
	asr	r0, r0, r1
	lsl	r0, r0, #0x10
	mov	r1, #0xe0
	lsl	r1, r1, #0xb
	and	r1, r1, r0
	lsr	r1, r1, #0x10
	mov	r8, r1
	cmp	r1, #0
	beq	.L163	@cond_branch
	ldr	r0, [sp, #0x4]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [sp, #0x4]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L166	@cond_branch
	lsl	r4, r4, #0x2
	ldr	r5, [sp]
	add	r5, r5, #0x24
	add	r0, r5, r4
	ldr	r0, [r0]
	mov	r1, #0x1
	bl	StartSpriteAnim
	b	.L167
.L186:
	.align	2, 0
.L185:
	.word	gUnknown_082F41CC
.L166:
	mov	r0, r9
	lsl	r4, r0, #0x2
	ldr	r5, [sp]
	add	r5, r5, #0x24
	add	r0, r5, r4
	ldr	r0, [r0]
	mov	r1, #0x0
	bl	StartSpriteAnim
.L167:
	add	r3, r5, r4
	ldr	r2, [r3]
	add	r2, r2, #0x3e
	ldrb	r0, [r2]
	mov	r4, #0x5
	neg	r4, r4
	add	r1, r4, #0
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r2, [r3]
	add	r2, r2, #0x2c
	ldrb	r0, [r2]
	sub	r4, r4, #0x3c
	add	r1, r4, #0
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r2, [r3]
	mov	r0, #0x3
	mov	r1, r8
	and	r1, r1, r0
	mov	r8, r1
	sub	r1, r1, #0x1
	lsl	r1, r1, #0x1
	add	r0, r1, r7
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	strh	r0, [r2, #0x24]
	ldr	r2, [r3]
	ldr	r3, .L187
	add	r1, r1, r3
	mov	r0, #0x0
	ldrsb	r0, [r1, r0]
	strh	r0, [r2, #0x26]
.L163:
	mov	r0, r9
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	ldrb	r4, [r6, #0x9]
	cmp	r9, r4
	bcc	.L164	@cond_branch
.L162:
	ldr	r0, [sp, #0x4]
	cmp	r0, #0
	bne	.L169	@cond_branch
	add	r2, r6, #0
	add	r2, r2, #0x25
	ldrb	r1, [r2]
	b	.L184
.L188:
	.align	2, 0
.L187:
	.word	gUnknown_082F41CC+0x1
.L169:
	ldrh	r0, [r6, #0x28]
	mov	r1, #0x3
	bl	__umodsi3
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	mov	r1, r8
	str	r1, [sp, #0x8]
	mov	r2, #0x0
	mov	r9, r2
	mov	r3, sl
	ldrh	r1, [r3, #0xc]
	lsl	r0, r1, #0x1
	add	r0, r0, #0x3
	add	r6, r6, #0x25
	str	r6, [sp, #0xc]
	add	r3, r1, #0
	cmp	r9, r0
	bge	.L172	@cond_branch
.L174:
	mov	r4, r9
	lsl	r1, r4, #0x2
	ldr	r0, [sp]
	add	r0, r0, #0x4c
	add	r7, r0, r1
	ldr	r2, [r7]
	add	r0, r2, #0
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L173	@cond_branch
	ldr	r0, .L189
	str	r0, [r2, #0x1c]
	lsl	r1, r4, #0x1
	ldr	r3, .L189+0x4
	add	r0, r1, r3
	mov	r4, #0x0
	ldrsb	r4, [r0, r4]
	add	r0, r4, #0
	add	r0, r0, #0x78
	strh	r0, [r2, #0x20]
	ldr	r2, [r7]
	ldr	r0, .L189+0x8
	add	r1, r1, r0
	mov	r6, #0x0
	ldrsb	r6, [r1, r6]
	mov	r1, r8
	lsl	r0, r1, #0x2
	sub	r0, r0, #0x88
	sub	r0, r6, r0
	strh	r0, [r2, #0x22]
	ldr	r5, [r7]
	ldr	r2, [sp, #0x8]
	lsl	r1, r2, #0x2
	add	r0, r4, #0
	bl	__divsi3
	add	r4, r4, r0
	strh	r4, [r5, #0x24]
	ldr	r0, [r7]
	strh	r6, [r0, #0x26]
	mov	r3, sl
	ldrb	r1, [r3, #0x4]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L176	@cond_branch
	ldr	r0, [r7]
	mov	r1, #0x1
	bl	StartSpriteAnim
	b	.L177
.L190:
	.align	2, 0
.L189:
	.word	sub_8022B28
	.word	gUnknown_082F41D2
	.word	gUnknown_082F41D2+0x1
.L176:
	ldr	r0, [r7]
	mov	r1, #0x0
	bl	StartSpriteAnim
.L177:
	mov	r0, r8
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	mov	r4, sl
	ldrh	r3, [r4, #0xc]
	cmp	r0, #0x3
	bls	.L173	@cond_branch
	mov	r0, #0x0
	mov	r8, r0
.L173:
	mov	r0, r9
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	lsl	r0, r3, #0x1
	add	r0, r0, #0x3
	cmp	r9, r0
	blt	.L174	@cond_branch
.L172:
	ldr	r2, [sp, #0xc]
	ldrb	r1, [r2]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L180	@cond_branch
.L184:
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	b	.L170
.L180:
	ldr	r3, [sp, #0x4]
	cmp	r3, #0x1
	bne	.L182	@cond_branch
	mov	r0, #0x4e
	bl	PlaySE
	b	.L183
.L182:
	mov	r0, #0x4d
	bl	PlaySE
.L183:
	ldr	r4, [sp, #0xc]
	ldrb	r0, [r4]
	mov	r1, #0x4
	orr	r0, r0, r1
	strb	r0, [r4]
.L170:
	add	sp, sp, #0x10
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe20:
	.size	 sub_80216E0,.Lfe20-sub_80216E0
	.align	2, 0
	.globl	sub_80218D4
	.type	 sub_80218D4,function
	.thumb_func
sub_80218D4:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r6, r1, #0
	mov	r2, #0x0
	ldrb	r0, [r5, #0x9]
	cmp	r2, r0
	bcs	.L193	@cond_branch
	add	r4, r6, #0
	add	r4, r4, #0x24
	mov	r7, #0x4
	add	r3, r0, #0
.L195:
	lsl	r0, r2, #0x2
	add	r0, r4, r0
	ldr	r0, [r0]
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	add	r0, r7, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L206	@cond_branch
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, r3
	bcc	.L195	@cond_branch
.L193:
	mov	r2, #0x0
	add	r3, r6, #0
	add	r3, r3, #0x4c
	mov	r4, #0x4
.L201:
	lsl	r0, r2, #0x2
	add	r0, r3, r0
	ldr	r0, [r0]
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	add	r0, r4, #0
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L200	@cond_branch
.L206:
	mov	r0, #0x0
	b	.L205
.L200:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0xa
	bls	.L201	@cond_branch
	mov	r1, #0x2c
	ldrsh	r0, [r5, r1]
	cmp	r0, #0
	beq	.L204	@cond_branch
	mov	r0, #0x0
	strh	r0, [r5, #0x2c]
.L204:
	mov	r0, #0x1
.L205:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe21:
	.size	 sub_80218D4,.Lfe21-sub_80218D4
	.align	2, 0
	.globl	sub_8021944
	.type	 sub_8021944,function
	.thumb_func
sub_8021944:
	push	{r4, r5, r6, r7, lr}
	add	r6, r0, #0
	lsl	r4, r1, #0x10
	lsr	r4, r4, #0x10
	mov	r7, #0x0
	mov	r5, #0xe1
	lsl	r5, r5, #0x4
	add	r0, r4, #0
	add	r1, r5, #0
	bl	__udivsi3
	strh	r0, [r6, #0x4]
	add	r0, r4, #0
	add	r1, r5, #0
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x3c
	bl	__udivsi3
	strh	r0, [r6, #0x6]
	add	r0, r4, #0
	mov	r1, #0x3c
	bl	__umodsi3
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x10
	mov	r1, #0x4
	bl	sub_8151534
	add	r2, r7, #0
	lsl	r0, r0, #0x10
	asr	r3, r0, #0x10
	mov	r0, #0x7
	mov	ip, r0
	ldr	r5, .L214
	mov	r4, #0x1
.L211:
	mov	r0, ip
	sub	r1, r0, r2
	add	r0, r3, #0
	asr	r0, r0, r1
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L210	@cond_branch
	lsl	r0, r2, #0x2
	add	r0, r0, r5
	ldr	r0, [r0]
	add	r7, r7, r0
.L210:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0x7
	bls	.L211	@cond_branch
	ldr	r1, .L214+0x4
	add	r0, r7, #0
	bl	__udivsi3
	strh	r0, [r6, #0x8]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L215:
	.align	2, 0
.L214:
	.word	gUnknown_082F334C
	.word	0xf4240
.Lfe22:
	.size	 sub_8021944,.Lfe22-sub_8021944
	.align	2, 0
	.globl	sub_80219C8
	.type	 sub_80219C8,function
	.thumb_func
sub_80219C8:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	sp, sp, #-0xc
	add	r6, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r8, r3
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	mov	r2, #0x1
	neg	r2, r2
	mov	r0, #0x2
	mov	r1, r8
	bl	GetStringWidth
	lsl	r4, r4, #0x2
	lsr	r0, r0, #0x1
	sub	r4, r4, r0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	ldr	r1, .L217
	add	r0, r0, r1
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	mov	r0, r8
	str	r0, [sp, #0x8]
	add	r0, r6, #0
	mov	r1, #0x2
	add	r2, r4, #0
	mov	r3, #0x0
	bl	AddTextPrinterParameterized3
	add	sp, sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L218:
	.align	2, 0
.L217:
	.word	gUnknown_082F32D8
.Lfe23:
	.size	 sub_80219C8,.Lfe23-sub_80219C8
.text
	.align	2, 0
