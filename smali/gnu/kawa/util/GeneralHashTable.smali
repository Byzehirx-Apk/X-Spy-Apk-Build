.class public Lgnu/kawa/util/GeneralHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "GeneralHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable",
        "<",
        "Lgnu/kawa/util/HashNode",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractHashTable;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/HashNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "n":I
    move v2, v1

    new-array v2, v2, [Lgnu/kawa/util/HashNode;

    check-cast v2, [Lgnu/kawa/util/HashNode;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/util/GeneralHashTable;->allocEntries(I)[Lgnu/kawa/util/HashNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/HashNode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v2, v1

    iget v2, v2, Lgnu/kawa/util/HashNode;->hash:I

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/HashNode;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryHashCode(Lgnu/kawa/util/HashNode;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/HashNode;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method public getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    check-cast v2, Lgnu/kawa/util/HashNode;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method public bridge synthetic getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/util/GeneralHashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TV;"
    new-instance v5, Lgnu/kawa/util/HashNode;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/kawa/util/HashNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    .line 31
    .local v4, "node":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v5, v4

    move v6, v2

    iput v6, v5, Lgnu/kawa/util/HashNode;->hash:I

    .line 32
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/util/GeneralHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v2, p2

    .local v2, "next":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, p2

    .local v2, "x1":Ljava/util/Map$Entry;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/kawa/util/HashNode;

    move-object v5, v2

    check-cast v5, Lgnu/kawa/util/HashNode;

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/util/GeneralHashTable;->setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V

    return-void
.end method
