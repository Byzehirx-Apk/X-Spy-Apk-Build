.class public abstract Lgnu/kawa/xml/KCharacterData;
.super Lgnu/kawa/xml/KNode;
.source "KCharacterData.java"

# interfaces
.implements Lorg/w3c/dom/CharacterData;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
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
.method public appendData(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "appendData not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public deleteData(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const-string/jumbo v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/xml/KCharacterData;->replaceData(IILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KCharacterData;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KCharacterData;
    return-object v0
.end method

.method public getLength()I
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 24
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KCharacterData;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v2, v3

    .line 25
    .local v2, "tlist":Lgnu/xml/NodeTree;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/KCharacterData;->ipos:I

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    move-result v3

    .line 26
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KCharacterData;
    return v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/xml/KCharacterData;->replaceData(IILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "arg":Ljava/lang/String;
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    const-string/jumbo v7, "replaceData not supported"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public setData(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "setData not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCharacterData;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "count":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xml/KCharacterData;->getData()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 44
    .local v3, "data":Ljava/lang/String;
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 45
    :cond_0
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "invalid index to substringData"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 47
    :cond_1
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/KCharacterData;
    return-object v0
.end method
