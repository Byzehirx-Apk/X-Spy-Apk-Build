.class public Lgnu/kawa/xml/KDocument;
.super Lgnu/kawa/xml/KNode;
.source "KDocument.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "source":Lorg/w3c/dom/Node;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const-string/jumbo v5, "adoptNode not implemented"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "createAttribute not implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "qualifiedName":Ljava/lang/String;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "createAttributeNS not implemented"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "createCDATASection not implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "createComment not implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "createDocumentFragment not implemented"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "tagName":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "createElement not implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "qualifiedName":Ljava/lang/String;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "createElementNS not implemented"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "createEntityReference implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "createProcessingInstruction not implemented"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "createTextNode not implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getDocumentElement()Lgnu/kawa/xml/KElement;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/KDocument;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v2

    move v1, v2

    .line 48
    .local v1, "child":I
    :goto_0
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 49
    const/4 v2, 0x0

    move-object v0, v2

    .line 54
    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    :goto_1
    return-object v0

    .line 50
    .restart local v0    # "this":Lgnu/kawa/xml/KDocument;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    .line 51
    .line 54
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    move v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/KDocument;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    check-cast v2, Lgnu/kawa/xml/KElement;

    move-object v0, v2

    goto :goto_1

    .line 52
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v2

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KDocument;->getDocumentElement()Lgnu/kawa/xml/KElement;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x9

    const-string/jumbo v4, "getDomConfig not implemented"

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "elementId":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
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

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "getImplementation not implemented"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const-string/jumbo v1, "#document"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/16 v1, 0x9

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getStrictErrorChecking()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method protected getTextContent(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 74
    return-void
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const-string/jumbo v1, "1.1"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return-object v0
.end method

.method public hasAttributes()Z
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KDocument;
    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "importedNode":Lorg/w3c/dom/Node;
    move v2, p2

    .local v2, "deep":Z
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "importNode not implemented"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public normalizeDocument()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KDocument;
    move-object v1, p1

    .local v1, "n":Lorg/w3c/dom/Node;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "qualifiedname":Ljava/lang/String;
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x9

    const-string/jumbo v7, "renameNode not implemented"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0
    .param p1, "strictErrorChecking"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .param p1, "xmlStandalone"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlVersion"    # Ljava/lang/String;

    .prologue
    .line 188
    return-void
.end method
