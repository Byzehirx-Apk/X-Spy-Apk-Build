.class public abstract Lgnu/math/RealNum;
.super Lgnu/math/Complex;
.source "RealNum.java"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Complex;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RealNum;
    move v2, p2

    .local v2, "k":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    check-cast v3, Lgnu/math/RealNum;

    move-object v0, v3

    .end local v0    # "x":Lgnu/math/RealNum;
    return-object v0
.end method

.method public static asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;
    .locals 7

    .prologue
    .line 17
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 18
    move-object v2, v1

    check-cast v2, Lgnu/math/RealNum;

    move-object v1, v2

    .line 21
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 19
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_2

    .line 20
    :cond_1
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    goto :goto_0

    .line 21
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "x":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RealNum;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    check-cast v2, Lgnu/math/RealNum;

    check-cast v2, Lgnu/math/RealNum;

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/RealNum;
    return-object v0
.end method

.method public static times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RealNum;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    check-cast v2, Lgnu/math/RealNum;

    check-cast v2, Lgnu/math/RealNum;

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/RealNum;
    return-object v0
.end method

.method public static toExactInt(D)Lgnu/math/IntNum;
    .locals 14

    .prologue
    .line 138
    move-wide v1, p0

    .local v1, "value":D
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_0

    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    :cond_0
    new-instance v8, Ljava/lang/ArithmeticException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "cannot convert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to exact integer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 140
    :cond_1
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    move-wide v3, v8

    .line 141
    .local v3, "bits":J
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 142
    .local v5, "neg":Z
    move-wide v8, v3

    const/16 v10, 0x34

    shr-long/2addr v8, v10

    long-to-int v8, v8

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v6, v8

    .line 143
    .local v6, "exp":I
    move-wide v8, v3

    const-wide v10, 0xfffffffffffffL

    and-long/2addr v8, v10

    move-wide v3, v8

    .line 144
    move v8, v6

    if-nez v8, :cond_3

    .line 145
    move-wide v8, v3

    const/4 v10, 0x1

    shl-long/2addr v8, v10

    move-wide v3, v8

    .line 148
    :goto_1
    move v8, v6

    const/16 v9, 0x433

    if-gt v8, v9, :cond_6

    .line 150
    const/16 v8, 0x433

    move v9, v6

    rsub-int v8, v9, 0x433

    move v7, v8

    .line 151
    .local v7, "rshift":I
    move v8, v7

    const/16 v9, 0x35

    if-le v8, v9, :cond_4

    .line 152
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v8

    move-object v1, v8

    .line 156
    .end local v1    # "value":D
    .end local v7    # "rshift":I
    :goto_2
    return-object v1

    .line 141
    .end local v5    # "neg":Z
    .end local v6    # "exp":I
    .restart local v1    # "value":D
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 147
    .restart local v5    # "neg":Z
    .restart local v6    # "exp":I
    :cond_3
    move-wide v8, v3

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v8, v10

    move-wide v3, v8

    goto :goto_1

    .line 153
    .restart local v7    # "rshift":I
    :cond_4
    move-wide v8, v3

    move v10, v7

    shr-long/2addr v8, v10

    move-wide v3, v8

    .line 154
    move v8, v5

    if-eqz v8, :cond_5

    move-wide v8, v3

    neg-long v8, v8

    :goto_3
    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    move-object v1, v8

    goto :goto_2

    :cond_5
    move-wide v8, v3

    goto :goto_3

    .line 156
    .end local v7    # "rshift":I
    :cond_6
    move v8, v5

    if-eqz v8, :cond_7

    move-wide v8, v3

    neg-long v8, v8

    :goto_4
    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    move v9, v6

    const/16 v10, 0x433

    add-int/lit16 v9, v9, -0x433

    invoke-static {v8, v9}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v8

    move-object v1, v8

    goto :goto_2

    :cond_7
    move-wide v8, v3

    goto :goto_4
.end method

.method public static toExactInt(DI)Lgnu/math/IntNum;
    .locals 8

    .prologue
    .line 132
    move-wide v1, p0

    .local v1, "value":D
    move v3, p2

    .local v3, "rounding_mode":I
    move-wide v4, v1

    move v6, v3

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/math/RealNum;->toExactInt(D)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "value":D
    return-object v1
.end method

.method public static toInt(DI)D
    .locals 8

    .prologue
    .line 100
    move-wide v1, p0

    .local v1, "d":D
    move v3, p2

    .local v3, "rounding_mode":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 111
    move-wide v4, v1

    move-wide v1, v4

    .end local v1    # "d":D
    :goto_0
    return-wide v1

    .line 103
    .restart local v1    # "d":D
    :pswitch_0
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 105
    :pswitch_1
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 107
    :pswitch_2
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    :goto_1
    move-wide v1, v4

    goto :goto_0

    :cond_0
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    goto :goto_1

    .line 109
    :pswitch_3
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toScaledInt(DI)Lgnu/math/IntNum;
    .locals 6

    .prologue
    .line 186
    move-wide v0, p0

    .local v0, "f":D
    move v2, p2

    .local v2, "k":I
    move-wide v3, v0

    invoke-static {v3, v4}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v3

    move v4, v2

    invoke-static {v3, v4}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "f":D
    return-object v0
.end method

.method public static toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "r":Lgnu/math/RatNum;
    move v1, p1

    .local v1, "k":I
    move v5, v1

    if-eqz v5, :cond_0

    .line 194
    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v5

    move v6, v1

    if-gez v6, :cond_1

    move v6, v1

    neg-int v6, v6

    :goto_0
    invoke-static {v5, v6}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    move-object v2, v5

    .line 195
    .local v2, "power":Lgnu/math/IntNum;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v5

    move-object v3, v5

    .line 196
    .local v3, "num":Lgnu/math/IntNum;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v5

    move-object v4, v5

    .line 197
    .local v4, "den":Lgnu/math/IntNum;
    move v5, v1

    if-ltz v5, :cond_2

    .line 198
    move-object v5, v3

    move-object v6, v2

    invoke-static {v5, v6}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    move-object v3, v5

    .line 201
    :goto_1
    move-object v5, v3

    move-object v6, v4

    invoke-static {v5, v6}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v5

    move-object v0, v5

    .line 203
    .end local v2    # "power":Lgnu/math/IntNum;
    .end local v3    # "num":Lgnu/math/IntNum;
    .end local v4    # "den":Lgnu/math/IntNum;
    :cond_0
    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lgnu/math/RatNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "r":Lgnu/math/RatNum;
    return-object v0

    .line 194
    .restart local v0    # "r":Lgnu/math/RatNum;
    :cond_1
    move v6, v1

    goto :goto_0

    .line 200
    .restart local v2    # "power":Lgnu/math/IntNum;
    .restart local v3    # "num":Lgnu/math/IntNum;
    .restart local v4    # "den":Lgnu/math/IntNum;
    :cond_2
    move-object v5, v4

    move-object v6, v2

    invoke-static {v5, v6}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method public static toStringDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "dstr":Ljava/lang/String;
    move-object v8, v0

    const/16 v9, 0x45

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v1, v8

    .line 350
    .local v1, "indexE":I
    move v8, v1

    if-gez v8, :cond_0

    .line 351
    move-object v8, v0

    move-object v0, v8

    .line 379
    .end local v0    # "dstr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 352
    .restart local v0    # "dstr":Ljava/lang/String;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v2, v8

    .line 354
    .local v2, "len":I
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v3, v8

    .line 355
    .local v3, "ch":C
    move v8, v3

    const/16 v9, 0x79

    if-eq v8, v9, :cond_1

    move v8, v3

    const/16 v9, 0x4e

    if-ne v8, v9, :cond_2

    .line 356
    :cond_1
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 357
    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move v10, v2

    const/16 v11, 0xa

    add-int/lit8 v10, v10, 0xa

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v8

    .line 358
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 359
    .local v5, "neg":Z
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_4

    .line 361
    new-instance v8, Ljava/lang/Error;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not implemented: toStringDecimal given non-negative exponent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 358
    .end local v5    # "neg":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 365
    .restart local v5    # "neg":Z
    :cond_4
    move v8, v1

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v6, v8

    .line 366
    .local v6, "pos":I
    const/4 v8, 0x0

    move v7, v8

    .line 367
    .local v7, "exp":I
    :goto_2
    move v8, v6

    move v9, v2

    if-ge v8, v9, :cond_5

    .line 368
    const/16 v8, 0xa

    move v9, v7

    mul-int/2addr v8, v9

    move-object v9, v0

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v8, v9

    move v7, v8

    goto :goto_2

    .line 369
    :cond_5
    move v8, v5

    if-eqz v8, :cond_6

    .line 370
    move-object v8, v4

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 371
    :cond_6
    move-object v8, v4

    const-string/jumbo v9, "0."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 372
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move v8, v7

    if-lez v8, :cond_7

    move-object v8, v4

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_3

    .line 373
    :cond_7
    const/4 v8, 0x0

    move v6, v8

    :cond_8
    :goto_4
    move-object v8, v0

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v3, v9

    const/16 v9, 0x45

    if-eq v8, v9, :cond_c

    .line 375
    move v8, v3

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_a

    const/4 v8, 0x1

    :goto_5
    move v9, v3

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_b

    const/4 v9, 0x1

    :goto_6
    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    move v8, v3

    const/16 v9, 0x30

    if-ne v8, v9, :cond_9

    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_8

    .line 377
    :cond_9
    move-object v8, v4

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_4

    .line 375
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    .line 379
    :cond_c
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public static toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 12

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "dstr":Ljava/lang/String;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v2, v9

    .line 275
    .local v2, "neg":Z
    move v9, v2

    if-eqz v9, :cond_0

    .line 276
    move-object v9, v1

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 277
    :cond_0
    move v9, v2

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v3, v9

    .line 279
    .local v3, "pos":I
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v5, v9

    .line 280
    .local v5, "len":I
    move-object v9, v0

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_9

    .line 282
    move v9, v3

    move v6, v9

    .line 285
    .local v6, "start":I
    :goto_2
    move v9, v3

    move v10, v5

    if-ne v9, v10, :cond_4

    .line 287
    move-object v9, v1

    const-string/jumbo v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 288
    const/4 v9, 0x0

    move v4, v9

    .line 307
    .line 328
    .end local v6    # "start":I
    .local v4, "exp":I
    :cond_1
    :goto_3
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move v3, v9

    .line 329
    const/4 v9, -0x1

    move v6, v9

    .line 332
    .local v6, "slen":I
    :goto_4
    move-object v9, v1

    add-int/lit8 v3, v3, -0x1

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    move v7, v9

    .line 333
    .local v7, "ch":C
    move v9, v7

    const/16 v10, 0x30

    if-ne v9, v10, :cond_c

    .line 334
    move v9, v3

    move v6, v9

    .line 341
    goto :goto_4

    .line 274
    .end local v2    # "neg":Z
    .end local v3    # "pos":I
    .end local v4    # "exp":I
    .end local v5    # "len":I
    .end local v6    # "slen":I
    .end local v7    # "ch":C
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 277
    .restart local v2    # "neg":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 291
    .restart local v3    # "pos":I
    .restart local v5    # "len":I
    .local v6, "start":I
    :cond_4
    move-object v9, v0

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v7, v9

    .line 292
    .restart local v7    # "ch":C
    move v9, v7

    const/16 v10, 0x30

    if-lt v9, v10, :cond_8

    move v9, v7

    const/16 v10, 0x39

    if-gt v9, v10, :cond_8

    move v9, v7

    const/16 v10, 0x30

    if-ne v9, v10, :cond_5

    move v9, v3

    move v10, v5

    if-ne v9, v10, :cond_8

    .line 294
    :cond_5
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 295
    move-object v9, v1

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 296
    move v9, v7

    const/16 v10, 0x30

    if-ne v9, v10, :cond_6

    const/4 v9, 0x0

    :goto_5
    move v4, v9

    .line 297
    .restart local v4    # "exp":I
    move v9, v3

    move v10, v5

    if-ne v9, v10, :cond_7

    .line 298
    move-object v9, v1

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_3

    .line 296
    .end local v4    # "exp":I
    :cond_6
    move v9, v6

    move v10, v3

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    .line 301
    .restart local v4    # "exp":I
    :cond_7
    :goto_6
    move v9, v3

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 302
    move-object v9, v1

    move-object v10, v0

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_6

    .line 306
    .end local v4    # "exp":I
    :cond_8
    goto :goto_2

    .line 311
    .end local v6    # "start":I
    .end local v7    # "ch":C
    :cond_9
    move v9, v5

    move v10, v2

    if-eqz v10, :cond_b

    const/4 v10, 0x2

    :goto_7
    sub-int/2addr v9, v10

    move v6, v9

    .line 312
    .local v6, "ndigits":I
    move-object v9, v0

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    move v7, v9

    .line 317
    .local v7, "dot":I
    move v9, v6

    move v10, v5

    sub-int/2addr v9, v10

    move v10, v7

    add-int/2addr v9, v10

    move v4, v9

    .line 318
    .restart local v4    # "exp":I
    move-object v9, v1

    move-object v10, v0

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 319
    move-object v9, v1

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 320
    :goto_8
    move v9, v3

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 322
    move-object v9, v0

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v8, v9

    .line 323
    .local v8, "ch":C
    move v9, v8

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_a

    .line 324
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 325
    :cond_a
    goto :goto_8

    .line 311
    .end local v4    # "exp":I
    .end local v6    # "ndigits":I
    .end local v7    # "dot":I
    .end local v8    # "ch":C
    :cond_b
    const/4 v10, 0x1

    goto :goto_7

    .line 337
    .restart local v4    # "exp":I
    .local v6, "slen":I
    .local v7, "ch":C
    :cond_c
    move v9, v7

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_d

    .line 338
    move v9, v3

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v6, v9

    .line 342
    :cond_d
    move v9, v6

    if-ltz v9, :cond_e

    .line 343
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 344
    :cond_e
    move v9, v4

    move v0, v9

    .end local v0    # "dstr":Ljava/lang/String;
    return v0
.end method

.method public static toStringScientific(D)Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    move-wide v0, p0

    .local v0, "d":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "d":D
    return-object v0
.end method

.method public static toStringScientific(F)Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    move v0, p0

    .local v0, "d":F
    move v1, v0

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "d":F
    return-object v0
.end method

.method public static toStringScientific(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "dstr":Ljava/lang/String;
    move-object v6, v0

    const/16 v7, 0x45

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v1, v6

    .line 258
    .local v1, "indexE":I
    move v6, v1

    if-ltz v6, :cond_0

    .line 259
    move-object v6, v0

    move-object v0, v6

    .line 269
    .end local v0    # "dstr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 260
    .restart local v0    # "dstr":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 262
    .local v2, "len":I
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    .line 263
    .local v3, "ch":C
    move v6, v3

    const/16 v7, 0x79

    if-eq v6, v7, :cond_1

    move v6, v3

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_2

    .line 264
    :cond_1
    move-object v6, v0

    move-object v0, v6

    goto :goto_0

    .line 265
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v2

    const/16 v9, 0xa

    add-int/lit8 v8, v8, 0xa

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v6

    .line 266
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v0

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v6

    move v5, v6

    .line 267
    .local v5, "exp":I
    move-object v6, v4

    const/16 v7, 0x45

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 268
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 269
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0

    .restart local v0    # "this":Lgnu/math/RealNum;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 7

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    new-instance v2, Ljava/math/BigDecimal;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/RealNum;
    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/math/RealNum;
    return v0
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public exp()Lgnu/math/Complex;
    .locals 7

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/RealNum;
    return-object v1
.end method

.method public final im()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public abstract isNegative()Z
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->sign()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return v0

    .restart local v0    # "this":Lgnu/math/RealNum;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log()Lgnu/math/Complex;
    .locals 9

    .prologue
    .line 166
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-wide v2, v4

    .line 167
    .local v2, "x":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 168
    move-wide v4, v2

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v4

    move-object v1, v4

    .line 169
    .end local v1    # "this":Lgnu/math/RealNum;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/RealNum;
    :cond_0
    new-instance v4, Lgnu/math/DFloNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v4

    goto :goto_0
.end method

.method public max(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 9

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/RealNum;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 32
    .local v2, "exact":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    :goto_1
    move-object v3, v4

    .line 33
    .local v3, "result":Lgnu/math/RealNum;
    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    new-instance v4, Lgnu/math/DFloNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v3, v4

    .line 35
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0

    .line 31
    .end local v2    # "exact":Z
    .end local v3    # "result":Lgnu/math/RealNum;
    .restart local v0    # "this":Lgnu/math/RealNum;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 32
    .restart local v2    # "exact":Z
    :cond_2
    move-object v4, v1

    goto :goto_1
.end method

.method public min(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 9

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/RealNum;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 41
    .local v2, "exact":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    :goto_1
    move-object v3, v4

    .line 42
    .local v3, "result":Lgnu/math/RealNum;
    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    new-instance v4, Lgnu/math/DFloNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v3, v4

    .line 44
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0

    .line 40
    .end local v2    # "exact":Z
    .end local v3    # "result":Lgnu/math/RealNum;
    .restart local v0    # "this":Lgnu/math/RealNum;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 41
    .restart local v2    # "exact":Z
    :cond_2
    move-object v4, v0

    goto :goto_1
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public final re()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public rneg()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v1

    check-cast v1, Lgnu/math/RealNum;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public abstract sign()I
.end method

.method public final sin()Lgnu/math/Complex;
    .locals 7

    .prologue
    .line 172
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/RealNum;
    return-object v1
.end method

.method public final sqrt()Lgnu/math/Complex;
    .locals 9

    .prologue
    .line 176
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-wide v2, v4

    .line 177
    .local v2, "d":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    .line 178
    new-instance v4, Lgnu/math/DFloNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v4

    .line 180
    .end local v1    # "this":Lgnu/math/RealNum;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/RealNum;
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public toExact()Lgnu/math/RatNum;
    .locals 4

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/RealNum;
    return-object v1
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move v1, p1

    .local v1, "rounding_mode":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    move v4, v1

    invoke-static {v2, v3, v4}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public toInexact()Lgnu/math/RealNum;
    .locals 7

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lgnu/math/RealNum;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/RealNum;->isExact()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .line 92
    .end local v1    # "this":Lgnu/math/RealNum;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/RealNum;
    :cond_0
    move-object v2, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move v1, p1

    .local v1, "rounding_mode":I
    new-instance v2, Lgnu/math/DFloNum;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move v6, v1

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method

.method public toScaledInt(I)Lgnu/math/IntNum;
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/math/RealNum;
    move v1, p1

    .local v1, "k":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v2

    move v3, v1

    invoke-static {v2, v3}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/RealNum;
    return-object v0
.end method
