.class public Lgnu/lists/GeneralArray;
.super Lgnu/lists/AbstractSequence;
.source "GeneralArray.java"

# interfaces
.implements Lgnu/lists/Array;


# static fields
.field static final zeros:[I


# instance fields
.field base:Lgnu/lists/SimpleVector;

.field dimensions:[I

.field lowBounds:[I

.field offset:I

.field simple:Z

.field strides:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lgnu/lists/GeneralArray;->zeros:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/lists/GeneralArray;->simple:Z

    .line 58
    return-void
.end method

.method public constructor <init>([I)V
    .locals 11

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, p1

    .local v1, "dimensions":[I
    move-object v6, v0

    invoke-direct {v6}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lgnu/lists/GeneralArray;->simple:Z

    .line 62
    const/4 v6, 0x1

    move v2, v6

    .line 63
    .local v2, "total":I
    move-object v6, v1

    array-length v6, v6

    move v3, v6

    .line 64
    .local v3, "rank":I
    move v6, v3

    sget-object v7, Lgnu/lists/GeneralArray;->zeros:[I

    array-length v7, v7

    if-gt v6, v7, :cond_0

    .line 65
    move-object v6, v0

    sget-object v7, Lgnu/lists/GeneralArray;->zeros:[I

    iput-object v7, v6, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 68
    :goto_0
    move v6, v3

    new-array v6, v6, [I

    move-object v4, v6

    .line 69
    .local v4, "strides":[I
    move v6, v3

    move v5, v6

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_1

    .line 71
    move-object v6, v4

    move v7, v5

    move v8, v2

    aput v8, v6, v7

    .line 72
    move v6, v2

    move-object v7, v1

    move v8, v5

    aget v7, v7, v8

    mul-int/2addr v6, v7

    move v2, v6

    goto :goto_1

    .line 67
    .end local v4    # "strides":[I
    .end local v5    # "i":I
    :cond_0
    move-object v6, v0

    move v7, v3

    new-array v7, v7, [I

    iput-object v7, v6, Lgnu/lists/GeneralArray;->lowBounds:[I

    goto :goto_0

    .line 74
    .restart local v4    # "strides":[I
    .restart local v5    # "i":I
    :cond_1
    move-object v6, v0

    new-instance v7, Lgnu/lists/FVector;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v2

    invoke-direct {v8, v9}, Lgnu/lists/FVector;-><init>(I)V

    iput-object v7, v6, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 75
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 76
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lgnu/lists/GeneralArray;->offset:I

    .line 77
    return-void
.end method

.method public static makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 12

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "lowBounds":[I
    move-object v1, p1

    .local v1, "dimensions":[I
    move-object v2, p2

    .local v2, "base":Lgnu/lists/SimpleVector;
    move-object v8, v1

    array-length v8, v8

    move v3, v8

    .line 33
    .local v3, "d":I
    move-object v8, v0

    if-nez v8, :cond_0

    .line 35
    sget-object v8, Lgnu/lists/GeneralArray;->zeros:[I

    move-object v0, v8

    .line 36
    move v8, v3

    move-object v9, v0

    array-length v9, v9

    if-le v8, v9, :cond_0

    .line 37
    move v8, v3

    new-array v8, v8, [I

    move-object v0, v8

    .line 39
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    if-nez v8, :cond_1

    .line 40
    move-object v8, v2

    move-object v0, v8

    .line 53
    .end local v0    # "lowBounds":[I
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "lowBounds":[I
    :cond_1
    new-instance v8, Lgnu/lists/GeneralArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lgnu/lists/GeneralArray;-><init>()V

    move-object v4, v8

    .line 42
    .local v4, "array":Lgnu/lists/GeneralArray;
    move v8, v3

    new-array v8, v8, [I

    move-object v5, v8

    .line 43
    .local v5, "strides":[I
    const/4 v8, 0x1

    move v6, v8

    .line 44
    .local v6, "n":I
    move v8, v3

    move v7, v8

    .local v7, "i":I
    :goto_1
    add-int/lit8 v7, v7, -0x1

    move v8, v7

    if-ltz v8, :cond_2

    .line 46
    move-object v8, v5

    move v9, v7

    move v10, v6

    aput v10, v8, v9

    .line 47
    move v8, v6

    move-object v9, v1

    move v10, v7

    aget v9, v9, v10

    mul-int/2addr v8, v9

    move v6, v8

    goto :goto_1

    .line 49
    :cond_2
    move-object v8, v4

    move-object v9, v5

    iput-object v9, v8, Lgnu/lists/GeneralArray;->strides:[I

    .line 50
    move-object v8, v4

    move-object v9, v1

    iput-object v9, v8, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 51
    move-object v8, v4

    move-object v9, v0

    iput-object v9, v8, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 52
    move-object v8, v4

    move-object v9, v2

    iput-object v9, v8, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 53
    move-object v8, v4

    move-object v0, v8

    goto :goto_0
.end method

.method public static toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V
    .locals 9

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "array":Lgnu/lists/Array;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v1

    const-string/jumbo v7, "#<array"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 176
    move-object v6, v0

    invoke-interface {v6}, Lgnu/lists/Array;->rank()I

    move-result v6

    move v2, v6

    .line 177
    .local v2, "r":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 179
    move-object v6, v1

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 180
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v6

    move v4, v6

    .line 181
    .local v4, "lo":I
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Lgnu/lists/Array;->getSize(I)I

    move-result v6

    move v5, v6

    .line 182
    .local v5, "sz":I
    move v6, v4

    if-eqz v6, :cond_0

    .line 184
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 185
    move-object v6, v1

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 187
    :cond_0
    move-object v6, v1

    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "lo":I
    .end local v5    # "sz":I
    :cond_1
    move-object v6, v1

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 190
    return-void
.end method


# virtual methods
.method public createPos(IZ)I
    .locals 10

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    move-object v7, v0

    iget v7, v7, Lgnu/lists/GeneralArray;->offset:I

    move v3, v7

    .line 104
    .local v3, "total":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v7, v7

    move v4, v7

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v7, v4

    if-ltz v7, :cond_0

    .line 106
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray;->dimensions:[I

    move v8, v4

    aget v7, v7, v8

    move v5, v7

    .line 107
    .local v5, "dim":I
    move v7, v1

    move v8, v5

    rem-int/2addr v7, v8

    move v6, v7

    .line 108
    .local v6, "cur":I
    move v7, v1

    move v8, v5

    div-int/2addr v7, v8

    move v1, v7

    .line 109
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GeneralArray;->strides:[I

    move v9, v4

    aget v8, v8, v9

    move v9, v6

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move v3, v7

    .line 110
    goto :goto_0

    .line 111
    .end local v5    # "dim":I
    .end local v6    # "cur":I
    :cond_0
    move v7, v3

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v8, v2

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    or-int/2addr v7, v8

    move v0, v7

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return v0

    .restart local v0    # "this":Lgnu/lists/GeneralArray;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/GeneralArray;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return-object v0
.end method

.method public get([I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, p1

    .local v1, "indexes":[I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return-object v0
.end method

.method public getEffectiveIndex([I)I
    .locals 10

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, p1

    .local v1, "indexes":[I
    move-object v6, v0

    iget v6, v6, Lgnu/lists/GeneralArray;->offset:I

    move v2, v6

    .line 85
    .local v2, "result":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v6, v6

    move v3, v6

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-ltz v6, :cond_2

    .line 87
    move-object v6, v1

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 88
    .local v4, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/GeneralArray;->lowBounds:[I

    move v7, v3

    aget v6, v6, v7

    move v5, v6

    .line 89
    .local v5, "low":I
    move v6, v4

    move v7, v5

    if-lt v6, v7, :cond_0

    move v6, v4

    move v7, v5

    sub-int/2addr v6, v7

    move v9, v6

    move v6, v9

    move v7, v9

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray;->dimensions:[I

    move v8, v3

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    .line 90
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 91
    :cond_1
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray;->strides:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v2, v6

    .line 92
    goto :goto_0

    .line 93
    .end local v4    # "index":I
    .end local v5    # "low":I
    :cond_2
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return v0
.end method

.method public getLowBound(I)I
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move v1, p1

    .local v1, "dim":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GeneralArray;->lowBounds:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return v0
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move v1, p1

    .local v1, "index":I
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/lists/GeneralArray;->simple:Z

    if-eqz v6, :cond_0

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 126
    .end local v0    # "this":Lgnu/lists/GeneralArray;
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "this":Lgnu/lists/GeneralArray;
    :cond_0
    move-object v6, v0

    iget v6, v6, Lgnu/lists/GeneralArray;->offset:I

    move v2, v6

    .line 119
    .local v2, "total":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v6, v6

    move v3, v6

    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-ltz v6, :cond_1

    .line 121
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/GeneralArray;->dimensions:[I

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 122
    .local v4, "dim":I
    move v6, v1

    move v7, v4

    rem-int/2addr v6, v7

    move v5, v6

    .line 123
    .local v5, "cur":I
    move v6, v1

    move v7, v4

    div-int/2addr v6, v7

    move v1, v6

    .line 124
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray;->strides:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v5

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v2, v6

    .line 125
    goto :goto_1

    .line 126
    .end local v4    # "dim":I
    .end local v5    # "cur":I
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public getSize(I)I
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move v1, p1

    .local v1, "dim":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GeneralArray;->dimensions:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return v0
.end method

.method public rank()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return v0
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, p1

    .local v1, "indexes":[I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return-object v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    const/4 v3, 0x1

    move v1, v3

    .line 143
    .local v1, "total":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v3, v3

    move v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 144
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/GeneralArray;->dimensions:[I

    move v5, v2

    aget v4, v4, v5

    mul-int/2addr v3, v4

    move v1, v3

    goto :goto_0

    .line 145
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 195
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/lists/GeneralArray;->toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V

    .line 196
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return-object v0
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 9

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray;
    move-object v1, p1

    .local v1, "lowBounds":[I
    move-object v2, p2

    .local v2, "dimensions":[I
    move v3, p3

    .local v3, "offset0":I
    move-object v4, p4

    .local v4, "factors":[I
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move-object v6, v1

    const/4 v7, 0x0

    aget v6, v6, v7

    if-nez v6, :cond_0

    new-instance v6, Lgnu/lists/GeneralArray1;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lgnu/lists/GeneralArray1;-><init>()V

    :goto_0
    move-object v5, v6

    .line 164
    .local v5, "array":Lgnu/lists/GeneralArray;
    move-object v6, v5

    move v7, v3

    iput v7, v6, Lgnu/lists/GeneralArray;->offset:I

    .line 165
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/lists/GeneralArray;->strides:[I

    .line 166
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 167
    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 168
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    iput-object v7, v6, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 169
    move-object v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Lgnu/lists/GeneralArray;->simple:Z

    .line 170
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/lists/GeneralArray;
    return-object v0

    .line 161
    .end local v5    # "array":Lgnu/lists/GeneralArray;
    .restart local v0    # "this":Lgnu/lists/GeneralArray;
    :cond_0
    new-instance v6, Lgnu/lists/GeneralArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lgnu/lists/GeneralArray;-><init>()V

    goto :goto_0
.end method
