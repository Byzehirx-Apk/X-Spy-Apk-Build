.class abstract Landroidx/collection/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/MapCollections$ValuesCollection;,
        Landroidx/collection/MapCollections$KeySet;,
        Landroidx/collection/MapCollections$EntrySet;,
        Landroidx/collection/MapCollections$MapIterator;,
        Landroidx/collection/MapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Landroidx/collection/MapCollections$EntrySet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Landroidx/collection/MapCollections$KeySet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Landroidx/collection/MapCollections$ValuesCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 460
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    const/4 v3, 0x0

    move v0, v3

    .line 465
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    return v0

    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 516
    const/4 v4, 0x1

    move v0, v4

    .line 529
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :goto_0
    return v0

    .line 518
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 519
    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    move-object v2, v4

    .line 522
    .local v2, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 523
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 524
    .local v3, "ignored":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 525
    .end local v3    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 526
    .local v3, "ignored":Ljava/lang/ClassCastException;
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 529
    .end local v2    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v3    # "ignored":Ljava/lang/ClassCastException;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    move v2, v4

    .line 470
    .local v2, "oldSize":I
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 471
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 474
    :cond_0
    move v4, v2

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return v0

    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    move v2, v4

    .line 479
    .local v2, "oldSize":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 480
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 485
    :cond_1
    move v4, v2

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return v0

    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    if-nez v1, :cond_0

    .line 534
    move-object v1, v0

    new-instance v2, Landroidx/collection/MapCollections$EntrySet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/collection/MapCollections$EntrySet;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v2, v1, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    .line 536
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    if-nez v1, :cond_0

    .line 541
    move-object v1, v0

    new-instance v2, Landroidx/collection/MapCollections$KeySet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/collection/MapCollections$KeySet;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v2, v1, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    .line 543
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    if-nez v1, :cond_0

    .line 548
    move-object v1, v0

    new-instance v2, Landroidx/collection/MapCollections$ValuesCollection;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/collection/MapCollections$ValuesCollection;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v2, v1, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    .line 550
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 10

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    move v1, p1

    .local v1, "offset":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v5

    move v2, v5

    .line 491
    .local v2, "N":I
    move v5, v2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v3, v5

    .line 492
    .local v3, "result":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 493
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    move v8, v4

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 492
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    return-object v0
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "offset":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v5

    move v3, v5

    .line 500
    .local v3, "N":I
    move-object v5, v1

    array-length v5, v5

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 501
    move-object v5, v1

    .line 502
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 503
    .local v4, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object v5, v4

    move-object v1, v5

    .line 505
    .end local v4    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 506
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    move v8, v4

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 505
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    :cond_1
    move-object v5, v1

    array-length v5, v5

    move v6, v3

    if-le v5, v6, :cond_2

    .line 509
    move-object v5, v1

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 511
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Landroidx/collection/MapCollections;, "Landroidx/collection/MapCollections<TK;TV;>;"
    return-object v0
.end method
