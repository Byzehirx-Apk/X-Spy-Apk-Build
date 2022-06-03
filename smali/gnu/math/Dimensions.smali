.class public Lgnu/math/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field public static Empty:Lgnu/math/Dimensions;

.field private static hashTable:[Lgnu/math/Dimensions;


# instance fields
.field bases:[Lgnu/math/BaseUnit;

.field private chain:Lgnu/math/Dimensions;

.field hash_code:I

.field powers:[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x64

    new-array v0, v0, [Lgnu/math/Dimensions;

    sput-object v0, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    .line 41
    new-instance v0, Lgnu/math/Dimensions;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/math/Dimensions;-><init>()V

    sput-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/math/BaseUnit;

    iput-object v2, v1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 47
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    const/4 v2, 0x0

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v3, v1, v2

    .line 48
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 49
    return-void
.end method

.method constructor <init>(Lgnu/math/BaseUnit;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move-object v1, p1

    .local v1, "unit":Lgnu/math/BaseUnit;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/math/BaseUnit;

    iput-object v3, v2, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 55
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [S

    iput-object v3, v2, Lgnu/math/Dimensions;->powers:[S

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    const/4 v3, 0x0

    move-object v4, v1

    aput-object v4, v2, v3

    .line 57
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    const/4 v3, 0x1

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v4, v2, v3

    .line 58
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/Dimensions;->powers:[S

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-short v4, v2, v3

    .line 59
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/math/BaseUnit;->index:I

    invoke-direct {v2, v3}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V
    .locals 16

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move-object/from16 v1, p1

    .local v1, "a":Lgnu/math/Dimensions;
    move/from16 v2, p2

    .local v2, "mul_a":I
    move-object/from16 v3, p3

    .local v3, "b":Lgnu/math/Dimensions;
    move/from16 v4, p4

    .local v4, "mul_b":I
    move/from16 v5, p5

    .local v5, "hash_code":I
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v12, 0x0

    move v6, v12

    .local v6, "a_i":I
    const/4 v12, 0x0

    move v7, v12

    .line 67
    .local v7, "b_i":I
    move-object v12, v0

    move v13, v5

    iput v13, v12, Lgnu/math/Dimensions;->hash_code:I

    .line 68
    const/4 v12, 0x0

    move v6, v12

    :goto_0
    move-object v12, v1

    iget-object v12, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v13, v6

    aget-object v12, v12, v13

    sget-object v13, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v12, v13, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v12, 0x0

    move v7, v12

    :goto_1
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v13, v7

    aget-object v12, v12, v13

    sget-object v13, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v12, v13, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 70
    :cond_1
    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v8, v12

    .line 71
    .local v8, "t_i":I
    move-object v12, v0

    move v13, v8

    new-array v13, v13, [Lgnu/math/BaseUnit;

    iput-object v13, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 72
    move-object v12, v0

    move v13, v8

    new-array v13, v13, [S

    iput-object v13, v12, Lgnu/math/Dimensions;->powers:[S

    .line 73
    const/4 v12, 0x0

    move v15, v12

    move v12, v15

    move v13, v15

    move v8, v13

    move v15, v12

    move v12, v15

    move v13, v15

    move v7, v13

    move v6, v12

    .line 76
    :goto_2
    move-object v12, v1

    iget-object v12, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v13, v6

    aget-object v12, v12, v13

    move-object v9, v12

    .line 77
    .local v9, "a_base":Lgnu/math/BaseUnit;
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v13, v7

    aget-object v12, v12, v13

    move-object v10, v12

    .line 79
    .local v10, "b_base":Lgnu/math/BaseUnit;
    move-object v12, v9

    iget v12, v12, Lgnu/math/BaseUnit;->index:I

    move-object v13, v10

    iget v13, v13, Lgnu/math/BaseUnit;->index:I

    if-ge v12, v13, :cond_3

    .line 81
    move-object v12, v1

    iget-object v12, v12, Lgnu/math/Dimensions;->powers:[S

    move v13, v6

    aget-short v12, v12, v13

    move v13, v2

    mul-int/2addr v12, v13

    move v11, v12

    .line 82
    .local v11, "pow":I
    add-int/lit8 v6, v6, 0x1

    .line 99
    :cond_2
    :goto_3
    move v12, v11

    int-to-short v12, v12

    move v13, v11

    if-eq v12, v13, :cond_6

    .line 100
    new-instance v12, Ljava/lang/ArithmeticException;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string/jumbo v14, "overflow in dimensions"

    invoke-direct {v13, v14}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 84
    .end local v11    # "pow":I
    :cond_3
    move-object v12, v10

    iget v12, v12, Lgnu/math/BaseUnit;->index:I

    move-object v13, v9

    iget v13, v13, Lgnu/math/BaseUnit;->index:I

    if-ge v12, v13, :cond_4

    .line 86
    move-object v12, v10

    move-object v9, v12

    .line 87
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/Dimensions;->powers:[S

    move v13, v7

    aget-short v12, v12, v13

    move v13, v4

    mul-int/2addr v12, v13

    move v11, v12

    .line 88
    .restart local v11    # "pow":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 90
    .end local v11    # "pow":I
    :cond_4
    move-object v12, v10

    sget-object v13, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v12, v13, :cond_5

    .line 91
    .line 104
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v13, v8

    sget-object v14, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v14, v12, v13

    .line 105
    move-object v12, v0

    move v13, v5

    invoke-direct {v12, v13}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 106
    return-void

    .line 94
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Lgnu/math/Dimensions;->powers:[S

    move v13, v6

    aget-short v12, v12, v13

    move v13, v2

    mul-int/2addr v12, v13

    move-object v13, v3

    iget-object v13, v13, Lgnu/math/Dimensions;->powers:[S

    move v14, v7

    aget-short v13, v13, v14

    move v14, v4

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    move v11, v12

    .line 95
    .restart local v11    # "pow":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 96
    move v12, v11

    if-nez v12, :cond_2

    .line 97
    goto :goto_2

    .line 101
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v13, v8

    move-object v14, v9

    aput-object v14, v12, v13

    .line 102
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/Dimensions;->powers:[S

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    move v14, v11

    int-to-short v14, v14

    aput-short v14, v12, v13

    .line 103
    goto/16 :goto_2
.end method

.method private enterHash(I)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move v1, p1

    .local v1, "hash_code":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/math/Dimensions;->hash_code:I

    .line 35
    move v3, v1

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    sget-object v4, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v4, v4

    rem-int/2addr v3, v4

    move v2, v3

    .line 36
    .local v2, "index":I
    move-object v3, v0

    sget-object v4, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    move v5, v2

    aget-object v4, v4, v5

    iput-object v4, v3, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    .line 37
    sget-object v3, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    move v4, v2

    move-object v5, v0

    aput-object v5, v3, v4

    .line 38
    return-void
.end method

.method private matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z
    .locals 14

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move-object v1, p1

    .local v1, "a":Lgnu/math/Dimensions;
    move/from16 v2, p2

    .local v2, "mul_a":I
    move-object/from16 v3, p3

    .local v3, "b":Lgnu/math/Dimensions;
    move/from16 v4, p4

    .local v4, "mul_b":I
    const/4 v11, 0x0

    move v5, v11

    .local v5, "a_i":I
    const/4 v11, 0x0

    move v6, v11

    .line 113
    .local v6, "b_i":I
    const/4 v11, 0x0

    move v7, v11

    .line 115
    .local v7, "t_i":I
    :goto_0
    move-object v11, v1

    iget-object v11, v11, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v12, v5

    aget-object v11, v11, v12

    move-object v8, v11

    .line 116
    .local v8, "a_base":Lgnu/math/BaseUnit;
    move-object v11, v3

    iget-object v11, v11, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v12, v6

    aget-object v11, v11, v12

    move-object v9, v11

    .line 118
    .local v9, "b_base":Lgnu/math/BaseUnit;
    move-object v11, v8

    iget v11, v11, Lgnu/math/BaseUnit;->index:I

    move-object v12, v9

    iget v12, v12, Lgnu/math/BaseUnit;->index:I

    if-ge v11, v12, :cond_2

    .line 120
    move-object v11, v1

    iget-object v11, v11, Lgnu/math/Dimensions;->powers:[S

    move v12, v5

    aget-short v11, v11, v12

    move v12, v2

    mul-int/2addr v11, v12

    move v10, v11

    .line 121
    .local v10, "pow":I
    add-int/lit8 v5, v5, 0x1

    .line 138
    :cond_0
    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v12, v7

    aget-object v11, v11, v12

    move-object v12, v8

    if-ne v11, v12, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lgnu/math/Dimensions;->powers:[S

    move v12, v7

    aget-short v11, v11, v12

    move v12, v10

    if-eq v11, v12, :cond_6

    .line 139
    :cond_1
    const/4 v11, 0x0

    move v0, v11

    .end local v0    # "this":Lgnu/math/Dimensions;
    .end local v10    # "pow":I
    :goto_2
    return v0

    .line 123
    .restart local v0    # "this":Lgnu/math/Dimensions;
    :cond_2
    move-object v11, v9

    iget v11, v11, Lgnu/math/BaseUnit;->index:I

    move-object v12, v8

    iget v12, v12, Lgnu/math/BaseUnit;->index:I

    if-ge v11, v12, :cond_3

    .line 125
    move-object v11, v9

    move-object v8, v11

    .line 126
    move-object v11, v3

    iget-object v11, v11, Lgnu/math/Dimensions;->powers:[S

    move v12, v6

    aget-short v11, v11, v12

    move v12, v4

    mul-int/2addr v11, v12

    move v10, v11

    .line 127
    .restart local v10    # "pow":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 129
    .end local v10    # "pow":I
    :cond_3
    move-object v11, v9

    sget-object v12, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v11, v12, :cond_5

    .line 130
    move-object v11, v0

    iget-object v11, v11, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v12, v7

    aget-object v11, v11, v12

    move-object v12, v9

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_3
    move v0, v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 133
    :cond_5
    move-object v11, v1

    iget-object v11, v11, Lgnu/math/Dimensions;->powers:[S

    move v12, v5

    aget-short v11, v11, v12

    move v12, v2

    mul-int/2addr v11, v12

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/Dimensions;->powers:[S

    move v13, v6

    aget-short v12, v12, v13

    move v13, v4

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    move v10, v11

    .line 134
    .restart local v10    # "pow":I
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 135
    move v11, v10

    if-nez v11, :cond_0

    .line 136
    goto :goto_0

    .line 140
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 141
    goto :goto_0
.end method

.method public static product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;
    .locals 15

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "a":Lgnu/math/Dimensions;
    move/from16 v1, p1

    .local v1, "mul_a":I
    move-object/from16 v2, p2

    .local v2, "b":Lgnu/math/Dimensions;
    move/from16 v3, p3

    .local v3, "mul_b":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/math/Dimensions;->hashCode()I

    move-result v7

    move v8, v1

    mul-int/2addr v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/math/Dimensions;->hashCode()I

    move-result v8

    move v9, v3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move v4, v7

    .line 148
    .local v4, "hash":I
    move v7, v4

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    sget-object v8, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v8, v8

    rem-int/2addr v7, v8

    move v5, v7

    .line 149
    .local v5, "index":I
    sget-object v7, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 150
    .local v6, "dim":Lgnu/math/Dimensions;
    :goto_0
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 152
    move-object v7, v6

    iget v7, v7, Lgnu/math/Dimensions;->hash_code:I

    move v8, v4

    if-ne v7, v8, :cond_0

    move-object v7, v6

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/math/Dimensions;->matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    move-object v7, v6

    move-object v0, v7

    .line 155
    .end local v0    # "a":Lgnu/math/Dimensions;
    :goto_1
    return-object v0

    .line 150
    .restart local v0    # "a":Lgnu/math/Dimensions;
    :cond_0
    move-object v7, v6

    iget-object v7, v7, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    move-object v6, v7

    goto :goto_0

    .line 155
    :cond_1
    new-instance v7, Lgnu/math/Dimensions;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lgnu/math/Dimensions;-><init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V

    move-object v0, v7

    goto :goto_1
.end method


# virtual methods
.method public getPower(Lgnu/math/BaseUnit;)I
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move-object v1, p1

    .local v1, "unit":Lgnu/math/BaseUnit;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v4, v2

    aget-object v3, v3, v4

    iget v3, v3, Lgnu/math/BaseUnit;->index:I

    move-object v4, v1

    iget v4, v4, Lgnu/math/BaseUnit;->index:I

    if-gt v3, v4, :cond_1

    .line 163
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/Dimensions;->powers:[S

    move v4, v2

    aget-short v3, v3, v4

    move v0, v3

    .line 166
    .end local v0    # "this":Lgnu/math/Dimensions;
    :goto_1
    return v0

    .line 161
    .restart local v0    # "this":Lgnu/math/Dimensions;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    move-object v1, v0

    iget v1, v1, Lgnu/math/Dimensions;->hash_code:I

    move v0, v1

    .end local v0    # "this":Lgnu/math/Dimensions;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/math/Dimensions;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 172
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v5, v2

    aget-object v4, v4, v5

    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v4, v5, :cond_2

    .line 174
    move v4, v2

    if-lez v4, :cond_0

    .line 175
    move-object v4, v1

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 176
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 177
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/Dimensions;->powers:[S

    move v5, v2

    aget-short v4, v4, v5

    move v3, v4

    .line 178
    .local v3, "pow":I
    move v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 180
    move-object v4, v1

    const/16 v5, 0x5e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 181
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 172
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "pow":I
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/math/Dimensions;
    return-object v0
.end method
