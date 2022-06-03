.class public Lgnu/lists/GeneralArray1;
.super Lgnu/lists/GeneralArray;
.source "GeneralArray1.java"

# interfaces
.implements Lgnu/lists/Sequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray1;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/GeneralArray;-><init>()V

    return-void
.end method


# virtual methods
.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray1;
    move v1, p1

    .local v1, "iposStart":I
    move v2, p2

    .local v2, "iposEnd":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v5, v3

    invoke-interface {v5}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    .line 30
    :goto_0
    return-void

    .line 22
    :cond_0
    move v5, v1

    move v4, v5

    .line 23
    .local v4, "it":I
    :goto_1
    move-object v5, v0

    move v6, v4

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/GeneralArray1;->equals(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 25
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/GeneralArray1;->hasNext(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 26
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 27
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/GeneralArray1;->base:Lgnu/lists/SimpleVector;

    move-object v6, v0

    iget v6, v6, Lgnu/lists/GeneralArray1;->offset:I

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/GeneralArray1;->strides:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move v8, v4

    const/4 v9, 0x1

    ushr-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/4 v7, 0x1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/lists/SimpleVector;->consume(IILgnu/lists/Consumer;)V

    .line 28
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/GeneralArray1;->nextPos(I)I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 30
    :cond_2
    goto :goto_0
.end method

.method public createPos(IZ)I
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray1;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lgnu/lists/GeneralArray1;
    return v0

    .restart local v0    # "this":Lgnu/lists/GeneralArray1;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected nextIndex(I)I
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GeneralArray1;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/GeneralArray1;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/GeneralArray1;
    return v0

    .restart local v0    # "this":Lgnu/lists/GeneralArray1;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
