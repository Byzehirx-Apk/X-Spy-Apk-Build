.class public abstract Lgnu/lists/AbstractSequence;
.super Ljava/lang/Object;
.source "AbstractSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I
    .locals 7

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "seq1":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "pos1":I
    move-object v2, p2

    .local v2, "seq2":Lgnu/lists/AbstractSequence;
    move v3, p3

    .local v3, "pos2":I
    move-object v4, v0

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 697
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v4

    move v0, v4

    .line 698
    .end local v0    # "seq1":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .restart local v0    # "seq1":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public static unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v4

    move v3, v4

    .line 245
    .local v3, "pos":I
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v4

    .line 246
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 247
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v2

    .line 238
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;
    const/4 v6, 0x0

    move v3, v6

    .line 260
    .local v3, "changed":Z
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v6

    move v4, v6

    .line 261
    .local v4, "pos":I
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    move-object v6, v0

    move v7, v4

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 264
    const/4 v6, 0x1

    move v3, v6

    goto :goto_0

    .line 266
    :cond_0
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 267
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/AbstractSequence;->size()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->addAll(ILjava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 5

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    const-string/jumbo v4, "addPos"

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 380
    return-void
.end method

.method public compare(II)I
    .locals 7

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos2":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v5

    move v3, v5

    .line 641
    .local v3, "i1":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v5

    move v4, v5

    .line 642
    .local v4, "i2":I
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    const/4 v5, -0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final compare(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)I
    .locals 6

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "i1":Lgnu/lists/SeqPosition;
    move-object v2, p2

    .local v2, "i2":Lgnu/lists/SeqPosition;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    move-object v5, v2

    iget v5, v5, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 808
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/Sequence;

    move v2, v3

    .line 809
    .local v2, "isSequence":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 810
    move-object v3, v1

    const-string/jumbo v4, "#sequence"

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 811
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 812
    move v3, v2

    if-eqz v3, :cond_1

    .line 813
    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Consumer;->endElement()V

    .line 814
    :cond_1
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 8

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v4

    move v3, v4

    .line 785
    .local v3, "next":I
    move v4, v3

    if-nez v4, :cond_0

    .line 786
    const/4 v4, 0x0

    move v0, v4

    .line 788
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 787
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v3

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 788
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
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

    .line 794
    .line 804
    :goto_0
    return-void

    .line 795
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v5

    move v4, v5

    .line 796
    .local v4, "it":I
    :goto_1
    move-object v5, v0

    move v6, v4

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 798
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 799
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 800
    :cond_1
    move-object v5, v3

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 801
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 803
    :cond_2
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 804
    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 179
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 182
    .local v3, "e":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    const/4 v4, 0x0

    move v0, v4

    .line 185
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    .end local v3    # "e":Ljava/lang/Object;
    :goto_1
    return v0

    .line 184
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    .restart local v3    # "e":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 185
    .end local v3    # "e":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public copyPos(I)I
    .locals 3

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public abstract createPos(IZ)I
.end method

.method public createRelativePos(IIZ)I
    .locals 7

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "delta":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v4, v0

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v5

    move v6, v2

    add-int/2addr v5, v6

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public final elements()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public endPos()I
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public equals(II)Z
    .locals 6

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos2":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v8, v0

    instance-of v8, v8, Ljava/util/List;

    if-eqz v8, :cond_0

    move-object v8, v1

    instance-of v8, v8, Ljava/util/List;

    if-nez v8, :cond_2

    .line 720
    :cond_0
    move-object v8, v0

    move-object v9, v1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .line 758
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_1
    return v0

    .line 720
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 721
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    .line 722
    .local v2, "it1":Ljava/util/Iterator;
    move-object v8, v1

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    .line 733
    .local v3, "it2":Ljava/util/Iterator;
    :goto_2
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    move v4, v8

    .line 734
    .local v4, "more1":Z
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    move v5, v8

    .line 740
    .local v5, "more2":Z
    move v8, v4

    move v9, v5

    if-eq v8, v9, :cond_3

    .line 741
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .line 742
    :cond_3
    move v8, v4

    if-nez v8, :cond_4

    .line 743
    const/4 v8, 0x1

    move v0, v8

    goto :goto_1

    .line 745
    :cond_4
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 746
    .local v6, "e1":Ljava/lang/Object;
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 752
    .local v7, "e2":Ljava/lang/Object;
    move-object v8, v6

    if-nez v8, :cond_5

    .line 754
    move-object v8, v7

    if-eqz v8, :cond_6

    .line 755
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .line 757
    :cond_5
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 758
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .line 759
    :cond_6
    goto :goto_2
.end method

.method public fill(IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v6

    move v4, v6

    .line 106
    .local v4, "i":I
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v6

    move v5, v6

    .line 107
    .local v5, "limit":I
    :goto_0
    move-object v6, v0

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v6

    if-gez v6, :cond_0

    .line 108
    move-object v6, v0

    move v7, v4

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 107
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v4, v6

    goto :goto_0

    .line 109
    :cond_0
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 110
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 111
    return-void
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v3

    move v2, v3

    .local v2, "i":I
    :goto_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v3

    move v6, v3

    move v3, v6

    move v4, v6

    move v2, v4

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "fromPos":I
    move v2, p2

    .local v2, "toPos":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v5

    move v4, v5

    .line 98
    .local v4, "i":I
    :goto_0
    move-object v5, v0

    move v6, v4

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v5

    if-gez v5, :cond_0

    .line 99
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 98
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 100
    :cond_0
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 101
    return-void
.end method

.method public firstAttributePos(I)I
    .locals 3

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public firstChildPos(I)I
    .locals 3

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public firstChildPos(ILgnu/lists/ItemPredicate;)I
    .locals 9

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "predicate":Lgnu/lists/ItemPredicate;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v4

    move v3, v4

    .line 540
    .local v3, "child":I
    move v4, v3

    if-nez v4, :cond_0

    .line 541
    const/4 v4, 0x0

    move v0, v4

    .line 545
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 542
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    invoke-interface {v4, v5, v6}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 545
    :cond_1
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method protected fromEndIndex(I)I
    .locals 5

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->size()I

    move-result v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public get([I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "indexes":[I
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getAttributeLength()I
    .locals 2

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method protected getContainingSequenceSize(I)I
    .locals 3

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->size()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public getEffectiveIndex([I)I
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "indexes":[I
    move-object v2, v1

    const/4 v3, 0x0

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method protected getIndexDifference(II)I
    .locals 6

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos1":I
    move v2, p2

    .local v2, "ipos0":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public final getIterator()Lgnu/lists/SeqPosition;
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .locals 8

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    new-instance v2, Lgnu/lists/SeqPosition;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .locals 8

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
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

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getLowBound(I)I
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "dim":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public getNextKind(I)I
    .locals 4

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 595
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v2

    .line 596
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    move v2, v3

    .line 605
    .local v2, "index":I
    move v3, v2

    if-gtz v3, :cond_0

    .line 606
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v3

    .line 607
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getSize(I)I
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "dim":I
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 3

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/TreePosition;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public final gotoChildrenStart(Lgnu/lists/TreePosition;)Z
    .locals 6

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/TreePosition;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/lists/TreePosition;->getPos()I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v3

    move v2, v3

    .line 520
    .local v2, "ipos":I
    move v3, v2

    if-nez v3, :cond_0

    .line 521
    const/4 v3, 0x0

    move v0, v3

    .line 523
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 522
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 523
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method protected gotoParent(Lgnu/lists/TreePosition;)Z
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/TreePosition;
    move-object v2, v1

    iget v2, v2, Lgnu/lists/TreePosition;->depth:I

    if-gez v2, :cond_0

    .line 568
    const/4 v2, 0x0

    move v0, v2

    .line 570
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 569
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/lists/TreePosition;->pop()V

    .line 570
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/AbstractSequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected hasPrevious(I)Z
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    const/4 v4, 0x1

    move v1, v4

    .line 705
    .local v1, "hash":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    move v2, v4

    .local v2, "i":I
    :goto_0
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v4

    move v6, v4

    move v4, v6

    move v5, v6

    move v2, v5

    if-eqz v4, :cond_1

    .line 707
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 708
    .local v3, "obj":Ljava/lang/Object;
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    move v1, v4

    .line 709
    goto :goto_0

    .line 708
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    .line 710
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    move v2, v5

    .line 120
    .local v2, "i":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v5

    move v3, v5

    .local v3, "iter":I
    :goto_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v7, v5

    move v5, v7

    move v6, v7

    move v3, v6

    if-eqz v5, :cond_3

    .line 122
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 123
    .local v4, "v":Ljava/lang/Object;
    move-object v5, v1

    if-nez v5, :cond_1

    move-object v5, v4

    if-nez v5, :cond_2

    .line 125
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 126
    move v5, v2

    move v0, v5

    .line 129
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    .end local v4    # "v":Ljava/lang/Object;
    :goto_1
    return v0

    .line 123
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v4    # "v":Ljava/lang/Object;
    :cond_3
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method protected isAfterPos(I)Z
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->size()I

    move-result v4

    move v2, v4

    .local v2, "n":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_3

    .line 138
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 139
    .local v3, "e":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_1

    move-object v4, v3

    if-nez v4, :cond_2

    .line 140
    :cond_0
    move v4, v2

    move v0, v4

    .line 142
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    .end local v3    # "e":Ljava/lang/Object;
    :goto_1
    return v0

    .line 139
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    .restart local v3    # "e":Ljava/lang/Object;
    :cond_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    :cond_2
    goto :goto_0

    .line 142
    .end local v3    # "e":Ljava/lang/Object;
    :cond_3
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method protected nextIndex(I)I
    .locals 5

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public final nextIndex(Lgnu/lists/SeqPosition;)I
    .locals 4

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/SeqPosition;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 9

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "startPos":I
    move-object v2, p2

    .local v2, "type":Lgnu/lists/ItemPredicate;
    move v3, p3

    .local v3, "endPos":I
    move v4, p4

    .local v4, "descend":Z
    move v6, v4

    if-eqz v6, :cond_0

    .line 156
    move-object v6, v0

    const-string/jumbo v7, "nextMatching with descend"

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 157
    :cond_0
    move v6, v1

    move v5, v6

    .line 160
    .local v5, "ipos":I
    :cond_1
    move-object v6, v0

    move v7, v5

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v6

    if-ltz v6, :cond_2

    .line 161
    const/4 v6, 0x0

    move v0, v6

    .line 164
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 162
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_2
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v5, v6

    .line 163
    move-object v6, v2

    move-object v7, v0

    move v8, v5

    invoke-interface {v6, v7, v8}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    move v6, v5

    move v0, v6

    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 7

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 492
    const/4 v3, 0x0

    move v0, v3

    .line 495
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 493
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v3

    move v2, v3

    .line 494
    .local v2, "next":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 495
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public parentPos(I)I
    .locals 3

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public previousPos(I)I
    .locals 7

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 506
    const/4 v3, 0x0

    move v0, v3

    .line 509
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 507
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v3, v0

    move v4, v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v3

    move v2, v3

    .line 508
    .local v2, "next":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 509
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public rank()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method protected releasePos(I)V
    .locals 0
    .param p1, "ipos"    # I

    .prologue
    .line 412
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 326
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 327
    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v4

    move v2, v4

    .line 328
    .local v2, "ipos":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 329
    .local v3, "result":Ljava/lang/Object;
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 330
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 331
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 337
    .local v2, "index":I
    move v4, v2

    if-gez v4, :cond_0

    .line 338
    const/4 v4, 0x0

    move v0, v4

    .line 342
    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    :goto_0
    return v0

    .line 339
    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v4

    move v3, v4

    .line 340
    .local v3, "ipos":I
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 341
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 342
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 9

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    const/4 v5, 0x0

    move v2, v5

    .line 349
    .local v2, "changed":Z
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v5

    move v3, v5

    .local v3, "iter":I
    :goto_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v3, v6

    if-eqz v5, :cond_1

    .line 351
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 352
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    move-object v5, v0

    move v6, v3

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 355
    const/4 v5, 0x1

    move v2, v5

    .line 357
    :cond_0
    goto :goto_0

    .line 358
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public removePos(II)V
    .locals 8

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, p2

    .local v2, "count":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v4

    move v3, v4

    .line 304
    .local v3, "rpos":I
    move v4, v2

    if-ltz v4, :cond_0

    .line 305
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    .line 308
    :goto_0
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 309
    return-void

    .line 307
    :cond_0
    move-object v4, v0

    move v5, v3

    move v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    goto :goto_0
.end method

.method protected removePosRange(II)V
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos0":I
    move v2, p2

    .local v2, "ipos1":I
    move-object v3, v0

    const-string/jumbo v4, "removePosRange"

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 9

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    const/4 v5, 0x0

    move v2, v5

    .line 364
    .local v2, "changed":Z
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v5

    move v3, v5

    .local v3, "iter":I
    :goto_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v3, v6

    if-eqz v5, :cond_1

    .line 366
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 367
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    move-object v5, v0

    move v6, v3

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 370
    const/4 v5, 0x1

    move v2, v5

    .line 372
    :cond_0
    goto :goto_0

    .line 373
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;
    move-object v3, v0

    const-string/jumbo v4, "set"

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "indexes":[I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v4

    move v3, v4

    .line 613
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 614
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 615
    :cond_0
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 616
    return-void
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v4

    move v3, v4

    .line 621
    .local v3, "index":I
    move v4, v3

    if-nez v4, :cond_0

    .line 622
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 623
    :cond_0
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 624
    return-void
.end method

.method public abstract size()I
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .locals 6

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "other":Lgnu/lists/AbstractSequence;
    move-object v4, v0

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 686
    .local v2, "id1":I
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 687
    .local v3, "id2":I
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    const/4 v4, -0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/AbstractSequence;
    :cond_0
    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public startPos()I
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 8

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "fromIx":I
    move v2, p2

    .local v2, "toIx":I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v4

    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public subSequence(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)Lgnu/lists/Sequence;
    .locals 6

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "start":Lgnu/lists/SeqPosition;
    move-object v2, p2

    .local v2, "end":Lgnu/lists/SeqPosition;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    move-object v5, v2

    iget v5, v5, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .locals 9

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos0":I
    move v2, p2

    .local v2, "ipos1":I
    new-instance v3, Lgnu/lists/SubSequence;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 10

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->size()I

    move-result v5

    move v1, v5

    .line 653
    .local v1, "len":I
    move v5, v1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v2, v5

    .line 654
    .local v2, "arr":[Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v5

    move v3, v5

    .line 655
    .local v3, "it":I
    const/4 v5, 0x0

    move v4, v5

    .line 656
    .local v4, "i":I
    :goto_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v9, v5

    move v5, v9

    move v6, v9

    move v3, v6

    if-eqz v5, :cond_0

    .line 657
    move-object v5, v2

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_0

    .line 658
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "arr":[Ljava/lang/Object;
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .line 664
    .local v2, "alen":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/lists/AbstractSequence;->size()I

    move-result v6

    move v3, v6

    .line 665
    .local v3, "len":I
    move v6, v3

    move v7, v2

    if-le v6, v7, :cond_0

    .line 667
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    .line 668
    .local v4, "componentType":Ljava/lang/Class;
    move-object v6, v4

    move v7, v3

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    .line 669
    move v6, v3

    move v2, v6

    .line 672
    .end local v4    # "componentType":Ljava/lang/Class;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v6

    move v4, v6

    .line 673
    .local v4, "it":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v10, v6

    move v6, v10

    move v7, v10

    move v4, v7

    if-eqz v6, :cond_1

    .line 675
    move-object v6, v1

    move v7, v5

    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 673
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 677
    :cond_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 678
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 679
    :cond_2
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 832
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/Sequence;

    if-eqz v2, :cond_0

    .line 833
    move-object v2, v1

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 834
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, ", "

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 835
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/Sequence;

    if-eqz v2, :cond_1

    .line 836
    move-object v2, v1

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 837
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 9

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "sep":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    move v3, v5

    .line 819
    .local v3, "seen":Z
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v5

    move v4, v5

    .local v4, "i":I
    :goto_0
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v4, v6

    if-eqz v5, :cond_1

    .line 821
    move v5, v3

    if-eqz v5, :cond_0

    .line 822
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 825
    :goto_1
    move-object v5, v2

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_0

    .line 824
    :cond_0
    const/4 v5, 0x1

    move v3, v5

    goto :goto_1

    .line 827
    :cond_1
    return-void
.end method

.method protected unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractSequence;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/lists/AbstractSequence;->unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/AbstractSequence;
    return-object v0
.end method
