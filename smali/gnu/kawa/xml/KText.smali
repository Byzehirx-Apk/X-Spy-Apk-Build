.class public Lgnu/kawa/xml/KText;
.super Lgnu/kawa/xml/KCharacterData;
.source "KText.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KCharacterData;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/kawa/xml/KText;
    .locals 7

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    new-instance v2, Lgnu/xml/NodeTree;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/xml/NodeTree;-><init>()V

    move-object v1, v2

    .line 23
    .local v1, "tree":Lgnu/xml/NodeTree;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v2

    .line 24
    new-instance v2, Lgnu/kawa/xml/KText;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    const-string/jumbo v1, "#text"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KText;
    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KText;
    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "getWholeText not implemented yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasAttributes()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KText;
    return v0
.end method

.method public isElementContentWhitespace()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KText;
    return v0
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "splitText not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KText;
    move v1, p1

    .local v1, "offset":I
    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "splitText not supported"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method
