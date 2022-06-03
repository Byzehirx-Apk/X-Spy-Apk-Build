.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "initialCapacity":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 73
    move v2, v1

    if-nez v2, :cond_0

    .line 74
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 75
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 81
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 82
    return-void

    .line 77
    :cond_0
    move v2, v1

    invoke-static {v2}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v2

    move v1, v2

    .line 78
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 79
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v1, v7

    .line 176
    .local v1, "n":I
    const/4 v7, 0x0

    move v2, v7

    .line 177
    .local v2, "o":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v3, v7

    .line 178
    .local v3, "keys":[I
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 180
    .local v4, "values":[Ljava/lang/Object;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 181
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 183
    .local v6, "val":Ljava/lang/Object;
    move-object v7, v6

    sget-object v8, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 184
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 185
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    aput v9, v7, v8

    .line 186
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 187
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 190
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 180
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v6    # "val":Ljava/lang/Object;
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 195
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 198
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TE;"
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-eqz v7, :cond_0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_0

    .line 389
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 390
    .line 415
    :goto_0
    return-void

    .line 393
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_1

    .line 394
    move-object v7, v0

    invoke-direct {v7}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 397
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v3, v7

    .line 398
    .local v3, "pos":I
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 399
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 401
    .local v4, "n":I
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 402
    .local v5, "nkeys":[I
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 405
    .local v6, "nvalues":[Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 409
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 412
    .end local v4    # "n":I
    .end local v5    # "nkeys":[I
    .end local v6    # "nvalues":[Ljava/lang/Object;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 413
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 414
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 415
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v1, v4

    .line 373
    .local v1, "n":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 375
    .local v2, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 376
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 380
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 381
    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/SparseArrayCompat;

    move-object v1, v3

    .line 90
    .local v1, "clone":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v3, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 91
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return-object v0

    .line 92
    .end local v1    # "clone":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 93
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return-object v0
.end method

.method public containsKey(I)Z
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public delete(I)V
    .locals 6

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v3

    move v2, v3

    .line 134
    .local v2, "i":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 135
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 136
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    sget-object v5, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 137
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 140
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v6, v1

    invoke-static {v4, v5, v6}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v4

    move v3, v4

    .line 121
    .local v3, "i":I
    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 122
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .line 124
    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 330
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 333
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v3, v0

    iget v3, v3, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v4, v1

    invoke-static {v2, v3, v4}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 348
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 351
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v3, v4, :cond_2

    .line 352
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 353
    move v3, v2

    move v0, v3

    .line 355
    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :goto_1
    return v0

    .line 351
    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyAt(I)I
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 290
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 293
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;, "TE;"
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v3, v7

    .line 208
    .local v3, "i":I
    move v7, v3

    if-ltz v7, :cond_0

    .line 209
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 250
    :goto_0
    return-void

    .line 211
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 213
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    aget-object v7, v7, v8

    sget-object v8, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    .line 214
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 215
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 216
    goto :goto_0

    .line 219
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 220
    move-object v7, v0

    invoke-direct {v7}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 223
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v7

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 226
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 227
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 229
    .local v4, "n":I
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 230
    .local v5, "nkeys":[I
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 233
    .local v6, "nvalues":[Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 237
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 240
    .end local v4    # "n":I
    .end local v5    # "nkeys":[I
    .end local v6    # "nvalues":[Ljava/lang/Object;
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v8, v3

    sub-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 242
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 247
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 248
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    goto/16 :goto_0
.end method

.method public putAll(Landroidx/collection/SparseArrayCompat;)V
    .locals 8
    .param p1    # Landroidx/collection/SparseArrayCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, p1

    .local v1, "other":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<+TE;>;"
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    move v3, v4

    .local v3, "size":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 259
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->delete(I)V

    .line 147
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 154
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 155
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 157
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 8

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "size":I
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 167
    .local v3, "end":I
    move v5, v1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 168
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 317
    move-object v3, v0

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 320
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 321
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 272
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/collection/SparseArrayCompat;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 427
    const-string/jumbo v5, "{}"

    move-object v0, v5

    .line 447
    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    .local v1, "buffer":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 430
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .restart local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 431
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 432
    const/4 v5, 0x0

    move v2, v5

    .restart local v2    # "i":I
    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v5, v6, :cond_3

    .line 433
    move v5, v2

    if-lez v5, :cond_1

    .line 434
    move-object v5, v1

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 436
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 437
    .local v3, "key":I
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 438
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 439
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 440
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 441
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 432
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 443
    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 446
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 447
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 304
    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 307
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    return-object v0
.end method
