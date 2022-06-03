.class public Lgnu/lists/SubCharSeq;
.super Lgnu/lists/SubSequence;
.source "SubCharSeq.java"

# interfaces
.implements Lgnu/lists/CharSeq;


# direct methods
.method public constructor <init>(Lgnu/lists/AbstractSequence;II)V
    .locals 8

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "startPos":I
    move v3, p3

    .local v3, "endPos":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    .line 9
    return-void
.end method

.method private subCharSeq(II)Lgnu/lists/SubCharSeq;
    .locals 13

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/SubCharSeq;->size()I

    move-result v4

    move v3, v4

    .line 121
    .local v3, "sz":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_0

    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_1

    .line 122
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 123
    :cond_1
    new-instance v4, Lgnu/lists/SubCharSeq;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v8, v0

    iget v8, v8, Lgnu/lists/SubCharSeq;->ipos0:I

    move v9, v1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v9, v0

    iget v9, v9, Lgnu/lists/SubCharSeq;->ipos0:I

    move v10, v2

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/SubCharSeq;-><init>(Lgnu/lists/AbstractSequence;II)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/SubCharSeq;
    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/SubCharSeq;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 21
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 22
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    move v2, v3

    .line 23
    .local v2, "start":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/CharSeq;

    move v4, v2

    move v5, v1

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/lists/SubCharSeq;
    return v0
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 11

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v6

    move v4, v6

    .line 103
    .local v4, "index0":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v6

    move v5, v6

    .line 104
    .local v5, "index1":I
    move v6, v1

    if-ltz v6, :cond_0

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v4

    move v7, v1

    add-int/2addr v6, v7

    move v7, v2

    add-int/2addr v6, v7

    move v7, v5

    if-le v6, v7, :cond_1

    .line 105
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 106
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v6, Lgnu/lists/CharSeq;

    move v7, v4

    move v8, v1

    add-int/2addr v7, v8

    move v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    .line 107
    return-void
.end method

.method public fill(C)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "value":C
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v4

    move v2, v4

    .line 46
    .local v2, "index0":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v4

    move v3, v4

    .line 47
    .local v3, "index1":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/lists/CharSeq;

    move v5, v2

    move v6, v3

    move v7, v1

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/CharSeq;->fill(IIC)V

    .line 48
    return-void
.end method

.method public fill(IIC)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, p3

    .local v3, "value":C
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v6

    move v4, v6

    .line 53
    .local v4, "index0":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v6

    move v5, v6

    .line 54
    .local v5, "index1":I
    move v6, v1

    if-ltz v6, :cond_0

    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_0

    move v6, v4

    move v7, v2

    add-int/2addr v6, v7

    move v7, v5

    if-le v6, v7, :cond_1

    .line 55
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 56
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v6, Lgnu/lists/CharSeq;

    move v7, v4

    move v8, v1

    add-int/2addr v7, v8

    move v8, v4

    move v9, v2

    add-int/2addr v8, v9

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lgnu/lists/CharSeq;->fill(IIC)V

    .line 57
    return-void
.end method

.method public getChars(II[CI)V
    .locals 10

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "srcBegin":I
    move v2, p2

    .local v2, "srcEnd":I
    move-object v3, p3

    .local v3, "dst":[C
    move v4, p4

    .local v4, "dstBegin":I
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 31
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/lists/SubCharSeq;->charAt(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/SubCharSeq;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SubCharSeq;
    return v0
.end method

.method public setCharAt(IC)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "ch":C
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/SubCharSeq;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 37
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 38
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v4

    move v3, v4

    .line 39
    .local v3, "start":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/lists/CharSeq;

    move v5, v3

    move v6, v1

    add-int/2addr v5, v6

    move v6, v2

    invoke-interface {v4, v5, v6}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    .line 40
    return-void
.end method

.method public subList(II)Ljava/util/List;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "fromIx":I
    move v2, p2

    .local v2, "toIx":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/lists/SubCharSeq;->subCharSeq(II)Lgnu/lists/SubCharSeq;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/SubCharSeq;
    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/lists/SubCharSeq;->subCharSeq(II)Lgnu/lists/SubCharSeq;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/SubCharSeq;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/SubCharSeq;->size()I

    move-result v4

    move v1, v4

    .line 112
    .local v1, "sz":I
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, v4

    .line 113
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 114
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/SubCharSeq;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/SubCharSeq;
    return-object v0
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "dest":Ljava/lang/Appendable;
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v6

    move v4, v6

    .line 64
    .local v4, "index0":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v6

    move v5, v6

    .line 65
    .local v5, "index1":I
    move v6, v1

    if-ltz v6, :cond_0

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v4

    move v7, v1

    add-int/2addr v6, v7

    move v7, v2

    add-int/2addr v6, v7

    move v7, v5

    if-le v6, v7, :cond_1

    .line 66
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 67
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v6, Lgnu/lists/CharSeq;

    move v7, v4

    move v8, v1

    add-int/2addr v7, v8

    move v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lgnu/lists/CharSeq;->writeTo(IILjava/lang/Appendable;)V

    .line 68
    return-void
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SubCharSeq;
    move-object v1, p1

    .local v1, "dest":Ljava/lang/Appendable;
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v3

    move v2, v3

    .line 74
    .local v2, "index0":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/CharSeq;

    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/SubCharSeq;->size()I

    move-result v5

    move-object v6, v1

    invoke-interface {v3, v4, v5, v6}, Lgnu/lists/CharSeq;->writeTo(IILjava/lang/Appendable;)V

    .line 75
    return-void
.end method
