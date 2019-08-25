@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gDecompressionBuffer
	.section ewram_data,"aw"
	.align	2, 0
	.type	 gDecompressionBuffer,object
	.size	 gDecompressionBuffer,16384
gDecompressionBuffer:
	.byte	0x0
	.space	16383
.text
	.align	2, 0
	.globl	LZDecompressWram
	.type	 LZDecompressWram,function
	.thumb_func
LZDecompressWram:
	push	{lr}
	bl	LZ77UnCompWram
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 LZDecompressWram,.Lfe1-LZDecompressWram
	.align	2, 0
	.globl	LZDecompressVram
	.type	 LZDecompressVram,function
	.thumb_func
LZDecompressVram:
	push	{lr}
	bl	LZ77UnCompVram
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 LZDecompressVram,.Lfe2-LZDecompressVram
	.align	2, 0
	.globl	LoadCompressedSpriteSheet
	.type	 LoadCompressedSpriteSheet,function
	.thumb_func
LoadCompressedSpriteSheet:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r4, r0, #0
	ldr	r0, [r4]
	ldr	r5, .L5
	add	r1, r5, #0
	bl	LZ77UnCompWram
	str	r5, [sp]
	ldrh	r1, [r4, #0x6]
	lsl	r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr	r0, r0, r1
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	LoadSpriteSheet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L6:
	.align	2, 0
.L5:
	.word	gDecompressionBuffer
.Lfe3:
	.size	 LoadCompressedSpriteSheet,.Lfe3-LoadCompressedSpriteSheet
	.align	2, 0
	.globl	LoadCompressedSpriteSheetOverrideBuffer
	.type	 LoadCompressedSpriteSheetOverrideBuffer,function
	.thumb_func
LoadCompressedSpriteSheetOverrideBuffer:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r0, [r4]
	bl	LZ77UnCompWram
	str	r5, [sp]
	ldrh	r1, [r4, #0x6]
	lsl	r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr	r0, r0, r1
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	LoadSpriteSheet
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe4:
	.size	 LoadCompressedSpriteSheetOverrideBuffer,.Lfe4-LoadCompressedSpriteSheetOverrideBuffer
	.align	2, 0
	.globl	LoadCompressedSpritePalette
	.type	 LoadCompressedSpritePalette,function
	.thumb_func
LoadCompressedSpritePalette:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r5, r0, #0
	ldr	r0, [r5]
	ldr	r4, .L9
	add	r1, r4, #0
	bl	LZ77UnCompWram
	str	r4, [sp]
	ldrh	r2, [r5, #0x4]
	ldr	r1, .L9+0x4
	ldr	r0, [sp, #0x4]
	and	r0, r0, r1
	orr	r0, r0, r2
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	LoadSpritePalette
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L10:
	.align	2, 0
.L9:
	.word	gDecompressionBuffer
	.word	-0x10000
.Lfe5:
	.size	 LoadCompressedSpritePalette,.Lfe5-LoadCompressedSpritePalette
	.align	2, 0
	.globl	LoadCompressedSpritePaletteOverrideBuffer
	.type	 LoadCompressedSpritePaletteOverrideBuffer,function
	.thumb_func
LoadCompressedSpritePaletteOverrideBuffer:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r5, r0, #0
	add	r4, r1, #0
	ldr	r0, [r5]
	bl	LZ77UnCompWram
	str	r4, [sp]
	ldrh	r2, [r5, #0x4]
	ldr	r1, .L12
	ldr	r0, [sp, #0x4]
	and	r0, r0, r1
	orr	r0, r0, r2
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	LoadSpritePalette
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L13:
	.align	2, 0
.L12:
	.word	-0x10000
.Lfe6:
	.size	 LoadCompressedSpritePaletteOverrideBuffer,.Lfe6-LoadCompressedSpritePaletteOverrideBuffer
	.align	2, 0
	.globl	DecompressPicFromTable
	.type	 DecompressPicFromTable,function
	.thumb_func
DecompressPicFromTable:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r5, r0
	ble	.L15	@cond_branch
	ldr	r0, .L17
	ldr	r0, [r0]
	bl	LZ77UnCompWram
	b	.L16
.L18:
	.align	2, 0
.L17:
	.word	gMonFrontPicTable
.L15:
	ldr	r0, [r3]
	add	r1, r4, #0
	bl	LZ77UnCompWram
.L16:
	add	r0, r4, #0
	add	r1, r5, #0
	bl	DuplicateDeoxysTiles
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 DecompressPicFromTable,.Lfe7-DecompressPicFromTable
	.align	2, 0
	.globl	HandleLoadSpecialPokePic
	.type	 HandleLoadSpecialPokePic,function
	.thumb_func
HandleLoadSpecialPokePic:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r0, r2, #0x3
	ldr	r1, .L22
	add	r0, r0, r1
	mov	r1, #0x0
	cmp	r4, r0
	bne	.L20	@cond_branch
	mov	r1, #0x1
.L20:
	str	r1, [sp]
	add	r0, r4, #0
	add	r1, r5, #0
	bl	LoadSpecialPokePic_2
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L23:
	.align	2, 0
.L22:
	.word	gMonFrontPicTable
.Lfe8:
	.size	 HandleLoadSpecialPokePic,.Lfe8-HandleLoadSpecialPokePic
	.align	2, 0
	.globl	LoadSpecialPokePic
	.type	 LoadSpecialPokePic,function
	.thumb_func
LoadSpecialPokePic:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	add	r4, r1, #0
	add	r7, r2, #0
	add	r5, r3, #0
	ldr	r0, [sp, #0x18]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r7, #0xc9
	bne	.L25	@cond_branch
	mov	r0, #0xc0
	lsl	r0, r0, #0x12
	and	r0, r0, r5
	lsr	r0, r0, #0x12
	mov	r1, #0xc0
	lsl	r1, r1, #0xa
	and	r1, r1, r5
	lsr	r1, r1, #0xc
	orr	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x2
	and	r1, r1, r5
	lsr	r1, r1, #0x6
	orr	r0, r0, r1
	mov	r1, #0x3
	and	r1, r1, r5
	orr	r0, r0, r1
	mov	r1, #0x1c
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L26	@cond_branch
	mov	r1, #0xc9
	b	.L27
.L26:
	mov	r2, #0xce
	lsl	r2, r2, #0x1
	add	r0, r1, r2
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
.L27:
	mov	r0, r8
	cmp	r0, #0
	bne	.L28	@cond_branch
	ldr	r0, .L34
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, [r1]
	b	.L33
.L35:
	.align	2, 0
.L34:
	.word	gMonBackPicTable
.L28:
	ldr	r0, .L36
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, [r1]
	b	.L33
.L37:
	.align	2, 0
.L36:
	.word	gMonFrontPicTable
.L25:
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r7, r0
	ble	.L31	@cond_branch
	ldr	r0, .L38
	ldr	r0, [r0]
.L33:
	add	r1, r4, #0
	bl	LZ77UnCompWram
	b	.L30
.L39:
	.align	2, 0
.L38:
	.word	gMonFrontPicTable
.L31:
	ldr	r0, [r6]
	add	r1, r4, #0
	bl	LZ77UnCompWram
.L30:
	add	r0, r4, #0
	add	r1, r7, #0
	bl	DuplicateDeoxysTiles
	lsl	r0, r7, #0x10
	lsr	r0, r0, #0x10
	add	r1, r5, #0
	add	r2, r4, #0
	mov	r3, r8
	bl	DrawSpindaSpots
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 LoadSpecialPokePic,.Lfe9-LoadSpecialPokePic
	.align	2, 0
	.globl	Unused_LZDecompressWramIndirect
	.type	 Unused_LZDecompressWramIndirect,function
	.thumb_func
Unused_LZDecompressWramIndirect:
	push	{lr}
	ldr	r0, [r0]
	bl	LZ77UnCompWram
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 Unused_LZDecompressWramIndirect,.Lfe10-Unused_LZDecompressWramIndirect
	.align	2, 0
	.globl	sub_803471C
	.type	 sub_803471C,function
	.thumb_func
sub_803471C:
	.syntax unified
        push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, 0x24
    mov r9, r0
    str r1, [sp]
    str r2, [sp, 0x4]
    adds r5, r3, 0
    movs r0, 0x1
    mov r1, r9
    ands r0, r1
    cmp r0, 0
    bne _0803473C
    b _080348D4
_0803473C:
    asrs r0, r1, 1
    adds r0, 0x4
    lsls r0, 24
    lsrs r0, 24
    str r0, [sp, 0x8]
    movs r0, 0
    ldr r2, [sp]
    cmp r0, r2
    blt _08034750
    b _08034964
_08034750:
    movs r4, 0x8
    subs r1, r4, r1
    str r1, [sp, 0x10]
_08034756:
    movs r7, 0
    adds r0, 0x1
    str r0, [sp, 0x14]
    ldr r0, [sp, 0x10]
    cmp r7, r0
    bge _080347D2
    ldr r1, [sp, 0x8]
    lsls r1, 8
    str r1, [sp, 0x18]
    movs r2, 0
    mov r10, r2
    mov r0, r9
    movs r4, 0x8
    subs r0, r4, r0
    str r0, [sp, 0xC]
_08034774:
    movs r3, 0
    asrs r0, r7, 1
    adds r1, r7, 0
    movs r2, 0x1
    ands r1, r2
    str r1, [sp, 0x20]
    lsls r0, 8
    mov r8, r0
    mov r12, r5
_08034786:
    lsls r1, r3, 5
    ldr r4, [sp, 0x18]
    adds r0, r5, r4
    adds r0, r1
    mov r1, r8
    adds r2, r0, r1
    mov r1, r12
    add r1, r8
    movs r6, 0xF
_08034798:
    ldr r4, [sp, 0x20]
    cmp r4, 0
    bne _080347A8
    strb r4, [r1]
    add r4, sp, 0x20
    ldrb r4, [r4]
    strb r4, [r2, 0x10]
    b _080347B6
_080347A8:
    mov r0, r10
    strb r0, [r1, 0x10]
    movs r4, 0x80
    lsls r4, 1
    adds r4, r2, r4
    str r4, [sp, 0x1C]
    strb r0, [r4]
_080347B6:
    adds r2, 0x1
    adds r1, 0x1
    subs r6, 0x1
    cmp r6, 0
    bge _08034798
    movs r0, 0x20
    add r12, r0
    adds r3, 0x1
    cmp r3, 0x7
    ble _08034786
    adds r7, 0x1
    ldr r1, [sp, 0xC]
    cmp r7, r1
    blt _08034774
_080347D2:
    movs r7, 0
    movs r2, 0
_080347D6:
    movs r6, 0
    adds r4, r7, 0x1
    mov r8, r4
    lsls r4, r7, 5
_080347DE:
    adds r0, r6, 0x1
    mov r10, r0
    lsls r1, r6, 8
    adds r0, r1, 0
    adds r0, 0xC0
    adds r0, r5, r0
    adds r0, r4
    adds r1, r5, r1
    adds r1, r4
    movs r3, 0x1F
_080347F2:
    strb r2, [r1]
    strb r2, [r0]
    adds r0, 0x1
    adds r1, 0x1
    subs r3, 0x1
    cmp r3, 0
    bge _080347F2
    mov r6, r10
    cmp r6, 0x7
    ble _080347DE
    mov r7, r8
    cmp r7, 0x1
    ble _080347D6
    mov r1, r9
    cmp r1, 0x5
    bne _08034818
    movs r2, 0x90
    lsls r2, 1
    adds r5, r2
_08034818:
    movs r7, 0
    cmp r7, r9
    bge _080348AE
_0803481E:
    movs r3, 0
    adds r7, 0x1
    mov r8, r7
    cmp r3, r9
    bge _0803488E
_08034828:
    adds r3, 0x1
    mov r10, r3
    ldr r4, [sp, 0x4]
    adds r4, 0x20
    adds r7, r5, 0
    adds r7, 0x20
    movs r0, 0x12
    adds r0, r5
    mov r12, r0
    ldr r2, [sp, 0x4]
    adds r3, r5, 0
    movs r6, 0x3
_08034840:
    ldrb r0, [r2]
    mov r1, r12
    strb r0, [r1]
    ldrb r0, [r2, 0x1]
    strb r0, [r1, 0x1]
    ldrb r0, [r2, 0x2]
    strb r0, [r1, 0x1E]
    ldrb r0, [r2, 0x3]
    strb r0, [r1, 0x1F]
    movs r0, 0x81
    lsls r0, 1
    adds r1, r3, r0
    ldrb r0, [r2, 0x10]
    strb r0, [r1]
    ldr r0, =0x00000103
    adds r1, r3, r0
    ldrb r0, [r2, 0x11]
    strb r0, [r1]
    movs r0, 0x90
    lsls r0, 1
    adds r1, r3, r0
    ldrb r0, [r2, 0x12]
    strb r0, [r1]
    ldr r0, =0x00000121
    adds r1, r3, r0
    ldrb r0, [r2, 0x13]
    strb r0, [r1]
    movs r1, 0x4
    add r12, r1
    adds r2, 0x4
    adds r3, 0x4
    subs r6, 0x1
    cmp r6, 0
    bge _08034840
    str r4, [sp, 0x4]
    adds r5, r7, 0
    mov r3, r10
    cmp r3, r9
    blt _08034828
_0803488E:
    mov r2, r9
    cmp r2, 0x7
    bne _080348A0
    adds r5, 0x20
    b _080348A8
    .pool
_080348A0:
    mov r4, r9
    cmp r4, 0x5
    bne _080348A8
    adds r5, 0x60
_080348A8:
    mov r7, r8
    cmp r7, r9
    blt _0803481E
_080348AE:
    mov r0, r9
    cmp r0, 0x7
    bne _080348BC
    movs r1, 0x80
    lsls r1, 1
    adds r5, r1
    b _080348C8
_080348BC:
    mov r2, r9
    cmp r2, 0x5
    bne _080348C8
    movs r4, 0xF0
    lsls r4, 1
    adds r5, r4
_080348C8:
    ldr r0, [sp, 0x14]
    ldr r1, [sp]
    cmp r0, r1
    bge _080348D2
    b _08034756
_080348D2:
    b _08034964
_080348D4:
    movs r6, 0
    ldr r2, [sp]
    cmp r6, r2
    bge _08034964
_080348DC:
    adds r6, 0x1
    mov r10, r6
    mov r4, r9
    cmp r4, 0x6
    bne _080348F4
    movs r0, 0
    movs r3, 0xFF
_080348EA:
    strb r0, [r5]
    adds r5, 0x1
    subs r3, 0x1
    cmp r3, 0
    bge _080348EA
_080348F4:
    movs r7, 0
    cmp r7, r9
    bge _08034948
_080348FA:
    adds r7, 0x1
    mov r8, r7
    mov r1, r9
    lsls r0, r1, 5
    cmp r1, 0x6
    bne _08034914
    movs r1, 0
    movs r3, 0x1F
_0803490A:
    strb r1, [r5]
    adds r5, 0x1
    subs r3, 0x1
    cmp r3, 0
    bge _0803490A
_08034914:
    adds r1, r0, 0
    cmp r1, 0
    ble _0803492E
    adds r3, r1, 0
_0803491C:
    ldr r2, [sp, 0x4]
    ldrb r0, [r2]
    strb r0, [r5]
    adds r2, 0x1
    str r2, [sp, 0x4]
    adds r5, 0x1
    subs r3, 0x1
    cmp r3, 0
    bne _0803491C
_0803492E:
    mov r4, r9
    cmp r4, 0x6
    bne _08034942
    movs r0, 0
    movs r3, 0x1F
_08034938:
    strb r0, [r5]
    adds r5, 0x1
    subs r3, 0x1
    cmp r3, 0
    bge _08034938
_08034942:
    mov r7, r8
    cmp r7, r9
    blt _080348FA
_08034948:
    mov r0, r9
    cmp r0, 0x6
    bne _0803495C
    movs r0, 0
    movs r3, 0xFF
_08034952:
    strb r0, [r5]
    adds r5, 0x1
    subs r3, 0x1
    cmp r3, 0
    bge _08034952
_0803495C:
    mov r6, r10
    ldr r1, [sp]
    cmp r6, r1
    blt _080348DC
_08034964:
    add sp, 0x24
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
        .syntax divided
	.code	16
.Lfe11:
	.size	 sub_803471C,.Lfe11-sub_803471C
	.align	2, 0
	.globl	GetDecompressedDataSize
	.type	 GetDecompressedDataSize,function
	.thumb_func
GetDecompressedDataSize:
	add	r2, r0, #0
	ldrb	r0, [r2, #0x3]
	lsl	r0, r0, #0x10
	ldrb	r1, [r2, #0x2]
	lsl	r1, r1, #0x8
	orr	r0, r0, r1
	ldrb	r1, [r2, #0x1]
	orr	r0, r0, r1
	bx	lr
.Lfe12:
	.size	 GetDecompressedDataSize,.Lfe12-GetDecompressedDataSize
	.align	2, 0
	.globl	LoadCompressedSpriteSheetUsingHeap
	.type	 LoadCompressedSpriteSheetUsingHeap,function
	.thumb_func
LoadCompressedSpriteSheetUsingHeap:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r4, r0, #0
	ldr	r0, [r4]
	ldr	r0, [r0]
	lsr	r0, r0, #0x8
	bl	AllocZeroed
	add	r5, r0, #0
	ldr	r0, [r4]
	add	r1, r5, #0
	bl	LZ77UnCompWram
	str	r5, [sp]
	ldrh	r1, [r4, #0x6]
	lsl	r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr	r0, r0, r1
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	LoadSpriteSheet
	add	r0, r5, #0
	bl	Free
	mov	r0, #0x0
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe13:
	.size	 LoadCompressedSpriteSheetUsingHeap,.Lfe13-LoadCompressedSpriteSheetUsingHeap
	.align	2, 0
	.globl	LoadCompressedSpritePaletteUsingHeap
	.type	 LoadCompressedSpritePaletteUsingHeap,function
	.thumb_func
LoadCompressedSpritePaletteUsingHeap:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r4, r0, #0
	ldr	r0, [r4]
	ldr	r0, [r0]
	lsr	r0, r0, #0x8
	bl	AllocZeroed
	add	r5, r0, #0
	ldr	r0, [r4]
	add	r1, r5, #0
	bl	LZ77UnCompWram
	str	r5, [sp]
	ldrh	r2, [r4, #0x4]
	ldr	r1, .L45
	ldr	r0, [sp, #0x4]
	and	r0, r0, r1
	orr	r0, r0, r2
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	LoadSpritePalette
	add	r0, r5, #0
	bl	Free
	mov	r0, #0x0
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L46:
	.align	2, 0
.L45:
	.word	-0x10000
.Lfe14:
	.size	 LoadCompressedSpritePaletteUsingHeap,.Lfe14-LoadCompressedSpritePaletteUsingHeap
	.align	2, 0
	.globl	DecompressPicFromTable_2
	.type	 DecompressPicFromTable_2,function
	.thumb_func
DecompressPicFromTable_2:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r5, r0
	ble	.L48	@cond_branch
	ldr	r0, .L50
	ldr	r0, [r0]
	bl	LZ77UnCompWram
	b	.L49
.L51:
	.align	2, 0
.L50:
	.word	gMonFrontPicTable
.L48:
	ldr	r0, [r3]
	add	r1, r4, #0
	bl	LZ77UnCompWram
.L49:
	add	r0, r4, #0
	add	r1, r5, #0
	bl	DuplicateDeoxysTiles
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe15:
	.size	 DecompressPicFromTable_2,.Lfe15-DecompressPicFromTable_2
	.align	2, 0
	.globl	LoadSpecialPokePic_2
	.type	 LoadSpecialPokePic_2,function
	.thumb_func
LoadSpecialPokePic_2:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	add	r4, r1, #0
	add	r7, r2, #0
	add	r5, r3, #0
	ldr	r0, [sp, #0x18]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r7, #0xc9
	bne	.L53	@cond_branch
	mov	r0, #0xc0
	lsl	r0, r0, #0x12
	and	r0, r0, r5
	lsr	r0, r0, #0x12
	mov	r1, #0xc0
	lsl	r1, r1, #0xa
	and	r1, r1, r5
	lsr	r1, r1, #0xc
	orr	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x2
	and	r1, r1, r5
	lsr	r1, r1, #0x6
	orr	r0, r0, r1
	mov	r1, #0x3
	and	r1, r1, r5
	orr	r0, r0, r1
	mov	r1, #0x1c
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L54	@cond_branch
	mov	r1, #0xc9
	b	.L55
.L54:
	mov	r2, #0xce
	lsl	r2, r2, #0x1
	add	r0, r1, r2
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
.L55:
	mov	r0, r8
	cmp	r0, #0
	bne	.L56	@cond_branch
	ldr	r0, .L62
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, [r1]
	b	.L61
.L63:
	.align	2, 0
.L62:
	.word	gMonBackPicTable
.L56:
	ldr	r0, .L64
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, [r1]
	b	.L61
.L65:
	.align	2, 0
.L64:
	.word	gMonFrontPicTable
.L53:
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r7, r0
	ble	.L59	@cond_branch
	ldr	r0, .L66
	ldr	r0, [r0]
.L61:
	add	r1, r4, #0
	bl	LZ77UnCompWram
	b	.L58
.L67:
	.align	2, 0
.L66:
	.word	gMonFrontPicTable
.L59:
	ldr	r0, [r6]
	add	r1, r4, #0
	bl	LZ77UnCompWram
.L58:
	add	r0, r4, #0
	add	r1, r7, #0
	bl	DuplicateDeoxysTiles
	lsl	r0, r7, #0x10
	lsr	r0, r0, #0x10
	add	r1, r5, #0
	add	r2, r4, #0
	mov	r3, r8
	bl	DrawSpindaSpots
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe16:
	.size	 LoadSpecialPokePic_2,.Lfe16-LoadSpecialPokePic_2
	.align	2, 0
	.globl	HandleLoadSpecialPokePic_2
	.type	 HandleLoadSpecialPokePic_2,function
	.thumb_func
HandleLoadSpecialPokePic_2:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r0, r2, #0x3
	ldr	r1, .L71
	add	r0, r0, r1
	mov	r1, #0x0
	cmp	r4, r0
	bne	.L69	@cond_branch
	mov	r1, #0x1
.L69:
	str	r1, [sp]
	add	r0, r4, #0
	add	r1, r5, #0
	bl	LoadSpecialPokePic_2
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L72:
	.align	2, 0
.L71:
	.word	gMonFrontPicTable
.Lfe17:
	.size	 HandleLoadSpecialPokePic_2,.Lfe17-HandleLoadSpecialPokePic_2
	.align	2, 0
	.globl	DecompressPicFromTable_DontHandleDeoxys
	.type	 DecompressPicFromTable_DontHandleDeoxys,function
	.thumb_func
DecompressPicFromTable_DontHandleDeoxys:
	push	{lr}
	add	r3, r0, #0
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r2, r0
	ble	.L74	@cond_branch
	ldr	r0, .L76
	ldr	r0, [r0]
	bl	LZ77UnCompWram
	b	.L75
.L77:
	.align	2, 0
.L76:
	.word	gMonFrontPicTable
.L74:
	ldr	r0, [r3]
	bl	LZ77UnCompWram
.L75:
	pop	{r0}
	bx	r0
.Lfe18:
	.size	 DecompressPicFromTable_DontHandleDeoxys,.Lfe18-DecompressPicFromTable_DontHandleDeoxys
	.align	2, 0
	.globl	HandleLoadSpecialPokePic_DontHandleDeoxys
	.type	 HandleLoadSpecialPokePic_DontHandleDeoxys,function
	.thumb_func
HandleLoadSpecialPokePic_DontHandleDeoxys:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r0, r2, #0x3
	ldr	r1, .L81
	add	r0, r0, r1
	mov	r1, #0x0
	cmp	r4, r0
	bne	.L79	@cond_branch
	mov	r1, #0x1
.L79:
	str	r1, [sp]
	add	r0, r4, #0
	add	r1, r5, #0
	bl	LoadSpecialPokePic_DontHandleDeoxys
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L82:
	.align	2, 0
.L81:
	.word	gMonFrontPicTable
.Lfe19:
	.size	 HandleLoadSpecialPokePic_DontHandleDeoxys,.Lfe19-HandleLoadSpecialPokePic_DontHandleDeoxys
	.align	2, 0
	.globl	LoadSpecialPokePic_DontHandleDeoxys
	.type	 LoadSpecialPokePic_DontHandleDeoxys,function
	.thumb_func
LoadSpecialPokePic_DontHandleDeoxys:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	add	r5, r1, #0
	add	r7, r2, #0
	add	r4, r3, #0
	ldr	r0, [sp, #0x18]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r7, #0xc9
	bne	.L84	@cond_branch
	mov	r0, #0xc0
	lsl	r0, r0, #0x12
	and	r0, r0, r4
	lsr	r0, r0, #0x12
	mov	r1, #0xc0
	lsl	r1, r1, #0xa
	and	r1, r1, r4
	lsr	r1, r1, #0xc
	orr	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x2
	and	r1, r1, r4
	lsr	r1, r1, #0x6
	orr	r0, r0, r1
	mov	r1, #0x3
	and	r1, r1, r4
	orr	r0, r0, r1
	mov	r1, #0x1c
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L85	@cond_branch
	mov	r1, #0xc9
	b	.L86
.L85:
	mov	r2, #0xce
	lsl	r2, r2, #0x1
	add	r0, r1, r2
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
.L86:
	mov	r0, r8
	cmp	r0, #0
	bne	.L87	@cond_branch
	ldr	r0, .L93
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, [r1]
	b	.L92
.L94:
	.align	2, 0
.L93:
	.word	gMonBackPicTable
.L87:
	ldr	r0, .L95
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, [r1]
	b	.L92
.L96:
	.align	2, 0
.L95:
	.word	gMonFrontPicTable
.L84:
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r7, r0
	ble	.L90	@cond_branch
	ldr	r0, .L97
	ldr	r0, [r0]
.L92:
	add	r1, r5, #0
	bl	LZ77UnCompWram
	b	.L89
.L98:
	.align	2, 0
.L97:
	.word	gMonFrontPicTable
.L90:
	ldr	r0, [r6]
	add	r1, r5, #0
	bl	LZ77UnCompWram
.L89:
	lsl	r0, r7, #0x10
	lsr	r0, r0, #0x10
	add	r1, r4, #0
	add	r2, r5, #0
	mov	r3, r8
	bl	DrawSpindaSpots
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe20:
	.size	 LoadSpecialPokePic_DontHandleDeoxys,.Lfe20-LoadSpecialPokePic_DontHandleDeoxys
	.align	2, 0
	.type	 DuplicateDeoxysTiles,function
	.thumb_func
DuplicateDeoxysTiles:
	push	{lr}
	add	r3, r0, #0
	mov	r0, #0xcd
	lsl	r0, r0, #0x1
	cmp	r1, r0
	bne	.L100	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x4
	add	r0, r3, r1
	ldr	r2, .L101
	add	r1, r3, #0
	bl	CpuSet
.L100:
	pop	{r0}
	bx	r0
.L102:
	.align	2, 0
.L101:
	.word	0x4000200
.Lfe21:
	.size	 DuplicateDeoxysTiles,.Lfe21-DuplicateDeoxysTiles
.text
	.align	2, 0
