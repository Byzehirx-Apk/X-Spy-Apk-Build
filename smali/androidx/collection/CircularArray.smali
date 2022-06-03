.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, v0

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroidx/collection/CircularArray;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move v1, p1

    .local v1, "minCapacity":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 59
    move v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "capacity must be >= 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_0
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    if-le v3, v4, :cond_1

    .line 63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "capacity must be <= 2^30"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_1
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 70
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 75
    .local v2, "arrayCapacity":I
    :goto_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 76
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    .line 77
    return-void

    .line 72
    .end local v2    # "arrayCapacity":I
    :cond_2
    move v3, v1

    move v2, v3

    .restart local v2    # "arrayCapacity":I
    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 11

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    move v1, v5

    .line 31
    .local v1, "n":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    move v2, v5

    .line 32
    .local v2, "r":I
    move v5, v1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 33
    .local v3, "newCapacity":I
    move v5, v3

    if-gez v5, :cond_0

    .line 34
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Max array capacity exceeded"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36
    :cond_0
    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 37
    .local v4, "a":[Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v4

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/CircularArray;->mHead:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    move-object v5, v0

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    .line 40
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    .line 41
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/collection/CircularArray;->mTail:I

    .line 42
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 43
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularArray;->mHead:I

    .line 85
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 86
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 87
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 89
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 97
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularArray;->mTail:I

    .line 98
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    if-ne v2, v3, :cond_0

    .line 99
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 101
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/CircularArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 139
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move v1, p1

    .local v1, "n":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/collection/CircularArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 241
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 243
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 216
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 218
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 228
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 230
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 110
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 112
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 113
    .local v1, "result":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 114
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/CircularArray;->mHead:I

    .line 115
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return-object v0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mHead:I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mTail:I

    if-ne v3, v4, :cond_0

    .line 125
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 127
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/collection/CircularArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    move v1, v3

    .line 128
    .local v1, "t":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 129
    .local v2, "result":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 130
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/collection/CircularArray;->mTail:I

    .line 131
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return-object v0
.end method

.method public removeFromEnd(I)V
    .locals 10

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move v1, p1

    .local v1, "numOfElements":I
    move v6, v1

    if-gtz v6, :cond_0

    .line 183
    .line 207
    :goto_0
    return-void

    .line 185
    :cond_0
    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/collection/CircularArray;->size()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 186
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 188
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 189
    .local v2, "start":I
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    if-ge v6, v7, :cond_2

    .line 190
    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mTail:I

    move v7, v1

    sub-int/2addr v6, v7

    move v2, v6

    .line 192
    :cond_2
    move v6, v2

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    if-ge v6, v7, :cond_3

    .line 193
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mTail:I

    move v7, v2

    sub-int/2addr v6, v7

    move v3, v6

    .line 196
    .local v3, "removed":I
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v1, v6

    .line 197
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroidx/collection/CircularArray;->mTail:I

    .line 198
    move v6, v1

    if-lez v6, :cond_5

    .line 200
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v7, v7

    iput v7, v6, Landroidx/collection/CircularArray;->mTail:I

    .line 201
    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mTail:I

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 202
    .local v4, "newTail":I
    move v6, v4

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mTail:I

    if-ge v6, v7, :cond_4

    .line 203
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v7, v5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 205
    :cond_4
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroidx/collection/CircularArray;->mTail:I

    .line 207
    .end local v4    # "newTail":I
    .end local v5    # "i":I
    :cond_5
    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 9

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move v1, p1

    .local v1, "numOfElements":I
    move v5, v1

    if-gtz v5, :cond_0

    .line 150
    .line 172
    :goto_0
    return-void

    .line 152
    :cond_0
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/collection/CircularArray;->size()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 153
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 155
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    move v2, v5

    .line 156
    .local v2, "end":I
    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 157
    move-object v5, v0

    iget v5, v5, Landroidx/collection/CircularArray;->mHead:I

    move v6, v1

    add-int/2addr v5, v6

    move v2, v5

    .line 159
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroidx/collection/CircularArray;->mHead:I

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 160
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_3
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 163
    .local v3, "removed":I
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v1, v5

    .line 164
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/collection/CircularArray;->mHead:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v6, v7

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    .line 165
    move v5, v1

    if-lez v5, :cond_5

    .line 167
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_4

    .line 168
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    move v6, v4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    :cond_4
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    .line 172
    .end local v4    # "i":I
    :cond_5
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/CircularArray;->mTail:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    return v0
.end method
