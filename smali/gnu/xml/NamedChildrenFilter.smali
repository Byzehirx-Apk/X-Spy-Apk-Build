.class public Lgnu/xml/NamedChildrenFilter;
.super Lgnu/lists/FilterConsumer;
.source "NamedChildrenFilter.java"


# instance fields
.field level:I

.field localName:Ljava/lang/String;

.field matchLevel:I

.field namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamedChildrenFilter;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 29
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    .line 30
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    .line 31
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 32
    return-void
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)Lgnu/xml/NamedChildrenFilter;
    .locals 9

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "namespaceURI":Ljava/lang/String;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    new-instance v3, Lgnu/xml/NamedChildrenFilter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/xml/NamedChildrenFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)V

    move-object v0, v3

    .end local v0    # "namespaceURI":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public endDocument()V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamedChildrenFilter;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 43
    move-object v1, v0

    invoke-super {v1}, Lgnu/lists/FilterConsumer;->endDocument()V

    .line 44
    return-void
.end method

.method public endElement()V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamedChildrenFilter;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 81
    move-object v1, v0

    invoke-super {v1}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 82
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/xml/NamedChildrenFilter;->matchLevel:I

    move-object v2, v0

    iget v2, v2, Lgnu/xml/NamedChildrenFilter;->level:I

    if-ne v1, v2, :cond_0

    .line 83
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 84
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamedChildrenFilter;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 37
    move-object v1, v0

    invoke-super {v1}, Lgnu/lists/FilterConsumer;->startDocument()V

    .line 38
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamedChildrenFilter;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v5, v0

    iget-boolean v5, v5, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 55
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_3

    .line 57
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Symbol;

    move-object v4, v5

    .line 58
    .local v4, "qname":Lgnu/mapping/Symbol;
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 59
    .local v2, "curNamespaceURI":Ljava/lang/String;
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 66
    .end local v4    # "qname":Lgnu/mapping/Symbol;
    .local v3, "curLocalName":Ljava/lang/String;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    move-object v6, v3

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    if-nez v5, :cond_2

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    move-object v6, v2

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 69
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 70
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lgnu/xml/NamedChildrenFilter;->level:I

    iput v6, v5, Lgnu/xml/NamedChildrenFilter;->matchLevel:I

    .line 74
    .end local v2    # "curNamespaceURI":Ljava/lang/String;
    .end local v3    # "curLocalName":Ljava/lang/String;
    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lgnu/lists/FilterConsumer;->startElement(Ljava/lang/Object;)V

    .line 75
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 76
    return-void

    .line 63
    :cond_3
    const-string/jumbo v5, ""

    move-object v2, v5

    .line 64
    .restart local v2    # "curNamespaceURI":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .restart local v3    # "curLocalName":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/xml/NamedChildrenFilter;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v1

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 91
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_0

    .line 93
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/TreeList;

    move-object v4, v2

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lgnu/lists/TreeList;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 94
    .line 101
    .end local v2    # "pos":Lgnu/lists/SeqPosition;
    :goto_0
    return-void

    .line 97
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/Consumable;

    if-eqz v3, :cond_1

    .line 98
    move-object v3, v1

    check-cast v3, Lgnu/lists/Consumable;

    move-object v4, v0

    invoke-interface {v3, v4}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 101
    :goto_1
    goto :goto_0

    .line 100
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method
