.class public Lgnu/lists/StableVector;
.super Lgnu/lists/GapVector;
.source "StableVector.java"


# static fields
.field static final END_POSITION:I = 0x1

.field protected static final FREE_POSITION:I = -0x2

.field static final START_POSITION:I


# instance fields
.field protected free:I

.field protected positions:[I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/GapVector;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/SimpleVector;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/lists/GapVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 79
    move-object v3, v0

    const/16 v4, 0x10

    new-array v4, v4, [I

    iput-object v4, v3, Lgnu/lists/StableVector;->positions:[I

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 81
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    const/4 v4, 0x1

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v5

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 82
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/lists/StableVector;->free:I

    .line 83
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    array-length v3, v3

    move v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->free:I

    aput v5, v3, v4

    .line 86
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPos(ILjava/lang/Object;)I
    .locals 9

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->positions:[I

    move v6, v1

    aget v5, v5, v6

    move v3, v5

    .line 287
    .local v3, "ppos":I
    move v5, v3

    const/4 v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 288
    .local v4, "index":I
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->gapStart:I

    if-lt v5, v6, :cond_0

    .line 289
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->gapEnd:I

    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    move v4, v5

    .line 291
    :cond_0
    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 293
    move v5, v1

    if-nez v5, :cond_2

    .line 294
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result v5

    move v1, v5

    .line 298
    :cond_1
    :goto_0
    move-object v5, v0

    move v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/StableVector;->add(ILjava/lang/Object;)V

    .line 299
    move v5, v1

    move v0, v5

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0

    .line 296
    .restart local v0    # "this":Lgnu/lists/StableVector;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->positions:[I

    move v6, v1

    move v7, v3

    const/4 v8, 0x1

    or-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    goto :goto_0
.end method

.method protected adjustPositions(III)V
    .locals 11

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "low":I
    move v2, p2

    .local v2, "high":I
    move v3, p3

    .local v3, "delta":I
    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->free:I

    const/4 v8, -0x1

    if-lt v7, v8, :cond_0

    .line 264
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 269
    :cond_0
    move v7, v1

    const/high16 v8, -0x80000000

    xor-int/2addr v7, v8

    move v1, v7

    .line 270
    move v7, v2

    const/high16 v8, -0x80000000

    xor-int/2addr v7, v8

    move v2, v7

    .line 272
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/StableVector;->positions:[I

    array-length v7, v7

    move v4, v7

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v7, v4

    if-lez v7, :cond_2

    .line 274
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/StableVector;->positions:[I

    move v8, v4

    aget v7, v7, v8

    move v5, v7

    .line 275
    .local v5, "pos":I
    move v7, v5

    const/4 v8, -0x2

    if-eq v7, v8, :cond_1

    .line 277
    move v7, v5

    const/high16 v8, -0x80000000

    xor-int/2addr v7, v8

    move v6, v7

    .line 278
    .local v6, "index":I
    move v7, v6

    move v8, v1

    if-lt v7, v8, :cond_1

    move v7, v6

    move v8, v2

    if-gt v7, v8, :cond_1

    .line 279
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/StableVector;->positions:[I

    move v8, v4

    move v9, v5

    move v10, v3

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 281
    .end local v6    # "index":I
    :cond_1
    goto :goto_0

    .line 282
    .end local v5    # "pos":I
    :cond_2
    return-void
.end method

.method protected allocPositionIndex()I
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/StableVector;->free:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 97
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 98
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/lists/StableVector;->free:I

    if-gez v4, :cond_2

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/StableVector;->positions:[I

    array-length v4, v4

    move v1, v4

    .line 101
    .local v1, "oldLength":I
    const/4 v4, 0x2

    move v5, v1

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    move-object v2, v4

    .line 102
    .local v2, "tmp":[I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/StableVector;->positions:[I

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    const/4 v4, 0x2

    move v5, v1

    mul-int/2addr v4, v5

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    move v5, v1

    if-lt v4, v5, :cond_1

    .line 105
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->free:I

    aput v6, v4, v5

    .line 106
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 108
    :cond_1
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/lists/StableVector;->positions:[I

    .line 110
    .end local v1    # "oldLength":I
    .end local v2    # "tmp":[I
    .end local v3    # "i":I
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/lists/StableVector;->free:I

    move v1, v4

    .line 111
    .local v1, "pos":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->positions:[I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->free:I

    aget v5, v5, v6

    iput v5, v4, Lgnu/lists/StableVector;->free:I

    .line 112
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0
.end method

.method protected chainFreelist()V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/lists/StableVector;->free:I

    .line 42
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    array-length v3, v3

    move v1, v3

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 44
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 45
    .local v2, "pos":I
    move v3, v2

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->free:I

    aput v5, v3, v4

    .line 48
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/lists/StableVector;->free:I

    .line 50
    :cond_0
    goto :goto_0

    .line 51
    .end local v2    # "pos":I
    :cond_1
    return-void
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "iposStart":I
    move v2, p2

    .local v2, "iposEnd":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->positions:[I

    move v6, v1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/StableVector;->positions:[I

    move v7, v2

    aget v6, v6, v7

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 342
    return-void
.end method

.method public copyPos(I)I
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 182
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v3

    move v2, v3

    .line 183
    .local v2, "i":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->positions:[I

    move v6, v1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 184
    move v3, v2

    move v1, v3

    .line 186
    .end local v2    # "i":I
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0
.end method

.method public createPos(IZ)I
    .locals 8

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    move v4, v1

    if-nez v4, :cond_0

    move v4, v2

    if-nez v4, :cond_0

    .line 118
    const/4 v4, 0x0

    move v0, v4

    .line 125
    .end local v0    # "this":Lgnu/lists/StableVector;
    :goto_0
    return v0

    .line 119
    .restart local v0    # "this":Lgnu/lists/StableVector;
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/StableVector;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 120
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 121
    :cond_1
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapStart:I

    if-gt v4, v5, :cond_2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapStart:I

    if-ne v4, v5, :cond_3

    move v4, v2

    if-eqz v4, :cond_3

    .line 122
    :cond_2
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v1, v4

    .line 123
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v4

    move v3, v4

    .line 124
    .local v3, "ipos":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/StableVector;->positions:[I

    move v5, v3

    move v6, v1

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v7, v2

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 125
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 124
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public endPos()I
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "fromPos":I
    move v2, p2

    .local v2, "toPos":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->positions:[I

    move v6, v1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/StableVector;->positions:[I

    move v7, v2

    aget v6, v6, v7

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/StableVector;->fillPosRange(IILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected gapReserve(II)V
    .locals 12

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "needed":I
    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->gapEnd:I

    move v3, v7

    .line 228
    .local v3, "oldGapEnd":I
    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->gapStart:I

    move v4, v7

    .line 229
    .local v4, "oldGapStart":I
    move v7, v2

    move v8, v3

    move v9, v4

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_2

    .line 231
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    move v5, v7

    .line 232
    .local v5, "oldLength":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 233
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    move v6, v7

    .line 234
    .local v6, "newLength":I
    move v7, v1

    move v8, v4

    if-ne v7, v8, :cond_1

    .line 235
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v9, v6

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    move v10, v6

    move v11, v5

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 245
    .line 248
    .end local v5    # "oldLength":I
    .end local v6    # "newLength":I
    :cond_0
    :goto_0
    return-void

    .line 241
    .restart local v5    # "oldLength":I
    .restart local v6    # "newLength":I
    :cond_1
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    move v10, v4

    move v11, v3

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 243
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lgnu/lists/StableVector;->gapStart:I

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v9, v6

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget v10, v10, Lgnu/lists/StableVector;->gapEnd:I

    move-object v11, v0

    iget v11, v11, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/StableVector;->adjustPositions(III)V

    goto :goto_0

    .line 246
    .end local v5    # "oldLength":I
    .end local v6    # "newLength":I
    :cond_2
    move v7, v1

    move-object v8, v0

    iget v8, v8, Lgnu/lists/StableVector;->gapStart:I

    if-eq v7, v8, :cond_0

    .line 247
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Lgnu/lists/StableVector;->shiftGap(I)V

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/StableVector;->positions:[I

    move v5, v1

    aget v4, v4, v5

    move v2, v4

    .line 136
    .local v2, "ppos":I
    move v4, v2

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 137
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapStart:I

    if-lt v4, v5, :cond_0

    .line 138
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v3, v4

    .line 139
    :cond_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v5}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/StableVector;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isAfterPos(I)Z
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/StableVector;->positions:[I

    move v3, v1

    aget v2, v2, v3

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/StableVector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nextIndex(I)I
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v1

    aget v3, v3, v4

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 162
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/StableVector;->gapStart:I

    if-le v3, v4, :cond_0

    .line 163
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/StableVector;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    move v2, v3

    .line 164
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0
.end method

.method public nextPos(I)I
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/StableVector;->positions:[I

    move v5, v1

    aget v4, v4, v5

    move v2, v4

    .line 145
    .local v2, "ppos":I
    move v4, v2

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 146
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapStart:I

    if-lt v4, v5, :cond_0

    .line 147
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/StableVector;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v3, v4

    .line 148
    :cond_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v5}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 150
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/StableVector;->releasePos(I)V

    .line 151
    const/4 v4, 0x0

    move v0, v4

    .line 156
    .end local v0    # "this":Lgnu/lists/StableVector;
    :goto_0
    return v0

    .line 153
    .restart local v0    # "this":Lgnu/lists/StableVector;
    :cond_1
    move v4, v1

    if-nez v4, :cond_2

    .line 154
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result v4

    move v1, v4

    .line 155
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/StableVector;->positions:[I

    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 156
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method public releasePos(I)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 171
    move-object v2, v0

    iget v2, v2, Lgnu/lists/StableVector;->free:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 172
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 173
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/StableVector;->positions:[I

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/StableVector;->free:I

    aput v4, v2, v3

    .line 174
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/StableVector;->free:I

    .line 176
    :cond_1
    return-void
.end method

.method protected removePosRange(II)V
    .locals 13

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "ipos0":I
    move v2, p2

    .local v2, "ipos1":I
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lgnu/lists/StableVector;->positions:[I

    move v11, v1

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lgnu/lists/StableVector;->positions:[I

    move v12, v2

    aget v11, v11, v12

    invoke-super {v9, v10, v11}, Lgnu/lists/GapVector;->removePosRange(II)V

    .line 307
    move-object v9, v0

    iget v9, v9, Lgnu/lists/StableVector;->gapStart:I

    move v3, v9

    .line 308
    .local v3, "low":I
    move-object v9, v0

    iget v9, v9, Lgnu/lists/StableVector;->gapEnd:I

    move v4, v9

    .line 309
    .local v4, "high":I
    move-object v9, v0

    iget v9, v9, Lgnu/lists/StableVector;->free:I

    const/4 v10, -0x1

    if-lt v9, v10, :cond_0

    .line 310
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 311
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/StableVector;->positions:[I

    array-length v9, v9

    move v5, v9

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v9, v5

    if-lez v9, :cond_4

    .line 313
    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/StableVector;->positions:[I

    move v10, v5

    aget v9, v9, v10

    move v6, v9

    .line 314
    .local v6, "pos":I
    move v9, v6

    const/4 v10, -0x2

    if-eq v9, v10, :cond_1

    .line 316
    move v9, v6

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 317
    .local v7, "index":I
    move v9, v6

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 318
    .local v8, "isAfter":Z
    move v9, v8

    if-eqz v9, :cond_3

    .line 320
    move v9, v7

    move v10, v3

    if-lt v9, v10, :cond_1

    move v9, v7

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 321
    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/StableVector;->positions:[I

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lgnu/lists/StableVector;->gapEnd:I

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    or-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 329
    .end local v7    # "index":I
    .end local v8    # "isAfter":Z
    :cond_1
    :goto_2
    goto :goto_0

    .line 317
    .restart local v7    # "index":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 325
    .restart local v8    # "isAfter":Z
    :cond_3
    move v9, v7

    move v10, v3

    if-le v9, v10, :cond_1

    move v9, v7

    move v10, v4

    if-gt v9, v10, :cond_1

    .line 326
    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/StableVector;->positions:[I

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lgnu/lists/StableVector;->gapStart:I

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    goto :goto_2

    .line 330
    .end local v6    # "pos":I
    .end local v7    # "index":I
    .end local v8    # "isAfter":Z
    :cond_4
    return-void
.end method

.method protected shiftGap(I)V
    .locals 11

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move v1, p1

    .local v1, "newGapStart":I
    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->gapStart:I

    move v2, v7

    .line 197
    .local v2, "oldGapStart":I
    move v7, v1

    move v8, v2

    sub-int/2addr v7, v8

    move v3, v7

    .line 199
    .local v3, "delta":I
    move v7, v3

    if-lez v7, :cond_0

    .line 201
    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->gapEnd:I

    move v4, v7

    .line 202
    .local v4, "low":I
    move v7, v4

    move v8, v3

    add-int/2addr v7, v8

    move v5, v7

    .line 203
    .local v5, "high":I
    move v7, v2

    move v8, v4

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 206
    .local v6, "adjust":I
    move v7, v4

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v4, v7

    .line 207
    move v7, v5

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 218
    :goto_0
    move-object v7, v0

    move v8, v1

    invoke-super {v7, v8}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 220
    move-object v7, v0

    move v8, v4

    move v9, v5

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 221
    .end local v4    # "low":I
    .end local v5    # "high":I
    .end local v6    # "adjust":I
    :goto_1
    return-void

    .line 209
    :cond_0
    move v7, v1

    move v8, v2

    if-ne v7, v8, :cond_1

    .line 210
    goto :goto_1

    .line 214
    :cond_1
    move v7, v1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v4, v7

    .line 215
    .restart local v4    # "low":I
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 216
    .restart local v5    # "high":I
    move-object v7, v0

    iget v7, v7, Lgnu/lists/StableVector;->gapEnd:I

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v6, v7

    .restart local v6    # "adjust":I
    goto :goto_0
.end method

.method public startPos()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/StableVector;
    return v0
.end method

.method protected unchainFreelist()V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/lists/StableVector;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/StableVector;->free:I

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_0

    .line 58
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 59
    .local v2, "next":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/StableVector;->positions:[I

    move v4, v1

    const/4 v5, -0x2

    aput v5, v3, v4

    .line 60
    move v3, v2

    move v1, v3

    .line 61
    goto :goto_0

    .line 62
    .end local v2    # "next":I
    :cond_0
    move-object v3, v0

    const/4 v4, -0x2

    iput v4, v3, Lgnu/lists/StableVector;->free:I

    .line 63
    return-void
.end method
