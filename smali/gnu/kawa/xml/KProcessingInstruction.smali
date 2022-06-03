.class public Lgnu/kawa/xml/KProcessingInstruction;
.super Lgnu/kawa/xml/KNode;
.source "KProcessingInstruction.java"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KProcessingInstruction;
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

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "target":Ljava/lang/String;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    new-instance v3, Lgnu/xml/NodeTree;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lgnu/xml/NodeTree;-><init>()V

    move-object v2, v3

    .line 50
    .local v2, "tree":Lgnu/xml/NodeTree;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/xml/NodeTree;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V

    .line 51
    new-instance v3, Lgnu/kawa/xml/KProcessingInstruction;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lgnu/kawa/xml/KProcessingInstruction;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v3

    .end local v0    # "target":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KProcessingInstruction;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KProcessingInstruction;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KProcessingInstruction;
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KProcessingInstruction;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KProcessingInstruction;
    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KProcessingInstruction;
    const/4 v1, 0x7

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KProcessingInstruction;
    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KProcessingInstruction;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/KProcessingInstruction;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/xml/KProcessingInstruction;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KProcessingInstruction;
    return-object v0
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

    .local v0, "this":Lgnu/kawa/xml/KProcessingInstruction;
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
