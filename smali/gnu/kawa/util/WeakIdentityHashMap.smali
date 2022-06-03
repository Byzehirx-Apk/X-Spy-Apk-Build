.class public Lgnu/kawa/util/WeakIdentityHashMap;
.super Lgnu/kawa/util/AbstractHashTable;
.source "WeakIdentityHashMap.java"


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
        "Lgnu/kawa/util/WeakHashNode",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, v0

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 7
    move-object v1, v0

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, v1, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 7
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, v2, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 19
    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/WeakHashNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move v1, p1

    .local v1, "n":I
    move v2, v1

    new-array v2, v2, [Lgnu/kawa/util/WeakHashNode;

    check-cast v2, [Lgnu/kawa/util/WeakHashNode;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/util/WeakIdentityHashMap;->allocEntries(I)[Lgnu/kawa/util/WeakHashNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method cleanup()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v1, v2}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    .line 71
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 54
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v2, v1

    iget v2, v2, Lgnu/kawa/util/WeakHashNode;->hash:I

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 4

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/WeakIdentityHashMap;->getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/WeakIdentityHashMap;->getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/WeakHashNode;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TV;"
    new-instance v5, Lgnu/kawa/util/WeakHashNode;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lgnu/kawa/util/WeakHashNode;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    move-object v4, v5

    .line 47
    .local v4, "node":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    .line 48
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/util/WeakIdentityHashMap;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/WeakHashNode;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method protected matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 60
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/kawa/util/AbstractHashTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    return-object v0
.end method

.method protected setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v2, p2

    .local v2, "next":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 6

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, p2

    .local v2, "x1":Ljava/util/Map$Entry;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/kawa/util/WeakHashNode;

    move-object v5, v2

    check-cast v5, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/util/WeakIdentityHashMap;->setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V

    return-void
.end method
