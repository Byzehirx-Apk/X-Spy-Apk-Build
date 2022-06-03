.class public Lgnu/math/BitOps;
.super Ljava/lang/Object;
.source "BitOps.java"


# static fields
.field static final bit4_count:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 489
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/math/BitOps;->bit4_count:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/math/BitOps;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_0

    .line 129
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v5, v1

    and-int/2addr v4, v5

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    .line 137
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move v4, v1

    if-ltz v4, :cond_1

    .line 131
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v5, v1

    and-int/2addr v4, v5

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 132
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v2, v4

    .line 133
    .local v2, "len":I
    move v4, v2

    new-array v4, v4, [I

    move-object v3, v4

    .line 134
    .local v3, "words":[I
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move v7, v1

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 135
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-lez v4, :cond_2

    .line 136
    move-object v4, v3

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move v7, v2

    aget v6, v6, v7

    aput v6, v4, v5

    goto :goto_1

    .line 137
    :cond_2
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 10

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v5, v1

    iget-object v5, v5, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_0

    .line 144
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    invoke-static {v5, v6}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    move-object v0, v5

    .line 158
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 145
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_1

    .line 146
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    invoke-static {v5, v6}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 147
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    move-object v6, v1

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    if-ge v5, v6, :cond_2

    .line 149
    move-object v5, v0

    move-object v2, v5

    .local v2, "temp":Lgnu/math/IntNum;
    move-object v5, v1

    move-object v0, v5

    move-object v5, v2

    move-object v1, v5

    .line 152
    .end local v2    # "temp":Lgnu/math/IntNum;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/IntNum;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    :goto_1
    move v3, v5

    .line 153
    .local v3, "len":I
    move v5, v3

    new-array v5, v5, [I

    move-object v4, v5

    .line 154
    .local v4, "words":[I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_2
    move v5, v2

    move-object v6, v1

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    if-ge v5, v6, :cond_4

    .line 155
    move-object v5, v4

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/math/IntNum;->words:[I

    move v8, v2

    aget v7, v7, v8

    move-object v8, v1

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v2

    aget v8, v8, v9

    and-int/2addr v7, v8

    aput v7, v5, v6

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "words":[I
    :cond_3
    move-object v5, v1

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    .line 156
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "words":[I
    :cond_4
    :goto_3
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_5

    .line 157
    move-object v5, v4

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/math/IntNum;->words:[I

    move v8, v2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    :cond_5
    move-object v5, v4

    move v6, v3

    invoke-static {v5, v6}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static bitCount(I)I
    .locals 6

    .prologue
    .line 494
    move v0, p0

    .local v0, "i":I
    const/4 v2, 0x0

    move v1, v2

    .line 495
    .local v1, "count":I
    :goto_0
    move v2, v0

    if-eqz v2, :cond_0

    .line 497
    move v2, v1

    sget-object v3, Lgnu/math/BitOps;->bit4_count:[B

    move v4, v0

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .line 498
    move v2, v0

    const/4 v3, 0x4

    ushr-int/lit8 v2, v2, 0x4

    move v0, v2

    goto :goto_0

    .line 500
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "i":I
    return v0
.end method

.method public static bitCount(Lgnu/math/IntNum;)I
    .locals 6

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move-object v3, v4

    .line 517
    .local v3, "x_words":[I
    move-object v4, v3

    if-nez v4, :cond_0

    .line 519
    const/4 v4, 0x1

    move v2, v4

    .line 520
    .local v2, "x_len":I
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    invoke-static {v4}, Lgnu/math/BitOps;->bitCount(I)I

    move-result v4

    move v1, v4

    .line 527
    .local v1, "i":I
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/IntNum;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    const/16 v5, 0x20

    mul-int/lit8 v4, v4, 0x20

    move v5, v1

    sub-int/2addr v4, v5

    :goto_1
    move v0, v4

    .end local v0    # "x":Lgnu/math/IntNum;
    return v0

    .line 524
    .end local v1    # "i":I
    .end local v2    # "x_len":I
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v2, v4

    .line 525
    .restart local v2    # "x_len":I
    move-object v4, v3

    move v5, v2

    invoke-static {v4, v5}, Lgnu/math/BitOps;->bitCount([II)I

    move-result v4

    move v1, v4

    .restart local v1    # "i":I
    goto :goto_0

    .line 527
    :cond_1
    move v4, v1

    goto :goto_1
.end method

.method public static bitCount([II)I
    .locals 6

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "x":[I
    move v1, p1

    .local v1, "len":I
    const/4 v3, 0x0

    move v2, v3

    .line 506
    .local v2, "count":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_0

    .line 507
    move v3, v2

    move-object v4, v0

    move v5, v1

    aget v4, v4, v5

    invoke-static {v4}, Lgnu/math/BitOps;->bitCount(I)I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    goto :goto_0

    .line 508
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "x":[I
    return v0
.end method

.method public static bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 9

    .prologue
    .line 192
    move v0, p0

    .local v0, "op":I
    move-object v1, p1

    .local v1, "x":Lgnu/math/IntNum;
    move-object v2, p2

    .local v2, "y":Lgnu/math/IntNum;
    move v4, v0

    sparse-switch v4, :sswitch_data_0

    .line 200
    new-instance v4, Lgnu/math/IntNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lgnu/math/IntNum;-><init>()V

    move-object v3, v4

    .line 201
    .local v3, "result":Lgnu/math/IntNum;
    move-object v4, v3

    move v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Lgnu/math/BitOps;->setBitOp(Lgnu/math/IntNum;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    .line 202
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op":I
    .end local v3    # "result":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 194
    .restart local v0    # "op":I
    :sswitch_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 195
    :sswitch_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 196
    :sswitch_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 197
    :sswitch_3
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 198
    :sswitch_4
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method public static bitValue(Lgnu/math/IntNum;I)Z
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "bitno":I
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v2, v4

    .line 20
    .local v2, "i":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_3

    .line 22
    move v4, v1

    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    move v4, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 27
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_1
    return v0

    .line 22
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, v2

    move v5, v1

    shr-int/2addr v4, v5

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 26
    :cond_3
    move v4, v1

    const/4 v5, 0x5

    shr-int/lit8 v4, v4, 0x5

    move v3, v4

    .line 27
    .local v3, "wordno":I
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move v5, v3

    aget v4, v4, v5

    move v5, v1

    shr-int/2addr v4, v5

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static dataBufferFor(Lgnu/math/IntNum;I)[I
    .locals 10

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "bitno":I
    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    move v2, v6

    .line 39
    .local v2, "i":I
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    shr-int/lit8 v6, v6, 0x5

    move v4, v6

    .line 40
    .local v4, "nwords":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_2

    .line 42
    move v6, v4

    if-nez v6, :cond_0

    .line 43
    const/4 v6, 0x1

    move v4, v6

    .line 44
    :cond_0
    move v6, v4

    new-array v6, v6, [I

    move-object v3, v6

    .line 45
    .local v3, "data":[I
    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    aput v8, v6, v7

    .line 46
    move v6, v2

    if-gez v6, :cond_1

    .line 48
    const/4 v6, 0x1

    move v5, v6

    .local v5, "j":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 49
    move-object v6, v3

    move v7, v5

    const/4 v8, -0x1

    aput v8, v6, v7

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 64
    .end local v5    # "j":I
    :cond_1
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0

    .line 54
    .end local v3    # "data":[I
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_2
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    shr-int/lit8 v6, v6, 0x5

    move v4, v6

    .line 55
    move v6, v4

    move v7, v2

    if-le v6, v7, :cond_3

    move v6, v4

    :goto_1
    new-array v6, v6, [I

    move-object v3, v6

    .line 56
    .restart local v3    # "data":[I
    move v6, v2

    move v5, v6

    .restart local v5    # "j":I
    :goto_2
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_4

    .line 57
    move-object v6, v3

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v5

    aget v8, v8, v9

    aput v8, v6, v7

    goto :goto_2

    .line 55
    .end local v3    # "data":[I
    .end local v5    # "j":I
    :cond_3
    move v6, v2

    goto :goto_1

    .line 58
    .restart local v3    # "data":[I
    .restart local v5    # "j":I
    :cond_4
    move-object v6, v3

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-gez v6, :cond_1

    .line 60
    move v6, v2

    move v5, v6

    :goto_3
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 61
    move-object v6, v3

    move v7, v5

    const/4 v8, -0x1

    aput v8, v6, v7

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static extract(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .locals 18

    .prologue
    .line 396
    move-object/from16 v1, p0

    .local v1, "x":Lgnu/math/IntNum;
    move/from16 v2, p1

    .local v2, "startBit":I
    move/from16 v3, p2

    .local v3, "endBit":I
    move v10, v3

    const/16 v11, 0x20

    if-ge v10, v11, :cond_1

    .line 398
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_0

    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    :goto_0
    move v4, v10

    .line 399
    .local v4, "word0":I
    move v10, v4

    const/4 v11, -0x1

    move v12, v3

    shl-int/2addr v11, v12

    const/4 v12, -0x1

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    move v11, v2

    shr-int/2addr v10, v11

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    .line 445
    .end local v1    # "x":Lgnu/math/IntNum;
    .end local v4    # "word0":I
    :goto_1
    return-object v1

    .line 398
    .restart local v1    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    goto :goto_0

    .line 402
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_4

    .line 404
    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    if-ltz v10, :cond_3

    .line 405
    move v10, v2

    const/16 v11, 0x1f

    if-lt v10, v11, :cond_2

    const/4 v10, 0x0

    :goto_2
    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    goto :goto_1

    :cond_2
    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    move v11, v2

    shr-int/2addr v10, v11

    goto :goto_2

    .line 406
    :cond_3
    const/4 v10, 0x1

    move v4, v10

    .line 410
    .local v4, "x_len":I
    :goto_3
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/IntNum;->isNegative()Z

    move-result v10

    move v5, v10

    .line 411
    .local v5, "neg":Z
    move v10, v3

    const/16 v11, 0x20

    move v12, v4

    mul-int/2addr v11, v12

    if-le v10, v11, :cond_5

    .line 413
    const/16 v10, 0x20

    move v11, v4

    mul-int/2addr v10, v11

    move v3, v10

    .line 414
    move v10, v5

    if-nez v10, :cond_6

    move v10, v2

    if-nez v10, :cond_6

    .line 415
    move-object v10, v1

    move-object v1, v10

    goto :goto_1

    .line 409
    .end local v4    # "x_len":I
    .end local v5    # "neg":Z
    :cond_4
    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    move v4, v10

    .restart local v4    # "x_len":I
    goto :goto_3

    .line 418
    .restart local v5    # "neg":Z
    :cond_5
    move v10, v3

    const/16 v11, 0x1f

    add-int/lit8 v10, v10, 0x1f

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v4, v10

    .line 419
    :cond_6
    move v10, v3

    move v11, v2

    sub-int/2addr v10, v11

    move v6, v10

    .line 420
    .local v6, "length":I
    move v10, v6

    const/16 v11, 0x40

    if-ge v10, v11, :cond_9

    .line 423
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_8

    .line 424
    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    move v11, v2

    const/16 v12, 0x20

    if-lt v11, v12, :cond_7

    const/16 v11, 0x1f

    :goto_4
    shr-int/2addr v10, v11

    int-to-long v10, v10

    move-wide v7, v10

    .line 427
    .local v7, "l":J
    :goto_5
    move-wide v10, v7

    const-wide/16 v12, -0x1

    move v14, v6

    shl-long/2addr v12, v14

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    goto :goto_1

    .line 424
    .end local v7    # "l":J
    :cond_7
    move v11, v2

    goto :goto_4

    .line 426
    :cond_8
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v4

    move v12, v2

    invoke-static {v10, v11, v12}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide v10

    move-wide v7, v10

    .restart local v7    # "l":J
    goto :goto_5

    .line 429
    .end local v7    # "l":J
    :cond_9
    move v10, v2

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v7, v10

    .line 433
    .local v7, "startWord":I
    move v10, v3

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    .line 434
    .local v8, "buf_len":I
    move v10, v8

    new-array v10, v10, [I

    move-object v9, v10

    .line 435
    .local v9, "buf":[I
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_b

    .line 436
    move-object v10, v9

    const/4 v11, 0x0

    move v12, v2

    const/16 v13, 0x20

    if-lt v12, v13, :cond_a

    const/4 v12, -0x1

    :goto_6
    aput v12, v10, v11

    .line 443
    :goto_7
    move v10, v6

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v4, v10

    .line 444
    move-object v10, v9

    move v11, v4

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    const/4 v13, -0x1

    move v14, v6

    shl-int/2addr v13, v14

    const/4 v14, -0x1

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    aput v12, v10, v11

    .line 445
    move-object v10, v9

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    goto/16 :goto_1

    .line 436
    :cond_a
    move-object v12, v1

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    move v13, v2

    shr-int/2addr v12, v13

    goto :goto_6

    .line 439
    :cond_b
    move v10, v4

    move v11, v7

    sub-int/2addr v10, v11

    move v4, v10

    .line 440
    move v10, v2

    const/16 v11, 0x1f

    and-int/lit8 v10, v10, 0x1f

    move v2, v10

    .line 441
    move-object v10, v9

    move-object v11, v1

    iget-object v11, v11, Lgnu/math/IntNum;->words:[I

    move v12, v7

    move v13, v4

    move v14, v2

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->rshift0([I[IIII)V

    goto :goto_7
.end method

.method public static ior(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    const/4 v2, 0x7

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static lowestBitSet(I)I
    .locals 4

    .prologue
    .line 450
    move v0, p0

    .local v0, "i":I
    move v2, v0

    if-nez v2, :cond_0

    .line 451
    const/4 v2, -0x1

    move v0, v2

    .line 465
    .end local v0    # "i":I
    .local v1, "index":I
    :goto_0
    return v0

    .line 452
    .end local v1    # "index":I
    .restart local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 453
    .restart local v1    # "index":I
    :goto_1
    move v2, v0

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    .line 455
    move v2, v0

    const/16 v3, 0x8

    ushr-int/lit8 v2, v2, 0x8

    move v0, v2

    .line 456
    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 458
    :cond_1
    :goto_2
    move v2, v0

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_2

    .line 460
    move v2, v0

    const/4 v3, 0x2

    ushr-int/lit8 v2, v2, 0x2

    move v0, v2

    .line 461
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 463
    :cond_2
    move v2, v0

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 464
    add-int/lit8 v1, v1, 0x1

    .line 465
    :cond_3
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public static lowestBitSet(Lgnu/math/IntNum;)I
    .locals 7

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v5, v0

    iget-object v5, v5, Lgnu/math/IntNum;->words:[I

    move-object v1, v5

    .line 471
    .local v1, "x_words":[I
    move-object v5, v1

    if-nez v5, :cond_0

    .line 473
    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    invoke-static {v5}, Lgnu/math/BitOps;->lowestBitSet(I)I

    move-result v5

    move v0, v5

    .line 484
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return v0

    .line 477
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    move v2, v5

    .line 478
    .local v2, "x_len":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 480
    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    invoke-static {v5}, Lgnu/math/BitOps;->lowestBitSet(I)I

    move-result v5

    move v4, v5

    .line 481
    .local v4, "b":I
    move v5, v4

    if-ltz v5, :cond_1

    .line 482
    const/16 v5, 0x20

    move v6, v3

    mul-int/2addr v5, v6

    move v6, v4

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 483
    :cond_1
    goto :goto_1

    .line 484
    .end local v4    # "b":I
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method public static not(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    const/16 v1, 0xc

    move-object v2, v0

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static reverseBits(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .locals 21

    .prologue
    .line 532
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move-object v14, v0

    iget v14, v14, Lgnu/math/IntNum;->ival:I

    move v3, v14

    .line 533
    .local v3, "ival":I
    move-object v14, v0

    iget-object v14, v14, Lgnu/math/IntNum;->words:[I

    move-object v4, v14

    .line 534
    .local v4, "xwords":[I
    move-object v14, v4

    if-nez v14, :cond_1

    .line 536
    move v14, v2

    const/16 v15, 0x3f

    if-ge v14, v15, :cond_1

    .line 538
    move v14, v3

    int-to-long v14, v14

    move-wide v5, v14

    .line 539
    .local v5, "w":J
    move v14, v1

    move v7, v14

    .line 540
    .local v7, "i":I
    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v8, v14

    .line 541
    .local v8, "j":I
    :goto_0
    move v14, v7

    move v15, v8

    if-ge v14, v15, :cond_0

    .line 543
    move-wide v14, v5

    move/from16 v16, v7

    shr-long v14, v14, v16

    const-wide/16 v16, 0x1

    and-long v14, v14, v16

    move-wide v9, v14

    .line 544
    .local v9, "biti":J
    move-wide v14, v5

    move/from16 v16, v8

    shr-long v14, v14, v16

    const-wide/16 v16, 0x1

    and-long v14, v14, v16

    move-wide v11, v14

    .line 545
    .local v11, "bitj":J
    move-wide v14, v5

    const-wide/16 v16, 0x1

    move/from16 v18, v7

    shl-long v16, v16, v18

    const-wide/16 v18, 0x1

    move/from16 v20, v8

    shl-long v18, v18, v20

    or-long v16, v16, v18

    const-wide/16 v18, -0x1

    xor-long v16, v16, v18

    and-long v14, v14, v16

    move-wide v5, v14

    .line 546
    move-wide v14, v5

    move-wide/from16 v16, v9

    move/from16 v18, v8

    shl-long v16, v16, v18

    or-long v14, v14, v16

    move-wide/from16 v16, v11

    move/from16 v18, v7

    shl-long v16, v16, v18

    or-long v14, v14, v16

    move-wide v5, v14

    .line 547
    add-int/lit8 v7, v7, 0x1

    .line 548
    add-int/lit8 v8, v8, -0x1

    .line 549
    goto :goto_0

    .line 550
    .end local v9    # "biti":J
    .end local v11    # "bitj":J
    :cond_0
    move-wide v14, v5

    invoke-static {v14, v15}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v14

    move-object v0, v14

    .line 582
    .end local v0    # "x":Lgnu/math/IntNum;
    .end local v5    # "w":J
    .end local v7    # "i":I
    .end local v8    # "j":I
    :goto_1
    return-object v0

    .line 553
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_1
    move-object v14, v0

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v14, v15}, Lgnu/math/BitOps;->dataBufferFor(Lgnu/math/IntNum;I)[I

    move-result-object v14

    move-object v5, v14

    .line 554
    .local v5, "data":[I
    move v14, v1

    move v6, v14

    .line 555
    .local v6, "i":I
    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v7, v14

    .line 556
    .local v7, "j":I
    :goto_2
    move v14, v6

    move v15, v7

    if-ge v14, v15, :cond_3

    .line 558
    move v14, v6

    const/4 v15, 0x5

    shr-int/lit8 v14, v14, 0x5

    move v8, v14

    .line 559
    .local v8, "ii":I
    move v14, v7

    const/4 v15, 0x5

    shr-int/lit8 v14, v14, 0x5

    move v9, v14

    .line 560
    .local v9, "jj":I
    move-object v14, v5

    move v15, v8

    aget v14, v14, v15

    move v10, v14

    .line 561
    .local v10, "wi":I
    move v14, v10

    move v15, v6

    shr-int/2addr v14, v15

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    move v11, v14

    .line 562
    .local v11, "biti":I
    move v14, v8

    move v15, v9

    if-ne v14, v15, :cond_2

    .line 564
    move v14, v10

    move v15, v7

    shr-int/2addr v14, v15

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    move v12, v14

    .line 565
    .local v12, "bitj":I
    move v14, v10

    int-to-long v14, v14

    const-wide/16 v16, 0x1

    move/from16 v18, v6

    shl-long v16, v16, v18

    const-wide/16 v18, 0x1

    move/from16 v20, v7

    shl-long v18, v18, v20

    or-long v16, v16, v18

    const-wide/16 v18, -0x1

    xor-long v16, v16, v18

    and-long v14, v14, v16

    long-to-int v14, v14

    move v10, v14

    .line 566
    move v14, v10

    move v15, v11

    move/from16 v16, v7

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v15, v12

    move/from16 v16, v6

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v10, v14

    .line 578
    .end local v12    # "bitj":I
    :goto_3
    move-object v14, v5

    move v15, v8

    move/from16 v16, v10

    aput v16, v14, v15

    .line 579
    add-int/lit8 v6, v6, 0x1

    .line 580
    add-int/lit8 v7, v7, -0x1

    .line 581
    goto :goto_2

    .line 570
    :cond_2
    move-object v14, v5

    move v15, v9

    aget v14, v14, v15

    move v12, v14

    .line 571
    .local v12, "wj":I
    move v14, v12

    move v15, v7

    const/16 v16, 0x1f

    and-int/lit8 v15, v15, 0x1f

    shr-int/2addr v14, v15

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    move v13, v14

    .line 572
    .local v13, "bitj":I
    move v14, v10

    const/4 v15, 0x1

    move/from16 v16, v6

    const/16 v17, 0x1f

    and-int/lit8 v16, v16, 0x1f

    shl-int v15, v15, v16

    const/16 v16, -0x1

    xor-int/lit8 v15, v15, -0x1

    and-int/2addr v14, v15

    move v10, v14

    .line 573
    move v14, v12

    const/4 v15, 0x1

    move/from16 v16, v7

    const/16 v17, 0x1f

    and-int/lit8 v16, v16, 0x1f

    shl-int v15, v15, v16

    const/16 v16, -0x1

    xor-int/lit8 v15, v15, -0x1

    and-int/2addr v14, v15

    move v12, v14

    .line 574
    move v14, v10

    move v15, v13

    move/from16 v16, v6

    const/16 v17, 0x1f

    and-int/lit8 v16, v16, 0x1f

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v10, v14

    .line 575
    move v14, v12

    move v15, v11

    move/from16 v16, v7

    const/16 v17, 0x1f

    and-int/lit8 v16, v16, 0x1f

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v12, v14

    .line 576
    move-object v14, v5

    move v15, v9

    move/from16 v16, v12

    aput v16, v14, v15

    goto :goto_3

    .line 582
    .end local v8    # "ii":I
    .end local v9    # "jj":I
    .end local v10    # "wi":I
    .end local v11    # "biti":I
    .end local v12    # "wj":I
    .end local v13    # "bitj":I
    :cond_3
    move-object v14, v5

    move-object v15, v5

    array-length v15, v15

    invoke-static {v14, v15}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v14

    move-object v0, v14

    goto/16 :goto_1
.end method

.method public static setBitOp(Lgnu/math/IntNum;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 16

    .prologue
    .line 208
    move-object/from16 v0, p0

    .local v0, "result":Lgnu/math/IntNum;
    move/from16 v1, p1

    .local v1, "op":I
    move-object/from16 v2, p2

    .local v2, "x":Lgnu/math/IntNum;
    move-object/from16 v3, p3

    .local v3, "y":Lgnu/math/IntNum;
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    if-nez v12, :cond_5

    .line 217
    :cond_0
    :goto_0
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    if-nez v12, :cond_7

    .line 219
    move-object v12, v3

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    move v5, v12

    .line 220
    .local v5, "yi":I
    const/4 v12, 0x1

    move v7, v12

    .line 227
    .local v7, "ylen":I
    :goto_1
    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    if-nez v12, :cond_8

    .line 229
    move-object v12, v2

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    move v4, v12

    .line 230
    .local v4, "xi":I
    const/4 v12, 0x1

    move v6, v12

    .line 237
    .local v6, "xlen":I
    :goto_2
    move v12, v6

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    .line 238
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Lgnu/math/IntNum;->realloc(I)V

    .line 239
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move-object v8, v12

    .line 240
    .local v8, "w":[I
    const/4 v12, 0x0

    move v9, v12

    .line 245
    .local v9, "i":I
    const/4 v12, 0x0

    move v10, v12

    .line 247
    .local v10, "finish":I
    move v12, v1

    packed-switch v12, :pswitch_data_0

    .line 368
    const/4 v12, -0x1

    move v11, v12

    .line 373
    .local v11, "ni":I
    :cond_2
    :goto_3
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v6

    if-ne v12, v13, :cond_3

    .line 374
    const/4 v12, 0x0

    move v10, v12

    .line 375
    :cond_3
    move v12, v10

    packed-switch v12, :pswitch_data_1

    .line 388
    :cond_4
    :goto_4
    move-object v12, v0

    move v13, v9

    iput v13, v12, Lgnu/math/IntNum;->ival:I

    .line 389
    :goto_5
    return-void

    .line 209
    .end local v4    # "xi":I
    .end local v5    # "yi":I
    .end local v6    # "xlen":I
    .end local v7    # "ylen":I
    .end local v8    # "w":[I
    .end local v9    # "i":I
    .end local v10    # "finish":I
    .end local v11    # "ni":I
    :cond_5
    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    if-eqz v12, :cond_6

    move-object v12, v2

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    move-object v13, v3

    iget v13, v13, Lgnu/math/IntNum;->ival:I

    if-ge v12, v13, :cond_0

    .line 211
    :cond_6
    move-object v12, v2

    move-object v4, v12

    .local v4, "temp":Lgnu/math/IntNum;
    move-object v12, v3

    move-object v2, v12

    move-object v12, v4

    move-object v3, v12

    .line 212
    move v12, v1

    invoke-static {v12}, Lgnu/math/BitOps;->swappedOp(I)I

    move-result v12

    move v1, v12

    goto :goto_0

    .line 224
    .end local v4    # "temp":Lgnu/math/IntNum;
    :cond_7
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move v5, v12

    .line 225
    .restart local v5    # "yi":I
    move-object v12, v3

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    move v7, v12

    .restart local v7    # "ylen":I
    goto :goto_1

    .line 234
    :cond_8
    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move v4, v12

    .line 235
    .local v4, "xi":I
    move-object v12, v2

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    move v6, v12

    .restart local v6    # "xlen":I
    goto :goto_2

    .line 250
    .restart local v8    # "w":[I
    .restart local v9    # "i":I
    .restart local v10    # "finish":I
    :pswitch_0
    const/4 v12, 0x0

    move v11, v12

    .line 251
    .restart local v11    # "ni":I
    goto :goto_3

    .line 257
    :cond_9
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 255
    .end local v11    # "ni":I
    :pswitch_1
    move v12, v4

    move v13, v5

    and-int/2addr v12, v13

    move v11, v12

    .line 256
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_9

    .line 259
    move v12, v5

    if-gez v12, :cond_2

    const/4 v12, 0x1

    move v10, v12

    goto :goto_3

    .line 266
    :cond_a
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 264
    .end local v11    # "ni":I
    :pswitch_2
    move v12, v4

    move v13, v5

    const/4 v14, -0x1

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    move v11, v12

    .line 265
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_a

    .line 268
    move v12, v5

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    move v10, v12

    goto/16 :goto_3

    .line 271
    .end local v11    # "ni":I
    :pswitch_3
    move v12, v4

    move v11, v12

    .line 272
    .restart local v11    # "ni":I
    const/4 v12, 0x1

    move v10, v12

    .line 273
    goto/16 :goto_3

    .line 279
    :cond_b
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 277
    .end local v11    # "ni":I
    :pswitch_4
    move v12, v4

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v13, v5

    and-int/2addr v12, v13

    move v11, v12

    .line 278
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_b

    .line 281
    move v12, v5

    if-gez v12, :cond_2

    const/4 v12, 0x2

    move v10, v12

    goto/16 :goto_3

    .line 288
    :cond_c
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 286
    .end local v11    # "ni":I
    :pswitch_5
    move v12, v5

    move v11, v12

    .line 287
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_c

    goto/16 :goto_3

    .line 296
    :cond_d
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 294
    .end local v11    # "ni":I
    :pswitch_6
    move v12, v4

    move v13, v5

    xor-int/2addr v12, v13

    move v11, v12

    .line 295
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_d

    .line 298
    move v12, v5

    if-gez v12, :cond_e

    const/4 v12, 0x2

    :goto_6
    move v10, v12

    .line 299
    goto/16 :goto_3

    .line 298
    :cond_e
    const/4 v12, 0x1

    goto :goto_6

    .line 305
    :cond_f
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 303
    .end local v11    # "ni":I
    :pswitch_7
    move v12, v4

    move v13, v5

    or-int/2addr v12, v13

    move v11, v12

    .line 304
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_f

    .line 307
    move v12, v5

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    move v10, v12

    goto/16 :goto_3

    .line 314
    :cond_10
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 312
    .end local v11    # "ni":I
    :pswitch_8
    move v12, v4

    move v13, v5

    or-int/2addr v12, v13

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 313
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_10

    .line 316
    move v12, v5

    if-ltz v12, :cond_2

    const/4 v12, 0x2

    move v10, v12

    goto/16 :goto_3

    .line 323
    :cond_11
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 321
    .end local v11    # "ni":I
    :pswitch_9
    move v12, v4

    move v13, v5

    xor-int/2addr v12, v13

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 322
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_11

    .line 325
    move v12, v5

    if-ltz v12, :cond_12

    const/4 v12, 0x2

    :goto_7
    move v10, v12

    .line 326
    goto/16 :goto_3

    .line 325
    :cond_12
    const/4 v12, 0x1

    goto :goto_7

    .line 332
    :cond_13
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 330
    .end local v11    # "ni":I
    :pswitch_a
    move v12, v5

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 331
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_13

    goto/16 :goto_3

    .line 340
    :cond_14
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 338
    .end local v11    # "ni":I
    :pswitch_b
    move v12, v4

    move v13, v5

    const/4 v14, -0x1

    xor-int/lit8 v13, v13, -0x1

    or-int/2addr v12, v13

    move v11, v12

    .line 339
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_14

    .line 342
    move v12, v5

    if-gez v12, :cond_2

    const/4 v12, 0x1

    move v10, v12

    goto/16 :goto_3

    .line 345
    .end local v11    # "ni":I
    :pswitch_c
    move v12, v4

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 346
    .restart local v11    # "ni":I
    const/4 v12, 0x2

    move v10, v12

    .line 347
    goto/16 :goto_3

    .line 353
    :cond_15
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 351
    .end local v11    # "ni":I
    :pswitch_d
    move v12, v4

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v13, v5

    or-int/2addr v12, v13

    move v11, v12

    .line 352
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_15

    .line 355
    move v12, v5

    if-ltz v12, :cond_2

    const/4 v12, 0x2

    move v10, v12

    goto/16 :goto_3

    .line 362
    :cond_16
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    move-object v12, v2

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v4, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v9

    aget v12, v12, v13

    move v5, v12

    .line 360
    .end local v11    # "ni":I
    :pswitch_e
    move v12, v4

    move v13, v5

    and-int/2addr v12, v13

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 361
    .restart local v11    # "ni":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    if-lt v12, v13, :cond_16

    .line 364
    move v12, v5

    if-gez v12, :cond_2

    const/4 v12, 0x2

    move v10, v12

    goto/16 :goto_3

    .line 378
    :pswitch_f
    move v12, v9

    if-nez v12, :cond_17

    move-object v12, v8

    if-nez v12, :cond_17

    .line 380
    move-object v12, v0

    move v13, v11

    iput v13, v12, Lgnu/math/IntNum;->ival:I

    .line 381
    goto/16 :goto_5

    .line 383
    :cond_17
    move-object v12, v8

    move v13, v9

    add-int/lit8 v9, v9, 0x1

    move v14, v11

    aput v14, v12, v13

    .line 384
    goto/16 :goto_4

    .line 385
    :pswitch_10
    move-object v12, v8

    move v13, v9

    move v14, v11

    aput v14, v12, v13

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move v12, v9

    move v13, v6

    if-ge v12, v13, :cond_4

    move-object v12, v8

    move v13, v9

    move-object v14, v2

    iget-object v14, v14, Lgnu/math/IntNum;->words:[I

    move v15, v9

    aget v14, v14, v15

    aput v14, v12, v13

    goto :goto_8

    .line 386
    :pswitch_11
    move-object v12, v8

    move v13, v9

    move v14, v11

    aput v14, v12, v13

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move v12, v9

    move v13, v6

    if-ge v12, v13, :cond_4

    move-object v12, v8

    move v13, v9

    move-object v14, v2

    iget-object v14, v14, Lgnu/math/IntNum;->words:[I

    move v15, v9

    aget v14, v14, v15

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    aput v14, v12, v13

    goto :goto_9

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static setBitValue(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .locals 16

    .prologue
    .line 70
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move/from16 v1, p1

    .local v1, "bitno":I
    move/from16 v2, p2

    .local v2, "newValue":I
    move v8, v2

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v2, v8

    .line 71
    move-object v8, v0

    iget v8, v8, Lgnu/math/IntNum;->ival:I

    move v3, v8

    .line 74
    .local v3, "i":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_3

    .line 76
    move v8, v3

    move v9, v1

    const/16 v10, 0x1f

    if-ge v9, v10, :cond_0

    move v9, v1

    :goto_0
    shr-int/2addr v8, v9

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v6, v8

    .line 77
    .local v6, "oldValue":I
    move v8, v6

    move v9, v2

    if-ne v8, v9, :cond_1

    .line 78
    move-object v8, v0

    move-object v0, v8

    .line 95
    .end local v0    # "x":Lgnu/math/IntNum;
    .end local v6    # "oldValue":I
    :goto_1
    return-object v0

    .line 76
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    const/16 v9, 0x1f

    goto :goto_0

    .line 79
    .restart local v6    # "oldValue":I
    :cond_1
    move v8, v1

    const/16 v9, 0x3f

    if-ge v8, v9, :cond_2

    .line 80
    move v8, v3

    int-to-long v8, v8

    const/4 v10, 0x1

    move v11, v1

    shl-int/2addr v10, v11

    int-to-long v10, v10

    xor-long/2addr v8, v10

    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 81
    .line 93
    .end local v6    # "oldValue":I
    :cond_2
    move-object v8, v0

    move v9, v1

    invoke-static {v8, v9}, Lgnu/math/BitOps;->dataBufferFor(Lgnu/math/IntNum;I)[I

    move-result-object v8

    move-object v4, v8

    .line 94
    .local v4, "data":[I
    move-object v8, v4

    move v9, v1

    const/4 v10, 0x5

    shr-int/lit8 v9, v9, 0x5

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    const/4 v11, 0x1

    move v12, v1

    const/16 v13, 0x1f

    and-int/lit8 v12, v12, 0x1f

    shl-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v8, v9

    .line 95
    move-object v8, v4

    move-object v9, v4

    array-length v9, v9

    invoke-static {v8, v9}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 84
    .end local v4    # "data":[I
    :cond_3
    move v8, v1

    const/4 v9, 0x5

    shr-int/lit8 v8, v8, 0x5

    move v6, v8

    .line 86
    .local v6, "wordno":I
    move v8, v6

    move v9, v3

    if-lt v8, v9, :cond_5

    .line 87
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gez v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    move v7, v8

    .line 90
    .local v7, "oldValue":I
    :goto_3
    move v8, v7

    move v9, v2

    if-ne v8, v9, :cond_2

    .line 91
    move-object v8, v0

    move-object v0, v8

    goto :goto_1

    .line 87
    .end local v7    # "oldValue":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 89
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v6

    aget v8, v8, v9

    move v9, v1

    shr-int/2addr v8, v9

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v7, v8

    .restart local v7    # "oldValue":I
    goto :goto_3
.end method

.method public static swappedOp(I)I
    .locals 3

    .prologue
    .line 184
    move v0, p0

    .local v0, "op":I
    const-string/jumbo v1, "\u0000\u0001\u0004\u0005\u0002\u0003\u0006\u0007\u0008\t\u000c\r\n\u000b\u000e\u000f"

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    .end local v0    # "op":I
    return v0
.end method

.method public static test(Lgnu/math/IntNum;I)Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_1

    .line 102
    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 103
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_1
    return v0

    .line 102
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    :cond_1
    move v2, v1

    if-ltz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static test(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v3, v1

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_0

    .line 110
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    invoke-static {v3, v4}, Lgnu/math/BitOps;->test(Lgnu/math/IntNum;I)Z

    move-result v3

    move v0, v3

    .line 122
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return v0

    .line 111
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_1

    .line 112
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    invoke-static {v3, v4}, Lgnu/math/BitOps;->test(Lgnu/math/IntNum;I)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 113
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    if-ge v3, v4, :cond_2

    .line 115
    move-object v3, v0

    move-object v2, v3

    .local v2, "temp":Lgnu/math/IntNum;
    move-object v3, v1

    move-object v0, v3

    move-object v3, v2

    move-object v1, v3

    .line 117
    .end local v2    # "temp":Lgnu/math/IntNum;
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    if-ge v3, v4, :cond_4

    .line 119
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    move v4, v2

    aget v3, v3, v4

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move v5, v2

    aget v4, v4, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 120
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 117
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static xor(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    const/4 v2, 0x6

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method
