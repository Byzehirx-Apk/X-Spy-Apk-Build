.class public abstract Lgnu/math/Complex;
.super Lgnu/math/Quantity;
.source "Complex.java"


# static fields
.field private static imMinusOne:Lgnu/math/CComplex;

.field private static imOne:Lgnu/math/CComplex;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Complex;
    move v2, p2

    .local v2, "k":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v4

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v5

    move v6, v2

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x":Lgnu/math/Complex;
    return-object v0
.end method

.method public static compare(Lgnu/math/Complex;Lgnu/math/Complex;)I
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Complex;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 127
    .local v2, "code":I
    move v3, v2

    if-eqz v3, :cond_0

    .line 128
    move v3, v2

    move v0, v3

    .line 129
    .end local v0    # "x":Lgnu/math/Complex;
    :goto_0
    return v0

    .restart local v0    # "x":Lgnu/math/Complex;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 18

    .prologue
    .line 223
    move-object/from16 v1, p0

    .local v1, "x":Lgnu/math/Complex;
    move-object/from16 v2, p1

    .local v2, "y":Lgnu/math/Complex;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Complex;->isExact()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v2

    invoke-virtual {v10}, Lgnu/math/Complex;->isExact()Z

    move-result v10

    if-nez v10, :cond_1

    .line 224
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object v10

    move-object v1, v10

    .line 238
    .end local v1    # "x":Lgnu/math/Complex;
    :goto_0
    return-object v1

    .line 227
    .restart local v1    # "x":Lgnu/math/Complex;
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v10

    move-object v3, v10

    .line 228
    .local v3, "x_re":Lgnu/math/RealNum;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v10

    move-object v4, v10

    .line 229
    .local v4, "x_im":Lgnu/math/RealNum;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v10

    move-object v5, v10

    .line 230
    .local v5, "y_re":Lgnu/math/RealNum;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v10

    move-object v6, v10

    .line 232
    .local v6, "y_im":Lgnu/math/RealNum;
    move-object v10, v5

    move-object v11, v5

    invoke-static {v10, v11}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v10

    move-object v11, v6

    move-object v12, v6

    invoke-static {v11, v12}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v10

    move-object v7, v10

    .line 234
    .local v7, "q":Lgnu/math/RealNum;
    move-object v10, v3

    move-object v11, v5

    invoke-static {v10, v11}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v10

    move-object v11, v4

    move-object v12, v6

    invoke-static {v11, v12}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v10

    move-object v8, v10

    .line 236
    .local v8, "n":Lgnu/math/RealNum;
    move-object v10, v4

    move-object v11, v5

    invoke-static {v10, v11}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v10

    move-object v11, v3

    move-object v12, v6

    invoke-static {v11, v12}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v11

    const/4 v12, -0x1

    invoke-static {v10, v11, v12}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v10

    move-object v9, v10

    .line 238
    .local v9, "d":Lgnu/math/RealNum;
    move-object v10, v8

    move-object v11, v7

    invoke-static {v10, v11}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v10

    move-object v11, v9

    move-object v12, v7

    invoke-static {v11, v12}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public static equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Complex;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Lgnu/math/Complex;
    return v0

    .restart local v0    # "x":Lgnu/math/Complex;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static imMinusOne()Lgnu/math/CComplex;
    .locals 5

    .prologue
    .line 47
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lgnu/math/CComplex;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    .line 49
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static imOne()Lgnu/math/CComplex;
    .locals 5

    .prologue
    .line 40
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lgnu/math/CComplex;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    .line 42
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static make(DD)Lgnu/math/Complex;
    .locals 12

    .prologue
    .line 68
    move-wide v0, p0

    .local v0, "re":D
    move-wide v2, p2

    .local v2, "im":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 69
    new-instance v4, Lgnu/math/DFloNum;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v0

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v4

    .line 70
    .end local v0    # "re":D
    :goto_0
    return-object v0

    .restart local v0    # "re":D
    :cond_0
    new-instance v4, Lgnu/math/DComplex;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v0

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "re":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "im":Lgnu/math/RealNum;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/RealNum;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v0

    move-object v0, v2

    .line 63
    .end local v0    # "re":Lgnu/math/RealNum;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "re":Lgnu/math/RealNum;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RealNum;->isExact()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/RealNum;->isExact()Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    :cond_1
    new-instance v2, Lgnu/math/DComplex;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v0, v2

    goto :goto_0

    .line 63
    :cond_2
    new-instance v2, Lgnu/math/CComplex;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static neg(Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x":Lgnu/math/Complex;
    return-object v0
.end method

.method public static polar(DD)Lgnu/math/DComplex;
    .locals 14

    .prologue
    .line 75
    move-wide v0, p0

    .local v0, "r":D
    move-wide/from16 v2, p2

    .local v2, "t":D
    new-instance v4, Lgnu/math/DComplex;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-wide v6, v0

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-wide v8, v0

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v0, v4

    .end local v0    # "r":D
    return-object v0
.end method

.method public static polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "r":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "t":Lgnu/math/RealNum;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "r":Lgnu/math/RealNum;
    return-object v0
.end method

.method public static power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 19

    .prologue
    .line 85
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object/from16 v1, p1

    .local v1, "y":Lgnu/math/Complex;
    move-object v10, v1

    instance-of v10, v10, Lgnu/math/IntNum;

    if-eqz v10, :cond_0

    .line 86
    move-object v10, v0

    move-object v11, v1

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v10, v11}, Lgnu/math/Complex;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v10

    check-cast v10, Lgnu/math/Complex;

    move-object v0, v10

    .line 94
    .end local v0    # "x":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "x":Lgnu/math/Complex;
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v10

    move-wide v2, v10

    .line 88
    .local v2, "x_re":D
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v10

    move-wide v4, v10

    .line 89
    .local v4, "x_im":D
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v10

    move-wide v6, v10

    .line 90
    .local v6, "y_re":D
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v10

    move-wide v8, v10

    .line 91
    .local v8, "y_im":D
    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-gez v10, :cond_1

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_1

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 93
    :cond_1
    new-instance v10, Lgnu/math/DFloNum;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-wide v12, v2

    move-wide v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v10

    goto :goto_0

    .line 94
    :cond_2
    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lgnu/math/DComplex;->power(DDDD)Lgnu/math/DComplex;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public static times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 10

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Complex;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v6

    move-object v2, v6

    .line 198
    .local v2, "x_re":Lgnu/math/RealNum;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v6

    move-object v3, v6

    .line 199
    .local v3, "x_im":Lgnu/math/RealNum;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v6

    move-object v4, v6

    .line 200
    .local v4, "y_re":Lgnu/math/RealNum;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v6

    move-object v5, v6

    .line 201
    .local v5, "y_im":Lgnu/math/RealNum;
    move-object v6, v2

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v6

    move-object v7, v3

    move-object v8, v5

    invoke-static {v7, v8}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v6

    move-object v7, v2

    move-object v8, v5

    invoke-static {v7, v8}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v7

    move-object v8, v3

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "x":Lgnu/math/Complex;
    return-object v0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Lgnu/math/Complex;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/Complex;
    return-object v1
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Complex;

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/Complex;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v3

    move-object v0, v3

    .line 185
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/math/Numeric;

    move-object v4, v0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Complex;

    if-eqz v3, :cond_0

    .line 191
    move-object v3, v1

    check-cast v3, Lgnu/math/Complex;

    move-object v4, v0

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0

    .line 192
    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public angle()Lgnu/math/RealNum;
    .locals 9

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "this":Lgnu/math/Complex;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/Complex;
    return-object v1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Complex;

    if-nez v2, :cond_0

    .line 135
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v2

    move v0, v2

    .line 136
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Complex;

    invoke-static {v2, v3}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Complex;

    if-eqz v2, :cond_0

    .line 244
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Complex;

    invoke-static {v2, v3}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v2

    move-object v0, v2

    .line 245
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Complex;

    if-eqz v2, :cond_0

    .line 251
    move-object v2, v1

    check-cast v2, Lgnu/math/Complex;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0

    .line 252
    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public doubleImagValue()D
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-wide v0
.end method

.method public final doubleRealValue()D
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-wide v0
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Complex;

    if-nez v2, :cond_1

    .line 120
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 121
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Complex;

    invoke-static {v2, v3}, Lgnu/math/Complex;->equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public exp()Lgnu/math/Complex;
    .locals 6

    .prologue
    .line 257
    move-object v1, p0

    .local v1, "this":Lgnu/math/Complex;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/Complex;
    return-object v1
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log()Lgnu/math/Complex;
    .locals 6

    .prologue
    .line 263
    move-object v1, p0

    .local v1, "this":Lgnu/math/Complex;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/Complex;
    return-object v1
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Complex;

    if-eqz v2, :cond_0

    .line 210
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Complex;

    invoke-static {v2, v3}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v2

    move-object v0, v2

    .line 211
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Complex;

    if-eqz v2, :cond_0

    .line 217
    move-object v2, v1

    check-cast v2, Lgnu/math/Complex;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0

    .line 218
    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-static {v1}, Lgnu/math/Complex;->neg(Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0
.end method

.method public sqrt()Lgnu/math/Complex;
    .locals 6

    .prologue
    .line 268
    move-object v1, p0

    .local v1, "this":Lgnu/math/Complex;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/Complex;
    return-object v1
.end method

.method public toExact()Lgnu/math/Complex;
    .locals 10

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v5

    move-object v1, v5

    .line 19
    .local v1, "re":Lgnu/math/RealNum;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v5

    move-object v2, v5

    .line 20
    .local v2, "im":Lgnu/math/RealNum;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v5

    move-object v3, v5

    .line 21
    .local v3, "xre":Lgnu/math/RatNum;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v5

    move-object v4, v5

    .line 22
    .local v4, "xim":Lgnu/math/RatNum;
    move-object v5, v3

    move-object v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_0

    .line 23
    move-object v5, v0

    move-object v0, v5

    .line 25
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    new-instance v5, Lgnu/math/CComplex;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->toExact()Lgnu/math/Complex;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0
.end method

.method public toInexact()Lgnu/math/Complex;
    .locals 9

    .prologue
    .line 30
    move-object v1, p0

    .local v1, "this":Lgnu/math/Complex;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Complex;->isExact()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    move-object v2, v1

    move-object v1, v2

    .line 32
    .end local v1    # "this":Lgnu/math/Complex;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/Complex;
    :cond_0
    new-instance v2, Lgnu/math/DComplex;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Complex;->toInexact()Lgnu/math/Complex;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Complex;
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/math/Complex;
    move v1, p1

    .local v1, "radix":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/math/RealNum;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 165
    .end local v0    # "this":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .line 160
    .restart local v0    # "this":Lgnu/math/Complex;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 161
    .local v2, "imString":Ljava/lang/String;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 163
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/math/RealNum;->isZero()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 165
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
