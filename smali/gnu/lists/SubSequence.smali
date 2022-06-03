.class public Lgnu/lists/SubSequence;
.super Lgnu/lists/AbstractSequence;
.source "SubSequence.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field base:Lgnu/lists/AbstractSequence;

.field ipos0:I

.field ipos1:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/AbstractSequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    .line 38
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;II)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "startPos":I
    move v3, p3

    .local v3, "endPos":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 30
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    .line 31
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/lists/SubSequence;->ipos0:I

    .line 32
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/lists/SubSequence;->ipos1:I

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/SubSequence;->ipos0:I

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v1, v2, v3}, Lgnu/lists/SubSequence;->removePosRange(II)V

    .line 124
    return-void
.end method

.method public compare(II)I
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos2":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public createPos(IZ)I
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "isAfter":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos0:I

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public createRelativePos(IIZ)I
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public endPos()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/SubSequence;->ipos1:I

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public finalize()V
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 129
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 130
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/SubSequence;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 43
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 44
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    move v2, v3

    .line 45
    .local v2, "start":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v4, v2

    move v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return-object v0
.end method

.method protected getIndexDifference(II)I
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos0":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public getNextKind(I)I
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v2

    if-ltz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    move v0, v2

    .line 103
    .end local v0    # "this":Lgnu/lists/SubSequence;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/SubSequence;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v2

    if-ltz v2, :cond_0

    .line 95
    sget-object v2, Lgnu/lists/SubSequence;->eofValue:Ljava/lang/Object;

    move-object v0, v2

    .line 96
    .end local v0    # "this":Lgnu/lists/SubSequence;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/lists/SubSequence;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v2

    if-gtz v2, :cond_0

    .line 112
    sget-object v2, Lgnu/lists/SubSequence;->eofValue:Ljava/lang/Object;

    move-object v0, v2

    .line 113
    .end local v0    # "this":Lgnu/lists/SubSequence;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/lists/SubSequence;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method protected isAfterPos(I)Z
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->isAfterPos(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method protected nextIndex(I)I
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v2, v3, v4}, Lgnu/lists/SubSequence;->getIndexDifference(II)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public releasePos(I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 80
    return-void
.end method

.method public removePosRange(II)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "istart":I
    move v2, p2

    .local v2, "iend":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos0:I

    :goto_0
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SubSequence;->ipos1:I

    :goto_1
    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    .line 57
    return-void

    .line 55
    :cond_0
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubSequence;->ipos1:I

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v5, v2

    if-nez v5, :cond_3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SubSequence;->ipos0:I

    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_1
.end method

.method public size()I
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/SubSequence;->ipos1:I

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v1, v2, v3}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method public startPos()I
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/SubSequence;->ipos0:I

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return v0
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .locals 9

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubSequence;
    move v1, p1

    .local v1, "ipos0":I
    move v2, p2

    .local v2, "ipos1":I
    new-instance v3, Lgnu/lists/SubSequence;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/SubSequence;
    return-object v0
.end method
