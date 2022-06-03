.class public Landroidx/collection/ArrayMap;
.super Landroidx/collection/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/SimpleArrayMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Landroidx/collection/MapCollections;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Landroidx/collection/SimpleArrayMap;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 72
    return-void
.end method

.method private getCollection()Landroidx/collection/MapCollections;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/MapCollections;

    if-nez v1, :cond_0

    .line 76
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArrayMap$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/collection/ArrayMap$1;-><init>(Landroidx/collection/ArrayMap;)V

    iput-object v2, v1, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/MapCollections;

    .line 123
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/MapCollections;

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return-object v0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/ArrayMap;->mSize:I

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->ensureCapacity(I)V

    .line 143
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 144
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 145
    goto :goto_0

    .line 146
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    return-object v0
.end method
