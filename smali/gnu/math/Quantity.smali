.class public abstract Lgnu/math/Quantity;
.super Lgnu/math/Numeric;
.source "Quantity.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Numeric;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;
    .locals 17

    .prologue
    .line 129
    move-object/from16 v1, p0

    .local v1, "x":Lgnu/math/Quantity;
    move-object/from16 v2, p1

    .local v2, "y":Lgnu/math/Quantity;
    move/from16 v3, p2

    .local v3, "k":I
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v11

    if-ne v10, v11, :cond_0

    .line 130
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v11

    move v12, v3

    invoke-static {v10, v11, v12}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v10

    move-object v1, v10

    .line 138
    .end local v1    # "x":Lgnu/math/Quantity;
    :goto_0
    return-object v1

    .line 131
    .restart local v1    # "x":Lgnu/math/Quantity;
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v11

    if-eq v10, v11, :cond_1

    .line 132
    new-instance v10, Ljava/lang/ArithmeticException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "units mis-match"

    invoke-direct {v11, v12}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 135
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v10

    move-wide v4, v10

    .line 136
    .local v4, "x_factor":D
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v10

    move v12, v3

    int-to-double v12, v12

    move-object v14, v2

    invoke-virtual {v14}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v12, v4

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 137
    .local v6, "re":D
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v10

    move v12, v3

    int-to-double v12, v12

    move-object v14, v2

    invoke-virtual {v14}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v12, v4

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 138
    .local v8, "im":D
    move-wide v10, v6

    move-wide v12, v8

    move-object v14, v1

    invoke-virtual {v14}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/Quantity;->make(DDLgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public static compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "x":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Quantity;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v2

    move v0, v2

    .line 110
    .end local v0    # "x":Lgnu/math/Quantity;
    :goto_0
    return v0

    .line 108
    .restart local v0    # "x":Lgnu/math/Quantity;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 109
    :cond_1
    const/4 v2, -0x3

    move v0, v2

    goto :goto_0

    .line 110
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "x":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Quantity;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v4

    move-object v2, v4

    .line 181
    .local v2, "unit":Lgnu/math/Unit;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/Complex;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    move-object v3, v4

    .line 182
    .local v3, "num":Lgnu/math/Numeric;
    move-object v4, v3

    check-cast v4, Lgnu/math/Complex;

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "x":Lgnu/math/Quantity;
    return-object v0
.end method

.method public static make(DDLgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 14

    .prologue
    .line 73
    move-wide v1, p0

    .local v1, "re":D
    move-wide/from16 v3, p2

    .local v3, "im":D
    move-object/from16 v5, p4

    .local v5, "unit":Lgnu/math/Unit;
    move-object v6, v5

    sget-object v7, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v6, v7, :cond_0

    .line 74
    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Complex;->make(DD)Lgnu/math/Complex;

    move-result-object v6

    move-object v1, v6

    .line 77
    .end local v1    # "re":D
    :goto_0
    return-object v1

    .line 75
    .restart local v1    # "re":D
    :cond_0
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 76
    new-instance v6, Lgnu/math/DQuantity;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-wide v8, v1

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v1, v6

    goto :goto_0

    .line 77
    :cond_1
    new-instance v6, Lgnu/math/CQuantity;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    new-instance v8, Lgnu/math/DFloNum;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-wide v10, v1

    invoke-direct {v9, v10, v11}, Lgnu/math/DFloNum;-><init>(D)V

    new-instance v9, Lgnu/math/DFloNum;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-wide v11, v3

    invoke-direct {v10, v11, v12}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    move-object v1, v6

    goto :goto_0
.end method

.method public static make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x":Lgnu/math/Complex;
    move-object v1, p1

    .local v1, "u":Lgnu/math/Unit;
    move-object v2, v1

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v2, v3, :cond_0

    .line 56
    move-object v2, v0

    move-object v0, v2

    .line 59
    .end local v0    # "x":Lgnu/math/Complex;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "x":Lgnu/math/Complex;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/math/DFloNum;

    if-eqz v2, :cond_1

    .line 58
    new-instance v2, Lgnu/math/DQuantity;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v0, v2

    goto :goto_0

    .line 59
    :cond_1
    new-instance v2, Lgnu/math/CQuantity;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/math/CQuantity;-><init>(Lgnu/math/Complex;Lgnu/math/Unit;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 10

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "re":Lgnu/math/RealNum;
    move-object v2, p1

    .local v2, "im":Lgnu/math/RealNum;
    move-object v3, p2

    .local v3, "unit":Lgnu/math/Unit;
    move-object v4, v3

    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_0

    .line 65
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v4

    move-object v1, v4

    .line 68
    .end local v1    # "re":Lgnu/math/RealNum;
    :goto_0
    return-object v1

    .line 66
    .restart local v1    # "re":Lgnu/math/RealNum;
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/RealNum;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/RealNum;->isExact()Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    :cond_1
    new-instance v4, Lgnu/math/DQuantity;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v1, v4

    goto :goto_0

    .line 68
    :cond_2
    new-instance v4, Lgnu/math/CQuantity;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    move-object v1, v4

    goto :goto_0
.end method

.method public static times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "x":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "y":Lgnu/math/Quantity;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v4

    move-object v2, v4

    .line 160
    .local v2, "unit":Lgnu/math/Unit;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/Complex;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    move-object v3, v4

    .line 161
    .local v3, "num":Lgnu/math/Numeric;
    move-object v4, v3

    check-cast v4, Lgnu/math/Complex;

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "x":Lgnu/math/Quantity;
    return-object v0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Complex;->abs()Lgnu/math/Numeric;

    move-result-object v1

    check-cast v1, Lgnu/math/Complex;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Quantity;

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/Quantity;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object v3

    move-object v0, v3

    .line 146
    .end local v0    # "this":Lgnu/math/Quantity;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Quantity;
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
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Quantity;

    if-eqz v3, :cond_0

    .line 152
    move-object v3, v1

    check-cast v3, Lgnu/math/Quantity;

    move-object v4, v0

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0

    .line 153
    .restart local v0    # "this":Lgnu/math/Quantity;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Quantity;

    if-nez v2, :cond_0

    .line 116
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v2

    move v0, v2

    .line 117
    .end local v0    # "this":Lgnu/math/Quantity;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/Quantity;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Quantity;

    invoke-static {v2, v3}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Quantity;

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v1

    check-cast v2, Lgnu/math/Quantity;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/math/Quantity;
    return v0

    .line 124
    .restart local v0    # "this":Lgnu/math/Quantity;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public dimensions()Lgnu/math/Dimensions;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Quantity;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Quantity;

    invoke-static {v2, v3}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v2

    move-object v0, v2

    .line 189
    .end local v0    # "this":Lgnu/math/Quantity;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Quantity;
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
    .line 194
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Quantity;

    if-eqz v2, :cond_0

    .line 195
    move-object v2, v1

    check-cast v2, Lgnu/math/Quantity;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0

    .line 196
    .restart local v0    # "this":Lgnu/math/Quantity;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public doubleImagValue()D
    .locals 6

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Lgnu/math/Quantity;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Quantity;->im()Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/Quantity;
    return-wide v1
.end method

.method public doubleValue()D
    .locals 6

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Lgnu/math/Quantity;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/Quantity;
    return-wide v1
.end method

.method public im()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0
.end method

.method public final imValue()D
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->doubleImagValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Quantity;

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/Quantity;

    invoke-static {v2, v3}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v2

    move-object v0, v2

    .line 168
    .end local v0    # "this":Lgnu/math/Quantity;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Quantity;
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
    .line 173
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Quantity;

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v1

    check-cast v2, Lgnu/math/Quantity;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0

    .line 175
    .restart local v0    # "this":Lgnu/math/Quantity;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Complex;->neg()Lgnu/math/Numeric;

    move-result-object v1

    check-cast v1, Lgnu/math/Complex;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0
.end method

.method public abstract number()Lgnu/math/Complex;
.end method

.method public re()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0
.end method

.method public final reValue()D
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    move v1, p1

    .local v1, "radix":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/math/Complex;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 202
    .local v2, "str":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v3, v4, :cond_0

    .line 203
    move-object v3, v2

    move-object v0, v3

    .line 204
    .end local v0    # "this":Lgnu/math/Quantity;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Quantity;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/math/Quantity;
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Quantity;
    return-object v0
.end method
