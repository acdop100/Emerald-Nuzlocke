@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.type	 sWaldaLettersTable,object
sWaldaLettersTable:
	.byte	0xbc
	.byte	0xbd
	.byte	0xbe
	.byte	0xc0
	.byte	0xc1
	.byte	0xc2
	.byte	0xc4
	.byte	0xc5
	.byte	0xc6
	.byte	0xc7
	.byte	0xc8
	.byte	0xca
	.byte	0xcb
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xd0
	.byte	0xd1
	.byte	0xd4
	.byte	0xd6
	.byte	0xd7
	.byte	0xd8
	.byte	0xda
	.byte	0xdb
	.byte	0xdc
	.byte	0xde
	.byte	0xdf
	.byte	0xe1
	.byte	0xe2
	.byte	0xe4
	.byte	0xe5
	.byte	0xe7
	.size	 sWaldaLettersTable,32
.text
	.align	2, 0
	.globl	TryBufferWaldaPhrase
	.type	 TryBufferWaldaPhrase,function
	.thumb_func
TryBufferWaldaPhrase:
	push	{r4, lr}
	bl	IsWaldaPhraseEmpty
	cmp	r0, #0
	bne	.L3	@cond_branch
	ldr	r4, .L5
	bl	GetWaldaPhrasePtr
	add	r1, r0, #0
	add	r0, r4, #0
	bl	StringCopy
	mov	r0, #0x1
	b	.L4
.L6:
	.align	2, 0
.L5:
	.word	gStringVar1
.L3:
	mov	r0, #0x0
.L4:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 TryBufferWaldaPhrase,.Lfe1-TryBufferWaldaPhrase
	.align	2, 0
	.globl	DoWaldaNamingScreen
	.type	 DoWaldaNamingScreen,function
	.thumb_func
DoWaldaNamingScreen:
	push	{r4, lr}
	add	sp, sp, #-0x8
	ldr	r4, .L8
	bl	GetWaldaPhrasePtr
	add	r1, r0, #0
	add	r0, r4, #0
	bl	StringCopy
	mov	r0, #0x0
	str	r0, [sp]
	ldr	r0, .L8+0x4
	str	r0, [sp, #0x4]
	mov	r0, #0x4
	add	r1, r4, #0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	DoNamingScreen
	add	sp, sp, #0x8
	pop	{r4}
	pop	{r0}
	bx	r0
.L9:
	.align	2, 0
.L8:
	.word	gStringVar2
	.word	CB2_HandleGivenWaldaPhrase
.Lfe2:
	.size	 DoWaldaNamingScreen,.Lfe2-DoWaldaNamingScreen
	.align	2, 0
	.type	 CB2_HandleGivenWaldaPhrase,function
	.thumb_func
CB2_HandleGivenWaldaPhrase:
	push	{r4, r5, lr}
	ldr	r4, .L20
	ldr	r5, .L20+0x4
	add	r0, r5, #0
	bl	GetWaldaPhraseInputCase
	strh	r0, [r4]
	ldrh	r0, [r4]
	cmp	r0, #0x1
	beq	.L11	@cond_branch
	cmp	r0, #0x1
	bgt	.L19	@cond_branch
	cmp	r0, #0
	beq	.L15	@cond_branch
	b	.L11
.L21:
	.align	2, 0
.L20:
	.word	gSpecialVar_0x8004
	.word	gStringVar2
.L19:
	cmp	r0, #0x2
	bne	.L11	@cond_branch
	bl	IsWaldaPhraseEmpty
	cmp	r0, #0
	beq	.L13	@cond_branch
	ldr	r0, .L22
	bl	SetWaldaPhrase
	b	.L11
.L23:
	.align	2, 0
.L22:
	.word	gText_Peekaboo
.L13:
	mov	r0, #0x1
	strh	r0, [r4]
	b	.L11
.L15:
	add	r0, r5, #0
	bl	SetWaldaPhrase
.L11:
	ldr	r4, .L24
	bl	GetWaldaPhrasePtr
	add	r1, r0, #0
	add	r0, r4, #0
	bl	StringCopy
	ldr	r1, .L24+0x4
	ldr	r0, .L24+0x8
	str	r0, [r1]
	ldr	r0, .L24+0xc
	bl	SetMainCallback2
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L25:
	.align	2, 0
.L24:
	.word	gStringVar1
	.word	gFieldCallback
	.word	FieldCallback_ReturnToEventScript2
	.word	CB2_ReturnToField
.Lfe3:
	.size	 CB2_HandleGivenWaldaPhrase,.Lfe3-CB2_HandleGivenWaldaPhrase
	.align	2, 0
	.type	 GetWaldaPhraseInputCase,function
	.thumb_func
GetWaldaPhraseInputCase:
	push	{r4, lr}
	add	r4, r0, #0
	ldrb	r0, [r4]
	cmp	r0, #0xff
	bne	.L27	@cond_branch
	mov	r0, #0x2
	b	.L29
.L27:
	bl	GetWaldaPhrasePtr
	add	r1, r0, #0
	add	r0, r4, #0
	bl	StringCompare
	cmp	r0, #0
	beq	.L28	@cond_branch
	mov	r0, #0x0
	b	.L29
.L28:
	mov	r0, #0x1
.L29:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 GetWaldaPhraseInputCase,.Lfe4-GetWaldaPhraseInputCase
	.align	2, 0
	.globl	TryGetWallpaperWithWaldaPhrase
	.type	 TryGetWallpaperWithWaldaPhrase,function
	.thumb_func
TryGetWallpaperWithWaldaPhrase:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x10
	ldr	r0, .L32
	ldr	r0, [r0]
	add	r0, r0, #0xa
	bl	GetTrainerId
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	ldr	r0, .L32+0x4
	mov	r8, r0
	bl	GetWaldaPhrasePtr
	mov	r7, sp
	add	r7, r7, #0xa
	add	r6, sp, #0xc
	mov	r5, sp
	add	r5, r5, #0xd
	str	r4, [sp]
	str	r0, [sp, #0x4]
	add	r0, sp, #0x8
	add	r1, r7, #0
	add	r2, r6, #0
	add	r3, r5, #0
	bl	TryCalculateWallpaper
	mov	r1, r8
	strh	r0, [r1]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.L31	@cond_branch
	ldrb	r0, [r5]
	bl	SetWaldaWallpaperPatternId
	ldrb	r0, [r6]
	bl	SetWaldaWallpaperIconId
	add	r0, sp, #0x8
	ldrh	r0, [r0]
	ldrh	r1, [r7]
	bl	SetWaldaWallpaperColors
.L31:
	mov	r1, r8
	ldrh	r0, [r1]
	bl	SetWaldaWallpaperLockedOrUnlocked
	mov	r1, r8
	ldrb	r0, [r1]
	add	sp, sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L33:
	.align	2, 0
.L32:
	.word	gSaveBlock2Ptr
	.word	gSpecialVar_Result
.Lfe5:
	.size	 TryGetWallpaperWithWaldaPhrase,.Lfe5-TryGetWallpaperWithWaldaPhrase
	.align	2, 0
	.type	 GetLetterTableId,function
	.thumb_func
GetLetterTableId:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	mov	r1, #0x0
	ldr	r3, .L42
.L38:
	add	r0, r1, r3
	ldrb	r0, [r0]
	cmp	r0, r2
	bne	.L37	@cond_branch
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	b	.L41
.L43:
	.align	2, 0
.L42:
	.word	sWaldaLettersTable
.L37:
	add	r1, r1, #0x1
	cmp	r1, #0x1f
	bls	.L38	@cond_branch
	mov	r0, #0x20
.L41:
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 GetLetterTableId,.Lfe6-GetLetterTableId
	.align	2, 0
	.type	 TryCalculateWallpaper,function
	.thumb_func
TryCalculateWallpaper:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x2c
	mov	sl, r0
	str	r1, [sp, #0x20]
	str	r2, [sp, #0x24]
	str	r3, [sp, #0x28]
	ldr	r0, [sp, #0x4c]
	ldr	r5, [sp, #0x50]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r9, r0
	add	r0, r5, #0
	bl	StringLength
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0xf
	bne	.L59	@cond_branch
	mov	r4, #0x0
	add	r7, sp, #0x10
.L49:
	add	r0, r5, r4
	ldrb	r0, [r0]
	bl	GetLetterTableId
	add	r1, r7, r4
	strb	r0, [r1]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x20
	beq	.L61	@cond_branch
	add	r4, r4, #0x1
	cmp	r4, #0xe
	ble	.L49	@cond_branch
	mov	r6, #0x3
	mov	r5, #0x0
	mov	r0, #0x5
	mov	r8, r0
	mov	r4, #0xd
.L55:
	mov	r1, r8
	str	r1, [sp]
	add	r0, sp, #0x4
	add	r1, r7, #0
	add	r2, r5, #0
	add	r3, r6, #0
	bl	sub_81D9D5C
	add	r6, r6, #0x8
	add	r5, r5, #0x5
	sub	r4, r4, #0x1
	cmp	r4, #0
	bge	.L55	@cond_branch
	mov	r0, #0x2
	str	r0, [sp]
	add	r0, sp, #0x4
	add	r1, r7, #0
	mov	r2, #0x46
	mov	r3, #0x73
	bl	sub_81D9D5C
	add	r0, sp, #0x4
	mov	r1, #0x0
	mov	r2, #0x3
	bl	sub_81D9DAC
	add	r4, r0, #0
	add	r0, r7, #0
	mov	r1, #0x75
	mov	r2, #0x3
	bl	sub_81D9DAC
	cmp	r4, r0
	bne	.L59	@cond_branch
	add	r0, sp, #0x4
	mov	r1, #0x9
	mov	r2, #0x15
	bl	sub_81D9C90
	add	r0, sp, #0x4
	ldrb	r0, [r0, #0x8]
	mov	r2, #0xf
	and	r2, r2, r0
	add	r0, sp, #0x4
	mov	r1, #0x8
	bl	sub_81D9C90
	add	r0, sp, #0x4
	ldrb	r2, [r0, #0x8]
	lsr	r2, r2, #0x4
	mov	r1, #0x8
	bl	sub_81D9CDC
	add	r0, sp, #0x4
	ldrb	r2, [r0, #0x6]
	add	r1, r0, #0
	ldrb	r0, [r0]
	ldrb	r1, [r1, #0x2]
	eor	r0, r0, r1
	add	r1, sp, #0x4
	ldrb	r4, [r1, #0x4]
	eor	r0, r0, r4
	mov	r3, r9
	lsr	r1, r3, #0x8
	eor	r0, r0, r1
	cmp	r2, r0
	bne	.L59	@cond_branch
	add	r0, sp, #0x4
	ldrb	r3, [r0, #0x7]
	add	r2, r0, #0
	ldrb	r1, [r0, #0x1]
	ldrb	r0, [r2, #0x3]
	eor	r1, r1, r0
	add	r0, r2, #0
	ldrb	r2, [r0, #0x5]
	eor	r1, r1, r2
	mov	r0, #0xff
	mov	r5, r9
	and	r0, r0, r5
	eor	r1, r1, r0
	cmp	r3, r1
	bne	.L59	@cond_branch
	add	r0, sp, #0x4
	ldrh	r0, [r0]
	mov	r1, sl
	strh	r0, [r1]
	mov	r0, sp
	add	r0, r0, #0x6
	ldrh	r0, [r0]
	ldr	r3, [sp, #0x20]
	strh	r0, [r3]
	ldr	r5, [sp, #0x24]
	strb	r4, [r5]
	ldr	r0, [sp, #0x28]
	strb	r2, [r0]
	mov	r0, #0x1
	b	.L60
.L61:
.L59:
	mov	r0, #0x0
.L60:
	add	sp, sp, #0x2c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 TryCalculateWallpaper,.Lfe7-TryCalculateWallpaper
	.align	2, 0
	.type	 sub_81D9C90,function
	.thumb_func
sub_81D9C90:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	mov	ip, r1
	sub	r3, r2, #0x1
	cmp	r2, #0
	beq	.L64	@cond_branch
.L66:
	ldrb	r1, [r7]
	mov	r0, #0x80
	and	r0, r0, r1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x1f
	mov	r2, ip
	sub	r2, r2, #0x1
	sub	r5, r3, #0x1
	cmp	r2, #0
	blt	.L65	@cond_branch
	mov	r6, #0x80
	add	r3, r2, r7
.L70:
	ldrb	r1, [r3]
	add	r0, r6, #0
	and	r0, r0, r1
	lsl	r0, r0, #0x18
	lsl	r1, r1, #0x1
	orr	r4, r4, r1
	strb	r4, [r3]
	lsr	r4, r0, #0x1f
	sub	r3, r3, #0x1
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L70	@cond_branch
.L65:
	add	r3, r5, #0
	mov	r0, #0x1
	neg	r0, r0
	cmp	r3, r0
	bne	.L66	@cond_branch
.L64:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 sub_81D9C90,.Lfe8-sub_81D9C90
	.align	2, 0
	.type	 sub_81D9CDC,function
	.thumb_func
sub_81D9CDC:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	add	r5, r1, #0
	lsl	r2, r2, #0x18
	lsr	r3, r2, #0x18
	lsl	r0, r3, #0x4
	orr	r3, r3, r0
	lsl	r0, r3, #0x18
	lsr	r3, r0, #0x18
	mov	r4, #0x0
	cmp	r4, r5
	bcs	.L75	@cond_branch
.L77:
	add	r2, r6, r4
	ldrb	r1, [r2]
	add	r0, r3, #0
	eor	r0, r0, r1
	strb	r0, [r2]
	add	r4, r4, #0x1
	cmp	r4, r5
	bcc	.L77	@cond_branch
.L75:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 sub_81D9CDC,.Lfe9-sub_81D9CDC
	.align	2, 0
	.type	 sub_81D9D0C,function
	.thumb_func
sub_81D9D0C:
	push	{lr}
	lsr	r3, r1, #0x3
	mov	r2, #0x7
	and	r2, r2, r1
	mov	r1, #0x80
	asr	r1, r1, r2
	add	r0, r0, r3
	ldrb	r0, [r0]
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L80	@cond_branch
	mov	r0, #0x1
.L80:
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 sub_81D9D0C,.Lfe10-sub_81D9D0C
	.align	2, 0
	.type	 sub_81D9D28,function
	.thumb_func
sub_81D9D28:
	lsr	r3, r1, #0x3
	mov	r2, #0x7
	and	r2, r2, r1
	mov	r1, #0x80
	asr	r1, r1, r2
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r0, r3
	ldrb	r2, [r0]
	orr	r1, r1, r2
	strb	r1, [r0]
	bx	lr
.Lfe11:
	.size	 sub_81D9D28,.Lfe11-sub_81D9D28
	.align	2, 0
	.type	 sub_81D9D40,function
	.thumb_func
sub_81D9D40:
	lsr	r3, r1, #0x3
	mov	r2, #0x7
	and	r2, r2, r1
	mov	r1, #0x80
	asr	r1, r1, r2
	mvn	r1, r1
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r0, r3
	ldrb	r2, [r0]
	and	r1, r1, r2
	strb	r1, [r0]
	bx	lr
.Lfe12:
	.size	 sub_81D9D40,.Lfe12-sub_81D9D40
	.align	2, 0
	.type	 sub_81D9D5C,function
	.thumb_func
sub_81D9D5C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r6, r0, #0
	mov	r9, r1
	add	r1, r2, #0
	mov	r8, r3
	ldr	r7, [sp, #0x1c]
	mov	r5, #0x0
	cmp	r5, r7
	bcs	.L85	@cond_branch
	add	r4, r1, #0
.L87:
	mov	r0, r8
	add	r1, r0, r5
	mov	r0, r9
	bl	sub_81D9D0C
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L88	@cond_branch
	add	r0, r6, #0
	add	r1, r4, #0
	bl	sub_81D9D28
	b	.L86
.L88:
	add	r0, r6, #0
	add	r1, r4, #0
	bl	sub_81D9D40
.L86:
	add	r4, r4, #0x1
	add	r5, r5, #0x1
	cmp	r5, r7
	bcc	.L87	@cond_branch
.L85:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe13:
	.size	 sub_81D9D5C,.Lfe13-sub_81D9D5C
	.align	2, 0
	.type	 sub_81D9DAC,function
	.thumb_func
sub_81D9DAC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	add	r7, r1, #0
	add	r6, r2, #0
	mov	r4, #0x0
	mov	r5, #0x0
	cmp	r4, r6
	bcs	.L93	@cond_branch
.L95:
	lsl	r4, r4, #0x1
	add	r1, r7, r5
	mov	r0, r8
	bl	sub_81D9D0C
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	orr	r4, r4, r0
	add	r5, r5, #0x1
	cmp	r5, r6
	bcc	.L95	@cond_branch
.L93:
	add	r0, r4, #0
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 sub_81D9DAC,.Lfe14-sub_81D9DAC
.text
	.align	2, 0

