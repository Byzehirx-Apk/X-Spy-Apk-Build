.class public Lgnu/kawa/xml/KElement;
.super Lgnu/kawa/xml/KNode;
.source "KElement.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 42
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 43
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    move-object v2, v4

    .line 44
    .local v2, "nodes":Lgnu/xml/NodeTree;
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 45
    .local v3, "attr":I
    move v4, v3

    if-nez v4, :cond_1

    .line 46
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 48
    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KElement;
    :cond_1
    move-object v4, v2

    move v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 136
    const-string/jumbo v5, ""

    move-object v1, v5

    .line 137
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 138
    const-string/jumbo v5, ""

    move-object v2, v5

    .line 139
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v5, Lgnu/xml/NodeTree;

    move-object v3, v5

    .line 140
    .local v3, "nodes":Lgnu/xml/NodeTree;
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/kawa/xml/KElement;->ipos:I

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 141
    .local v4, "attr":I
    move v5, v4

    if-nez v5, :cond_2

    .line 142
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 144
    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KElement;
    :cond_2
    move-object v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lgnu/kawa/xml/KElement;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 106
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 107
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    move-object v2, v4

    .line 108
    .local v2, "nodes":Lgnu/xml/NodeTree;
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 109
    .local v3, "attr":I
    move v4, v3

    if-nez v4, :cond_1

    .line 110
    const/4 v4, 0x0

    move-object v0, v4

    .line 112
    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KElement;
    :cond_1
    new-instance v4, Lgnu/kawa/xml/KAttr;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v4

    goto :goto_0
.end method

.method public bridge synthetic getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/KElement;->getAttributeNode(Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 10

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 179
    const-string/jumbo v5, ""

    move-object v1, v5

    .line 180
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 181
    const-string/jumbo v5, ""

    move-object v2, v5

    .line 182
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v5, Lgnu/xml/NodeTree;

    move-object v3, v5

    .line 183
    .local v3, "nodes":Lgnu/xml/NodeTree;
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/kawa/xml/KElement;->ipos:I

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 184
    .local v4, "attr":I
    move v5, v4

    if-nez v5, :cond_2

    .line 185
    const/4 v5, 0x0

    move-object v0, v5

    .line 187
    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/KElement;
    :cond_2
    new-instance v5, Lgnu/kawa/xml/KAttr;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v5

    goto :goto_0
.end method

.method public bridge synthetic getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/KElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "getElementsByTagNameNS not implemented yet"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v5, 0x0

    move-object v6, v1

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 212
    .local v2, "attr":I
    move v3, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return v0

    .line 211
    .end local v2    # "attr":I
    .restart local v0    # "this":Lgnu/kawa/xml/KElement;
    :cond_0
    move-object v6, v1

    goto :goto_0

    .line 212
    .restart local v2    # "attr":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 218
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 219
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 220
    const-string/jumbo v4, ""

    move-object v2, v4

    .line 221
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/KElement;->ipos:I

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 222
    .local v3, "attr":I
    move v4, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/KElement;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posHasAttributes(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KElement;
    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "removeAttribute not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "removeAttributeNS not supported"

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "oldAttr":Lorg/w3c/dom/Attr;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "removeAttributeNode not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "setAttribute not supported"

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "qualifiedName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    const-string/jumbo v7, "setAttributeNS not supported"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "newAttr":Lorg/w3c/dom/Attr;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setAttributeNode not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "newAttr":Lorg/w3c/dom/Attr;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setAttributeNodeNS not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isId":Z
    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "setIdAttribute not supported"

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move v3, p3

    .local v3, "isId":Z
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    const-string/jumbo v7, "setIdAttributeNS not supported"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KElement;
    move-object v1, p1

    .local v1, "idAttr":Lorg/w3c/dom/Attr;
    move v2, p2

    .local v2, "isId":Z
    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "setIdAttributeNode not supported"

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method
