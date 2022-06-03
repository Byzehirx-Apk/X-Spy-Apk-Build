.class public Lgnu/math/IntNum;
.super Lgnu/math/RatNum;
.source "IntNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final maxFixNum:I = 0x400

.field static final minFixNum:I = -0x64

.field static final numFixNum:I = 0x465

.field static final smallFixNums:[Lgnu/math/IntNum;


# instance fields
.field public ival:I

.field public words:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 27
    const/16 v1, 0x465

    new-array v1, v1, [Lgnu/math/IntNum;

    sput-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    .line 30
    const/16 v1, 0x465

    move v0, v1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    if-ltz v1, :cond_0

    .line 31
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    move v2, v0

    new-instance v3, Lgnu/math/IntNum;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    const/16 v6, -0x64

    add-int/lit8 v5, v5, -0x64

    invoke-direct {v4, v5}, Lgnu/math/IntNum;-><init>(I)V

    aput-object v3, v1, v2

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/RatNum;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/math/RatNum;-><init>()V

    .line 42
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/math/IntNum;->ival:I

    .line 43
    return-void
.end method

.method public static abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 1611
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0

    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static final add(II)Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 326
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move v2, v0

    int-to-long v2, v2

    move v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":I
    return-object v0
.end method

.method public static add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 7

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_0

    .line 333
    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    move v4, v1

    invoke-static {v3, v4}, Lgnu/math/IntNum;->add(II)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .line 336
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 334
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    new-instance v3, Lgnu/math/IntNum;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lgnu/math/IntNum;-><init>(I)V

    move-object v2, v3

    .line 335
    .local v2, "result":Lgnu/math/IntNum;
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 336
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 16

    .prologue
    .line 430
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object/from16 v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move/from16 v2, p2

    .local v2, "k":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_0

    .line 431
    move v10, v2

    int-to-long v10, v10

    move-object v12, v1

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    int-to-long v12, v12

    mul-long/2addr v10, v12

    move-object v12, v0

    iget v12, v12, Lgnu/math/IntNum;->ival:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    .line 463
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 432
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move v10, v2

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 434
    move v10, v2

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 435
    move-object v10, v1

    invoke-static {v10}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    .line 439
    :cond_1
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_3

    .line 440
    move-object v10, v1

    move-object v11, v0

    iget v11, v11, Lgnu/math/IntNum;->ival:I

    invoke-static {v10, v11}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 437
    :cond_2
    move-object v10, v1

    move v11, v2

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    goto :goto_1

    .line 441
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_4

    .line 442
    move-object v10, v0

    move-object v11, v1

    iget v11, v11, Lgnu/math/IntNum;->ival:I

    invoke-static {v10, v11}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 445
    :cond_4
    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    move-object v11, v0

    iget v11, v11, Lgnu/math/IntNum;->ival:I

    if-le v10, v11, :cond_5

    .line 447
    move-object v10, v0

    move-object v4, v10

    .local v4, "tmp":Lgnu/math/IntNum;
    move-object v10, v1

    move-object v0, v10

    move-object v10, v4

    move-object v1, v10

    .line 449
    .end local v4    # "tmp":Lgnu/math/IntNum;
    :cond_5
    move-object v10, v0

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v4, v10

    .line 450
    .local v4, "result":Lgnu/math/IntNum;
    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    move v5, v10

    .line 451
    .local v5, "i":I
    move-object v10, v4

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move-object v11, v0

    iget-object v11, v11, Lgnu/math/IntNum;->words:[I

    move-object v12, v1

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v5

    invoke-static {v10, v11, v12, v13}, Lgnu/math/MPN;->add_n([I[I[II)I

    move-result v10

    int-to-long v10, v10

    move-wide v6, v10

    .line 452
    .local v6, "carry":J
    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-gez v10, :cond_6

    const-wide v10, 0xffffffffL

    :goto_2
    move-wide v8, v10

    .line 453
    .local v8, "y_ext":J
    :goto_3
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lgnu/math/IntNum;->ival:I

    if-ge v10, v11, :cond_7

    .line 455
    move-wide v10, v6

    move-object v12, v0

    iget-object v12, v12, Lgnu/math/IntNum;->words:[I

    move v13, v5

    aget v12, v12, v13

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-wide v14, v8

    add-long/2addr v12, v14

    add-long/2addr v10, v12

    move-wide v6, v10

    .line 456
    move-object v10, v4

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v5

    move-wide v12, v6

    long-to-int v12, v12

    aput v12, v10, v11

    .line 457
    move-wide v10, v6

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    move-wide v6, v10

    .line 453
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 452
    .end local v8    # "y_ext":J
    :cond_6
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 459
    .restart local v8    # "y_ext":J
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-gez v10, :cond_8

    .line 460
    move-wide v10, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 461
    :cond_8
    move-object v10, v4

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v5

    move-wide v12, v6

    move-wide v14, v8

    add-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v10, v11

    .line 462
    move-object v10, v4

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lgnu/math/IntNum;->ival:I

    .line 463
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0
.end method

.method public static alloc(I)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 141
    move v0, p0

    .local v0, "nwords":I
    move v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 142
    new-instance v2, Lgnu/math/IntNum;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/math/IntNum;-><init>()V

    move-object v0, v2

    .line 145
    .end local v0    # "nwords":I
    .local v1, "result":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 143
    .end local v1    # "result":Lgnu/math/IntNum;
    .restart local v0    # "nwords":I
    :cond_0
    new-instance v2, Lgnu/math/IntNum;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/math/IntNum;-><init>()V

    move-object v1, v2

    .line 144
    .restart local v1    # "result":Lgnu/math/IntNum;
    move-object v2, v1

    move v3, v0

    new-array v3, v3, [I

    iput-object v3, v2, Lgnu/math/IntNum;->words:[I

    .line 145
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public static asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 4

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v1

    check-cast v2, Lgnu/math/IntNum;

    move-object v1, v2

    .line 100
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 94
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 95
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 96
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_3

    .line 99
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 100
    :cond_3
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public static compare(Lgnu/math/IntNum;J)I
    .locals 13

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-wide v1, p1

    .local v1, "y":J
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_0

    .line 237
    move-object v8, v0

    iget v8, v8, Lgnu/math/IntNum;->ival:I

    int-to-long v8, v8

    move-wide v3, v8

    .line 252
    .local v3, "x_word":J
    :goto_0
    move-wide v8, v3

    move-wide v10, v1

    cmp-long v8, v8, v10

    if-gez v8, :cond_8

    const/4 v8, -0x1

    :goto_1
    move v0, v8

    .end local v0    # "x":Lgnu/math/IntNum;
    .end local v3    # "x_word":J
    :goto_2
    return v0

    .line 240
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/IntNum;->isNegative()Z

    move-result v8

    move v5, v8

    .line 241
    .local v5, "x_negative":Z
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, 0x1

    :goto_3
    move v6, v8

    .line 242
    .local v6, "y_negative":Z
    move v8, v5

    move v9, v6

    if-eq v8, v9, :cond_3

    .line 243
    move v8, v5

    if-eqz v8, :cond_2

    const/4 v8, -0x1

    :goto_4
    move v0, v8

    goto :goto_2

    .line 241
    .end local v6    # "y_negative":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    .line 243
    .restart local v6    # "y_negative":Z
    :cond_2
    const/4 v8, 0x1

    goto :goto_4

    .line 244
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_5
    move v7, v8

    .line 245
    .local v7, "x_len":I
    move v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 246
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-long v8, v8

    move-wide v3, v8

    .restart local v3    # "x_word":J
    goto :goto_0

    .line 244
    .end local v3    # "x_word":J
    .end local v7    # "x_len":I
    :cond_4
    move-object v8, v0

    iget v8, v8, Lgnu/math/IntNum;->ival:I

    goto :goto_5

    .line 247
    .restart local v7    # "x_len":I
    :cond_5
    move v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 248
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v8

    move-wide v3, v8

    .restart local v3    # "x_word":J
    goto :goto_0

    .line 250
    .end local v3    # "x_word":J
    :cond_6
    move v8, v5

    if-eqz v8, :cond_7

    const/4 v8, -0x1

    :goto_6
    move v0, v8

    goto :goto_2

    :cond_7
    const/4 v8, 0x1

    goto :goto_6

    .line 252
    .end local v5    # "x_negative":Z
    .end local v6    # "y_negative":Z
    .end local v7    # "x_len":I
    .restart local v3    # "x_word":J
    :cond_8
    move-wide v8, v3

    move-wide v10, v1

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    const/4 v8, 0x1

    goto :goto_1

    :cond_9
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I
    .locals 9

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_2

    .line 220
    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    move-object v7, v1

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    if-ge v6, v7, :cond_0

    const/4 v6, -0x1

    :goto_0
    move v0, v6

    .line 229
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_1
    return v0

    .line 220
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    move-object v7, v1

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    if-le v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 221
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    move v2, v6

    .line 222
    .local v2, "x_negative":Z
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    move v3, v6

    .line 223
    .local v3, "y_negative":Z
    move v6, v2

    move v7, v3

    if-eq v6, v7, :cond_4

    .line 224
    move v6, v2

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    move v0, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 225
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    move v4, v6

    .line 226
    .local v4, "x_len":I
    move-object v6, v1

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    move v5, v6

    .line 227
    .local v5, "y_len":I
    move v6, v4

    move v7, v5

    if-eq v6, v7, :cond_9

    .line 228
    move v6, v4

    move v7, v5

    if-le v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_5
    move v7, v2

    if-eq v6, v7, :cond_8

    const/4 v6, 0x1

    :goto_6
    move v0, v6

    goto :goto_1

    .line 225
    .end local v4    # "x_len":I
    .end local v5    # "y_len":I
    :cond_5
    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    goto :goto_3

    .line 226
    .restart local v4    # "x_len":I
    :cond_6
    move-object v6, v1

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    goto :goto_4

    .line 228
    .restart local v5    # "y_len":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    const/4 v6, -0x1

    goto :goto_6

    .line 229
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move-object v7, v1

    iget-object v7, v7, Lgnu/math/IntNum;->words:[I

    move v8, v4

    invoke-static {v6, v7, v8}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v6

    move v0, v6

    goto :goto_1
.end method

.method public static divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 26

    .prologue
    .line 553
    move-wide/from16 v3, p0

    .local v3, "x":J
    move-wide/from16 v5, p2

    .local v5, "y":J
    move-object/from16 v7, p4

    .local v7, "quotient":Lgnu/math/IntNum;
    move-object/from16 v8, p5

    .local v8, "remainder":Lgnu/math/IntNum;
    move/from16 v9, p6

    .local v9, "rounding_mode":I
    move/from16 v18, v9

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 554
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    const/16 v18, 0x2

    :goto_0
    move/from16 v9, v18

    .line 555
    :cond_0
    move-wide/from16 v18, v3

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_5

    .line 557
    const/16 v18, 0x1

    move/from16 v10, v18

    .line 558
    .local v10, "xNegative":Z
    move-wide/from16 v18, v3

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    .line 560
    move-wide/from16 v18, v3

    invoke-static/range {v18 .. v19}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v18

    move-wide/from16 v19, v5

    invoke-static/range {v19 .. v20}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v19

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    invoke-static/range {v18 .. v22}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 562
    .line 640
    :goto_1
    return-void

    .line 554
    .end local v10    # "xNegative":Z
    :cond_1
    const/16 v18, 0x1

    goto :goto_0

    .line 564
    .restart local v10    # "xNegative":Z
    :cond_2
    move-wide/from16 v18, v3

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v3, v18

    .line 569
    :goto_2
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_f

    .line 571
    const/16 v18, 0x1

    move/from16 v11, v18

    .line 572
    .local v11, "yNegative":Z
    move-wide/from16 v18, v5

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    .line 574
    move/from16 v18, v9

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 576
    move-object/from16 v18, v7

    if-eqz v18, :cond_3

    .line 577
    move-object/from16 v18, v7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lgnu/math/IntNum;->set(I)V

    .line 578
    :cond_3
    move-object/from16 v18, v8

    if-eqz v18, :cond_4

    .line 579
    move-object/from16 v18, v8

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Lgnu/math/IntNum;->set(J)V

    .line 584
    :cond_4
    :goto_3
    goto :goto_1

    .line 567
    .end local v10    # "xNegative":Z
    .end local v11    # "yNegative":Z
    :cond_5
    const/16 v18, 0x0

    move/from16 v10, v18

    .restart local v10    # "xNegative":Z
    goto :goto_2

    .line 582
    .restart local v11    # "yNegative":Z
    :cond_6
    move-wide/from16 v18, v3

    invoke-static/range {v18 .. v19}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v18

    move-wide/from16 v19, v5

    invoke-static/range {v19 .. v20}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v19

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    invoke-static/range {v18 .. v22}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    goto :goto_3

    .line 586
    :cond_7
    move-wide/from16 v18, v5

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v5, v18

    .line 591
    :goto_4
    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    div-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 592
    .local v12, "q":J
    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    rem-long v18, v18, v20

    move-wide/from16 v14, v18

    .line 593
    .local v14, "r":J
    move/from16 v18, v10

    move/from16 v19, v11

    xor-int v18, v18, v19

    move/from16 v16, v18

    .line 595
    .local v16, "qNegative":Z
    const/16 v18, 0x0

    move/from16 v17, v18

    .line 596
    .local v17, "add_one":Z
    move-wide/from16 v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_8

    .line 598
    move/from16 v18, v9

    packed-switch v18, :pswitch_data_0

    .line 612
    :cond_8
    :goto_5
    move-object/from16 v18, v7

    if-eqz v18, :cond_b

    .line 614
    move/from16 v18, v17

    if-eqz v18, :cond_9

    .line 615
    move-wide/from16 v18, v12

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 616
    :cond_9
    move/from16 v18, v16

    if-eqz v18, :cond_a

    .line 617
    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 618
    :cond_a
    move-object/from16 v18, v7

    move-wide/from16 v19, v12

    invoke-virtual/range {v18 .. v20}, Lgnu/math/IntNum;->set(J)V

    .line 620
    :cond_b
    move-object/from16 v18, v8

    if-eqz v18, :cond_e

    .line 623
    move/from16 v18, v17

    if-eqz v18, :cond_c

    .line 626
    move-wide/from16 v18, v5

    move-wide/from16 v20, v14

    sub-long v18, v18, v20

    move-wide/from16 v14, v18

    .line 629
    move/from16 v18, v10

    if-nez v18, :cond_12

    const/16 v18, 0x1

    :goto_6
    move/from16 v10, v18

    .line 636
    :cond_c
    move/from16 v18, v10

    if-eqz v18, :cond_d

    .line 637
    move-wide/from16 v18, v14

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 638
    :cond_d
    move-object/from16 v18, v8

    move-wide/from16 v19, v14

    invoke-virtual/range {v18 .. v20}, Lgnu/math/IntNum;->set(J)V

    .line 640
    :cond_e
    goto/16 :goto_1

    .line 589
    .end local v11    # "yNegative":Z
    .end local v12    # "q":J
    .end local v14    # "r":J
    .end local v16    # "qNegative":Z
    .end local v17    # "add_one":Z
    :cond_f
    const/16 v18, 0x0

    move/from16 v11, v18

    .restart local v11    # "yNegative":Z
    goto :goto_4

    .line 601
    .restart local v12    # "q":J
    .restart local v14    # "r":J
    .restart local v16    # "qNegative":Z
    .restart local v17    # "add_one":Z
    :pswitch_0
    goto :goto_5

    .line 604
    :pswitch_1
    move/from16 v18, v16

    move/from16 v19, v9

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 605
    const/16 v18, 0x1

    move/from16 v17, v18

    goto :goto_5

    .line 604
    :cond_10
    const/16 v19, 0x0

    goto :goto_7

    .line 608
    :pswitch_2
    move-wide/from16 v18, v14

    move-wide/from16 v20, v5

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x1

    and-long v22, v22, v24

    sub-long v20, v20, v22

    const/16 v22, 0x1

    shr-long v20, v20, v22

    cmp-long v18, v18, v20

    if-lez v18, :cond_11

    const/16 v18, 0x1

    :goto_8
    move/from16 v17, v18

    goto/16 :goto_5

    :cond_11
    const/16 v18, 0x0

    goto :goto_8

    .line 629
    :cond_12
    const/16 v18, 0x0

    goto :goto_6

    .line 598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 28

    .prologue
    .line 654
    move-object/from16 v2, p0

    .local v2, "x":Lgnu/math/IntNum;
    move-object/from16 v3, p1

    .local v3, "y":Lgnu/math/IntNum;
    move-object/from16 v4, p2

    .local v4, "quotient":Lgnu/math/IntNum;
    move-object/from16 v5, p3

    .local v5, "remainder":Lgnu/math/IntNum;
    move/from16 v6, p4

    .local v6, "rounding_mode":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 657
    :cond_1
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 658
    .local v7, "x_l":J
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 659
    .local v9, "y_l":J
    move-wide/from16 v20, v7

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v20, v20, v22

    if-eqz v20, :cond_2

    move-wide/from16 v20, v9

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v20, v20, v22

    if-eqz v20, :cond_2

    .line 661
    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    invoke-static/range {v20 .. v26}, Lgnu/math/IntNum;->divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 662
    .line 823
    .end local v7    # "x_l":J
    .end local v9    # "y_l":J
    :goto_0
    return-void

    .line 666
    :cond_2
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->isNegative()Z

    move-result v20

    move/from16 v7, v20

    .line 667
    .local v7, "xNegative":Z
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->isNegative()Z

    move-result v20

    move/from16 v8, v20

    .line 668
    .local v8, "yNegative":Z
    move/from16 v20, v7

    move/from16 v21, v8

    xor-int v20, v20, v21

    move/from16 v9, v20

    .line 670
    .local v9, "qNegative":Z
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    const/16 v20, 0x1

    :goto_1
    move/from16 v10, v20

    .line 671
    .local v10, "ylen":I
    move/from16 v20, v10

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 672
    .local v11, "ywords":[I
    move-object/from16 v20, v3

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 673
    :goto_2
    move/from16 v20, v10

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v20, v11

    move/from16 v21, v10

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    if-nez v20, :cond_4

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 670
    .end local v10    # "ylen":I
    .end local v11    # "ywords":[I
    :cond_3
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v20, v0

    goto :goto_1

    .line 675
    .restart local v10    # "ylen":I
    .restart local v11    # "ywords":[I
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    const/16 v20, 0x1

    :goto_3
    move/from16 v12, v20

    .line 676
    .local v12, "xlen":I
    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 677
    .local v13, "xwords":[I
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 678
    :goto_4
    move/from16 v20, v12

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    move-object/from16 v20, v13

    move/from16 v21, v12

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    if-nez v20, :cond_6

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 675
    .end local v12    # "xlen":I
    .end local v13    # "xwords":[I
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v20, v0

    goto :goto_3

    .line 682
    .restart local v12    # "xlen":I
    .restart local v13    # "xwords":[I
    :cond_6
    move-object/from16 v20, v13

    move/from16 v21, v12

    move-object/from16 v22, v11

    move/from16 v23, v10

    invoke-static/range {v20 .. v23}, Lgnu/math/MPN;->cmp([II[II)I

    move-result v20

    move/from16 v16, v20

    .line 683
    .local v16, "cmpval":I
    move/from16 v20, v16

    if-gez v20, :cond_8

    .line 685
    move-object/from16 v20, v13

    move-object/from16 v17, v20

    .local v17, "rwords":[I
    move-object/from16 v20, v11

    move-object/from16 v13, v20

    move-object/from16 v20, v17

    move-object/from16 v11, v20

    .line 686
    move/from16 v20, v12

    move/from16 v15, v20

    .local v15, "rlen":I
    const/16 v20, 0x1

    move/from16 v14, v20

    .local v14, "qlen":I
    move-object/from16 v20, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 687
    .line 732
    .end local v17    # "rwords":[I
    :cond_7
    :goto_5
    move/from16 v20, v15

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    move-object/from16 v20, v11

    move/from16 v21, v15

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    if-nez v20, :cond_d

    .line 733
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 688
    .end local v14    # "qlen":I
    .end local v15    # "rlen":I
    :cond_8
    move/from16 v20, v16

    if-nez v20, :cond_9

    .line 690
    move-object/from16 v20, v13

    const/16 v21, 0x0

    const/16 v22, 0x1

    aput v22, v20, v21

    const/16 v20, 0x1

    move/from16 v14, v20

    .line 691
    .restart local v14    # "qlen":I
    move-object/from16 v20, v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    const/16 v20, 0x1

    move/from16 v15, v20

    .restart local v15    # "rlen":I
    goto :goto_5

    .line 693
    .end local v14    # "qlen":I
    .end local v15    # "rlen":I
    :cond_9
    move/from16 v20, v10

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 695
    move/from16 v20, v12

    move/from16 v14, v20

    .line 696
    .restart local v14    # "qlen":I
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 697
    .restart local v15    # "rlen":I
    move-object/from16 v20, v11

    const/16 v21, 0x0

    move-object/from16 v22, v13

    move-object/from16 v23, v13

    move/from16 v24, v12

    move-object/from16 v25, v11

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-static/range {v22 .. v25}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v22

    aput v22, v20, v21

    goto :goto_5

    .line 705
    .end local v14    # "qlen":I
    .end local v15    # "rlen":I
    :cond_a
    move-object/from16 v20, v11

    move/from16 v21, v10

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v20

    move/from16 v17, v20

    .line 706
    .local v17, "nshift":I
    move/from16 v20, v17

    if-eqz v20, :cond_b

    .line 710
    move-object/from16 v20, v11

    const/16 v21, 0x0

    move-object/from16 v22, v11

    move/from16 v23, v10

    move/from16 v24, v17

    invoke-static/range {v20 .. v24}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v20

    .line 714
    move-object/from16 v20, v13

    const/16 v21, 0x0

    move-object/from16 v22, v13

    move/from16 v23, v12

    move/from16 v24, v17

    invoke-static/range {v20 .. v24}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v20

    move/from16 v18, v20

    .line 715
    .local v18, "x_high":I
    move-object/from16 v20, v13

    move/from16 v21, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v18

    aput v22, v20, v21

    .line 718
    .end local v18    # "x_high":I
    :cond_b
    move/from16 v20, v12

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 719
    move-object/from16 v20, v13

    move/from16 v21, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 720
    :cond_c
    move-object/from16 v20, v13

    move/from16 v21, v12

    move-object/from16 v22, v11

    move/from16 v23, v10

    invoke-static/range {v20 .. v23}, Lgnu/math/MPN;->divide([II[II)V

    .line 721
    move/from16 v20, v10

    move/from16 v15, v20

    .line 722
    .restart local v15    # "rlen":I
    move-object/from16 v20, v11

    move-object/from16 v21, v13

    const/16 v22, 0x0

    move/from16 v23, v15

    move/from16 v24, v17

    invoke-static/range {v20 .. v24}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 724
    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v21, v10

    sub-int v20, v20, v21

    move/from16 v14, v20

    .line 725
    .restart local v14    # "qlen":I
    move-object/from16 v20, v4

    if-eqz v20, :cond_7

    .line 727
    const/16 v20, 0x0

    move/from16 v18, v20

    .local v18, "i":I
    :goto_6
    move/from16 v20, v18

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 728
    move-object/from16 v20, v13

    move/from16 v21, v18

    move-object/from16 v22, v13

    move/from16 v23, v18

    move/from16 v24, v10

    add-int v23, v23, v24

    aget v22, v22, v23

    aput v22, v20, v21

    .line 727
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 734
    .end local v17    # "nshift":I
    .end local v18    # "i":I
    :cond_d
    move-object/from16 v20, v11

    move/from16 v21, v15

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    if-gez v20, :cond_e

    .line 736
    move-object/from16 v20, v11

    move/from16 v21, v15

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 737
    add-int/lit8 v15, v15, 0x1

    .line 742
    :cond_e
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 743
    .local v17, "add_one":Z
    move/from16 v20, v15

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_f

    move-object/from16 v20, v11

    const/16 v21, 0x0

    aget v20, v20, v21

    if-eqz v20, :cond_11

    .line 745
    :cond_f
    move/from16 v20, v6

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 747
    move/from16 v20, v8

    if-eqz v20, :cond_15

    const/16 v20, 0x2

    :goto_7
    move/from16 v6, v20

    .line 749
    :cond_10
    move/from16 v20, v6

    packed-switch v20, :pswitch_data_0

    .line 772
    :cond_11
    :goto_8
    move-object/from16 v20, v4

    if-eqz v20, :cond_13

    .line 774
    move-object/from16 v20, v13

    move/from16 v21, v14

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    if-gez v20, :cond_12

    .line 776
    move-object/from16 v20, v13

    move/from16 v21, v14

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 777
    add-int/lit8 v14, v14, 0x1

    .line 779
    :cond_12
    move-object/from16 v20, v4

    move-object/from16 v21, v13

    move/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Lgnu/math/IntNum;->set([II)V

    .line 780
    move/from16 v20, v9

    if-eqz v20, :cond_1d

    .line 782
    move/from16 v20, v17

    if-eqz v20, :cond_1c

    .line 783
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->setInvert()V

    .line 790
    :cond_13
    :goto_9
    move-object/from16 v20, v5

    if-eqz v20, :cond_14

    .line 793
    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v15

    invoke-virtual/range {v20 .. v22}, Lgnu/math/IntNum;->set([II)V

    .line 794
    move/from16 v20, v17

    if-eqz v20, :cond_22

    .line 799
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_1f

    .line 801
    move-object/from16 v20, v5

    move-object/from16 v18, v20

    .line 802
    .local v18, "tmp":Lgnu/math/IntNum;
    move-object/from16 v20, v18

    move/from16 v21, v8

    if-eqz v21, :cond_1e

    move-object/from16 v21, v11

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v22, v0

    add-int v21, v21, v22

    :goto_a
    invoke-virtual/range {v20 .. v21}, Lgnu/math/IntNum;->set(I)V

    .line 810
    :goto_b
    move/from16 v20, v7

    if-eqz v20, :cond_21

    .line 811
    move-object/from16 v20, v5

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 814
    .line 823
    .end local v18    # "tmp":Lgnu/math/IntNum;
    :cond_14
    :goto_c
    goto/16 :goto_0

    .line 747
    :cond_15
    const/16 v20, 0x1

    goto :goto_7

    .line 752
    :pswitch_0
    goto :goto_8

    .line 755
    :pswitch_1
    move/from16 v20, v9

    move/from16 v21, v6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    const/16 v21, 0x1

    :goto_d
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 756
    const/16 v20, 0x1

    move/from16 v17, v20

    goto/16 :goto_8

    .line 755
    :cond_16
    const/16 v21, 0x0

    goto :goto_d

    .line 760
    :pswitch_2
    move-object/from16 v20, v5

    if-nez v20, :cond_1a

    new-instance v20, Lgnu/math/IntNum;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Lgnu/math/IntNum;-><init>()V

    :goto_e
    move-object/from16 v18, v20

    .line 761
    .restart local v18    # "tmp":Lgnu/math/IntNum;
    move-object/from16 v20, v18

    move-object/from16 v21, v11

    move/from16 v22, v15

    invoke-virtual/range {v20 .. v22}, Lgnu/math/IntNum;->set([II)V

    .line 762
    move-object/from16 v20, v18

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v20

    move-object/from16 v18, v20

    .line 763
    move/from16 v20, v8

    if-eqz v20, :cond_17

    .line 764
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->setNegative()V

    .line 765
    :cond_17
    move-object/from16 v20, v18

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v20

    move/from16 v19, v20

    .line 767
    .local v19, "cmp":I
    move/from16 v20, v8

    if-eqz v20, :cond_18

    .line 768
    move/from16 v20, v19

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v19, v20

    .line 769
    :cond_18
    move/from16 v20, v19

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    move/from16 v20, v19

    if-nez v20, :cond_1b

    move-object/from16 v20, v13

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_1b

    :cond_19
    const/16 v20, 0x1

    :goto_f
    move/from16 v17, v20

    goto/16 :goto_8

    .line 760
    .end local v18    # "tmp":Lgnu/math/IntNum;
    .end local v19    # "cmp":I
    :cond_1a
    move-object/from16 v20, v5

    goto :goto_e

    .line 769
    .restart local v18    # "tmp":Lgnu/math/IntNum;
    .restart local v19    # "cmp":I
    :cond_1b
    const/16 v20, 0x0

    goto :goto_f

    .line 785
    .end local v18    # "tmp":Lgnu/math/IntNum;
    .end local v19    # "cmp":I
    :cond_1c
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->setNegative()V

    goto/16 :goto_9

    .line 787
    :cond_1d
    move/from16 v20, v17

    if-eqz v20, :cond_13

    .line 788
    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lgnu/math/IntNum;->setAdd(I)V

    goto/16 :goto_9

    .line 802
    .restart local v18    # "tmp":Lgnu/math/IntNum;
    :cond_1e
    move-object/from16 v21, v11

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    goto/16 :goto_a

    .line 805
    .end local v18    # "tmp":Lgnu/math/IntNum;
    :cond_1f
    move-object/from16 v20, v5

    move-object/from16 v21, v3

    move/from16 v22, v8

    if-eqz v22, :cond_20

    const/16 v22, 0x1

    :goto_10
    invoke-static/range {v20 .. v22}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v20

    move-object/from16 v18, v20

    .restart local v18    # "tmp":Lgnu/math/IntNum;
    goto/16 :goto_b

    .end local v18    # "tmp":Lgnu/math/IntNum;
    :cond_20
    const/16 v22, -0x1

    goto :goto_10

    .line 813
    .restart local v18    # "tmp":Lgnu/math/IntNum;
    :cond_21
    move-object/from16 v20, v5

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto/16 :goto_c

    .line 819
    .end local v18    # "tmp":Lgnu/math/IntNum;
    :cond_22
    move/from16 v20, v7

    if-eqz v20, :cond_14

    .line 820
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lgnu/math/IntNum;->setNegative()V

    goto/16 :goto_c

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .locals 6

    .prologue
    .line 1301
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_1

    .line 1302
    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 1310
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_1
    return v0

    .line 1302
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1303
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-eqz v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    if-eq v3, v4, :cond_3

    .line 1304
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 1305
    :cond_3
    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    move v2, v3

    .local v2, "i":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_5

    .line 1307
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    move v4, v2

    aget v3, v3, v4

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move v5, v2

    aget v4, v4, v5

    if-eq v3, v4, :cond_4

    .line 1308
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 1310
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public static final gcd(II)I
    .locals 5

    .prologue
    .line 934
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v3, v1

    move v4, v0

    if-le v3, v4, :cond_0

    .line 936
    move v3, v0

    move v2, v3

    .local v2, "tmp":I
    move v3, v1

    move v0, v3

    move v3, v2

    move v1, v3

    .line 940
    .end local v2    # "tmp":I
    :cond_0
    :goto_0
    move v3, v1

    if-nez v3, :cond_1

    .line 941
    move v3, v0

    move v0, v3

    .line 943
    .end local v0    # "a":I
    :goto_1
    return v0

    .line 942
    .restart local v0    # "a":I
    :cond_1
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 943
    move v3, v1

    move v0, v3

    goto :goto_1

    .line 946
    :cond_2
    move v3, v1

    move v2, v3

    .line 947
    .restart local v2    # "tmp":I
    move v3, v0

    move v4, v1

    rem-int/2addr v3, v4

    move v1, v3

    .line 948
    move v3, v2

    move v0, v3

    .line 949
    goto :goto_0
.end method

.method public static gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 12

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v8, v0

    iget v8, v8, Lgnu/math/IntNum;->ival:I

    move v2, v8

    .line 956
    .local v2, "xval":I
    move-object v8, v1

    iget v8, v8, Lgnu/math/IntNum;->ival:I

    move v3, v8

    .line 957
    .local v3, "yval":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_4

    .line 959
    move v8, v2

    if-nez v8, :cond_0

    .line 960
    move-object v8, v1

    invoke-static {v8}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    .line 991
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 961
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_3

    move v8, v2

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_3

    move v8, v3

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_3

    .line 964
    move v8, v2

    if-gez v8, :cond_1

    .line 965
    move v8, v2

    neg-int v8, v8

    move v2, v8

    .line 966
    :cond_1
    move v8, v3

    if-gez v8, :cond_2

    .line 967
    move v8, v3

    neg-int v8, v8

    move v3, v8

    .line 968
    :cond_2
    move v8, v2

    move v9, v3

    invoke-static {v8, v9}, Lgnu/math/IntNum;->gcd(II)I

    move-result v8

    invoke-static {v8}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 970
    :cond_3
    const/4 v8, 0x1

    move v2, v8

    .line 972
    :cond_4
    move-object v8, v1

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_6

    .line 974
    move v8, v3

    if-nez v8, :cond_5

    .line 975
    move-object v8, v0

    invoke-static {v8}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 976
    :cond_5
    const/4 v8, 0x1

    move v3, v8

    .line 978
    :cond_6
    move v8, v2

    move v9, v3

    if-le v8, v9, :cond_8

    move v8, v2

    :goto_1
    move v4, v8

    .line 979
    .local v4, "len":I
    move v8, v4

    new-array v8, v8, [I

    move-object v5, v8

    .line 980
    .local v5, "xwords":[I
    move v8, v4

    new-array v8, v8, [I

    move-object v6, v8

    .line 981
    .local v6, "ywords":[I
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 982
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 983
    move-object v8, v5

    move-object v9, v6

    move v10, v4

    invoke-static {v8, v9, v10}, Lgnu/math/MPN;->gcd([I[II)I

    move-result v8

    move v4, v8

    .line 984
    new-instance v8, Lgnu/math/IntNum;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lgnu/math/IntNum;-><init>(I)V

    move-object v7, v8

    .line 987
    .local v7, "result":Lgnu/math/IntNum;
    move-object v8, v5

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gez v8, :cond_7

    .line 988
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 989
    :cond_7
    move-object v8, v7

    move v9, v4

    iput v9, v8, Lgnu/math/IntNum;->ival:I

    .line 990
    move-object v8, v7

    move-object v9, v5

    iput-object v9, v8, Lgnu/math/IntNum;->words:[I

    .line 991
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 978
    .end local v4    # "len":I
    .end local v5    # "xwords":[I
    .end local v6    # "ywords":[I
    .end local v7    # "result":Lgnu/math/IntNum;
    :cond_8
    move v8, v3

    goto :goto_1
.end method

.method public static intValue(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Lgnu/math/IntNum;

    move-object v1, v2

    .line 1278
    .local v1, "inum":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-eqz v2, :cond_0

    .line 1280
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "integer too large"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1281
    :cond_0
    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    move v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static lcm(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 9

    .prologue
    .line 996
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/IntNum;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/IntNum;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 997
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .line 1002
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 998
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .line 999
    move-object v3, v1

    invoke-static {v3}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    .line 1000
    new-instance v3, Lgnu/math/IntNum;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lgnu/math/IntNum;-><init>()V

    move-object v2, v3

    .line 1001
    .local v2, "quotient":Lgnu/math/IntNum;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v6, v7}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 1002
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static make(I)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 48
    move v0, p0

    .local v0, "value":I
    move v1, v0

    const/16 v2, -0x64

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x400

    if-gt v1, v2, :cond_0

    .line 49
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    move v2, v0

    const/16 v3, -0x64

    add-int/lit8 v2, v2, 0x64

    aget-object v1, v1, v2

    move-object v0, v1

    .line 51
    .end local v0    # "value":I
    :goto_0
    return-object v0

    .restart local v0    # "value":I
    :cond_0
    new-instance v1, Lgnu/math/IntNum;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lgnu/math/IntNum;-><init>(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static make(J)Lgnu/math/IntNum;
    .locals 10

    .prologue
    .line 78
    move-wide v0, p0

    .local v0, "value":J
    move-wide v4, v0

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v0

    const-wide/16 v6, 0x400

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 79
    sget-object v4, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    move-wide v5, v0

    long-to-int v5, v5

    const/16 v6, -0x64

    add-int/lit8 v5, v5, 0x64

    aget-object v4, v4, v5

    move-object v0, v4

    .line 87
    .end local v0    # "value":J
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 80
    .end local v2    # "i":I
    .restart local v0    # "value":J
    :cond_0
    move-wide v4, v0

    long-to-int v4, v4

    move v2, v4

    .line 81
    .restart local v2    # "i":I
    move v4, v2

    int-to-long v4, v4

    move-wide v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 82
    new-instance v4, Lgnu/math/IntNum;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    invoke-direct {v5, v6}, Lgnu/math/IntNum;-><init>(I)V

    move-object v0, v4

    goto :goto_0

    .line 83
    :cond_1
    const/4 v4, 0x2

    invoke-static {v4}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .line 84
    .local v3, "result":Lgnu/math/IntNum;
    move-object v4, v3

    const/4 v5, 0x2

    iput v5, v4, Lgnu/math/IntNum;->ival:I

    .line 85
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    move v6, v2

    aput v6, v4, v5

    .line 86
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x1

    move-wide v6, v0

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v5

    .line 87
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static make([I)Lgnu/math/IntNum;
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "words":[I
    move-object v1, v0

    move-object v2, v0

    array-length v2, v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "words":[I
    return-object v0
.end method

.method public static make([II)Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "words":[I
    move v1, p1

    .local v1, "len":I
    move-object v3, v0

    if-nez v3, :cond_0

    .line 121
    move v3, v1

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .line 128
    .end local v0    # "words":[I
    :goto_0
    return-object v0

    .line 122
    .restart local v0    # "words":[I
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v3

    move v1, v3

    .line 123
    move v3, v1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 124
    move v3, v1

    if-nez v3, :cond_1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v3

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    goto :goto_1

    .line 125
    :cond_2
    new-instance v3, Lgnu/math/IntNum;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/math/IntNum;-><init>()V

    move-object v2, v3

    .line 126
    .local v2, "num":Lgnu/math/IntNum;
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/math/IntNum;->words:[I

    .line 127
    move-object v3, v2

    move v4, v1

    iput v4, v3, Lgnu/math/IntNum;->ival:I

    .line 128
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static makeU(J)Lgnu/math/IntNum;
    .locals 10

    .prologue
    .line 106
    move-wide v1, p0

    .local v1, "value":J
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 107
    move-wide v4, v1

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .line 113
    .end local v1    # "value":J
    .local v3, "result":Lgnu/math/IntNum;
    :goto_0
    return-object v1

    .line 108
    .end local v3    # "result":Lgnu/math/IntNum;
    .restart local v1    # "value":J
    :cond_0
    const/4 v4, 0x3

    invoke-static {v4}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .line 109
    .restart local v3    # "result":Lgnu/math/IntNum;
    move-object v4, v3

    const/4 v5, 0x3

    iput v5, v4, Lgnu/math/IntNum;->ival:I

    .line 110
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    move-wide v6, v1

    long-to-int v6, v6

    aput v6, v4, v5

    .line 111
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x1

    move-wide v6, v1

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v5

    .line 112
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 113
    move-object v4, v3

    move-object v1, v4

    goto :goto_0
.end method

.method public static minusOne()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x63

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 1616
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 1617
    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    neg-int v2, v2

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .line 1620
    .end local v0    # "x":Lgnu/math/IntNum;
    .local v1, "result":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 1618
    .end local v1    # "result":Lgnu/math/IntNum;
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    new-instance v2, Lgnu/math/IntNum;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/math/IntNum;-><init>(I)V

    move-object v1, v2

    .line 1619
    .restart local v1    # "result":Lgnu/math/IntNum;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1620
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static negate([I[II)Z
    .locals 14

    .prologue
    .line 1573
    move-object v1, p0

    .local v1, "dest":[I
    move-object v2, p1

    .local v2, "src":[I
    move/from16 v3, p2

    .local v3, "len":I
    const-wide/16 v8, 0x1

    move-wide v4, v8

    .line 1574
    .local v4, "carry":J
    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v6, v8

    .line 1575
    .local v6, "negative":Z
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 1577
    move-wide v8, v4

    move-object v10, v2

    move v11, v7

    aget v10, v10, v11

    const/4 v11, -0x1

    xor-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 1578
    move-object v8, v1

    move v9, v7

    move-wide v10, v4

    long-to-int v10, v10

    aput v10, v8, v9

    .line 1579
    move-wide v8, v4

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    move-wide v4, v8

    .line 1575
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1574
    .end local v6    # "negative":Z
    .end local v7    # "i":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1581
    .restart local v6    # "negative":Z
    .restart local v7    # "i":I
    :cond_1
    move v8, v6

    if-eqz v8, :cond_2

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gez v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    move v1, v8

    .end local v1    # "dest":[I
    return v1

    .restart local v1    # "dest":[I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static final one()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x65

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 16

    .prologue
    .line 885
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move/from16 v1, p1

    .local v1, "y":I
    move v10, v1

    if-gtz v10, :cond_1

    .line 887
    move v10, v1

    if-nez v10, :cond_0

    .line 888
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    .line 927
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 890
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    new-instance v10, Ljava/lang/Error;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "negative exponent"

    invoke-direct {v11, v12}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 892
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/math/IntNum;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 893
    move-object v10, v0

    move-object v0, v10

    goto :goto_0

    .line 894
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    move v2, v10

    .line 895
    .local v2, "plen":I
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/math/IntNum;->intLength()I

    move-result v10

    move v11, v1

    mul-int/2addr v10, v11

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    const/4 v11, 0x2

    move v12, v2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    move v3, v10

    .line 896
    .local v3, "blen":I
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/math/IntNum;->isNegative()Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v1

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    move v4, v10

    .line 897
    .local v4, "negative":Z
    move v10, v3

    new-array v10, v10, [I

    move-object v5, v10

    .line 898
    .local v5, "pow2":[I
    move v10, v3

    new-array v10, v10, [I

    move-object v6, v10

    .line 899
    .local v6, "rwords":[I
    move v10, v3

    new-array v10, v10, [I

    move-object v7, v10

    .line 900
    .local v7, "work":[I
    move-object v10, v0

    move-object v11, v5

    invoke-virtual {v10, v11}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 901
    const/4 v10, 0x1

    move v8, v10

    .line 902
    .local v8, "rlen":I
    move-object v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 907
    :goto_3
    move v10, v1

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    .line 909
    move-object v10, v7

    move-object v11, v5

    move v12, v2

    move-object v13, v6

    move v14, v8

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 910
    move-object v10, v7

    move-object v9, v10

    .local v9, "temp":[I
    move-object v10, v6

    move-object v7, v10

    move-object v10, v9

    move-object v6, v10

    .line 911
    move v10, v8

    move v11, v2

    add-int/2addr v10, v11

    move v8, v10

    .line 912
    :goto_4
    move-object v10, v6

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-nez v10, :cond_5

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 894
    .end local v2    # "plen":I
    .end local v3    # "blen":I
    .end local v4    # "negative":Z
    .end local v5    # "pow2":[I
    .end local v6    # "rwords":[I
    .end local v7    # "work":[I
    .end local v8    # "rlen":I
    .end local v9    # "temp":[I
    :cond_3
    move-object v10, v0

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    .line 896
    .restart local v2    # "plen":I
    .restart local v3    # "blen":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 914
    .restart local v4    # "negative":Z
    .restart local v5    # "pow2":[I
    .restart local v6    # "rwords":[I
    .restart local v7    # "work":[I
    .restart local v8    # "rlen":I
    :cond_5
    move v10, v1

    const/4 v11, 0x1

    shr-int/lit8 v10, v10, 0x1

    move v1, v10

    .line 915
    move v10, v1

    if-nez v10, :cond_8

    .line 916
    .line 923
    move-object v10, v6

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-gez v10, :cond_6

    .line 924
    add-int/lit8 v8, v8, 0x1

    .line 925
    :cond_6
    move v10, v4

    if-eqz v10, :cond_7

    .line 926
    move-object v10, v6

    move-object v11, v6

    move v12, v8

    invoke-static {v10, v11, v12}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v10

    .line 927
    :cond_7
    move-object v10, v6

    move v11, v8

    invoke-static {v10, v11}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 918
    :cond_8
    move-object v10, v7

    move-object v11, v5

    move v12, v2

    move-object v13, v5

    move v14, v2

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 919
    move-object v10, v7

    move-object v9, v10

    .restart local v9    # "temp":[I
    move-object v10, v5

    move-object v7, v10

    move-object v10, v9

    move-object v5, v10

    .line 920
    move v10, v2

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    move v2, v10

    .line 921
    :goto_5
    move-object v10, v5

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-nez v10, :cond_9

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 922
    :cond_9
    goto :goto_3
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 10

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move v2, p2

    .local v2, "rounding_mode":I
    new-instance v4, Lgnu/math/IntNum;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lgnu/math/IntNum;-><init>()V

    move-object v3, v4

    .line 828
    .local v3, "quotient":Lgnu/math/IntNum;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 829
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 10

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move v2, p2

    .local v2, "rounding_mode":I
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/IntNum;->isZero()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 850
    move-object v4, v0

    move-object v0, v4

    .line 853
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 851
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    new-instance v4, Lgnu/math/IntNum;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lgnu/math/IntNum;-><init>()V

    move-object v3, v4

    .line 852
    .local v3, "rem":Lgnu/math/IntNum;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v3

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 853
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static shift(II)I
    .locals 4

    .prologue
    .line 1110
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "count":I
    move v2, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 1111
    const/4 v2, 0x0

    move v0, v2

    .line 1117
    .end local v0    # "x":I
    :goto_0
    return v0

    .line 1112
    .restart local v0    # "x":I
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 1113
    move v2, v0

    move v3, v1

    shl-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 1114
    :cond_1
    move v2, v1

    neg-int v2, v2

    move v1, v2

    .line 1115
    move v2, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    .line 1116
    move v2, v0

    if-gez v2, :cond_2

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1117
    :cond_3
    move v2, v0

    move v3, v1

    shr-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public static shift(JI)J
    .locals 8

    .prologue
    .line 1122
    move-wide v1, p0

    .local v1, "x":J
    move v3, p2

    .local v3, "count":I
    move v4, v3

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    .line 1123
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 1129
    .end local v1    # "x":J
    :goto_0
    return-wide v1

    .line 1124
    .restart local v1    # "x":J
    :cond_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 1125
    move-wide v4, v1

    move v6, v3

    shl-long/2addr v4, v6

    move-wide v1, v4

    goto :goto_0

    .line 1126
    :cond_1
    move v4, v3

    neg-int v4, v4

    move v3, v4

    .line 1127
    move v4, v3

    const/16 v5, 0x20

    if-lt v4, v5, :cond_3

    .line 1128
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const-wide/16 v4, -0x1

    :goto_1
    move-wide v1, v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 1129
    :cond_3
    move-wide v4, v1

    move v6, v3

    shr-long/2addr v4, v6

    move-wide v1, v4

    goto :goto_0
.end method

.method public static shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 8

    .prologue
    .line 1094
    move-object v1, p0

    .local v1, "x":Lgnu/math/IntNum;
    move v2, p1

    .local v2, "count":I
    move-object v4, v1

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_3

    .line 1096
    move v4, v2

    if-gtz v4, :cond_2

    .line 1097
    move v4, v2

    const/16 v5, -0x20

    if-le v4, v5, :cond_0

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v5, v2

    neg-int v5, v5

    shr-int/2addr v4, v5

    :goto_0
    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .line 1105
    .end local v1    # "x":Lgnu/math/IntNum;
    :goto_1
    return-object v1

    .line 1097
    .restart local v1    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1098
    :cond_2
    move v4, v2

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    .line 1099
    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    int-to-long v4, v4

    move v6, v2

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    .line 1101
    :cond_3
    move v4, v2

    if-nez v4, :cond_4

    .line 1102
    move-object v4, v1

    move-object v1, v4

    goto :goto_1

    .line 1103
    :cond_4
    new-instance v4, Lgnu/math/IntNum;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lgnu/math/IntNum;-><init>(I)V

    move-object v3, v4

    .line 1104
    .local v3, "result":Lgnu/math/IntNum;
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/math/IntNum;->setShift(Lgnu/math/IntNum;I)V

    .line 1105
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    goto :goto_1
.end method

.method public static sub(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static final ten()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x6e

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final times(II)Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 469
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move v2, v0

    int-to-long v2, v2

    move v4, v1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":I
    return-object v0
.end method

.method public static final times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 12

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move v6, v1

    if-nez v6, :cond_0

    .line 475
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    .line 501
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 476
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 477
    move-object v6, v0

    move-object v0, v6

    goto :goto_0

    .line 478
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move-object v2, v6

    .line 479
    .local v2, "xwords":[I
    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    move v3, v6

    .line 480
    .local v3, "xlen":I
    move-object v6, v2

    if-nez v6, :cond_2

    .line 481
    move v6, v3

    int-to-long v6, v6

    move v8, v1

    int-to-long v8, v8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 483
    :cond_2
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v6

    move-object v5, v6

    .line 484
    .local v5, "result":Lgnu/math/IntNum;
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-gez v6, :cond_5

    .line 486
    const/4 v6, 0x1

    move v4, v6

    .line 487
    .local v4, "negative":Z
    move-object v6, v5

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move-object v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v6

    .line 488
    move-object v6, v5

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move-object v2, v6

    .line 492
    :goto_1
    move v6, v1

    if-gez v6, :cond_3

    .line 494
    move v6, v4

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 495
    move v6, v1

    neg-int v6, v6

    move v1, v6

    .line 497
    :cond_3
    move-object v6, v5

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move v7, v3

    move-object v8, v5

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move-object v9, v2

    move v10, v3

    move v11, v1

    invoke-static {v8, v9, v10, v11}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v8

    aput v8, v6, v7

    .line 498
    move-object v6, v5

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/math/IntNum;->ival:I

    .line 499
    move v6, v4

    if-eqz v6, :cond_4

    .line 500
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/math/IntNum;->setNegative()V

    .line 501
    :cond_4
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 491
    .end local v4    # "negative":Z
    :cond_5
    const/4 v6, 0x0

    move v4, v6

    .restart local v4    # "negative":Z
    goto :goto_1

    .line 494
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static final times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 14

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    if-nez v9, :cond_0

    .line 507
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    invoke-static {v9, v10}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v9

    move-object v0, v9

    .line 545
    .end local v0    # "x":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 508
    .restart local v0    # "x":Lgnu/math/IntNum;
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    if-nez v9, :cond_1

    .line 509
    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    invoke-static {v9, v10}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 510
    :cond_1
    const/4 v9, 0x0

    move v2, v9

    .line 513
    .local v2, "negative":Z
    move-object v9, v0

    iget v9, v9, Lgnu/math/IntNum;->ival:I

    move v5, v9

    .line 514
    .local v5, "xlen":I
    move-object v9, v1

    iget v9, v9, Lgnu/math/IntNum;->ival:I

    move v6, v9

    .line 515
    .local v6, "ylen":I
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/math/IntNum;->isNegative()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 517
    const/4 v9, 0x1

    move v2, v9

    .line 518
    move v9, v5

    new-array v9, v9, [I

    move-object v3, v9

    .line 519
    .local v3, "xwords":[I
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v5

    invoke-static {v9, v10, v11}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v9

    .line 526
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/math/IntNum;->isNegative()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 528
    move v9, v2

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v2, v9

    .line 529
    move v9, v6

    new-array v9, v9, [I

    move-object v4, v9

    .line 530
    .local v4, "ywords":[I
    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v6

    invoke-static {v9, v10, v11}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v9

    .line 535
    :goto_3
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 537
    move-object v9, v3

    move-object v7, v9

    .local v7, "twords":[I
    move-object v9, v4

    move-object v3, v9

    move-object v9, v7

    move-object v4, v9

    .line 538
    move v9, v5

    move v8, v9

    .local v8, "tlen":I
    move v9, v6

    move v5, v9

    move v9, v8

    move v6, v9

    .line 540
    .end local v7    # "twords":[I
    .end local v8    # "tlen":I
    :cond_2
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    invoke-static {v9}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v9

    move-object v7, v9

    .line 541
    .local v7, "result":Lgnu/math/IntNum;
    move-object v9, v7

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move-object v10, v3

    move v11, v5

    move-object v12, v4

    move v13, v6

    invoke-static {v9, v10, v11, v12, v13}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 542
    move-object v9, v7

    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    iput v10, v9, Lgnu/math/IntNum;->ival:I

    .line 543
    move v9, v2

    if-eqz v9, :cond_3

    .line 544
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/math/IntNum;->setNegative()V

    .line 545
    :cond_3
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 523
    .end local v3    # "xwords":[I
    .end local v4    # "ywords":[I
    .end local v7    # "result":Lgnu/math/IntNum;
    :cond_4
    const/4 v9, 0x0

    move v2, v9

    .line 524
    move-object v9, v0

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move-object v3, v9

    .restart local v3    # "xwords":[I
    goto :goto_1

    .line 528
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 533
    :cond_6
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move-object v4, v9

    .restart local v4    # "ywords":[I
    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/math/IntNum;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1401
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1347
    move-object v1, p0

    .local v1, "s":Ljava/lang/String;
    move/from16 v2, p1

    .local v2, "radix":I
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v3, v10

    .line 1350
    .local v3, "len":I
    move v10, v3

    move v11, v2

    add-int/2addr v10, v11

    const/16 v11, 0x1c

    if-gt v10, v11, :cond_1

    .line 1353
    move v10, v3

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_0

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-ltz v10, :cond_0

    .line 1355
    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 1357
    :cond_0
    move-object v10, v1

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    invoke-static {v10, v11}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    .line 1380
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1360
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    move v4, v10

    .line 1361
    .local v4, "byte_len":I
    move v10, v3

    new-array v10, v10, [B

    move-object v5, v10

    .line 1362
    .local v5, "bytes":[B
    const/4 v10, 0x0

    move v6, v10

    .line 1363
    .local v6, "negative":Z
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_1
    move v10, v7

    move v11, v3

    if-ge v10, v11, :cond_7

    .line 1365
    move-object v10, v1

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    .line 1366
    .local v8, "ch":C
    move v10, v8

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3

    move v10, v7

    if-nez v10, :cond_3

    .line 1367
    const/4 v10, 0x1

    move v6, v10

    .line 1363
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1368
    :cond_3
    move v10, v8

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_4

    move v10, v7

    if-nez v10, :cond_4

    .line 1369
    goto :goto_2

    .line 1370
    :cond_4
    move v10, v8

    const/16 v11, 0x5f

    if-eq v10, v11, :cond_2

    move v10, v4

    if-nez v10, :cond_5

    move v10, v8

    const/16 v11, 0x20

    if-eq v10, v11, :cond_2

    move v10, v8

    const/16 v11, 0x9

    if-ne v10, v11, :cond_5

    .line 1371
    goto :goto_2

    .line 1374
    :cond_5
    move v10, v8

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    move v9, v10

    .line 1375
    .local v9, "digit":I
    move v10, v9

    if-gez v10, :cond_6

    .line 1376
    new-instance v10, Ljava/lang/NumberFormatException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "For input string: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1377
    :cond_6
    move-object v10, v5

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move v12, v9

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_2

    .line 1380
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    :cond_7
    move-object v10, v5

    move v11, v4

    move v12, v6

    move v13, v2

    invoke-static {v10, v11, v12, v13}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    goto/16 :goto_0
.end method

.method public static valueOf([BIZI)Lgnu/math/IntNum;
    .locals 11

    .prologue
    .line 1386
    move-object v0, p0

    .local v0, "digits":[B
    move v1, p1

    .local v1, "byte_len":I
    move v2, p2

    .local v2, "negative":Z
    move v3, p3

    .local v3, "radix":I
    move v7, v3

    invoke-static {v7}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v7

    move v4, v7

    .line 1387
    .local v4, "chars_per_word":I
    move v7, v1

    move v8, v4

    div-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    move-object v5, v7

    .line 1388
    .local v5, "words":[I
    move-object v7, v5

    move-object v8, v0

    move v9, v1

    move v10, v3

    invoke-static {v7, v8, v9, v10}, Lgnu/math/MPN;->set_str([I[BII)I

    move-result v7

    move v6, v7

    .line 1389
    .local v6, "size":I
    move v7, v6

    if-nez v7, :cond_0

    .line 1390
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v7

    move-object v0, v7

    .line 1395
    .end local v0    # "digits":[B
    :goto_0
    return-object v0

    .line 1391
    .restart local v0    # "digits":[B
    :cond_0
    move-object v7, v5

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    if-gez v7, :cond_1

    .line 1392
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 1393
    :cond_1
    move v7, v2

    if-eqz v7, :cond_2

    .line 1394
    move-object v7, v5

    move-object v8, v5

    move v9, v6

    invoke-static {v7, v8, v9}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v7

    .line 1395
    :cond_2
    move-object v7, v5

    move v8, v6

    invoke-static {v7, v8}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public static valueOf([CIIIZ)Lgnu/math/IntNum;
    .locals 14

    .prologue
    .line 1324
    move-object v0, p0

    .local v0, "buf":[C
    move v1, p1

    .local v1, "offset":I
    move/from16 v2, p2

    .local v2, "length":I
    move/from16 v3, p3

    .local v3, "radix":I
    move/from16 v4, p4

    .local v4, "negative":Z
    const/4 v10, 0x0

    move v5, v10

    .line 1325
    .local v5, "byte_len":I
    move v10, v2

    new-array v10, v10, [B

    move-object v6, v10

    .line 1326
    .local v6, "bytes":[B
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 1328
    move-object v10, v0

    move v11, v1

    move v12, v7

    add-int/2addr v11, v12

    aget-char v10, v10, v11

    move v8, v10

    .line 1329
    .local v8, "ch":C
    move v10, v8

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_1

    .line 1330
    const/4 v10, 0x1

    move v4, v10

    .line 1326
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1331
    :cond_1
    move v10, v8

    const/16 v11, 0x5f

    if-eq v10, v11, :cond_0

    move v10, v5

    if-nez v10, :cond_2

    move v10, v8

    const/16 v11, 0x20

    if-eq v10, v11, :cond_0

    move v10, v8

    const/16 v11, 0x9

    if-ne v10, v11, :cond_2

    .line 1332
    goto :goto_1

    .line 1335
    :cond_2
    move v10, v8

    move v11, v3

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    move v9, v10

    .line 1336
    .local v9, "digit":I
    move v10, v9

    if-gez v10, :cond_4

    .line 1337
    .line 1341
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    :cond_3
    move-object v10, v6

    move v11, v5

    move v12, v4

    move v13, v3

    invoke-static {v10, v11, v12, v13}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "buf":[C
    return-object v0

    .line 1338
    .restart local v0    # "buf":[C
    .restart local v8    # "ch":C
    .restart local v9    # "digit":I
    :cond_4
    move-object v10, v6

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move v12, v9

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_1
.end method

.method public static wordsNeeded([II)I
    .locals 8

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "words":[I
    move v1, p1

    .local v1, "len":I
    move v4, v1

    move v2, v4

    .line 290
    .local v2, "i":I
    move v4, v2

    if-lez v4, :cond_1

    .line 292
    move-object v4, v0

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 293
    .local v3, "word":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 295
    :cond_0
    move v4, v2

    if-lez v4, :cond_1

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    move v7, v4

    move v4, v7

    move v5, v7

    move v3, v5

    if-gez v4, :cond_1

    .line 297
    add-int/lit8 v2, v2, -0x1

    .line 298
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 306
    .end local v3    # "word":I
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .end local v0    # "words":[I
    return v0

    .line 303
    .restart local v0    # "words":[I
    .restart local v3    # "word":I
    :cond_2
    :goto_0
    move v4, v3

    if-nez v4, :cond_1

    move v4, v2

    if-lez v4, :cond_1

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    move v7, v4

    move v4, v7

    move v5, v7

    move v3, v5

    if-ltz v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static final zero()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x64

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 1514
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/IntNum;

    if-eqz v3, :cond_0

    .line 1515
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/IntNum;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .line 1518
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 1516
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Numeric;

    if-nez v3, :cond_1

    .line 1517
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1518
    :cond_1
    move-object v3, v1

    check-cast v3, Lgnu/math/Numeric;

    move-object v4, v0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    .line 1705
    move-object v1, p0

    .local v1, "this":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    .line 1706
    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    move-object v1, v2

    .line 1709
    .end local v1    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v1

    .line 1707
    .restart local v1    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 1708
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 1709
    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 1698
    move-object v1, p0

    .local v1, "this":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-eqz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 1699
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v2

    .line 1700
    .end local v1    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/IntNum;
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public canonicalize()Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_1

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v3}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v2

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lgnu/math/IntNum;->ival:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 314
    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 315
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lgnu/math/IntNum;->ival:I

    .line 316
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/math/IntNum;->words:[I

    .line 318
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_2

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    const/16 v2, -0x64

    if-lt v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    const/16 v2, 0x400

    if-gt v1, v2, :cond_2

    .line 319
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/16 v3, -0x64

    add-int/lit8 v2, v2, 0x64

    aget-object v1, v1, v2

    move-object v0, v1

    .line 320
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_2
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method checkBits(I)Z
    .locals 7

    .prologue
    .line 1420
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "n":I
    move v3, v1

    if-gtz v3, :cond_0

    .line 1421
    const/4 v3, 0x0

    move v0, v3

    .line 1428
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return v0

    .line 1422
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_3

    .line 1423
    move v3, v1

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1425
    :cond_3
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_2
    move v3, v2

    move v4, v1

    const/4 v5, 0x5

    shr-int/lit8 v4, v4, 0x5

    if-ge v3, v4, :cond_5

    .line 1426
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    move v4, v2

    aget v3, v3, v4

    if-eqz v3, :cond_4

    .line 1427
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1425
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1428
    :cond_5
    move v3, v1

    const/16 v4, 0x1f

    and-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    move v4, v2

    aget v3, v3, v4

    const/4 v4, 0x1

    move v5, v1

    const/16 v6, 0x1f

    and-int/lit8 v5, v5, 0x1f

    shl-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v2

    move v0, v2

    .line 259
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/RealNum;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 1532
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/RatNum;

    if-eqz v3, :cond_0

    .line 1534
    move-object v3, v1

    check-cast v3, Lgnu/math/RatNum;

    move-object v2, v3

    .line 1535
    .local v2, "r":Lgnu/math/RatNum;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v3

    move-object v0, v3

    .line 1540
    .end local v0    # "this":Lgnu/math/IntNum;
    .end local v2    # "r":Lgnu/math/RatNum;
    :goto_0
    return-object v0

    .line 1538
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Numeric;

    if-nez v3, :cond_1

    .line 1539
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1540
    :cond_1
    move-object v3, v1

    check-cast v3, Lgnu/math/Numeric;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public doubleValue()D
    .locals 6

    .prologue
    .line 1406
    move-object v1, p0

    .local v1, "this":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    .line 1407
    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    int-to-double v2, v2

    move-wide v1, v2

    .line 1413
    .end local v1    # "this":Lgnu/math/IntNum;
    :goto_0
    return-wide v1

    .line 1408
    .restart local v1    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 1409
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    move-wide v1, v2

    goto :goto_0

    .line 1410
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1411
    move-object v2, v1

    invoke-static {v2}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0

    .line 1413
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-nez v2, :cond_1

    .line 1317
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 1318
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public format(ILjava/lang/StringBuffer;)V
    .locals 6

    .prologue
    .line 1135
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "radix":I
    move-object v2, p2

    .local v2, "buffer":Ljava/lang/StringBuffer;
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1137
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_0

    .line 1139
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1140
    .line 1149
    :goto_0
    return-void

    .line 1142
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 1144
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1145
    goto :goto_0

    .line 1148
    :cond_1
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1149
    goto :goto_0
.end method

.method public format(ILjava/lang/StringBuilder;)V
    .locals 20

    .prologue
    .line 1160
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/math/IntNum;
    move/from16 v3, p1

    .local v3, "radix":I
    move-object/from16 v4, p2

    .local v4, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 1162
    move/from16 v16, v3

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1163
    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v17, v0

    move/from16 v18, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    goto :goto_0

    .line 1167
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 1169
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v16

    move-wide/from16 v5, v16

    .line 1170
    .local v5, "lval":J
    move/from16 v16, v3

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1171
    move-object/from16 v16, v4

    move-wide/from16 v17, v5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1174
    :goto_1
    goto :goto_0

    .line 1173
    :cond_3
    move-object/from16 v16, v4

    move-wide/from16 v17, v5

    move/from16 v19, v3

    invoke-static/range {v17 .. v19}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    goto :goto_1

    .line 1177
    .end local v5    # "lval":J
    :cond_4
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lgnu/math/IntNum;->isNegative()Z

    move-result v16

    move/from16 v5, v16

    .line 1179
    .local v5, "neg":Z
    move/from16 v16, v5

    if-nez v16, :cond_5

    move/from16 v16, v3

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 1181
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 1182
    .local v6, "work":[I
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 1186
    :goto_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 1188
    .local v7, "len":I
    move/from16 v16, v3

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 1190
    move/from16 v16, v5

    if-eqz v16, :cond_6

    .line 1191
    move-object/from16 v16, v4

    const/16 v17, 0x2d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1192
    :cond_6
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v8, v16

    .line 1193
    .local v8, "buf_start":I
    move/from16 v16, v7

    move/from16 v9, v16

    .local v9, "i":I
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move/from16 v16, v9

    if-ltz v16, :cond_b

    .line 1195
    move-object/from16 v16, v6

    move/from16 v17, v9

    aget v16, v16, v17

    move/from16 v10, v16

    .line 1196
    .local v10, "word":I
    const/16 v16, 0x8

    move/from16 v11, v16

    .local v11, "j":I
    :goto_4
    add-int/lit8 v11, v11, -0x1

    move/from16 v16, v11

    if-ltz v16, :cond_a

    .line 1198
    move/from16 v16, v10

    const/16 v17, 0x4

    move/from16 v18, v11

    mul-int v17, v17, v18

    shr-int v16, v16, v17

    const/16 v17, 0xf

    and-int/lit8 v16, v16, 0xf

    move/from16 v12, v16

    .line 1200
    .local v12, "hex_digit":I
    move/from16 v16, v12

    if-gtz v16, :cond_7

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 1201
    :cond_7
    move-object/from16 v16, v4

    move/from16 v17, v12

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->forDigit(II)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1202
    :cond_8
    goto :goto_4

    .line 1185
    .end local v6    # "work":[I
    .end local v7    # "len":I
    .end local v8    # "buf_start":I
    .end local v9    # "i":I
    .end local v10    # "word":I
    .end local v11    # "j":I
    .end local v12    # "hex_digit":I
    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .restart local v6    # "work":[I
    goto :goto_2

    .line 1203
    .restart local v7    # "len":I
    .restart local v8    # "buf_start":I
    .restart local v9    # "i":I
    .restart local v10    # "word":I
    .restart local v11    # "j":I
    :cond_a
    goto :goto_3

    .line 1204
    .end local v10    # "word":I
    .end local v11    # "j":I
    :cond_b
    goto/16 :goto_0

    .line 1207
    .end local v8    # "buf_start":I
    .end local v9    # "i":I
    :cond_c
    move/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v16

    move/from16 v8, v16

    .line 1208
    .local v8, "chars_per_word":I
    move/from16 v16, v3

    move/from16 v9, v16

    .line 1209
    .local v9, "wradix":I
    move/from16 v16, v8

    move/from16 v10, v16

    .local v10, "j":I
    :goto_5
    add-int/lit8 v10, v10, -0x1

    move/from16 v16, v10

    if-lez v16, :cond_d

    .line 1210
    move/from16 v16, v9

    move/from16 v17, v3

    mul-int v16, v16, v17

    move/from16 v9, v16

    goto :goto_5

    .line 1211
    :cond_d
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v10, v16

    .line 1214
    .local v10, "i":I
    :goto_6
    move-object/from16 v16, v6

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v9

    invoke-static/range {v16 .. v19}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v16

    move/from16 v11, v16

    .line 1215
    .local v11, "wdigit":I
    :goto_7
    move/from16 v16, v7

    if-lez v16, :cond_e

    move-object/from16 v16, v6

    move/from16 v17, v7

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    aget v16, v16, v17

    if-nez v16, :cond_e

    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 1216
    :cond_e
    move/from16 v16, v8

    move/from16 v12, v16

    .local v12, "j":I
    :goto_8
    add-int/lit8 v12, v12, -0x1

    move/from16 v16, v12

    if-ltz v16, :cond_f

    .line 1218
    move/from16 v16, v7

    if-nez v16, :cond_11

    move/from16 v16, v11

    if-nez v16, :cond_11

    .line 1219
    .line 1233
    :cond_f
    move/from16 v16, v7

    if-nez v16, :cond_13

    .line 1234
    .line 1236
    move/from16 v16, v5

    if-eqz v16, :cond_10

    .line 1237
    move-object/from16 v16, v4

    const/16 v17, 0x2d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1239
    :cond_10
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v11, v16

    .line 1240
    .end local v12    # "j":I
    .local v11, "j":I
    :goto_9
    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 1242
    move-object/from16 v16, v4

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    move/from16 v12, v16

    .line 1243
    .local v12, "tmp":C
    move-object/from16 v16, v4

    move/from16 v17, v10

    move-object/from16 v18, v4

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1244
    move-object/from16 v16, v4

    move/from16 v17, v11

    move/from16 v18, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1245
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, -0x1

    .line 1246
    goto :goto_9

    .line 1220
    .local v11, "wdigit":I
    .local v12, "j":I
    :cond_11
    move/from16 v16, v11

    if-gez v16, :cond_12

    .line 1222
    move/from16 v16, v11

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    and-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 1223
    .local v14, "ldigit":J
    move-wide/from16 v16, v14

    move/from16 v18, v3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    rem-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v13, v16

    .line 1224
    .local v13, "digit":I
    move/from16 v16, v11

    move/from16 v17, v3

    div-int v16, v16, v17

    move/from16 v11, v16

    .line 1231
    .end local v14    # "ldigit":J
    :goto_a
    move-object/from16 v16, v4

    move/from16 v17, v13

    move/from16 v18, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->forDigit(II)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1232
    goto/16 :goto_8

    .line 1228
    .end local v13    # "digit":I
    :cond_12
    move/from16 v16, v11

    move/from16 v17, v3

    rem-int v16, v16, v17

    move/from16 v13, v16

    .line 1229
    .restart local v13    # "digit":I
    move/from16 v16, v11

    move/from16 v17, v3

    div-int v16, v16, v17

    move/from16 v11, v16

    goto :goto_a

    .line 1235
    .end local v13    # "digit":I
    :cond_13
    goto/16 :goto_6
.end method

.method public getAbsolute([I)V
    .locals 8

    .prologue
    .line 1551
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "words":[I
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_2

    .line 1553
    const/4 v4, 0x1

    move v2, v4

    .line 1554
    .local v2, "len":I
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    aput v6, v4, v5

    .line 1562
    :cond_0
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 1563
    move-object v4, v1

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v4

    .line 1564
    :cond_1
    move-object v4, v1

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    move v5, v2

    if-le v4, v5, :cond_3

    .line 1565
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_0

    .line 1558
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v2, v4

    .line 1559
    .restart local v2    # "len":I
    move v4, v2

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 1560
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move v7, v3

    aget v6, v6, v7

    aput v6, v4, v5

    goto :goto_1

    .line 1566
    :cond_3
    return-void
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1295
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public inIntRange()Z
    .locals 6

    .prologue
    .line 1721
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    const-wide/32 v2, -0x80000000

    const-wide/32 v4, 0x7fffffff

    invoke-virtual {v1, v2, v3, v4, v5}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0
.end method

.method public inLongRange()Z
    .locals 6

    .prologue
    .line 1727
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3, v4, v5}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0
.end method

.method public inRange(JJ)Z
    .locals 9

    .prologue
    .line 1715
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-wide v1, p1

    .local v1, "lo":J
    move-wide v3, p3

    .local v3, "hi":J
    move-object v5, v0

    move-wide v6, v1

    invoke-static {v5, v6, v7}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v5

    if-ltz v5, :cond_0

    move-object v5, v0

    move-wide v6, v3

    invoke-static {v5, v6, v7}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v5

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public intLength()I
    .locals 3

    .prologue
    .line 1633
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    .line 1634
    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    invoke-static {v1}, Lgnu/math/MPN;->intLength(I)I

    move-result v1

    move v0, v1

    .line 1636
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    invoke-static {v1, v2}, Lgnu/math/MPN;->intLength([II)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public intValue()I
    .locals 3

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    .line 1270
    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    move v0, v1

    .line 1271
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public final isMinusOne()Z
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isNegative()Z
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    :goto_0
    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final isOdd()Z
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    :goto_0
    move v1, v2

    .line 265
    .local v1, "low":I
    move v2, v1

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .line 264
    .end local v1    # "low":I
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    goto :goto_0

    .line 265
    .restart local v1    # "low":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final isOne()Z
    .locals 3

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZero()Z
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return v0

    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 8

    .prologue
    .line 1286
    move-object v1, p0

    .local v1, "this":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    .line 1287
    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    int-to-long v2, v2

    move-wide v1, v2

    .line 1290
    .end local v1    # "this":Lgnu/math/IntNum;
    :goto_0
    return-wide v1

    .line 1288
    .restart local v1    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1289
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    move-wide v1, v2

    goto :goto_0

    .line 1290
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    move-wide v1, v2

    goto :goto_0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 1524
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .line 1527
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 1525
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 1526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1527
    :cond_1
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/IntNum;->isOne()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    move-object v2, v0

    move-object v0, v2

    .line 876
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 870
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/IntNum;->isMinusOne()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->isOdd()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    goto :goto_1

    .line 872
    :cond_2
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_3

    move-object v2, v1

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    if-ltz v2, :cond_3

    .line 873
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v3}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 874
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/IntNum;->isZero()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 875
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    invoke-static {v2}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v2

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_2

    .line 876
    :cond_5
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/math/RatNum;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1674
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 1675
    .local v2, "i":I
    move v5, v2

    const/high16 v6, -0x40000000    # -2.0f

    if-gt v5, v6, :cond_0

    .line 1677
    move v5, v2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    move v2, v5

    .line 1678
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1679
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 1688
    :cond_0
    :goto_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/math/IntNum;->ival:I

    .line 1689
    return-void

    .line 1682
    :cond_1
    move v5, v2

    new-array v5, v5, [I

    move-object v3, v5

    .line 1683
    .local v3, "w":[I
    move v5, v2

    move v4, v5

    .local v4, "j":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_2

    .line 1684
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 1685
    :cond_2
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/math/IntNum;->words:[I

    goto :goto_0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1693
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntNum;
    return-object v0
.end method

.method public realloc(I)V
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "nwords":I
    move v3, v1

    if-nez v3, :cond_2

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-eqz v3, :cond_1

    .line 156
    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    if-lez v3, :cond_0

    .line 157
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lgnu/math/IntNum;->ival:I

    .line 158
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/math/IntNum;->words:[I

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    array-length v3, v3

    move v4, v1

    if-lt v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    array-length v3, v3

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 165
    :cond_3
    move v3, v1

    new-array v3, v3, [I

    move-object v2, v3

    .line 166
    .local v2, "new_words":[I
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_4

    .line 168
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    aput v5, v3, v4

    .line 169
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lgnu/math/IntNum;->ival:I

    .line 177
    :goto_1
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/math/IntNum;->words:[I

    goto :goto_0

    .line 173
    :cond_4
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    if-ge v3, v4, :cond_5

    .line 174
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/math/IntNum;->ival:I

    .line 175
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public roundToDouble(IZZ)D
    .locals 22

    .prologue
    .line 1442
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/math/IntNum;
    move/from16 v4, p1

    .local v4, "exp":I
    move/from16 v5, p2

    .local v5, "neg":Z
    move/from16 v6, p3

    .local v6, "remainder":Z
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/math/IntNum;->intLength()I

    move-result v18

    move/from16 v7, v18

    .line 1446
    .local v7, "il":I
    move/from16 v18, v4

    move/from16 v19, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int v18, v18, v19

    move/from16 v4, v18

    .line 1452
    move/from16 v18, v4

    const/16 v19, -0x433

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1453
    move/from16 v18, v5

    if-eqz v18, :cond_0

    const-wide/high16 v18, -0x8000000000000000L

    :goto_0
    move-wide/from16 v3, v18

    .line 1508
    .end local v3    # "this":Lgnu/math/IntNum;
    :goto_1
    return-wide v3

    .line 1453
    .restart local v3    # "this":Lgnu/math/IntNum;
    :cond_0
    const-wide/16 v18, 0x0

    goto :goto_0

    .line 1456
    :cond_1
    move/from16 v18, v4

    const/16 v19, 0x3ff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1457
    move/from16 v18, v5

    if-eqz v18, :cond_2

    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    move-wide/from16 v3, v18

    goto :goto_1

    :cond_2
    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    .line 1461
    :cond_3
    move/from16 v18, v4

    const/16 v19, -0x3fe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    const/16 v18, 0x35

    :goto_3
    move/from16 v8, v18

    .line 1465
    .local v8, "ml":I
    move/from16 v18, v7

    move/from16 v19, v8

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 1466
    .local v11, "excess_bits":I
    move/from16 v18, v11

    if-lez v18, :cond_7

    .line 1467
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v18, v0

    move/from16 v19, v11

    shr-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :goto_4
    move-wide/from16 v9, v18

    .line 1474
    .local v9, "m":J
    :goto_5
    move/from16 v18, v4

    const/16 v19, 0x3ff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-wide/from16 v18, v9

    const/16 v20, 0x1

    shr-long v18, v18, v20

    const-wide v20, 0x1fffffffffffffL

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 1476
    move/from16 v18, v6

    if-nez v18, :cond_4

    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v8

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1477
    :cond_4
    move/from16 v18, v5

    if-eqz v18, :cond_8

    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_6
    move-wide/from16 v3, v18

    goto/16 :goto_1

    .line 1461
    .end local v8    # "ml":I
    .end local v9    # "m":J
    .end local v11    # "excess_bits":I
    :cond_5
    const/16 v18, 0x35

    move/from16 v19, v4

    add-int v18, v18, v19

    const/16 v19, 0x3fe

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x3fe

    move/from16 v18, v0

    goto :goto_3

    .line 1467
    .restart local v8    # "ml":I
    .restart local v11    # "excess_bits":I
    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v19, v0

    move/from16 v20, v11

    invoke-static/range {v18 .. v20}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide v18

    goto :goto_4

    .line 1470
    :cond_7
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v18

    move/from16 v20, v11

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    shl-long v18, v18, v20

    move-wide/from16 v9, v18

    .restart local v9    # "m":J
    goto :goto_5

    .line 1477
    :cond_8
    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_6

    .line 1479
    :cond_9
    move/from16 v18, v5

    if-eqz v18, :cond_a

    const-wide v18, -0x10000000000001L

    :goto_7
    move-wide/from16 v3, v18

    goto/16 :goto_1

    :cond_a
    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_7

    .line 1484
    :cond_b
    move-wide/from16 v18, v9

    const-wide/16 v20, 0x1

    and-long v18, v18, v20

    const-wide/16 v20, 0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_d

    move-wide/from16 v18, v9

    const-wide/16 v20, 0x2

    and-long v18, v18, v20

    const-wide/16 v20, 0x2

    cmp-long v18, v18, v20

    if-eqz v18, :cond_c

    move/from16 v18, v6

    if-nez v18, :cond_c

    move-object/from16 v18, v3

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1487
    :cond_c
    move-wide/from16 v18, v9

    const-wide/16 v20, 0x2

    add-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 1489
    move-wide/from16 v18, v9

    const-wide/high16 v20, 0x40000000000000L

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_e

    .line 1491
    add-int/lit8 v4, v4, 0x1

    .line 1493
    move-wide/from16 v18, v9

    const/16 v20, 0x1

    shr-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 1502
    :cond_d
    :goto_8
    move-wide/from16 v18, v9

    const/16 v20, 0x1

    shr-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 1504
    move/from16 v18, v5

    if-eqz v18, :cond_f

    const-wide/high16 v18, -0x8000000000000000L

    :goto_9
    move-wide/from16 v12, v18

    .line 1505
    .local v12, "bits_sign":J
    add-int/lit16 v4, v4, 0x3ff

    .line 1506
    move/from16 v18, v4

    if-gtz v18, :cond_10

    const-wide/16 v18, 0x0

    :goto_a
    move-wide/from16 v14, v18

    .line 1507
    .local v14, "bits_exp":J
    move-wide/from16 v18, v9

    const-wide v20, -0x10000000000001L

    and-long v18, v18, v20

    move-wide/from16 v16, v18

    .line 1508
    .local v16, "bits_mant":J
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    or-long v18, v18, v20

    move-wide/from16 v20, v16

    or-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 v3, v18

    goto/16 :goto_1

    .line 1497
    .end local v12    # "bits_sign":J
    .end local v14    # "bits_exp":J
    .end local v16    # "bits_mant":J
    :cond_e
    move/from16 v18, v8

    const/16 v19, 0x34

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    move-wide/from16 v18, v9

    const-wide/high16 v20, 0x20000000000000L

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_d

    .line 1498
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1504
    :cond_f
    const-wide/16 v18, 0x0

    goto :goto_9

    .line 1506
    .restart local v12    # "bits_sign":J
    :cond_10
    move/from16 v18, v4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x34

    shl-long v18, v18, v20

    goto :goto_a
.end method

.method public final set(I)V
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/math/IntNum;->words:[I

    .line 373
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/math/IntNum;->ival:I

    .line 374
    return-void
.end method

.method public final set(J)V
    .locals 9

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-wide v1, p1

    .local v1, "y":J
    move-wide v4, v1

    long-to-int v4, v4

    move v3, v4

    .line 380
    .local v3, "i":I
    move v4, v3

    int-to-long v4, v4

    move-wide v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 382
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/math/IntNum;->ival:I

    .line 383
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/math/IntNum;->words:[I

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->realloc(I)V

    .line 388
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    move v6, v3

    aput v6, v4, v5

    .line 389
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x1

    move-wide v6, v1

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v5

    .line 390
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lgnu/math/IntNum;->ival:I

    goto :goto_0
.end method

.method public final set(Lgnu/math/IntNum;)V
    .locals 7

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_1

    .line 406
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    invoke-virtual {v2, v3}, Lgnu/math/IntNum;->set(I)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 409
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    invoke-virtual {v2, v3}, Lgnu/math/IntNum;->realloc(I)V

    .line 410
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    move-object v6, v1

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    iput v3, v2, Lgnu/math/IntNum;->ival:I

    goto :goto_0
.end method

.method public final set([II)V
    .locals 5

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "words":[I
    move v2, p2

    .local v2, "length":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/math/IntNum;->ival:I

    .line 399
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/math/IntNum;->words:[I

    .line 400
    return-void
.end method

.method public final setAdd(I)V
    .locals 5

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 367
    return-void
.end method

.method public setAdd(Lgnu/math/IntNum;I)V
    .locals 14

    .prologue
    .line 343
    move-object v1, p0

    .local v1, "this":Lgnu/math/IntNum;
    move-object v2, p1

    .local v2, "x":Lgnu/math/IntNum;
    move/from16 v3, p2

    .local v3, "y":I
    move-object v8, v2

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_0

    .line 345
    move-object v8, v1

    move-object v9, v2

    iget v9, v9, Lgnu/math/IntNum;->ival:I

    int-to-long v9, v9

    move v11, v3

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lgnu/math/IntNum;->set(J)V

    .line 346
    .line 361
    :goto_0
    return-void

    .line 348
    :cond_0
    move-object v8, v2

    iget v8, v8, Lgnu/math/IntNum;->ival:I

    move v4, v8

    .line 349
    .local v4, "len":I
    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/math/IntNum;->realloc(I)V

    .line 350
    move v8, v3

    int-to-long v8, v8

    move-wide v5, v8

    .line 351
    .local v5, "carry":J
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 353
    move-wide v8, v5

    move-object v10, v2

    iget-object v10, v10, Lgnu/math/IntNum;->words:[I

    move v11, v7

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v5, v8

    .line 354
    move-object v8, v1

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v7

    move-wide v10, v5

    long-to-int v10, v10

    aput v10, v8, v9

    .line 355
    move-wide v8, v5

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    move-wide v5, v8

    .line 351
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 357
    :cond_1
    move-object v8, v2

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gez v8, :cond_2

    .line 358
    move-wide v8, v5

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-wide v5, v8

    .line 359
    :cond_2
    move-object v8, v1

    iget-object v8, v8, Lgnu/math/IntNum;->words:[I

    move v9, v4

    move-wide v10, v5

    long-to-int v10, v10

    aput v10, v8, v9

    .line 360
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v9

    iput v9, v8, Lgnu/math/IntNum;->ival:I

    .line 361
    goto :goto_0
.end method

.method setInvert()V
    .locals 6

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_1

    .line 1008
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/math/IntNum;->ival:I

    .line 1014
    :cond_0
    return-void

    .line 1011
    :cond_1
    move-object v2, v0

    iget v2, v2, Lgnu/math/IntNum;->ival:I

    move v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    if-ltz v2, :cond_0

    .line 1012
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move v5, v1

    aget v4, v4, v5

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    goto :goto_0
.end method

.method public final setNegative()V
    .locals 3

    .prologue
    .line 1606
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1607
    return-void
.end method

.method public setNegative(Lgnu/math/IntNum;)V
    .locals 6

    .prologue
    .line 1588
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/IntNum;
    move-object v3, v1

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    move v2, v3

    .line 1589
    .local v2, "len":I
    move-object v3, v1

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_1

    .line 1591
    move v3, v2

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 1592
    move-object v3, v0

    move v4, v2

    int-to-long v4, v4

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lgnu/math/IntNum;->set(J)V

    .line 1595
    .line 1601
    :goto_0
    return-void

    .line 1594
    :cond_0
    move-object v3, v0

    move v4, v2

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lgnu/math/IntNum;->set(I)V

    goto :goto_0

    .line 1597
    :cond_1
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 1598
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1599
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntNum;->words:[I

    move v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1600
    :cond_2
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/math/IntNum;->ival:I

    .line 1601
    goto :goto_0
.end method

.method setShift(Lgnu/math/IntNum;I)V
    .locals 6

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/IntNum;
    move v2, p2

    .local v2, "count":I
    move v3, v2

    if-lez v3, :cond_0

    .line 1087
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/math/IntNum;->setShiftLeft(Lgnu/math/IntNum;I)V

    .line 1090
    :goto_0
    return-void

    .line 1089
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Lgnu/math/IntNum;->setShiftRight(Lgnu/math/IntNum;I)V

    goto :goto_0
.end method

.method setShiftLeft(Lgnu/math/IntNum;I)V
    .locals 14

    .prologue
    .line 1020
    move-object v1, p0

    .local v1, "this":Lgnu/math/IntNum;
    move-object v2, p1

    .local v2, "x":Lgnu/math/IntNum;
    move/from16 v3, p2

    .local v3, "count":I
    move-object v9, v2

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    if-nez v9, :cond_1

    .line 1022
    move v9, v3

    const/16 v10, 0x20

    if-ge v9, v10, :cond_0

    .line 1024
    move-object v9, v1

    move-object v10, v2

    iget v10, v10, Lgnu/math/IntNum;->ival:I

    int-to-long v10, v10

    move v12, v3

    shl-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lgnu/math/IntNum;->set(J)V

    .line 1025
    .line 1056
    :goto_0
    return-void

    .line 1027
    :cond_0
    const/4 v9, 0x1

    new-array v9, v9, [I

    move-object v4, v9

    .line 1028
    .local v4, "xwords":[I
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v2

    iget v11, v11, Lgnu/math/IntNum;->ival:I

    aput v11, v9, v10

    .line 1029
    const/4 v9, 0x1

    move v5, v9

    .line 1036
    .local v5, "xlen":I
    :goto_1
    move v9, v3

    const/4 v10, 0x5

    shr-int/lit8 v9, v9, 0x5

    move v6, v9

    .line 1037
    .local v6, "word_count":I
    move v9, v3

    const/16 v10, 0x1f

    and-int/lit8 v9, v9, 0x1f

    move v3, v9

    .line 1038
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    move v7, v9

    .line 1039
    .local v7, "new_len":I
    move v9, v3

    if-nez v9, :cond_3

    .line 1041
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Lgnu/math/IntNum;->realloc(I)V

    .line 1042
    move v9, v5

    move v8, v9

    .local v8, "i":I
    :goto_2
    add-int/lit8 v8, v8, -0x1

    move v9, v8

    if-ltz v9, :cond_2

    .line 1043
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move v10, v8

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v4

    move v12, v8

    aget v11, v11, v12

    aput v11, v9, v10

    goto :goto_2

    .line 1033
    .end local v4    # "xwords":[I
    .end local v5    # "xlen":I
    .end local v6    # "word_count":I
    .end local v7    # "new_len":I
    .end local v8    # "i":I
    :cond_1
    move-object v9, v2

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move-object v4, v9

    .line 1034
    .restart local v4    # "xwords":[I
    move-object v9, v2

    iget v9, v9, Lgnu/math/IntNum;->ival:I

    move v5, v9

    .restart local v5    # "xlen":I
    goto :goto_1

    .line 1043
    .line 1053
    .restart local v6    # "word_count":I
    .restart local v7    # "new_len":I
    :cond_2
    :goto_3
    move-object v9, v1

    move v10, v7

    iput v10, v9, Lgnu/math/IntNum;->ival:I

    .line 1054
    move v9, v6

    move v8, v9

    .restart local v8    # "i":I
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move v9, v8

    if-ltz v9, :cond_4

    .line 1055
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move v10, v8

    const/4 v11, 0x0

    aput v11, v9, v10

    goto :goto_4

    .line 1047
    .end local v8    # "i":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 1048
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Lgnu/math/IntNum;->realloc(I)V

    .line 1049
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move v10, v6

    move-object v11, v4

    move v12, v5

    move v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v9

    move v8, v9

    .line 1050
    .local v8, "shift_out":I
    const/16 v9, 0x20

    move v10, v3

    rsub-int/lit8 v9, v10, 0x20

    move v3, v9

    .line 1051
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/IntNum;->words:[I

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v11, v8

    move v12, v3

    shl-int/2addr v11, v12

    move v12, v3

    shr-int/2addr v11, v12

    aput v11, v9, v10

    goto :goto_3

    .line 1056
    .local v8, "i":I
    :cond_4
    goto :goto_0
.end method

.method setShiftRight(Lgnu/math/IntNum;I)V
    .locals 14

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/IntNum;
    move/from16 v2, p2

    .local v2, "count":I
    move-object v6, v1

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_3

    .line 1061
    move-object v6, v0

    move v7, v2

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1

    move-object v7, v1

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    move v8, v2

    shr-int/2addr v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Lgnu/math/IntNum;->set(I)V

    .line 1082
    :cond_0
    :goto_1
    return-void

    .line 1061
    :cond_1
    move-object v7, v1

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    if-gez v7, :cond_2

    const/4 v7, -0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1062
    :cond_3
    move v6, v2

    if-nez v6, :cond_4

    .line 1063
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto :goto_1

    .line 1066
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    move v3, v6

    .line 1067
    .local v3, "neg":Z
    move v6, v2

    const/4 v7, 0x5

    shr-int/lit8 v6, v6, 0x5

    move v4, v6

    .line 1068
    .local v4, "word_count":I
    move v6, v2

    const/16 v7, 0x1f

    and-int/lit8 v6, v6, 0x1f

    move v2, v6

    .line 1069
    move-object v6, v1

    iget v6, v6, Lgnu/math/IntNum;->ival:I

    move v7, v4

    sub-int/2addr v6, v7

    move v5, v6

    .line 1070
    .local v5, "d_len":I
    move v6, v5

    if-gtz v6, :cond_6

    .line 1071
    move-object v6, v0

    move v7, v3

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v6, v7}, Lgnu/math/IntNum;->set(I)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 1074
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-eqz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    array-length v6, v6

    move v7, v5

    if-ge v6, v7, :cond_8

    .line 1075
    :cond_7
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/math/IntNum;->realloc(I)V

    .line 1076
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move-object v7, v1

    iget-object v7, v7, Lgnu/math/IntNum;->words:[I

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 1077
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lgnu/math/IntNum;->ival:I

    .line 1078
    move v6, v3

    if-eqz v6, :cond_0

    .line 1079
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v12, v6

    move v13, v7

    move-object v6, v12

    move v7, v13

    move-object v8, v12

    move v9, v13

    aget v8, v8, v9

    const/4 v9, -0x2

    const/16 v10, 0x1f

    move v11, v2

    rsub-int/lit8 v10, v11, 0x1f

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v6, v7

    goto :goto_1
.end method

.method public sign()I
    .locals 6

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v1, v4

    .line 199
    .local v1, "n":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move-object v2, v4

    .line 200
    .local v2, "w":[I
    move-object v4, v2

    if-nez v4, :cond_2

    .line 201
    move v4, v1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 212
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_1
    return v0

    .line 201
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move v4, v1

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 202
    :cond_2
    move-object v4, v2

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    aget v4, v4, v5

    move v3, v4

    .line 203
    .local v3, "i":I
    move v4, v3

    if-lez v4, :cond_3

    .line 204
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 205
    :cond_3
    move v4, v3

    if-gez v4, :cond_4

    .line 206
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 209
    :cond_4
    move v4, v1

    if-nez v4, :cond_5

    .line 210
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 211
    :cond_5
    move-object v4, v2

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    aget v4, v4, v5

    if-eqz v4, :cond_4

    .line 212
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 3

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "rounding_mode":I
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/IntNum;
    return-object v0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 3

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "rounding_mode":I
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/IntNum;
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1253
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "radix":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_0

    .line 1254
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v5, v1

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1264
    .end local v0    # "this":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .line 1255
    .restart local v0    # "this":Lgnu/math/IntNum;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 1256
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v4

    move v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1257
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    move v5, v1

    invoke-static {v5}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    move v2, v4

    .line 1259
    .local v2, "buf_size":I
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v4

    .line 1263
    .local v3, "buffer":Ljava/lang/StringBuilder;
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuilder;)V

    .line 1264
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 1651
    .local v2, "nwords":I
    move v4, v2

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    .line 1653
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_2

    move-object v4, v0

    iget v4, v4, Lgnu/math/IntNum;->ival:I

    :goto_1
    move v3, v4

    .line 1654
    .local v3, "i":I
    move v4, v3

    const/high16 v5, -0x40000000    # -2.0f

    if-lt v4, v5, :cond_4

    .line 1655
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1661
    .line 1669
    .end local v3    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 1650
    .end local v2    # "nwords":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    move-object v5, v0

    iget v5, v5, Lgnu/math/IntNum;->ival:I

    invoke-static {v4, v5}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v4

    goto :goto_0

    .line 1653
    .restart local v2    # "nwords":I
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    array-length v4, v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    goto :goto_1

    .line 1658
    .restart local v3    # "i":I
    :cond_4
    move-object v4, v1

    const v5, -0x7fffffff

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1659
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_2

    .line 1664
    .end local v3    # "i":I
    :cond_5
    move-object v4, v1

    const/high16 v5, -0x80000000

    move v6, v2

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1665
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 1666
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/math/IntNum;->words:[I

    move v6, v2

    aget v5, v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_3
.end method
