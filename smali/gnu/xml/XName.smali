.class public Lgnu/xml/XName;
.super Lgnu/mapping/Symbol;
.source "XName.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field namespaceNodes:Lgnu/xml/NamespaceBinding;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Symbol;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "namespaceNodes":Lgnu/xml/NamespaceBinding;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 21
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 22
    return-void
.end method

.method public static checkName(Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v6

    .line 97
    .local v1, "len":I
    move v6, v1

    if-nez v6, :cond_0

    .line 98
    const/4 v6, -0x1

    move v0, v6

    .line 116
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return v0

    .line 99
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x2

    move v2, v6

    .line 100
    .local v2, "result":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_6

    .line 102
    move v6, v3

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 103
    .local v4, "first":Z
    move-object v6, v0

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 104
    .local v5, "ch":I
    move v6, v5

    const v7, 0xd800

    if-lt v6, v7, :cond_1

    move v6, v5

    const v7, 0xdc00

    if-ge v6, v7, :cond_1

    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 105
    move v6, v5

    const v7, 0xd800

    sub-int/2addr v6, v7

    const/16 v7, 0x400

    mul-int/lit16 v6, v6, 0x400

    move-object v7, v0

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xdc00

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int/2addr v6, v7

    move v5, v6

    .line 106
    :cond_1
    move v6, v5

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_4

    .line 108
    move v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 109
    const/4 v6, 0x1

    move v2, v6

    .line 115
    :cond_2
    :goto_3
    goto :goto_1

    .line 102
    .end local v4    # "first":Z
    .end local v5    # "ch":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 111
    .restart local v4    # "first":Z
    .restart local v5    # "ch":I
    :cond_4
    move v6, v5

    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 112
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 113
    :cond_5
    move v6, v4

    if-eqz v6, :cond_2

    move v6, v5

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    const/4 v6, 0x0

    move v2, v6

    goto :goto_3

    .line 116
    .end local v4    # "first":Z
    .end local v5    # "ch":I
    :cond_6
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method public static isNCName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNamePart(I)Z
    .locals 3

    .prologue
    .line 67
    move v0, p0

    .local v0, "ch":I
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":I
    return v0

    .restart local v0    # "ch":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNameStart(I)Z
    .locals 3

    .prologue
    .line 57
    move v0, p0

    .local v0, "ch":I
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":I
    return v0

    .restart local v0    # "ch":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNmToken(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    move-object v0, v1

    .end local v0    # "this":Lgnu/xml/XName;
    return-object v0
.end method

.method lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    move-object v2, v3

    .local v2, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 35
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 36
    move-object v3, v2

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object v0, v3

    .line 38
    .end local v0    # "this":Lgnu/xml/XName;
    :goto_1
    return-object v0

    .line 33
    .restart local v0    # "this":Lgnu/xml/XName;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object v2, v3

    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/mapping/Symbol;->readExternal(Ljava/io/ObjectInput;)V

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 52
    return-void
.end method

.method public final setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, p1

    .local v1, "nodes":Lgnu/xml/NamespaceBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XName;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/mapping/Symbol;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 44
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
