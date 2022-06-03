.class public Lgnu/kawa/lispexpr/LispPackage;
.super Lgnu/mapping/Namespace;
.source "LispPackage.java"


# instance fields
.field exported:Lgnu/mapping/Namespace;

.field imported:Lgnu/kawa/lispexpr/NamespaceUse;

.field importing:Lgnu/kawa/lispexpr/NamespaceUse;

.field shadowingSymbols:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Namespace;-><init>()V

    .line 15
    move-object v1, v0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v2, v1, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    return-void
.end method

.method private addToShadowingSymbols(Lgnu/mapping/Symbol;)V
    .locals 10

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    move-object v2, v4

    :goto_0
    move-object v4, v2

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v4, v5, :cond_1

    .line 101
    move-object v4, v2

    check-cast v4, Lgnu/lists/Pair;

    move-object v3, v4

    .line 102
    .local v3, "p":Lgnu/lists/Pair;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 103
    .line 107
    .end local v3    # "p":Lgnu/lists/Pair;
    :goto_1
    return-void

    .line 104
    .restart local v3    # "p":Lgnu/lists/Pair;
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 105
    .local v2, "s":Ljava/lang/Object;
    goto :goto_0

    .line 106
    .end local v2    # "s":Ljava/lang/Object;
    .end local v3    # "p":Lgnu/lists/Pair;
    :cond_1
    move-object v4, v0

    new-instance v5, Lgnu/lists/Pair;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    invoke-direct {v6, v7, v8}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v4, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    .line 107
    goto :goto_1
.end method

.method private removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    const/4 v5, 0x0

    move-object v2, v5

    .line 112
    .local v2, "prev":Lgnu/lists/Pair;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    move-object v3, v5

    :goto_0
    move-object v5, v3

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_2

    .line 114
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    move-object v4, v5

    .line 115
    .local v4, "p":Lgnu/lists/Pair;
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 116
    .local v3, "s":Ljava/lang/Object;
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 118
    move-object v5, v2

    if-nez v5, :cond_0

    .line 119
    move-object v5, v0

    move-object v6, v3

    check-cast v6, Lgnu/lists/LList;

    iput-object v6, v5, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    .line 122
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    .line 126
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    .end local v3    # "s":Ljava/lang/Object;
    .end local v4    # "p":Lgnu/lists/Pair;
    :goto_2
    return v0

    .line 121
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    .restart local v3    # "s":Ljava/lang/Object;
    .restart local v4    # "p":Lgnu/lists/Pair;
    :cond_0
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 124
    :cond_1
    move-object v5, v4

    move-object v2, v5

    .line 125
    goto :goto_0

    .line 126
    .end local v3    # "s":Ljava/lang/Object;
    .end local v4    # "p":Lgnu/lists/Pair;
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2
.end method


# virtual methods
.method public isPresent(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    return v0

    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "hash":I
    move v3, p3

    .local v3, "create":Z
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v4, v6

    .line 44
    .local v4, "sym":Lgnu/mapping/Symbol;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 45
    move-object v6, v4

    move-object v0, v6

    .line 62
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    :goto_0
    return-object v0

    .line 46
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/lispexpr/LispPackage;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v4, v6

    .line 47
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 48
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 51
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/lispexpr/LispPackage;->imported:Lgnu/kawa/lispexpr/NamespaceUse;

    move-object v5, v6

    .local v5, "used":Lgnu/kawa/lispexpr/NamespaceUse;
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 54
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/lispexpr/LispPackage;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v4, v6

    .line 55
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 56
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 52
    :cond_2
    move-object v6, v5

    iget-object v6, v6, Lgnu/kawa/lispexpr/NamespaceUse;->nextImported:Lgnu/kawa/lispexpr/NamespaceUse;

    move-object v5, v6

    goto :goto_1

    .line 59
    :cond_3
    move v6, v3

    if-eqz v6, :cond_4

    .line 60
    move-object v6, v0

    new-instance v7, Lgnu/mapping/Symbol;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/lispexpr/LispPackage;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 62
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "hash":I
    move v3, p3

    .local v3, "intern":Z
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v4, v5

    .line 68
    .local v4, "sym":Lgnu/mapping/Symbol;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 69
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v4, v5

    .line 70
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    return-object v0
.end method

.method public shadow(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v2, v3

    .line 133
    .local v2, "sym":Lgnu/mapping/Symbol;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    .line 134
    return-void
.end method

.method public shadowingImport(Lgnu/mapping/Symbol;)V
    .locals 9

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 139
    .local v2, "name":Ljava/lang/String;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    move v3, v5

    .line 140
    .local v3, "hash":I
    move-object v5, v0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v4, v5

    .line 141
    .local v4, "old":Lgnu/mapping/Symbol;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    if-eq v5, v6, :cond_0

    .line 142
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/LispPackage;->unintern(Lgnu/mapping/Symbol;)Z

    move-result v5

    .line 143
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    .line 144
    return-void
.end method

.method public unintern(Lgnu/mapping/Symbol;)Z
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispPackage;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 81
    .local v2, "name":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v3, v4

    .line 82
    .local v3, "hash":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    move-object v5, v2

    move v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 83
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    move-result v4

    .line 88
    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/mapping/Symbol;->setNamespace(Lgnu/mapping/Namespace;)V

    .line 89
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/kawa/lispexpr/LispPackage;->removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    :goto_1
    return v0

    .line 84
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispPackage;
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    const/4 v7, 0x0

    invoke-super {v4, v5, v6, v7}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 85
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    move-result v4

    goto :goto_0

    .line 87
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method
