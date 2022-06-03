.class public Lgnu/lists/SeqPosition;
.super Ljava/lang/Object;
.source "SeqPosition.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/util/Enumeration;


# instance fields
.field public ipos:I

.field public sequence:Lgnu/lists/AbstractSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 50
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 61
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/lists/SeqPosition;->ipos:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;IZ)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 55
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v5

    iput v5, v4, Lgnu/lists/SeqPosition;->ipos:I

    .line 56
    return-void
.end method

.method public static make(Lgnu/lists/AbstractSequence;I)Lgnu/lists/SeqPosition;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "seq":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    new-instance v2, Lgnu/lists/SeqPosition;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    move-object v0, v2

    .end local v0    # "seq":Lgnu/lists/AbstractSequence;
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/SeqPosition;->setPos(I)V

    .line 277
    return-void
.end method

.method public copy()Lgnu/lists/SeqPosition;
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    new-instance v1, Lgnu/lists/SeqPosition;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/SeqPosition;->release()V

    .line 334
    return-void
.end method

.method public final fromEndIndex()I
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->fromEndIndex(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public getContainingSequenceSize()I
    .locals 3

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getContainingSequenceSize(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public getNext()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public getNextKind()I
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public getNextTypeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public getNextTypeObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public getPos()I
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/SeqPosition;->ipos:I

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public getPrevious()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public gotoChildrenStart()Z
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v2

    move v1, v2

    .line 95
    .local v1, "child":I
    move v2, v1

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    move v0, v2

    .line 98
    .end local v0    # "this":Lgnu/lists/SeqPosition;
    :goto_0
    return v0

    .line 97
    .restart local v0    # "this":Lgnu/lists/SeqPosition;
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 98
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final gotoEnd(Lgnu/lists/AbstractSequence;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/lists/SeqPosition;->setPos(Lgnu/lists/AbstractSequence;I)V

    .line 85
    return-void
.end method

.method public gotoNext()Z
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v2

    move v1, v2

    .line 153
    .local v1, "next":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 156
    const/4 v2, 0x1

    move v0, v2

    .line 161
    .end local v0    # "this":Lgnu/lists/SeqPosition;
    :goto_0
    return v0

    .line 160
    .restart local v0    # "this":Lgnu/lists/SeqPosition;
    :cond_0
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 161
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public gotoPrevious()Z
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->previousPos(I)I

    move-result v2

    move v1, v2

    .line 171
    .local v1, "prev":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 173
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 174
    const/4 v2, 0x1

    move v0, v2

    .line 179
    .end local v0    # "this":Lgnu/lists/SeqPosition;
    :goto_0
    return v0

    .line 178
    .restart local v0    # "this":Lgnu/lists/SeqPosition;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 179
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final gotoStart(Lgnu/lists/AbstractSequence;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/lists/SeqPosition;->setPos(Lgnu/lists/AbstractSequence;I)V

    .line 80
    return-void
.end method

.method public final hasMoreElements()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public hasPrevious()Z
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public isAfter()Z
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->isAfterPos(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 142
    .local v1, "result":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->gotoNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 144
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/SeqPosition;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public nextIndex()I
    .locals 3

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 187
    .local v1, "result":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->gotoPrevious()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 189
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0
.end method

.method public final previousIndex()I
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v1, :cond_0

    .line 326
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 327
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 329
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->isAfter()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 272
    return-void

    .line 271
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .locals 8

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v4, :cond_0

    .line 309
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 310
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 311
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v5

    iput v5, v4, Lgnu/lists/SeqPosition;->ipos:I

    .line 312
    return-void
.end method

.method public set(Lgnu/lists/SeqPosition;)V
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/SeqPosition;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v2, :cond_0

    .line 317
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 318
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v3, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 319
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v1

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v3

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 320
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->isAfter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SeqPosition;->setPrevious(Ljava/lang/Object;)V

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SeqPosition;->setNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNext(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method public setPos(I)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v2, :cond_0

    .line 302
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 303
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/SeqPosition;->ipos:I

    .line 304
    return-void
.end method

.method public setPos(Lgnu/lists/AbstractSequence;I)V
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v3, :cond_0

    .line 294
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 295
    :cond_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/lists/SeqPosition;->ipos:I

    .line 296
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 297
    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public toInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 347
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 348
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v2, :cond_0

    .line 349
    move-object v2, v1

    const-string/jumbo v3, "null sequence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 356
    :goto_0
    move-object v2, v1

    const-string/jumbo v3, " ipos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 357
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 365
    move-object v2, v1

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 366
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/SeqPosition;
    return-object v0

    .line 352
    .restart local v0    # "this":Lgnu/lists/SeqPosition;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 353
    move-object v2, v1

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 354
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SeqPosition;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v2, :cond_0

    .line 339
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->toInfo()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 341
    .end local v0    # "this":Lgnu/lists/SeqPosition;
    .local v1, "item":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 340
    .end local v1    # "item":Ljava/lang/Object;
    .restart local v0    # "this":Lgnu/lists/SeqPosition;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 341
    .restart local v1    # "item":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->nextIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    if-nez v3, :cond_1

    const-string/jumbo v3, "(null)"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
