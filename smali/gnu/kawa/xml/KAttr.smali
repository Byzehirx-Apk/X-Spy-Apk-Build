.class public Lgnu/kawa/xml/KAttr;
.super Lgnu/kawa/xml/KNode;
.source "KAttr.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
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

.method public static getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "sequence":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    const/16 v4, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "sequence":Lgnu/xml/NodeTree;
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KAttr;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KAttr;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KAttr;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KAttr;->ipos:I

    invoke-static {v1, v2}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    move-object v1, v0

    invoke-super {v1}, Lgnu/kawa/xml/KNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public getSpecified()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KAttr;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return-object v0
.end method

.method public isId()Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KAttr;
    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KAttr;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setValue not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method
