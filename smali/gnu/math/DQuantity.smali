.class public Lgnu/math/DQuantity;
.super Lgnu/math/Quantity;
.source "DQuantity.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field factor:D

.field unt:Lgnu/math/Unit;


# direct methods
.method public constructor <init>(DLgnu/math/Unit;)V
    .locals 9

    .prologue
    .line 22
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-wide v2, p1

    .local v2, "factor":D
    move-object v4, p3

    .local v4, "unit":Lgnu/math/Unit;
    move-object v5, v1

    invoke-direct {v5}, Lgnu/math/Quantity;-><init>()V

    .line 23
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lgnu/math/DQuantity;->factor:D

    .line 24
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    .line 25
    return-void
.end method

.method public static add(Lgnu/math/DQuantity;Lgnu/math/DQuantity;D)Lgnu/math/DQuantity;
    .locals 16

    .prologue
    .line 33
    move-object/from16 v0, p0

    .local v0, "x":Lgnu/math/DQuantity;
    move-object/from16 v1, p1

    .local v1, "y":Lgnu/math/DQuantity;
    move-wide/from16 v2, p2

    .local v2, "k":D
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 34
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string/jumbo v8, "units mis-match"

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    iget-wide v6, v6, Lgnu/math/Unit;->factor:D

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v8

    iget-wide v8, v8, Lgnu/math/Unit;->factor:D

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 36
    .local v4, "unit_ratio":D
    new-instance v6, Lgnu/math/DQuantity;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-wide v8, v8, Lgnu/math/DQuantity;->factor:D

    move-wide v10, v2

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v0, v6

    .end local v0    # "x":Lgnu/math/DQuantity;
    return-object v0
.end method

.method public static divide(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;
    .locals 12

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "x":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "y":Lgnu/math/DQuantity;
    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    move-object v8, v2

    iget-wide v8, v8, Lgnu/math/DQuantity;->factor:D

    div-double/2addr v6, v8

    move-wide v3, v6

    .line 49
    .local v3, "factor":D
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v6

    move-object v5, v6

    .line 50
    .local v5, "unit":Lgnu/math/Unit;
    new-instance v6, Lgnu/math/DQuantity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-wide v8, v3

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v1, v6

    .end local v1    # "x":Lgnu/math/DQuantity;
    return-object v1
.end method

.method public static times(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;
    .locals 12

    .prologue
    .line 41
    move-object v1, p0

    .local v1, "x":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "y":Lgnu/math/DQuantity;
    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    move-object v8, v2

    iget-wide v8, v8, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v6, v8

    move-wide v3, v6

    .line 42
    .local v3, "factor":D
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v6

    move-object v5, v6

    .line 43
    .local v5, "unit":Lgnu/math/Unit;
    new-instance v6, Lgnu/math/DQuantity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-wide v8, v3

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v1, v6

    .end local v1    # "x":Lgnu/math/DQuantity;
    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 13

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "y":Ljava/lang/Object;
    move v3, p2

    .local v3, "k":I
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/DQuantity;

    if-eqz v4, :cond_0

    .line 56
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/math/DQuantity;

    move v6, v3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DQuantity;->add(Lgnu/math/DQuantity;Lgnu/math/DQuantity;D)Lgnu/math/DQuantity;

    move-result-object v4

    move-object v1, v4

    .line 61
    .end local v1    # "this":Lgnu/math/DQuantity;
    :goto_0
    return-object v1

    .line 57
    .restart local v1    # "this":Lgnu/math/DQuantity;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v4

    sget-object v5, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    instance-of v4, v4, Lgnu/math/RealNum;

    if-eqz v4, :cond_1

    .line 58
    new-instance v4, Lgnu/math/DQuantity;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    move v8, v3

    int-to-double v8, v8

    move-object v10, v2

    check-cast v10, Lgnu/math/RealNum;

    invoke-virtual {v10}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v1, v4

    goto :goto_0

    .line 59
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/Numeric;

    if-nez v4, :cond_2

    .line 60
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 61
    :cond_2
    move-object v4, v2

    check-cast v4, Lgnu/math/Numeric;

    move-object v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 13

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "x":Lgnu/math/Numeric;
    move v3, p2

    .local v3, "k":I
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v4

    sget-object v5, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/math/RealNum;

    if-eqz v4, :cond_0

    .line 67
    new-instance v4, Lgnu/math/DFloNum;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v2

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    move v8, v3

    int-to-double v8, v8

    move-object v10, v1

    iget-wide v10, v10, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v4

    .end local v1    # "this":Lgnu/math/DQuantity;
    return-object v1

    .line 68
    .restart local v1    # "this":Lgnu/math/DQuantity;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 13

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "y":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/DQuantity;

    if-eqz v4, :cond_1

    .line 93
    move-object v4, v2

    check-cast v4, Lgnu/math/DQuantity;

    move-object v3, v4

    .line 94
    .local v3, "qy":Lgnu/math/DQuantity;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 95
    new-instance v4, Lgnu/math/DFloNum;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-object v8, v3

    iget-wide v8, v8, Lgnu/math/DQuantity;->factor:D

    move-object v10, v3

    invoke-virtual {v10}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v10

    iget-wide v10, v10, Lgnu/math/Unit;->factor:D

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v4

    .line 103
    .end local v1    # "this":Lgnu/math/DQuantity;
    .end local v3    # "qy":Lgnu/math/DQuantity;
    :goto_0
    return-object v1

    .line 97
    .restart local v1    # "this":Lgnu/math/DQuantity;
    .restart local v3    # "qy":Lgnu/math/DQuantity;
    :cond_0
    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/math/DQuantity;->divide(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 99
    .end local v3    # "qy":Lgnu/math/DQuantity;
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/RealNum;

    if-eqz v4, :cond_2

    .line 100
    new-instance v4, Lgnu/math/DQuantity;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    move-object v8, v2

    check-cast v8, Lgnu/math/RealNum;

    invoke-virtual {v8}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v1, v4

    goto :goto_0

    .line 101
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/Numeric;

    if-nez v4, :cond_3

    .line 102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 103
    :cond_3
    move-object v4, v2

    check-cast v4, Lgnu/math/Numeric;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/math/DQuantity;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Lgnu/math/DQuantity;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    div-double/2addr v4, v6

    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/DQuantity;
    return-object v0

    .line 111
    .restart local v0    # "this":Lgnu/math/DQuantity;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public final doubleValue()D
    .locals 6

    .prologue
    .line 19
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DQuantity;->factor:D

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    iget-wide v4, v4, Lgnu/math/Unit;->factor:D

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/DQuantity;
    return-wide v1
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/math/DQuantity;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/math/DQuantity;
    return v0
.end method

.method public isZero()Z
    .locals 6

    .prologue
    .line 29
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DQuantity;->factor:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/math/DQuantity;
    return v1

    .restart local v1    # "this":Lgnu/math/DQuantity;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/math/DQuantity;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/DQuantity;

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/DQuantity;

    invoke-static {v2, v3}, Lgnu/math/DQuantity;->times(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;

    move-result-object v2

    move-object v0, v2

    .line 79
    .end local v0    # "this":Lgnu/math/DQuantity;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "this":Lgnu/math/DQuantity;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_1

    .line 76
    new-instance v2, Lgnu/math/DQuantity;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DQuantity;->factor:D

    move-object v6, v1

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v0, v2

    goto :goto_0

    .line 77
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_2

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 79
    :cond_2
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/math/DQuantity;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Lgnu/math/DQuantity;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/DQuantity;
    return-object v0

    .line 86
    .restart local v0    # "this":Lgnu/math/DQuantity;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public final number()Lgnu/math/Complex;
    .locals 7

    .prologue
    .line 16
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DQuantity;->factor:D

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DQuantity;
    return-object v1
.end method

.method public final re()Lgnu/math/RealNum;
    .locals 7

    .prologue
    .line 18
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DQuantity;->factor:D

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DQuantity;
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
    .line 128
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/DQuantity;->factor:D

    .line 129
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/math/Unit;

    iput-object v4, v3, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    .line 130
    return-void
.end method

.method public final unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/math/DQuantity;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/DQuantity;
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
    .line 121
    move-object v1, p0

    .local v1, "this":Lgnu/math/DQuantity;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DQuantity;->factor:D

    invoke-interface {v3, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 122
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
