.class public Lgnu/kawa/xml/KCDATASection;
.super Lgnu/kawa/xml/KText;
.source "KCDATASection.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCDATASection;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCDATASection;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/KCDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KCDATASection;
    return-object v0
.end method

.method public getLength()I
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCDATASection;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 38
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/KCDATASection;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    move-object v2, v3

    .line 39
    .local v2, "tlist":Lgnu/xml/NodeTree;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/KCDATASection;->ipos:I

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    move-result v3

    .line 40
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/KCDATASection;
    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCDATASection;
    const-string/jumbo v1, "#cdata-section"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KCDATASection;
    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KCDATASection;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KCDATASection;
    return v0
.end method
