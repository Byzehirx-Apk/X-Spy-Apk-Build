.class public abstract Lgnu/kawa/util/AbstractWeakHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "AbstractWeakHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable",
        "<",
        "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, v0

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    move-object v1, v0

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, v1, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, v2, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 25
    return-void
.end method

.method static cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Entry::",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;**>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "map":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;**>;"
    move-object v1, p1

    .local v1, "rqueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    .line 119
    .local v2, "oldref":Ljava/util/Map$Entry;, "TEntry;"
    move-object v7, v2

    if-nez v7, :cond_0

    .line 120
    .line 141
    return-void

    .line 121
    :cond_0
    move-object v7, v0

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v8

    invoke-virtual {v7, v8}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v7

    move v3, v7

    .line 122
    .local v3, "index":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 123
    .local v4, "prev":Ljava/util/Map$Entry;, "TEntry;"
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v8, v3

    aget-object v7, v7, v8

    move-object v5, v7

    .line 124
    .local v5, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_1
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 126
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v7

    move-object v6, v7

    .line 127
    .local v6, "next":Ljava/util/Map$Entry;, "TEntry;"
    move-object v7, v5

    move-object v8, v2

    if-ne v7, v8, :cond_3

    .line 129
    move-object v7, v4

    if-nez v7, :cond_2

    .line 130
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v8, v3

    move-object v9, v6

    aput-object v9, v7, v8

    .line 138
    .end local v6    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_1
    :goto_2
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 139
    goto :goto_0

    .line 132
    .restart local v6    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_2
    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 133
    goto :goto_2

    .line 135
    :cond_3
    move-object v7, v5

    move-object v4, v7

    .line 136
    move-object v7, v6

    move-object v5, v7

    .line 137
    goto :goto_1
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "n":I
    move v2, v1

    new-array v2, v2, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    check-cast v2, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/util/AbstractWeakHashTable;->allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected cleanup()V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v1, v2}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    .line 110
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
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 45
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v2, v1

    iget v2, v2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected abstract getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method protected getValueIfMatching(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 37
    .local v3, "val":Ljava/lang/Object;, "TV;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/util/AbstractWeakHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    move-object v4, v3

    move-object v0, v4

    .line 39
    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TV;"
    new-instance v4, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    move-object v7, v0

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;-><init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 66
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result v11

    move v3, v11

    .line 67
    .local v3, "hash":I
    move-object v11, v0

    move v12, v3

    invoke-virtual {v11, v12}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v11

    move v4, v11

    .line 68
    .local v4, "index":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v11, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move v12, v4

    aget-object v11, v11, v12

    move-object v5, v11

    .line 69
    .local v5, "first":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v11, v5

    move-object v6, v11

    .line 70
    .local v6, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v11, 0x0

    move-object v7, v11

    .line 71
    .local v7, "prev":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v11, 0x0

    move-object v8, v11

    .line 74
    :goto_0
    move-object v11, v6

    if-nez v11, :cond_1

    .line 76
    move-object v11, v0

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    iget v12, v12, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v15, v11

    move/from16 v16, v12

    move/from16 v11, v16

    move-object v12, v15

    move/from16 v13, v16

    iput v13, v12, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v12, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    array-length v12, v12

    if-lt v11, v12, :cond_0

    .line 78
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/kawa/util/AbstractWeakHashTable;->rehash()V

    .line 79
    move-object v11, v0

    move v12, v3

    invoke-virtual {v11, v12}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v11

    move v4, v11

    .line 80
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v11, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move v12, v4

    aget-object v11, v11, v12

    move-object v5, v11

    .line 82
    :cond_0
    move-object v11, v0

    const/4 v12, 0x0

    move v13, v3

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v11

    move-object v6, v11

    .line 83
    move-object v11, v6

    move-object v12, v5

    iput-object v12, v11, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 84
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v11, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move v12, v4

    move-object v13, v6

    aput-object v13, v11, v12

    .line 85
    move-object v11, v8

    move-object v0, v11

    .line 89
    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :goto_1
    return-object v0

    .line 87
    .restart local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :cond_1
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 88
    .local v9, "curValue":Ljava/lang/Object;, "TV;"
    move-object v11, v9

    move-object v12, v2

    if-ne v11, v12, :cond_2

    .line 89
    move-object v11, v9

    move-object v0, v11

    goto :goto_1

    .line 90
    :cond_2
    move-object v11, v6

    iget-object v11, v11, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v10, v11

    .line 91
    .local v10, "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v11, v9

    if-eqz v11, :cond_4

    move-object v11, v0

    move-object v12, v9

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/util/AbstractWeakHashTable;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 93
    move-object v11, v7

    if-nez v11, :cond_3

    .line 94
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v11, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move v12, v4

    move-object v13, v10

    aput-object v13, v11, v12

    .line 97
    :goto_2
    move-object v11, v9

    move-object v8, v11

    .line 101
    :goto_3
    move-object v11, v10

    move-object v6, v11

    .line 102
    goto :goto_0

    .line 96
    :cond_3
    move-object v11, v7

    move-object v12, v10

    iput-object v12, v11, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    goto :goto_2

    .line 100
    :cond_4
    move-object v11, v6

    move-object v7, v11

    goto :goto_3
.end method

.method protected setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v2, p2

    .local v2, "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map$Entry;
    move-object v2, p2

    .local v2, "x1":Ljava/util/Map$Entry;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v5, v2

    check-cast v5, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V

    return-void
.end method

.method protected valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
