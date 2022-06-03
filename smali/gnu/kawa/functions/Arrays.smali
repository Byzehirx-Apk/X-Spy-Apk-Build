.class public Lgnu/kawa/functions/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field static final shapeStrides:[I

.field static final zeros2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lgnu/kawa/functions/Arrays;->zeros2:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Arrays;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "array":Lgnu/lists/Array;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "work":[I
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 74
    .local v4, "mapval":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/mapping/Values;

    if-eqz v8, :cond_1

    .line 76
    move-object v8, v4

    check-cast v8, Lgnu/mapping/Values;

    move-object v5, v8

    .line 77
    .local v5, "mapvals":Lgnu/mapping/Values;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "j":I
    :goto_0
    move-object v8, v5

    move v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v6, v9

    if-eqz v8, :cond_0

    .line 79
    move-object v8, v3

    move v9, v7

    move-object v10, v5

    move v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    aput v10, v8, v9

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    .line 84
    .end local v5    # "mapvals":Lgnu/mapping/Values;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_0
    :goto_1
    move-object v8, v0

    move-object v9, v3

    invoke-interface {v8, v9}, Lgnu/lists/Array;->getEffectiveIndex([I)I

    move-result v8

    move v0, v8

    .end local v0    # "array":Lgnu/lists/Array;
    return v0

    .line 83
    .restart local v0    # "array":Lgnu/lists/Array;
    :cond_1
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v4

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    aput v10, v8, v9

    goto :goto_1
.end method

.method public static make(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 17

    .prologue
    .line 28
    move-object/from16 v0, p0

    .local v0, "shape":Lgnu/lists/Array;
    move-object/from16 v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lgnu/lists/Array;->getSize(I)I

    move-result v10

    move v2, v10

    .line 29
    .local v2, "rank":I
    move v10, v2

    new-array v10, v10, [I

    move-object v3, v10

    .line 30
    .local v3, "dimensions":[I
    const/4 v10, 0x0

    move-object v4, v10

    .line 31
    .local v4, "lowBounds":[I
    const/4 v10, 0x1

    move v5, v10

    .line 32
    .local v5, "total":I
    move v10, v2

    move v6, v10

    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v10, v6

    if-ltz v10, :cond_2

    .line 34
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v6

    mul-int/2addr v11, v12

    invoke-interface {v10, v11}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    move v7, v10

    .line 35
    .local v7, "lo":I
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v6

    mul-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v10, v11}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    move v8, v10

    .line 36
    .local v8, "hi":I
    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    move v9, v10

    .line 37
    .local v9, "size":I
    move-object v10, v3

    move v11, v6

    move v12, v9

    aput v12, v10, v11

    .line 38
    move v10, v7

    if-eqz v10, :cond_1

    .line 40
    move-object v10, v4

    if-nez v10, :cond_0

    .line 41
    move v10, v2

    new-array v10, v10, [I

    move-object v4, v10

    .line 42
    :cond_0
    move-object v10, v4

    move v11, v6

    move v12, v7

    aput v12, v10, v11

    .line 44
    :cond_1
    move v10, v5

    move v11, v9

    mul-int/2addr v10, v11

    move v5, v10

    .line 45
    goto :goto_0

    .line 46
    .end local v7    # "lo":I
    .end local v8    # "hi":I
    .end local v9    # "size":I
    :cond_2
    move-object v10, v4

    move-object v11, v3

    new-instance v12, Lgnu/lists/FVector;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move v14, v5

    move-object v15, v1

    invoke-direct {v13, v14, v15}, Lgnu/lists/FVector;-><init>(ILjava/lang/Object;)V

    invoke-static {v10, v11, v12}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "shape":Lgnu/lists/Array;
    return-object v0
.end method

.method public static makeSimple(Lgnu/lists/Array;Lgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 12

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "shape":Lgnu/lists/Array;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/SimpleVector;
    move-object v8, v0

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lgnu/lists/Array;->getSize(I)I

    move-result v8

    move v2, v8

    .line 52
    .local v2, "rank":I
    move v8, v2

    new-array v8, v8, [I

    move-object v3, v8

    .line 53
    .local v3, "dimensions":[I
    const/4 v8, 0x0

    move-object v4, v8

    .line 54
    .local v4, "lowBounds":[I
    move v8, v2

    move v5, v8

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v8, v5

    if-ltz v8, :cond_2

    .line 56
    move-object v8, v0

    const/4 v9, 0x2

    move v10, v5

    mul-int/2addr v9, v10

    invoke-interface {v8, v9}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    move v6, v8

    .line 57
    .local v6, "lo":I
    move-object v8, v0

    const/4 v9, 0x2

    move v10, v5

    mul-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8, v9}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    move v7, v8

    .line 58
    .local v7, "hi":I
    move-object v8, v3

    move v9, v5

    move v10, v7

    move v11, v6

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 59
    move v8, v6

    if-eqz v8, :cond_1

    .line 61
    move-object v8, v4

    if-nez v8, :cond_0

    .line 62
    move v8, v2

    new-array v8, v8, [I

    move-object v4, v8

    .line 63
    :cond_0
    move-object v8, v4

    move v9, v5

    move v10, v6

    aput v10, v8, v9

    .line 65
    :cond_1
    goto :goto_0

    .line 66
    .end local v6    # "lo":I
    .end local v7    # "hi":I
    :cond_2
    move-object v8, v4

    move-object v9, v3

    move-object v10, v1

    invoke-static {v8, v9, v10}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "shape":Lgnu/lists/Array;
    return-object v0
.end method

.method public static shape([Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 10

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 19
    .local v1, "len":I
    move v4, v1

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 20
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "shape: not an even number of arguments"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 21
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 22
    .local v2, "d":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move v7, v2

    aput v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    const/4 v7, 0x2

    aput v7, v5, v6

    move-object v3, v4

    .line 23
    .local v3, "dims":[I
    new-instance v4, Lgnu/lists/FVector;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sget-object v5, Lgnu/kawa/functions/Arrays;->zeros2:[I

    move-object v6, v3

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/lists/FVector;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "vals":[Ljava/lang/Object;
    return-object v0
.end method

.method public static shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    move-object/from16 v2, p0

    .local v2, "array":Lgnu/lists/Array;
    move-object/from16 v3, p1

    .local v3, "shape":Lgnu/lists/Array;
    move-object/from16 v4, p2

    .local v4, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lgnu/lists/Array;->getSize(I)I

    move-result v18

    move/from16 v5, v18

    .line 92
    .local v5, "rank":I
    move/from16 v18, v5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 93
    .local v6, "args":[Ljava/lang/Object;
    move/from16 v18, v5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 94
    .local v7, "dimensions":[I
    move/from16 v18, v5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v8, v18

    .line 95
    .local v8, "lowBounds":[I
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 96
    .local v9, "empty":Z
    move/from16 v18, v5

    move/from16 v10, v18

    .local v10, "i":I
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v18, v10

    if-ltz v18, :cond_1

    .line 98
    move-object/from16 v18, v3

    const/16 v19, 0x2

    move/from16 v20, v10

    mul-int v19, v19, v20

    invoke-interface/range {v18 .. v19}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 99
    .local v11, "low":Ljava/lang/Object;
    move-object/from16 v18, v6

    move/from16 v19, v10

    move-object/from16 v20, v11

    aput-object v20, v18, v19

    .line 100
    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v18

    move/from16 v12, v18

    .line 101
    .local v12, "lo":I
    move-object/from16 v18, v8

    move/from16 v19, v10

    move/from16 v20, v12

    aput v20, v18, v19

    .line 102
    move-object/from16 v18, v3

    const/16 v19, 0x2

    move/from16 v20, v10

    mul-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-interface/range {v18 .. v19}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v18

    move/from16 v13, v18

    .line 103
    .local v13, "hi":I
    move/from16 v18, v13

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v14, v18

    .line 104
    .local v14, "size":I
    move-object/from16 v18, v7

    move/from16 v19, v10

    move/from16 v20, v14

    aput v20, v18, v19

    .line 105
    move/from16 v18, v14

    if-gtz v18, :cond_0

    .line 106
    const/16 v18, 0x1

    move/from16 v9, v18

    .line 107
    :cond_0
    goto :goto_0

    .line 108
    .end local v11    # "low":Ljava/lang/Object;
    .end local v12    # "lo":I
    .end local v13    # "hi":I
    .end local v14    # "size":I
    :cond_1
    move-object/from16 v18, v2

    invoke-interface/range {v18 .. v18}, Lgnu/lists/Array;->rank()I

    move-result v18

    move/from16 v10, v18

    .line 109
    .local v10, "arank":I
    move/from16 v18, v5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v11, v18

    .line 111
    .local v11, "offsets":[I
    move/from16 v18, v9

    if-eqz v18, :cond_3

    .line 112
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 133
    .local v12, "offset0":I
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    move/from16 v21, v12

    move-object/from16 v22, v11

    invoke-interface/range {v18 .. v22}, Lgnu/lists/Array;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object v18

    move-object/from16 v2, v18

    .end local v2    # "array":Lgnu/lists/Array;
    return-object v2

    .line 115
    .end local v12    # "offset0":I
    .restart local v2    # "array":Lgnu/lists/Array;
    :cond_3
    move/from16 v18, v10

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 116
    .local v13, "work":[I
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v13

    invoke-static/range {v18 .. v21}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v18

    move/from16 v12, v18

    .line 117
    .restart local v12    # "offset0":I
    move/from16 v18, v5

    move/from16 v14, v18

    .local v14, "i":I
    :goto_1
    add-int/lit8 v14, v14, -0x1

    move/from16 v18, v14

    if-ltz v18, :cond_2

    .line 119
    move-object/from16 v18, v7

    move/from16 v19, v14

    aget v18, v18, v19

    move/from16 v15, v18

    .line 120
    .local v15, "size":I
    move-object/from16 v18, v8

    move/from16 v19, v14

    aget v18, v18, v19

    move/from16 v16, v18

    .line 121
    .local v16, "lo":I
    move/from16 v18, v15

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 122
    move-object/from16 v18, v11

    move/from16 v19, v14

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 131
    :goto_2
    goto :goto_1

    .line 125
    :cond_4
    move-object/from16 v18, v6

    move/from16 v19, v14

    aget-object v18, v18, v19

    move-object/from16 v17, v18

    .line 126
    .local v17, "low":Ljava/lang/Object;
    move-object/from16 v18, v6

    move/from16 v19, v14

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v20

    aput-object v20, v18, v19

    .line 127
    move-object/from16 v18, v11

    move/from16 v19, v14

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v13

    invoke-static/range {v20 .. v23}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v20

    move/from16 v21, v12

    sub-int v20, v20, v21

    aput v20, v18, v19

    .line 129
    move-object/from16 v18, v6

    move/from16 v19, v14

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    goto :goto_2
.end method
