.class public abstract Lgnu/kawa/xml/KNode;
.super Lgnu/lists/SeqPosition;
.source "KNode.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lgnu/lists/Consumable;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    .line 24
    return-void
.end method

.method public static atomicValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-eqz v2, :cond_0

    .line 30
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    move-object v1, v2

    .line 31
    .local v1, "node":Lgnu/kawa/xml/KNode;
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v1

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 33
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .end local v1    # "node":Lgnu/kawa/xml/KNode;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static coerce(Ljava/lang/Object;)Lgnu/kawa/xml/KNode;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-eqz v2, :cond_0

    .line 40
    move-object v2, v0

    check-cast v2, Lgnu/kawa/xml/KNode;

    move-object v0, v2

    .line 53
    .end local v0    # "value":Ljava/lang/Object;
    .local v1, "seqp":Lgnu/lists/SeqPosition;
    :goto_0
    return-object v0

    .line 41
    .end local v1    # "seqp":Lgnu/lists/SeqPosition;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_1

    .line 43
    move-object v2, v0

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v1, v2

    .line 44
    .local v1, "ntree":Lgnu/xml/NodeTree;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/xml/NodeTree;->startPos()I

    move-result v3

    invoke-static {v2, v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 46
    .end local v1    # "ntree":Lgnu/xml/NodeTree;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/SeqPosition;

    if-eqz v2, :cond_2

    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/TreePosition;

    if-nez v2, :cond_2

    .line 49
    move-object v2, v0

    check-cast v2, Lgnu/lists/SeqPosition;

    move-object v1, v2

    .line 50
    .local v1, "seqp":Lgnu/lists/SeqPosition;
    move-object v2, v1

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v2, v2, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_2

    .line 51
    move-object v2, v1

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v1

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    invoke-static {v2, v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 53
    .end local v1    # "seqp":Lgnu/lists/SeqPosition;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "seq":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    .line 160
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;ILjava/lang/StringBuffer;)V

    .line 161
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "seq":Lgnu/xml/NodeTree;
    return-object v0
.end method

.method public static getNodeValue(Lgnu/xml/NodeTree;ILjava/lang/StringBuffer;)V
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "seq":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    move-result v3

    .line 167
    return-void
.end method

.method public static make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "seq":Lgnu/xml/NodeTree;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "seq":Lgnu/xml/NodeTree;
    return-object v0
.end method

.method public static make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "seq":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v4

    move v2, v4

    .line 60
    .local v2, "index":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/NodeTree;->data:[C

    array-length v5, v5

    if-ge v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/NodeTree;->data:[C

    move v5, v2

    aget-char v4, v4, v5

    const v5, 0xf112

    if-ne v4, v5, :cond_1

    .line 62
    add-int/lit8 v2, v2, 0x5

    .line 63
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/xml/NodeTree;->gapStart:I

    if-ne v4, v5, :cond_0

    .line 64
    move-object v4, v0

    iget v4, v4, Lgnu/xml/NodeTree;->gapEnd:I

    move v2, v4

    .line 65
    :cond_0
    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v1, v4

    goto :goto_0

    .line 67
    :cond_1
    move-object v4, v0

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->getNextKindI(I)I

    move-result v4

    move v3, v4

    .line 68
    .local v3, "kind":I
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 87
    :cond_2
    new-instance v4, Lgnu/kawa/xml/KText;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    .end local v0    # "seq":Lgnu/xml/NodeTree;
    :goto_1
    return-object v0

    .line 71
    .restart local v0    # "seq":Lgnu/xml/NodeTree;
    :sswitch_0
    new-instance v4, Lgnu/kawa/xml/KElement;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KElement;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_1

    .line 73
    :sswitch_1
    new-instance v4, Lgnu/kawa/xml/KAttr;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_1

    .line 75
    :sswitch_2
    new-instance v4, Lgnu/kawa/xml/KDocument;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_1

    .line 77
    :sswitch_3
    new-instance v4, Lgnu/kawa/xml/KCDATASection;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KCDATASection;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_1

    .line 79
    :sswitch_4
    new-instance v4, Lgnu/kawa/xml/KComment;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KComment;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_1

    .line 81
    :sswitch_5
    new-instance v4, Lgnu/kawa/xml/KProcessingInstruction;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KProcessingInstruction;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_1

    .line 83
    :sswitch_6
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/NodeTree;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1f -> :sswitch_3
        0x21 -> :sswitch_0
        0x22 -> :sswitch_2
        0x23 -> :sswitch_1
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "newChild":Lorg/w3c/dom/Node;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "appendChild not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public baseURI()Lgnu/text/Path;
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/xml/NodeTree;->baseUriOfPos(IZ)Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move v1, p1

    .local v1, "deep":Z
    move v3, v1

    if-nez v3, :cond_0

    .line 345
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "shallow cloneNode not implemented"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_0
    new-instance v3, Lgnu/xml/NodeTree;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/xml/NodeTree;-><init>()V

    move-object v2, v3

    .line 347
    .local v2, "tree":Lgnu/xml/NodeTree;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/xml/NodeTree;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 348
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "other":Lorg/w3c/dom/Node;
    move-object v4, v1

    instance-of v4, v4, Lgnu/kawa/xml/KNode;

    if-nez v4, :cond_0

    .line 405
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "other Node is a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 407
    :cond_0
    move-object v4, v1

    check-cast v4, Lgnu/kawa/xml/KNode;

    move-object v2, v4

    .line 408
    .local v2, "n":Lgnu/kawa/xml/KNode;
    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v4

    .line 409
    .local v3, "nseq":Lgnu/lists/AbstractSequence;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v3

    if-ne v4, v5, :cond_1

    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v6, v2

    iget v6, v6, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v4

    :goto_0
    int-to-short v4, v4

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v4

    goto :goto_0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/PositionConsumer;

    if-eqz v2, :cond_0

    .line 447
    move-object v2, v1

    check-cast v2, Lgnu/lists/PositionConsumer;

    move-object v3, v0

    invoke-interface {v2, v3}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/xml/NodeTree;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v2

    goto :goto_0
.end method

.method public copy()Lgnu/kawa/xml/KNode;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public bridge synthetic copy()Lgnu/lists/SeqPosition;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KNode;->copy()Lgnu/kawa/xml/KNode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 5

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "getAttributes not implemented yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/xml/NodeTree;->baseUriOfPos(IZ)Lgnu/text/Path;

    move-result-object v2

    move-object v1, v2

    .line 392
    .local v1, "uri":Lgnu/text/Path;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 7

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    new-instance v3, Lgnu/kawa/xml/SortedNodes;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v1, v3

    .line 259
    .local v1, "nodes":Lgnu/kawa/xml/Nodes;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v3

    move v2, v3

    .line 260
    .local v2, "child":I
    :goto_0
    move v3, v2

    if-eqz v3, :cond_0

    .line 262
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 263
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 265
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 6

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "tagname":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "getElementsByTagName not implemented yet"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "feature":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v2

    move v1, v2

    .line 241
    .local v1, "child":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 5

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    const/4 v3, 0x0

    move v1, v3

    .line 247
    .local v1, "last":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v3

    move v2, v3

    .line 248
    .local v2, "child":I
    :goto_0
    move v3, v2

    if-eqz v3, :cond_0

    .line 250
    move v3, v2

    move v1, v3

    .line 251
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 253
    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v3

    goto :goto_1
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v2

    move v1, v2

    .line 234
    .local v1, "next":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getNodeNameObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getNodeSymbol()Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 128
    .local v1, "type":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 129
    const/4 v2, 0x0

    move-object v0, v2

    .line 132
    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    move-object v0, v2

    goto :goto_0

    .line 132
    :cond_1
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 172
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/KNode;->getNodeValue(Ljava/lang/StringBuffer;)V

    .line 173
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getNodeValue(Ljava/lang/StringBuffer;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;ILjava/lang/StringBuffer;)V

    .line 179
    return-void
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 7

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v2

    move v1, v2

    .line 354
    .local v1, "kind":I
    move v2, v1

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 355
    new-instance v2, Lgnu/kawa/xml/KDocument;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v2

    .line 356
    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v2

    move v1, v2

    .line 203
    .local v1, "parent":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 204
    const/4 v2, 0x0

    move-object v0, v2

    .line 205
    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posPrefix(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v6, v0

    iget v6, v6, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v5

    move v1, v5

    .line 211
    .local v1, "parent":I
    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 212
    const/4 v5, 0x0

    move v1, v5

    .line 213
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v5, Lgnu/xml/NodeTree;

    move-object v6, v0

    iget v6, v6, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v5

    move v2, v5

    .line 214
    .local v2, "index":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v5

    move v3, v5

    .line 215
    .local v3, "child":I
    const/4 v5, 0x0

    move v4, v5

    .line 218
    .local v4, "previous":I
    :cond_1
    move v5, v3

    move v4, v5

    .line 219
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v5

    move v3, v5

    .line 220
    move v5, v3

    if-nez v5, :cond_2

    .line 221
    .line 225
    :goto_0
    move v5, v4

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0

    .line 222
    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v5, Lgnu/xml/NodeTree;

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_1

    .line 223
    goto :goto_0

    .line 225
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v5, Lgnu/xml/NodeTree;

    move v6, v4

    invoke-static {v5, v6}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v5

    goto :goto_1
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 189
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/KNode;->getTextContent(Ljava/lang/StringBuffer;)V

    .line 190
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method protected getTextContent(Ljava/lang/StringBuffer;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/KNode;->getNodeValue(Ljava/lang/StringBuffer;)V

    .line 197
    return-void
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public hasAttributes()Z
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return v0
.end method

.method public hasChildNodes()Z
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "newChild":Lorg/w3c/dom/Node;
    move-object v2, p2

    .local v2, "refChild":Lorg/w3c/dom/Node;
    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "insertBefore not supported"

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/xml/NodeTree;->posIsDefaultNamespace(ILjava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "getAttributesisEqualNode not implemented yet"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "node":Lorg/w3c/dom/Node;
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-nez v3, :cond_0

    .line 416
    const/4 v3, 0x0

    move v0, v3

    .line 420
    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    :goto_0
    return v0

    .line 417
    .restart local v0    # "this":Lgnu/kawa/xml/KNode;
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/KNode;

    move-object v2, v3

    .line 418
    .local v2, "n":Lgnu/kawa/xml/KNode;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    if-eq v3, v4, :cond_1

    .line 419
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 420
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v5, v2

    iget v5, v5, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "feature":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/xml/NodeTree;->posLookupNamespaceURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/xml/NodeTree;->posLookupPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "oldChild":Lorg/w3c/dom/Node;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "removeChild not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "newChild":Lorg/w3c/dom/Node;
    move-object v2, p2

    .local v2, "oldChild":Lorg/w3c/dom/Node;
    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "replaceChild not supported"

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "nodeValue":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setNodeValue not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setPrefix not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "textContent":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setTextContent not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "handler":Lorg/w3c/dom/UserDataHandler;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "setUserData not implemented yet"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KNode;
    new-instance v3, Lgnu/mapping/CharArrayOutPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v1, v3

    .line 432
    .local v1, "wr":Lgnu/mapping/CharArrayOutPort;
    new-instance v3, Lgnu/xml/XMLPrinter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 433
    .local v2, "xp":Lgnu/xml/XMLPrinter;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/xml/NodeTree;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 434
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/xml/XMLPrinter;->close()V

    .line 435
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 436
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KNode;
    return-object v0
.end method
