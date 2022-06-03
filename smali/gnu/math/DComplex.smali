.class public Lgnu/math/DComplex;
.super Lgnu/math/Complex;
.source "DComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:D

.field real:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Complex;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move-wide v1, p1

    .local v1, "real":D
    move-wide v3, p3

    .local v3, "imag":D
    move-object v5, v0

    invoke-direct {v5}, Lgnu/math/Complex;-><init>()V

    .line 25
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lgnu/math/DComplex;->real:D

    .line 26
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lgnu/math/DComplex;->imag:D

    .line 27
    return-void
.end method

.method public static div(DDDD)Lgnu/math/DComplex;
    .locals 30

    .prologue
    .line 211
    move-wide/from16 v0, p0

    .local v0, "x_re":D
    move-wide/from16 v2, p2

    .local v2, "x_im":D
    move-wide/from16 v4, p4

    .local v4, "y_re":D
    move-wide/from16 v6, p6

    .local v6, "y_im":D
    move-wide/from16 v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 212
    .local v8, "ar":D
    move-wide/from16 v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 215
    .local v10, "ai":D
    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_0

    .line 217
    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    div-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 218
    .local v16, "t":D
    move-wide/from16 v20, v6

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v16

    move-wide/from16 v26, v16

    mul-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 219
    .local v18, "d":D
    move-wide/from16 v20, v0

    move-wide/from16 v22, v16

    mul-double v20, v20, v22

    move-wide/from16 v22, v2

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 220
    .local v12, "nr":D
    move-wide/from16 v20, v2

    move-wide/from16 v22, v16

    mul-double v20, v20, v22

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 229
    .local v14, "ni":D
    :goto_0
    new-instance v20, Lgnu/math/DComplex;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-wide/from16 v22, v12

    move-wide/from16 v24, v18

    div-double v22, v22, v24

    move-wide/from16 v24, v14

    move-wide/from16 v26, v18

    div-double v24, v24, v26

    invoke-direct/range {v21 .. v25}, Lgnu/math/DComplex;-><init>(DD)V

    move-object/from16 v0, v20

    .end local v0    # "x_re":D
    return-object v0

    .line 224
    .end local v12    # "nr":D
    .end local v14    # "ni":D
    .end local v16    # "t":D
    .end local v18    # "d":D
    .restart local v0    # "x_re":D
    :cond_0
    move-wide/from16 v20, v6

    move-wide/from16 v22, v4

    div-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 225
    .restart local v16    # "t":D
    move-wide/from16 v20, v4

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v16

    move-wide/from16 v26, v16

    mul-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 226
    .restart local v18    # "d":D
    move-wide/from16 v20, v0

    move-wide/from16 v22, v2

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 227
    .restart local v12    # "nr":D
    move-wide/from16 v20, v2

    move-wide/from16 v22, v0

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .restart local v14    # "ni":D
    goto :goto_0
.end method

.method public static log(DD)Lgnu/math/Complex;
    .locals 12

    .prologue
    .line 175
    move-wide v0, p0

    .local v0, "x_re":D
    move-wide v2, p2

    .local v2, "x_im":D
    move-wide v6, v0

    move-wide v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 179
    .local v4, "h":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    move-wide v8, v2

    move-wide v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lgnu/math/DComplex;->make(DD)Lgnu/math/Complex;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "x_re":D
    return-object v0
.end method

.method public static power(DDDD)Lgnu/math/DComplex;
    .locals 22

    .prologue
    .line 160
    move-wide/from16 v0, p0

    .local v0, "x_re":D
    move-wide/from16 v2, p2

    .local v2, "x_im":D
    move-wide/from16 v4, p4

    .local v4, "y_re":D
    move-wide/from16 v6, p6

    .local v6, "y_im":D
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 164
    .local v8, "h":D
    move-wide/from16 v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 165
    .local v10, "logr":D
    move-wide/from16 v16, v2

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 166
    .local v12, "t":D
    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-wide/from16 v18, v6

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 167
    .local v14, "r":D
    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    mul-double v16, v16, v18

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 168
    move-wide/from16 v16, v14

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v19}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v16

    move-object/from16 v0, v16

    .end local v0    # "x_re":D
    return-object v0
.end method

.method public static sqrt(DD)Lgnu/math/Complex;
    .locals 18

    .prologue
    .line 235
    move-wide/from16 v0, p0

    .local v0, "x_re":D
    move-wide/from16 v2, p2

    .local v2, "x_im":D
    move-wide v10, v0

    move-wide v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    move-wide v4, v10

    .line 240
    .local v4, "r":D
    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    .line 241
    move-wide v10, v4

    move-wide/from16 v16, v10

    move-wide/from16 v10, v16

    move-wide/from16 v12, v16

    move-wide v8, v12

    .local v8, "ni":D
    move-wide v6, v10

    .line 254
    .local v6, "nr":D
    :goto_0
    new-instance v10, Lgnu/math/DComplex;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-wide v12, v6

    move-wide v14, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v0, v10

    .end local v0    # "x_re":D
    return-object v0

    .line 242
    .end local v6    # "nr":D
    .end local v8    # "ni":D
    .restart local v0    # "x_re":D
    :cond_0
    move-wide v10, v0

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    .line 244
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-wide v12, v4

    move-wide v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v6, v10

    .line 245
    .restart local v6    # "nr":D
    move-wide v10, v2

    move-wide v12, v6

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .restart local v8    # "ni":D
    goto :goto_0

    .line 249
    .end local v6    # "nr":D
    .end local v8    # "ni":D
    :cond_1
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-wide v12, v4

    move-wide v14, v0

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 250
    .restart local v8    # "ni":D
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 251
    move-wide v10, v8

    neg-double v10, v10

    move-wide v8, v10

    .line 252
    :cond_2
    move-wide v10, v2

    move-wide v12, v8

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .restart local v6    # "nr":D
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 15

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move-object/from16 v1, p1

    .local v1, "y":Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "k":I
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/Complex;

    if-eqz v4, :cond_1

    .line 118
    move-object v4, v1

    check-cast v4, Lgnu/math/Complex;

    move-object v3, v4

    .line 119
    .local v3, "yc":Lgnu/math/Complex;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/Complex;->dimensions()Lgnu/math/Dimensions;

    move-result-object v4

    sget-object v5, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-eq v4, v5, :cond_0

    .line 120
    new-instance v4, Ljava/lang/ArithmeticException;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string/jumbo v6, "units mis-match"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_0
    new-instance v4, Lgnu/math/DComplex;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/DComplex;->real:D

    move v8, v2

    int-to-double v8, v8

    move-object v10, v3

    invoke-virtual {v10}, Lgnu/math/Complex;->reValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lgnu/math/DComplex;->imag:D

    move v10, v2

    int-to-double v10, v10

    move-object v12, v3

    invoke-virtual {v12}, Lgnu/math/Complex;->imValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v0, v4

    .line 124
    .end local v0    # "this":Lgnu/math/DComplex;
    .end local v3    # "yc":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/DComplex;
    :cond_1
    move-object v4, v1

    check-cast v4, Lgnu/math/Numeric;

    move-object v5, v0

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 12

    .prologue
    .line 146
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    move-object v2, p1

    .local v2, "y":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/Complex;

    if-eqz v4, :cond_0

    .line 148
    move-object v4, v2

    check-cast v4, Lgnu/math/Complex;

    move-object v3, v4

    .line 149
    .local v3, "yc":Lgnu/math/Complex;
    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DComplex;->imag:D

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object v4

    move-object v1, v4

    .line 152
    .end local v1    # "this":Lgnu/math/DComplex;
    .end local v3    # "yc":Lgnu/math/Complex;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lgnu/math/DComplex;
    :cond_0
    move-object v4, v2

    check-cast v4, Lgnu/math/Numeric;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public doubleImagValue()D
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move-object v1, v0

    iget-wide v1, v1, Lgnu/math/DComplex;->imag:D

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/DComplex;
    return-wide v0
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move-object v1, v0

    iget-wide v1, v1, Lgnu/math/DComplex;->real:D

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/DComplex;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/math/Complex;

    if-nez v4, :cond_1

    .line 47
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    .line 49
    .end local v1    # "this":Lgnu/math/DComplex;
    :goto_0
    return v1

    .line 48
    .restart local v1    # "this":Lgnu/math/DComplex;
    :cond_1
    move-object v4, v2

    check-cast v4, Lgnu/math/Complex;

    move-object v3, v4

    .line 49
    .local v3, "y":Lgnu/math/Complex;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v4

    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/math/Complex;->reValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/math/Complex;->imValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public im()Lgnu/math/RealNum;
    .locals 7

    .prologue
    .line 31
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DComplex;
    return-object v1
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/math/DComplex;
    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 19

    .prologue
    .line 129
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    move-object/from16 v2, p1

    .local v2, "y":Ljava/lang/Object;
    move-object v8, v2

    instance-of v8, v8, Lgnu/math/Complex;

    if-eqz v8, :cond_1

    .line 131
    move-object v8, v2

    check-cast v8, Lgnu/math/Complex;

    move-object v3, v8

    .line 132
    .local v3, "yc":Lgnu/math/Complex;
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v8

    sget-object v9, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v8, v9, :cond_0

    .line 134
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/math/Complex;->reValue()D

    move-result-wide v8

    move-wide v4, v8

    .line 135
    .local v4, "y_re":D
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/math/Complex;->imValue()D

    move-result-wide v8

    move-wide v6, v8

    .line 136
    .local v6, "y_im":D
    new-instance v8, Lgnu/math/DComplex;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v1

    iget-wide v10, v10, Lgnu/math/DComplex;->real:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lgnu/math/DComplex;->imag:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lgnu/math/DComplex;->real:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v1

    iget-wide v14, v14, Lgnu/math/DComplex;->imag:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v1, v8

    .line 141
    .end local v1    # "this":Lgnu/math/DComplex;
    .end local v3    # "yc":Lgnu/math/Complex;
    .end local v4    # "y_re":D
    .end local v6    # "y_im":D
    :goto_0
    return-object v1

    .line 139
    .restart local v1    # "this":Lgnu/math/DComplex;
    .restart local v3    # "yc":Lgnu/math/Complex;
    :cond_0
    move-object v8, v1

    move-object v9, v3

    invoke-static {v8, v9}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 141
    .end local v3    # "yc":Lgnu/math/Complex;
    :cond_1
    move-object v8, v2

    check-cast v8, Lgnu/math/Numeric;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method

.method public final neg()Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    new-instance v2, Lgnu/math/DComplex;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    neg-double v4, v4

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DComplex;->imag:D

    neg-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/math/DComplex;-><init>(DD)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DComplex;
    return-object v1
.end method

.method public re()Lgnu/math/RealNum;
    .locals 7

    .prologue
    .line 29
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DComplex;
    return-object v1
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
    .line 404
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/DComplex;->real:D

    .line 405
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/DComplex;->imag:D

    .line 406
    return-void
.end method

.method public toExact()Lgnu/math/Complex;
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    new-instance v1, Lgnu/math/CComplex;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-wide v3, v3, Lgnu/math/DComplex;->real:D

    invoke-static {v3, v4}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/DComplex;
    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/DComplex;->toExact()Lgnu/math/Complex;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/DComplex;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 61
    .local v1, "prefix":Ljava/lang/String;
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 63
    const-string/jumbo v4, "#i"

    move-object v1, v4

    const-string/jumbo v4, "1/0"

    move-object v2, v4

    .line 76
    .local v2, "reString":Ljava/lang/String;
    :goto_0
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 99
    .end local v0    # "this":Lgnu/math/DComplex;
    :goto_1
    return-object v0

    .line 65
    .end local v2    # "reString":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/math/DComplex;
    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 67
    const-string/jumbo v4, "#i"

    move-object v1, v4

    const-string/jumbo v4, "-1/0"

    move-object v2, v4

    .restart local v2    # "reString":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v2    # "reString":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    const-string/jumbo v4, "#i"

    move-object v1, v4

    const-string/jumbo v4, "0/0"

    move-object v2, v4

    .restart local v2    # "reString":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v2    # "reString":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "reString":Ljava/lang/String;
    goto :goto_0

    .line 80
    :cond_3
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    .line 82
    const-string/jumbo v4, "#i"

    move-object v1, v4

    const-string/jumbo v4, "+1/0i"

    move-object v3, v4

    .line 99
    .local v3, "imString":Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-wide v5, v5, Lgnu/math/DComplex;->real:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    move-object v5, v1

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 84
    .end local v3    # "imString":Ljava/lang/String;
    :cond_5
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    .line 86
    const-string/jumbo v4, "#i"

    move-object v1, v4

    const-string/jumbo v4, "-1/0i"

    move-object v3, v4

    .restart local v3    # "imString":Ljava/lang/String;
    goto :goto_2

    .line 88
    .end local v3    # "imString":Ljava/lang/String;
    :cond_6
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 90
    const-string/jumbo v4, "#i"

    move-object v1, v4

    const-string/jumbo v4, "+0/0i"

    move-object v3, v4

    .restart local v3    # "imString":Ljava/lang/String;
    goto :goto_2

    .line 94
    .end local v3    # "imString":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-wide v5, v5, Lgnu/math/DComplex;->imag:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 95
    .restart local v3    # "imString":Ljava/lang/String;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_2

    .line 99
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/math/DComplex;
    move v1, p1

    .local v1, "radix":I
    move v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 107
    .end local v0    # "this":Lgnu/math/DComplex;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/DComplex;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    move-object v1, p0

    .local v1, "this":Lgnu/math/DComplex;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->real:D

    invoke-interface {v3, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 398
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DComplex;->imag:D

    invoke-interface {v3, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 399
    return-void
.end method
