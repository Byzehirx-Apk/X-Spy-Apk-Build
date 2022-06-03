.class public Lgnu/expr/NameLookup;
.super Lgnu/kawa/util/GeneralHashTable;
.source "NameLookup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/GeneralHashTable",
        "<",
        "Ljava/lang/Object;",
        "Lgnu/expr/Declaration;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY:Lgnu/mapping/Symbol;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "<current-NameLookup>"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 21
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    .line 22
    return-void
.end method

.method public static getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;
    .locals 8

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v4, v0

    sget-object v5, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v4

    move-object v2, v4

    .line 34
    .local v2, "loc":Lgnu/mapping/Location;
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/NameLookup;

    move-object v3, v4

    .line 35
    .local v3, "nl":Lgnu/expr/NameLookup;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 37
    new-instance v4, Lgnu/expr/NameLookup;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    move-object v3, v4

    .line 38
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 42
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "env":Lgnu/mapping/Environment;
    return-object v0

    .line 41
    .restart local v0    # "env":Lgnu/mapping/Environment;
    :cond_0
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/NameLookup;->setLanguage(Lgnu/expr/Language;)V

    goto :goto_0
.end method

.method public static setInstance(Lgnu/mapping/Environment;Lgnu/expr/NameLookup;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "instance":Lgnu/expr/NameLookup;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 48
    move-object v2, v0

    sget-object v3, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    move-object v2, v0

    sget-object v3, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/NameLookup;
    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 10

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move v2, p2

    .local v2, "namespace":I
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v7

    move v3, v7

    .line 144
    .local v3, "hash":I
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v7

    move v4, v7

    .line 145
    .local v4, "index":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/HashNode;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 146
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_0
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 148
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Declaration;

    move-object v6, v7

    .line 149
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    move-object v8, v6

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 151
    move-object v7, v6

    move-object v0, v7

    .line 153
    .end local v0    # "this":Lgnu/expr/NameLookup;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :goto_1
    return-object v0

    .line 146
    .restart local v0    # "this":Lgnu/expr/NameLookup;
    .restart local v6    # "decl":Lgnu/expr/Declaration;
    :cond_0
    move-object v7, v5

    iget-object v7, v7, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    move-object v5, v7

    goto :goto_0

    .line 153
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move v2, p2

    .local v2, "function":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    :goto_0
    invoke-virtual {v3, v4, v5}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/NameLookup;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/NameLookup;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 104
    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/Declaration;)Z

    move-result v3

    .line 104
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public pop(Lgnu/expr/Declaration;)Z
    .locals 12

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 70
    .local v2, "symbol":Ljava/lang/Object;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 71
    const/4 v8, 0x0

    move v0, v8

    .line 91
    .end local v0    # "this":Lgnu/expr/NameLookup;
    :goto_0
    return v0

    .line 72
    .restart local v0    # "this":Lgnu/expr/NameLookup;
    :cond_0
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v8

    move v3, v8

    .line 73
    .local v3, "hash":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 74
    .local v4, "prev":Lgnu/kawa/util/HashNode;
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v8

    move v5, v8

    .line 75
    .local v5, "index":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/HashNode;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 76
    .local v6, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 78
    move-object v8, v6

    iget-object v8, v8, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    move-object v7, v8

    .line 79
    .local v7, "next":Lgnu/kawa/util/HashNode;
    move-object v8, v6

    invoke-virtual {v8}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    if-ne v8, v9, :cond_2

    .line 81
    move-object v8, v4

    if-nez v8, :cond_1

    .line 82
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/HashNode;

    move v9, v5

    move-object v10, v7

    aput-object v10, v8, v9

    .line 85
    :goto_2
    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Lgnu/expr/NameLookup;->num_bindings:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lgnu/expr/NameLookup;->num_bindings:I

    .line 86
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 84
    :cond_1
    move-object v8, v4

    move-object v9, v7

    iput-object v9, v8, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_2

    .line 88
    :cond_2
    move-object v8, v6

    move-object v4, v8

    .line 89
    move-object v8, v7

    move-object v6, v8

    .line 90
    goto :goto_1

    .line 91
    .end local v7    # "next":Lgnu/kawa/util/HashNode;
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 12

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 56
    .local v2, "symbol":Ljava/lang/Object;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 57
    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/expr/NameLookup;->num_bindings:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lgnu/expr/NameLookup;->num_bindings:I

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/HashNode;

    array-length v7, v7

    if-lt v6, v7, :cond_1

    .line 59
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/NameLookup;->rehash()V

    .line 60
    :cond_1
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 61
    .local v3, "hash":I
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    move-object v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lgnu/expr/NameLookup;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v6

    move-object v4, v6

    .line 62
    .local v4, "node":Lgnu/kawa/util/HashNode;
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v6

    move v5, v6

    .line 63
    .local v5, "index":I
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/HashNode;

    move v8, v5

    aget-object v7, v7, v8

    iput-object v7, v6, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 64
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v6, [Lgnu/kawa/util/HashNode;

    move v7, v5

    move-object v8, v4

    aput-object v8, v6, v7

    .line 65
    goto :goto_0
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 97
    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 98
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 97
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public removeSubsumed(Lgnu/expr/Declaration;)V
    .locals 12

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    .line 114
    .local v2, "symbol":Ljava/lang/Object;
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v9

    move v3, v9

    .line 115
    .local v3, "hash":I
    move-object v9, v0

    move v10, v3

    invoke-virtual {v9, v10}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v9

    move v4, v9

    .line 116
    .local v4, "index":I
    const/4 v9, 0x0

    move-object v5, v9

    .line 117
    .local v5, "prev":Lgnu/kawa/util/HashNode;
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v9, [Lgnu/kawa/util/HashNode;

    move v10, v4

    aget-object v9, v9, v10

    move-object v6, v9

    .local v6, "node":Lgnu/kawa/util/HashNode;
    :goto_0
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 119
    move-object v9, v6

    iget-object v9, v9, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    move-object v7, v9

    .line 120
    .local v7, "next":Lgnu/kawa/util/HashNode;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/expr/Declaration;

    move-object v8, v9

    .line 121
    .local v8, "ndecl":Lgnu/expr/Declaration;
    move-object v9, v8

    move-object v10, v1

    if-eq v9, v10, :cond_1

    move-object v9, v0

    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Lgnu/expr/NameLookup;->subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 123
    move-object v9, v5

    if-nez v9, :cond_0

    .line 124
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v9, [Lgnu/kawa/util/HashNode;

    move v10, v4

    move-object v11, v7

    aput-object v11, v9, v10

    .line 130
    :goto_1
    move-object v9, v7

    move-object v6, v9

    .line 131
    goto :goto_0

    .line 126
    :cond_0
    move-object v9, v5

    move-object v10, v7

    iput-object v10, v9, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_1

    .line 129
    :cond_1
    move-object v9, v6

    move-object v5, v9

    goto :goto_1

    .line 132
    .end local v7    # "next":Lgnu/kawa/util/HashNode;
    .end local v8    # "ndecl":Lgnu/expr/Declaration;
    :cond_2
    return-void
.end method

.method public setLanguage(Lgnu/expr/Language;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-void
.end method

.method protected subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/expr/NameLookup;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "other":Lgnu/expr/Declaration;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/expr/NameLookup;
    return v0

    .restart local v0    # "this":Lgnu/expr/NameLookup;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
