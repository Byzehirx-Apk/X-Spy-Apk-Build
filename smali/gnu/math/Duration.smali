.class public Lgnu/math/Duration;
.super Lgnu/math/Quantity;
.source "Duration.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field months:I

.field nanos:I

.field seconds:J

.field public unit:Lgnu/math/Unit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;
    .locals 17

    .prologue
    .line 252
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/Duration;
    move-object/from16 v1, p1

    .local v1, "y":Lgnu/math/Duration;
    move/from16 v2, p2

    .local v2, "k":I
    move-object v8, v0

    iget v8, v8, Lgnu/math/Duration;->months:I

    int-to-long v8, v8

    move v10, v2

    int-to-long v10, v10

    move-object v12, v1

    iget v12, v12, Lgnu/math/Duration;->months:I

    int-to-long v12, v12

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 255
    .local v3, "months":J
    move-object v8, v0

    iget-wide v8, v8, Lgnu/math/Duration;->seconds:J

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    move-object v10, v0

    iget v10, v10, Lgnu/math/Duration;->nanos:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    move v10, v2

    int-to-long v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lgnu/math/Duration;->seconds:J

    const-wide/32 v14, 0x3b9aca00

    mul-long/2addr v12, v14

    move-object v14, v1

    iget v14, v14, Lgnu/math/Duration;->nanos:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v5, v8

    .line 259
    .local v5, "nanos":J
    new-instance v8, Lgnu/math/Duration;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lgnu/math/Duration;-><init>()V

    move-object v7, v8

    .line 260
    .local v7, "d":Lgnu/math/Duration;
    move-object v8, v7

    move-wide v9, v3

    long-to-int v9, v9

    iput v9, v8, Lgnu/math/Duration;->months:I

    .line 261
    move-object v8, v7

    move-wide v9, v5

    const-wide/32 v11, 0x3b9aca00

    div-long/2addr v9, v11

    long-to-int v9, v9

    int-to-long v9, v9

    iput-wide v9, v8, Lgnu/math/Duration;->seconds:J

    .line 262
    move-object v8, v7

    move-wide v9, v5

    const-wide/32 v11, 0x3b9aca00

    rem-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, v8, Lgnu/math/Duration;->nanos:I

    .line 263
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    move-object v9, v1

    iget-object v9, v9, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v9, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v8, v9, :cond_1

    .line 264
    :cond_0
    new-instance v8, Ljava/lang/ArithmeticException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string/jumbo v10, "cannot add these duration types"

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 265
    :cond_1
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v9, v8, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 266
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "x":Lgnu/math/Duration;
    return-object v0
.end method

.method static appendNanoSeconds(ILjava/lang/StringBuffer;)V
    .locals 8

    .prologue
    .line 372
    move v0, p0

    .local v0, "nanoSeconds":I
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move v5, v0

    if-nez v5, :cond_0

    .line 373
    .line 384
    :goto_0
    return-void

    .line 374
    :cond_0
    move-object v5, v1

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 375
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move v2, v5

    .line 376
    .local v2, "pos":I
    move-object v5, v1

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 377
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move v3, v5

    .line 378
    .local v3, "len":I
    move v5, v2

    const/16 v6, 0x9

    add-int/lit8 v5, v5, 0x9

    move v6, v3

    sub-int/2addr v5, v6

    move v4, v5

    .line 379
    .local v4, "pad":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_1

    .line 380
    move-object v5, v1

    move v6, v2

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_1

    .line 381
    :cond_1
    move v5, v2

    const/16 v6, 0x9

    add-int/lit8 v5, v5, 0x9

    move v3, v5

    .line 382
    :cond_2
    add-int/lit8 v3, v3, -0x1

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    .line 383
    move-object v5, v1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 384
    goto :goto_0
.end method

.method public static compare(Lgnu/math/Duration;Lgnu/math/Duration;)I
    .locals 12

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "x":Lgnu/math/Duration;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Duration;
    move-object v6, v0

    iget v6, v6, Lgnu/math/Duration;->months:I

    int-to-long v6, v6

    move-object v8, v1

    iget v8, v8, Lgnu/math/Duration;->months:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 288
    .local v2, "months":J
    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/Duration;->seconds:J

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    move-object v8, v0

    iget v8, v8, Lgnu/math/Duration;->nanos:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lgnu/math/Duration;->seconds:J

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    move-object v10, v1

    iget v10, v10, Lgnu/math/Duration;->nanos:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 290
    .local v4, "nanos":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 291
    const/4 v6, -0x1

    move v0, v6

    .line 296
    .end local v0    # "x":Lgnu/math/Duration;
    :goto_0
    return v0

    .line 292
    .restart local v0    # "x":Lgnu/math/Duration;
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 293
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 294
    :cond_1
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 295
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const/4 v6, -0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 296
    :cond_4
    const/4 v6, -0x2

    move v0, v6

    goto :goto_0
.end method

.method public static div(Lgnu/math/Duration;Lgnu/math/Duration;)D
    .locals 15

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "dur1":Lgnu/math/Duration;
    move-object/from16 v1, p1

    .local v1, "dur2":Lgnu/math/Duration;
    move-object v8, v0

    iget v8, v8, Lgnu/math/Duration;->months:I

    move v2, v8

    .line 218
    .local v2, "months1":I
    move-object v8, v1

    iget v8, v8, Lgnu/math/Duration;->months:I

    move v3, v8

    .line 219
    .local v3, "months2":I
    move-object v8, v0

    iget-wide v8, v8, Lgnu/math/Duration;->seconds:J

    long-to-double v8, v8

    move-object v10, v0

    iget v10, v10, Lgnu/math/Duration;->nanos:I

    int-to-double v10, v10

    const-wide v12, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 220
    .local v4, "sec1":D
    move-object v8, v1

    iget-wide v8, v8, Lgnu/math/Duration;->seconds:J

    long-to-double v8, v8

    move-object v10, v0

    iget v10, v10, Lgnu/math/Duration;->nanos:I

    int-to-double v10, v10

    const-wide v12, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 221
    .local v6, "sec2":D
    move v8, v3

    if-nez v8, :cond_0

    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 222
    new-instance v8, Ljava/lang/ArithmeticException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "divide duration by zero"

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :cond_0
    move v8, v3

    if-nez v8, :cond_1

    .line 225
    move v8, v2

    if-nez v8, :cond_2

    .line 226
    move-wide v8, v4

    move-wide v10, v6

    div-double/2addr v8, v10

    move-wide v0, v8

    .line 231
    .end local v0    # "dur1":Lgnu/math/Duration;
    :goto_0
    return-wide v0

    .line 228
    .restart local v0    # "dur1":Lgnu/math/Duration;
    :cond_1
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 230
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 231
    move v8, v2

    int-to-double v8, v8

    move v10, v3

    int-to-double v10, v10

    div-double/2addr v8, v10

    move-wide v0, v8

    goto :goto_0

    .line 233
    :cond_2
    new-instance v8, Ljava/lang/ArithmeticException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "divide of incompatible durations"

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "x":Lgnu/math/Duration;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Duration;
    move-object v2, v0

    iget v2, v2, Lgnu/math/Duration;->months:I

    move-object v3, v1

    iget v3, v3, Lgnu/math/Duration;->months:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/Duration;->seconds:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/math/Duration;->nanos:I

    move-object v3, v1

    iget v3, v3, Lgnu/math/Duration;->nanos:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Lgnu/math/Duration;
    return v0

    .restart local v0    # "x":Lgnu/math/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static make(IJILgnu/math/Unit;)Lgnu/math/Duration;
    .locals 11

    .prologue
    .line 24
    move v1, p0

    .local v1, "months":I
    move-wide v2, p1

    .local v2, "seconds":J
    move v4, p3

    .local v4, "nanos":I
    move-object v5, p4

    .local v5, "unit":Lgnu/math/Unit;
    new-instance v7, Lgnu/math/Duration;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lgnu/math/Duration;-><init>()V

    move-object v6, v7

    .line 25
    .local v6, "d":Lgnu/math/Duration;
    move-object v7, v6

    move v8, v1

    iput v8, v7, Lgnu/math/Duration;->months:I

    .line 26
    move-object v7, v6

    move-wide v8, v2

    iput-wide v8, v7, Lgnu/math/Duration;->seconds:J

    .line 27
    move-object v7, v6

    move v8, v4

    iput v8, v7, Lgnu/math/Duration;->nanos:I

    .line 28
    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 29
    move-object v7, v6

    move-object v1, v7

    .end local v1    # "months":I
    return-object v1
.end method

.method public static makeMinutes(I)Lgnu/math/Duration;
    .locals 7

    .prologue
    .line 42
    move v1, p0

    .local v1, "minutes":I
    new-instance v3, Lgnu/math/Duration;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/math/Duration;-><init>()V

    move-object v2, v3

    .line 43
    .local v2, "d":Lgnu/math/Duration;
    move-object v3, v2

    sget-object v4, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    iput-object v4, v3, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 44
    move-object v3, v2

    const/16 v4, 0x3c

    move v5, v1

    mul-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v3, Lgnu/math/Duration;->seconds:J

    .line 45
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "minutes":I
    return-object v1
.end method

.method public static makeMonths(I)Lgnu/math/Duration;
    .locals 5

    .prologue
    .line 34
    move v0, p0

    .local v0, "months":I
    new-instance v2, Lgnu/math/Duration;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/math/Duration;-><init>()V

    move-object v1, v2

    .line 35
    .local v1, "d":Lgnu/math/Duration;
    move-object v2, v1

    sget-object v3, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    iput-object v3, v2, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 36
    move-object v2, v1

    move v3, v0

    iput v3, v2, Lgnu/math/Duration;->months:I

    .line 37
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "months":I
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, p1

    .local v1, "unit":Lgnu/math/Unit;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/math/Duration;->valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v3

    move-object v2, v3

    .line 51
    .local v2, "d":Lgnu/math/Duration;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not a valid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duration: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method public static parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, v0

    sget-object v2, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {v1, v2}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method public static parseDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, v0

    sget-object v2, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-static {v1, v2}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method public static parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, v0

    sget-object v2, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-static {v1, v2}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method private static scanPart(Ljava/lang/String;I)J
    .locals 12

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move v8, v1

    move v2, v8

    .line 394
    .local v2, "i":I
    const-wide/16 v8, -0x1

    move-wide v3, v8

    .line 395
    .local v3, "val":J
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 396
    .local v5, "len":I
    :goto_0
    move v8, v2

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 398
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 399
    .local v6, "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 400
    move v8, v6

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    move v7, v8

    .line 401
    .local v7, "dig":I
    move v8, v7

    if-gez v8, :cond_1

    .line 403
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    move v8, v1

    const/16 v9, 0x10

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    move-wide v0, v8

    .line 410
    .end local v0    # "str":Ljava/lang/String;
    .end local v6    # "ch":C
    .end local v7    # "dig":I
    :goto_1
    return-wide v0

    .line 404
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v6    # "ch":C
    .restart local v7    # "dig":I
    :cond_0
    move-wide v8, v3

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    move v10, v2

    const/16 v11, 0x10

    shl-int/lit8 v10, v10, 0x10

    int-to-long v10, v10

    or-long/2addr v8, v10

    move v10, v6

    int-to-long v10, v10

    or-long/2addr v8, v10

    move-wide v0, v8

    goto :goto_1

    .line 406
    :cond_1
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    move v8, v7

    int-to-long v8, v8

    :goto_2
    move-wide v3, v8

    .line 407
    move-wide v8, v3

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 408
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_1

    .line 406
    :cond_2
    const-wide/16 v8, 0xa

    move-wide v10, v3

    mul-long/2addr v8, v10

    move v10, v7

    int-to-long v10, v10

    add-long/2addr v8, v10

    goto :goto_2

    .line 409
    :cond_3
    goto :goto_0

    .line 410
    .end local v6    # "ch":C
    .end local v7    # "dig":I
    :cond_4
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    move v8, v1

    const/16 v9, 0x10

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    :goto_3
    move-wide v0, v8

    goto :goto_1

    :cond_5
    const-wide/16 v8, -0x1

    goto :goto_3
.end method

.method public static times(Lgnu/math/Duration;D)Lgnu/math/Duration;
    .locals 15

    .prologue
    .line 271
    move-object v1, p0

    .local v1, "x":Lgnu/math/Duration;
    move-wide/from16 v2, p1

    .local v2, "y":D
    move-object v9, v1

    iget-object v9, v9, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v10, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v9, v10, :cond_0

    .line 272
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "cannot multiply general duration"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 273
    :cond_0
    move-object v9, v1

    iget v9, v9, Lgnu/math/Duration;->months:I

    int-to-double v9, v9

    move-wide v11, v2

    mul-double/2addr v9, v11

    move-wide v4, v9

    .line 274
    .local v4, "months":D
    move-wide v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-nez v9, :cond_1

    move-wide v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 275
    :cond_1
    new-instance v9, Ljava/lang/ArithmeticException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "overflow/NaN when multiplying a duration"

    invoke-direct {v10, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 276
    :cond_2
    move-object v9, v1

    iget-wide v9, v9, Lgnu/math/Duration;->seconds:J

    const-wide/32 v11, 0x3b9aca00

    mul-long/2addr v9, v11

    move-object v11, v1

    iget v11, v11, Lgnu/math/Duration;->nanos:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    long-to-double v9, v9

    move-wide v11, v2

    mul-double/2addr v9, v11

    move-wide v6, v9

    .line 277
    .local v6, "nanos":D
    new-instance v9, Lgnu/math/Duration;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lgnu/math/Duration;-><init>()V

    move-object v8, v9

    .line 278
    .local v8, "d":Lgnu/math/Duration;
    move-object v9, v8

    move-wide v10, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v9, Lgnu/math/Duration;->months:I

    .line 279
    move-object v9, v8

    move-wide v10, v6

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    iput-wide v10, v9, Lgnu/math/Duration;->seconds:J

    .line 280
    move-object v9, v8

    move-wide v10, v6

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    rem-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v9, Lgnu/math/Duration;->nanos:I

    .line 281
    move-object v9, v8

    move-object v10, v1

    iget-object v10, v10, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v10, v9, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 282
    move-object v9, v8

    move-object v1, v9

    .end local v1    # "x":Lgnu/math/Duration;
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 25

    .prologue
    .line 77
    move-object/from16 v4, p0

    .local v4, "str":Ljava/lang/String;
    move-object/from16 v5, p1

    .local v5, "unit":Lgnu/math/Unit;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    .line 78
    const/16 v18, 0x0

    move/from16 v6, v18

    .line 79
    .local v6, "pos":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v7, v18

    .line 81
    .local v7, "len":I
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 83
    const/16 v18, 0x1

    move/from16 v8, v18

    .line 84
    .local v8, "negative":Z
    add-int/lit8 v6, v6, 0x1

    .line 88
    :goto_0
    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x50

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 89
    :cond_0
    const/16 v18, 0x0

    move-object/from16 v4, v18

    .line 189
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 87
    .end local v8    # "negative":Z
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    move/from16 v8, v18

    .restart local v8    # "negative":Z
    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 91
    const/16 v18, 0x0

    move/from16 v9, v18

    .local v9, "months":I
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 92
    .local v10, "nanos":I
    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    .line 93
    .local v11, "seconds":J
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 94
    .local v13, "part":J
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 95
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 96
    .local v15, "ch":C
    move-object/from16 v18, v5

    sget-object v19, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    move/from16 v18, v15

    const/16 v19, 0x59

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move/from16 v18, v15

    const/16 v19, 0x4d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 97
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto :goto_1

    .line 98
    :cond_4
    move/from16 v18, v15

    const/16 v19, 0x59

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 100
    const/16 v18, 0xc

    move-wide/from16 v19, v13

    const/16 v21, 0x20

    shr-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v9, v18

    .line 101
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 102
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 103
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 105
    :cond_5
    move/from16 v18, v15

    const/16 v19, 0x4d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 107
    move/from16 v18, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v13

    const/16 v22, 0x20

    shr-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 108
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 109
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 110
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 112
    :cond_6
    move-object/from16 v18, v5

    sget-object v19, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 113
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 114
    :cond_7
    move/from16 v18, v15

    const/16 v19, 0x44

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 116
    move-object/from16 v18, v5

    sget-object v19, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 117
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 118
    :cond_8
    const-wide/32 v18, 0x15180

    move-wide/from16 v20, v13

    const/16 v22, 0x20

    shr-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 119
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 120
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 122
    :cond_9
    move-wide/from16 v18, v13

    move/from16 v20, v6

    const/16 v21, 0x10

    shl-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_a

    .line 123
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 124
    :cond_a
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 176
    :cond_b
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_19

    .line 177
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 128
    :cond_c
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x54

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 129
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 132
    :cond_e
    move-object/from16 v18, v5

    sget-object v19, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 133
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 134
    :cond_f
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 135
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 136
    move/from16 v18, v15

    const/16 v19, 0x48

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 138
    move-wide/from16 v18, v11

    const/16 v20, 0xe10

    move-wide/from16 v21, v13

    const/16 v23, 0x20

    shr-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 139
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 140
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 141
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 143
    :cond_10
    move/from16 v18, v15

    const/16 v19, 0x4d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 145
    move-wide/from16 v18, v11

    const/16 v20, 0x3c

    move-wide/from16 v21, v13

    const/16 v23, 0x20

    shr-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 146
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 147
    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 148
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 150
    :cond_11
    move/from16 v18, v15

    const/16 v19, 0x53

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    move/from16 v18, v15

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 152
    :cond_12
    move-wide/from16 v18, v11

    move-wide/from16 v20, v13

    const/16 v22, 0x20

    shr-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 153
    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    move/from16 v6, v18

    .line 155
    :cond_13
    move/from16 v18, v15

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    if-ltz v18, :cond_b

    .line 158
    const/16 v18, 0x0

    move/from16 v16, v18

    .line 159
    .local v16, "nfrac":I
    :goto_2
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 161
    move-object/from16 v18, v4

    move/from16 v19, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v15, v18

    .line 162
    move/from16 v18, v15

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    move/from16 v17, v18

    .line 163
    .local v17, "dig":I
    move/from16 v18, v17

    if-gez v18, :cond_15

    .line 164
    .line 170
    .end local v17    # "dig":I
    :cond_14
    :goto_3
    move/from16 v18, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    .line 171
    const/16 v18, 0xa

    move/from16 v19, v10

    mul-int v18, v18, v19

    move/from16 v10, v18

    goto :goto_3

    .line 165
    .restart local v17    # "dig":I
    :cond_15
    move/from16 v18, v16

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    .line 166
    const/16 v18, 0xa

    move/from16 v19, v10

    mul-int v18, v18, v19

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v10, v18

    .line 159
    :cond_16
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 167
    :cond_17
    move/from16 v18, v16

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    move/from16 v18, v17

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_16

    .line 168
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 172
    .end local v17    # "dig":I
    :cond_18
    move/from16 v18, v15

    const/16 v19, 0x53

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 173
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 178
    .end local v16    # "nfrac":I
    :cond_19
    new-instance v18, Lgnu/math/Duration;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Lgnu/math/Duration;-><init>()V

    move-object/from16 v16, v18

    .line 179
    .local v16, "d":Lgnu/math/Duration;
    move/from16 v18, v8

    if-eqz v18, :cond_1a

    .line 181
    move/from16 v18, v9

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 182
    move-wide/from16 v18, v11

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v11, v18

    .line 183
    move/from16 v18, v10

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 185
    :cond_1a
    move-object/from16 v18, v16

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/math/Duration;->months:I

    .line 186
    move-object/from16 v18, v16

    move-wide/from16 v19, v11

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lgnu/math/Duration;->seconds:J

    .line 187
    move-object/from16 v18, v16

    move/from16 v19, v10

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/math/Duration;->nanos:I

    .line 188
    move-object/from16 v18, v16

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 189
    move-object/from16 v18, v16

    move-object/from16 v4, v18

    goto/16 :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Duration;

    if-eqz v3, :cond_0

    .line 195
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/Duration;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/Duration;->add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;

    move-result-object v3

    move-object v0, v3

    .line 197
    .end local v0    # "this":Lgnu/math/Duration;
    :goto_0
    return-object v0

    .line 196
    .restart local v0    # "this":Lgnu/math/Duration;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/DateTime;

    if-eqz v3, :cond_1

    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 197
    move-object v3, v1

    check-cast v3, Lgnu/math/DateTime;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 198
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Duration;

    if-eqz v2, :cond_0

    .line 302
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Duration;

    invoke-static {v2, v3}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/math/Duration;
    return v0

    .line 304
    .restart local v0    # "this":Lgnu/math/Duration;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 10

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/RealNum;

    if-eqz v4, :cond_2

    .line 240
    move-object v4, v1

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-wide v2, v4

    .line 241
    .local v2, "dy":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    :cond_0
    new-instance v4, Ljava/lang/ArithmeticException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "divide of duration by 0 or NaN"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    :cond_1
    move-object v4, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-wide v7, v2

    div-double/2addr v5, v7

    invoke-static {v4, v5, v6}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v4

    move-object v0, v4

    .line 247
    .end local v0    # "this":Lgnu/math/Duration;
    .end local v2    # "dy":D
    :goto_0
    return-object v0

    .line 245
    .restart local v0    # "this":Lgnu/math/Duration;
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/Duration;

    if-eqz v4, :cond_3

    .line 246
    new-instance v4, Lgnu/math/DFloNum;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    check-cast v7, Lgnu/math/Duration;

    invoke-static {v6, v7}, Lgnu/math/Duration;->div(Lgnu/math/Duration;Lgnu/math/Duration;)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v4

    goto :goto_0

    .line 247
    :cond_3
    move-object v4, v1

    check-cast v4, Lgnu/math/Numeric;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Duration;

    if-nez v2, :cond_1

    .line 523
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 524
    .end local v0    # "this":Lgnu/math/Duration;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/Duration;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Duration;

    invoke-static {v2, v3}, Lgnu/math/Duration;->equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getDays()I
    .locals 6

    .prologue
    .line 426
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return v1
.end method

.method public getHours()I
    .locals 6

    .prologue
    .line 431
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return v1
.end method

.method public getMinutes()I
    .locals 6

    .prologue
    .line 436
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return v1
.end method

.method public getMonths()I
    .locals 3

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget v1, v1, Lgnu/math/Duration;->months:I

    const/16 v2, 0xc

    rem-int/lit8 v1, v1, 0xc

    move v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return v0
.end method

.method public getNanoSeconds()J
    .locals 6

    .prologue
    .line 466
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    move-object v4, v1

    iget v4, v4, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return-wide v1
.end method

.method public getNanoSecondsOnly()I
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget v1, v1, Lgnu/math/Duration;->nanos:I

    move v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return v0
.end method

.method public getSecondsOnly()I
    .locals 6

    .prologue
    .line 441
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return v1
.end method

.method public getTotalMinutes()J
    .locals 6

    .prologue
    .line 461
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return-wide v1
.end method

.method public getTotalMonths()I
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget v1, v1, Lgnu/math/Duration;->months:I

    move v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return v0
.end method

.method public getTotalSeconds()J
    .locals 3

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget-wide v1, v1, Lgnu/math/Duration;->seconds:J

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return-wide v0
.end method

.method public getYears()I
    .locals 3

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget v1, v1, Lgnu/math/Duration;->months:I

    const/16 v2, 0xc

    div-int/lit8 v1, v1, 0xc

    move v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget v1, v1, Lgnu/math/Duration;->months:I

    move-object v2, v0

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lgnu/math/Duration;->nanos:I

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return v0
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return v0
.end method

.method public isZero()Z
    .locals 6

    .prologue
    .line 471
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, v1

    iget v2, v2, Lgnu/math/Duration;->months:I

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lgnu/math/Duration;->nanos:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/math/Duration;
    return v1

    .restart local v1    # "this":Lgnu/math/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 203
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, p1

    .local v2, "y":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/math/RealNum;

    if-eqz v3, :cond_0

    .line 204
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v3

    move-object v1, v3

    .line 205
    .end local v1    # "this":Lgnu/math/Duration;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/Duration;
    :cond_0
    move-object v3, v2

    check-cast v3, Lgnu/math/Numeric;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 210
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, p1

    .local v2, "x":Lgnu/math/Numeric;
    move-object v3, v2

    instance-of v3, v3, Lgnu/math/RealNum;

    if-nez v3, :cond_0

    .line 211
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 212
    :cond_0
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lgnu/math/Duration;
    return-object v1
.end method

.method public number()Lgnu/math/Complex;
    .locals 5

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "number needs to be implemented!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 490
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, v3, Lgnu/math/Duration;->months:I

    .line 491
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/Duration;->seconds:J

    .line 492
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, v3, Lgnu/math/Duration;->nanos:I

    .line 493
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/math/Unit;

    iput-object v4, v3, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    .prologue
    .line 309
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/math/Duration;
    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v3, v16

    .line 310
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/Duration;->months:I

    move/from16 v16, v0

    move/from16 v4, v16

    .line 311
    .local v4, "m":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lgnu/math/Duration;->seconds:J

    move-wide/from16 v16, v0

    move-wide/from16 v5, v16

    .line 312
    .local v5, "s":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/Duration;->nanos:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 313
    .local v7, "n":I
    move/from16 v16, v4

    if-ltz v16, :cond_0

    move-wide/from16 v16, v5

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    move/from16 v16, v7

    if-gez v16, :cond_a

    :cond_0
    const/16 v16, 0x1

    :goto_0
    move/from16 v8, v16

    .line 314
    .local v8, "neg":Z
    move/from16 v16, v8

    if-eqz v16, :cond_1

    .line 316
    move/from16 v16, v4

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v4, v16

    .line 317
    move-wide/from16 v16, v5

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v5, v16

    .line 318
    move/from16 v16, v7

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    .line 319
    move-object/from16 v16, v3

    const/16 v17, 0x2d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 321
    :cond_1
    move-object/from16 v16, v3

    const/16 v17, 0x50

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 322
    move/from16 v16, v4

    const/16 v17, 0xc

    div-int/lit8 v16, v16, 0xc

    move/from16 v9, v16

    .line 323
    .local v9, "y":I
    move/from16 v16, v9

    if-eqz v16, :cond_2

    .line 325
    move-object/from16 v16, v3

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 326
    move-object/from16 v16, v3

    const/16 v17, 0x59

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 327
    move/from16 v16, v4

    move/from16 v17, v9

    const/16 v18, 0xc

    mul-int/lit8 v17, v17, 0xc

    sub-int v16, v16, v17

    move/from16 v4, v16

    .line 329
    :cond_2
    move/from16 v16, v4

    if-eqz v16, :cond_3

    .line 331
    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 332
    move-object/from16 v16, v3

    const/16 v17, 0x4d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 334
    :cond_3
    move-wide/from16 v16, v5

    const-wide/32 v18, 0x15180

    div-long v16, v16, v18

    move-wide/from16 v10, v16

    .line 335
    .local v10, "d":J
    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_4

    .line 337
    move-object/from16 v16, v3

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 338
    move-object/from16 v16, v3

    const/16 v17, 0x44

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 339
    move-wide/from16 v16, v5

    const-wide/32 v18, 0x15180

    move-wide/from16 v20, v10

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v5, v16

    .line 341
    :cond_4
    move-wide/from16 v16, v5

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_5

    move/from16 v16, v7

    if-eqz v16, :cond_b

    .line 343
    :cond_5
    move-object/from16 v16, v3

    const/16 v17, 0x54

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 344
    move-wide/from16 v16, v5

    const-wide/16 v18, 0xe10

    div-long v16, v16, v18

    move-wide/from16 v12, v16

    .line 345
    .local v12, "hr":J
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_6

    .line 347
    move-object/from16 v16, v3

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 348
    move-object/from16 v16, v3

    const/16 v17, 0x48

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 349
    move-wide/from16 v16, v5

    const-wide/16 v18, 0xe10

    move-wide/from16 v20, v12

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v5, v16

    .line 351
    :cond_6
    move-wide/from16 v16, v5

    const-wide/16 v18, 0x3c

    div-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 352
    .local v14, "mn":J
    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_7

    .line 354
    move-object/from16 v16, v3

    move-wide/from16 v17, v14

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 355
    move-object/from16 v16, v3

    const/16 v17, 0x4d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 356
    move-wide/from16 v16, v5

    const-wide/16 v18, 0x3c

    move-wide/from16 v20, v14

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v5, v16

    .line 358
    :cond_7
    move-wide/from16 v16, v5

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_8

    move/from16 v16, v7

    if-eqz v16, :cond_9

    .line 360
    :cond_8
    move-object/from16 v16, v3

    move-wide/from16 v17, v5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 361
    move/from16 v16, v7

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v17}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 362
    move-object/from16 v16, v3

    const/16 v17, 0x53

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 364
    .line 367
    .end local v12    # "hr":J
    .end local v14    # "mn":J
    :cond_9
    :goto_1
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, v16

    .end local v2    # "this":Lgnu/math/Duration;
    return-object v2

    .line 313
    .end local v8    # "neg":Z
    .end local v9    # "y":I
    .end local v10    # "d":J
    .restart local v2    # "this":Lgnu/math/Duration;
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 365
    .restart local v8    # "neg":Z
    .restart local v9    # "y":I
    .restart local v10    # "d":J
    :cond_b
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 366
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    move-object/from16 v17, v0

    sget-object v18, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    const-string/jumbo v17, "0M"

    :goto_2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    goto :goto_1

    :cond_c
    const-string/jumbo v17, "T0S"

    goto :goto_2
.end method

.method public unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lgnu/math/Duration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Duration;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    move-object v1, p0

    .local v1, "this":Lgnu/math/Duration;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lgnu/math/Duration;->months:I

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 482
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/Duration;->seconds:J

    invoke-interface {v3, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 483
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lgnu/math/Duration;->nanos:I

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 485
    return-void
.end method
