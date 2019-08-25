@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	CheckObjectGraphicsInFrontOfPlayer
	.type	 CheckObjectGraphicsInFrontOfPlayer,function
	.thumb_func
CheckObjectGraphicsInFrontOfPlayer:
	push	{r4, r5, lr}
	add	r5, r0, #0
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	ldr	r4, .L6
	add	r1, r4, #0x2
	add	r0, r4, #0
	bl	GetXYCoordsOneStepInFrontOfPlayer
	bl	PlayerGetZCoord
	strb	r0, [r4, #0x4]
	ldrh	r0, [r4]
	ldrh	r1, [r4, #0x2]
	ldrb	r2, [r4, #0x4]
	bl	GetEventObjectIdByXYZ
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L6+0x4
	lsl	r1, r0, #0x3
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r2, r1, r2
	ldrb	r0, [r2, #0x5]
	cmp	r0, r5
	bne	.L3	@cond_branch
	ldr	r1, .L6+0x8
	ldrb	r0, [r2, #0x8]
	strh	r0, [r1]
	mov	r0, #0x1
	b	.L5
.L7:
	.align	2, 0
.L6:
	.word	gPlayerFacingPosition
	.word	gEventObjects
	.word	gSpecialVar_LastTalked
.L3:
	mov	r0, #0x0
.L5:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 CheckObjectGraphicsInFrontOfPlayer,.Lfe1-CheckObjectGraphicsInFrontOfPlayer
	.align	2, 0
	.globl	oei_task_add
	.type	 oei_task_add,function
	.thumb_func
oei_task_add:
	push	{lr}
	ldr	r0, .L9
	add	r1, r0, #0x2
	bl	GetXYCoordsOneStepInFrontOfPlayer
	ldr	r0, .L9+0x4
	mov	r1, #0x8
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L10:
	.align	2, 0
.L9:
	.word	gPlayerFacingPosition
	.word	task08_080C9820
.Lfe2:
	.size	 oei_task_add,.Lfe2-oei_task_add
	.align	2, 0
	.type	 task08_080C9820,function
	.thumb_func
task08_080C9820:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	add	r6, r5, #0
	bl	ScriptContext2_Enable
	ldr	r1, .L17
	mov	r0, #0x1
	strb	r0, [r1, #0x6]
	ldrb	r1, [r1, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L17+0x4
	add	r4, r0, r1
	add	r0, r4, #0
	bl	EventObjectIsMovementOverridden
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L13	@cond_branch
	add	r0, r4, #0
	bl	EventObjectClearHeldMovementIfFinished
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L12	@cond_branch
.L13:
	ldr	r0, .L17+0x8
	ldrb	r0, [r0, #0x17]
	cmp	r0, #0x5
	bne	.L14	@cond_branch
	mov	r0, #0x3b
	bl	FieldEffectStart
	ldr	r0, .L17+0xc
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, .L17+0x10
	b	.L16
.L18:
	.align	2, 0
.L17:
	.word	gPlayerAvatar
	.word	gEventObjects
	.word	gMapHeader
	.word	gTasks
	.word	sub_8135578
.L14:
	bl	sub_808C114
	add	r0, r4, #0
	mov	r1, #0x39
	bl	EventObjectSetHeldMovement
	ldr	r0, .L19
	lsl	r1, r6, #0x2
	add	r1, r1, r6
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, .L19+0x4
.L16:
	str	r0, [r1]
.L12:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L20:
	.align	2, 0
.L19:
	.word	gTasks
	.word	sub_813552C
.Lfe3:
	.size	 task08_080C9820,.Lfe3-task08_080C9820
	.align	2, 0
	.type	 sub_813552C,function
	.thumb_func
sub_813552C:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r0, .L23
	ldrb	r1, [r0, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L23+0x4
	add	r0, r0, r1
	bl	EventObjectCheckHeldMovementStatus
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L22	@cond_branch
	mov	r0, #0x3b
	bl	FieldEffectStart
	ldr	r0, .L23+0x8
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, .L23+0xc
	str	r0, [r1]
.L22:
	pop	{r4}
	pop	{r0}
	bx	r0
.L24:
	.align	2, 0
.L23:
	.word	gPlayerAvatar
	.word	gEventObjects
	.word	gTasks
	.word	sub_8135578
.Lfe4:
	.size	 sub_813552C,.Lfe4-sub_813552C
	.align	2, 0
	.type	 sub_8135578,function
	.thumb_func
sub_8135578:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r0, #0x6
	bl	FieldEffectActiveListContains
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0
	bne	.L26	@cond_branch
	bl	GetPlayerFacingDirection
	ldr	r6, .L31
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [r6, #0x4]
	cmp	r0, #0x1
	bne	.L27	@cond_branch
	str	r4, [r6, #0x8]
.L27:
	ldr	r1, [r6, #0x4]
	cmp	r1, #0x2
	bne	.L28	@cond_branch
	mov	r0, #0x1
	str	r0, [r6, #0x8]
.L28:
	cmp	r1, #0x3
	bne	.L29	@cond_branch
	mov	r0, #0x2
	str	r0, [r6, #0x8]
.L29:
	cmp	r1, #0x4
	bne	.L30	@cond_branch
	mov	r0, #0x3
	str	r0, [r6, #0x8]
.L30:
	ldr	r5, .L31+0x4
	ldrb	r0, [r5, #0x5]
	lsl	r4, r0, #0x3
	add	r4, r4, r0
	lsl	r4, r4, #0x2
	ldr	r0, .L31+0x8
	add	r4, r4, r0
	bl	GetPlayerAvatarGraphicsIdByCurrentState
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	EventObjectSetGraphicsId
	ldrb	r1, [r5, #0x4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L31+0xc
	add	r0, r0, r1
	ldrb	r1, [r6, #0x8]
	bl	StartSpriteAnim
	mov	r0, #0x6
	bl	FieldEffectActiveListRemove
	ldr	r1, .L31+0x10
	lsl	r0, r7, #0x2
	add	r0, r0, r7
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L31+0x14
	str	r1, [r0]
.L26:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L32:
	.align	2, 0
.L31:
	.word	gFieldEffectArguments
	.word	gPlayerAvatar
	.word	gEventObjects
	.word	gSprites
	.word	gTasks
	.word	sub_813561C
.Lfe5:
	.size	 sub_8135578,.Lfe5-sub_8135578
	.align	2, 0
	.type	 sub_813561C,function
	.thumb_func
sub_813561C:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r1, .L34
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldrh	r1, [r0, #0x18]
	lsl	r1, r1, #0x10
	ldrh	r0, [r0, #0x1a]
	orr	r1, r1, r0
	bl	_call_via_r1
	ldr	r1, .L34+0x4
	mov	r0, #0x0
	strb	r0, [r1, #0x6]
	add	r0, r4, #0
	bl	DestroyTask
	pop	{r4}
	pop	{r0}
	bx	r0
.L35:
	.align	2, 0
.L34:
	.word	gTasks
	.word	gPlayerAvatar
.Lfe6:
	.size	 sub_813561C,.Lfe6-sub_813561C
	.align	2, 0
	.globl	SetUpFieldMove_RockSmash
	.type	 SetUpFieldMove_RockSmash,function
	.thumb_func
SetUpFieldMove_RockSmash:
	push	{r4, lr}
	bl	ShouldDoBrailleRegirockEffect
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L37	@cond_branch
	ldr	r4, .L43
	bl	GetCursorSelectionMonId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4]
	ldr	r1, .L43+0x4
	ldr	r0, .L43+0x8
	str	r0, [r1]
	ldr	r1, .L43+0xc
	ldr	r0, .L43+0x10
	b	.L42
.L44:
	.align	2, 0
.L43:
	.word	gSpecialVar_Result
	.word	gFieldCallback2
	.word	FieldCallback_PrepareFadeInFromMenu
	.word	gPostMenuFieldCallback
	.word	SetUpPuzzleEffectRegirock
.L37:
	mov	r0, #0x56
	bl	CheckObjectGraphicsInFrontOfPlayer
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L39	@cond_branch
	mov	r0, #0x0
	b	.L41
.L39:
	ldr	r1, .L45
	ldr	r0, .L45+0x4
	str	r0, [r1]
	ldr	r1, .L45+0x8
	ldr	r0, .L45+0xc
.L42:
	str	r0, [r1]
	mov	r0, #0x1
.L41:
	pop	{r4}
	pop	{r1}
	bx	r1
.L46:
	.align	2, 0
.L45:
	.word	gFieldCallback2
	.word	FieldCallback_PrepareFadeInFromMenu
	.word	gPostMenuFieldCallback
	.word	sub_81356C4
.Lfe7:
	.size	 SetUpFieldMove_RockSmash,.Lfe7-SetUpFieldMove_RockSmash
	.align	2, 0
	.type	 sub_81356C4,function
	.thumb_func
sub_81356C4:
	push	{lr}
	bl	GetCursorSelectionMonId
	ldr	r1, .L48
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [r1]
	ldr	r0, .L48+0x4
	bl	ScriptContext1_SetupScript
	pop	{r0}
	bx	r0
.L49:
	.align	2, 0
.L48:
	.word	gFieldEffectArguments
	.word	EventScript_FldEffRockSmash
.Lfe8:
	.size	 sub_81356C4,.Lfe8-sub_81356C4
	.align	2, 0
	.globl	FldEff_UseRockSmash
	.type	 FldEff_UseRockSmash,function
	.thumb_func
FldEff_UseRockSmash:
	push	{lr}
	bl	oei_task_add
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L51
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	ldr	r2, .L51+0x4
	lsr	r0, r2, #0x10
	strh	r0, [r1, #0x18]
	strh	r2, [r1, #0x1a]
	mov	r0, #0x13
	bl	IncrementGameStat
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.L52:
	.align	2, 0
.L51:
	.word	gTasks
	.word	sub_8135714
.Lfe9:
	.size	 FldEff_UseRockSmash,.Lfe9-FldEff_UseRockSmash
	.align	2, 0
	.type	 sub_8135714,function
	.thumb_func
sub_8135714:
	push	{lr}
	mov	r0, #0x83
	bl	PlaySE
	mov	r0, #0x25
	bl	FieldEffectActiveListRemove
	bl	EnableBothScriptContexts
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 sub_8135714,.Lfe10-sub_8135714
.text
	.align	2, 0
