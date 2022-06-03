.class public Lcom/bumptech/glide/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TT;TY;>;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private final initialMaxSize:I

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedHashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x64

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v3, v2, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    .line 17
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 25
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:I

    .line 26
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    .line 27
    return-void
.end method

.method private evict()V
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/LruCache;->trimToSize(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/LruCache;->trimToSize(I)V

    .line 147
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    return-object v0
.end method

.method public getCurrentSize()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    return v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    return v0
.end method

.method protected getSize(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TY;"
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    return v0
.end method

.method protected onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "item":Ljava/lang/Object;, "TY;"
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;, "TY;"
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 111
    .local v3, "itemSize":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    if-lt v5, v6, :cond_0

    .line 112
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/4 v5, 0x0

    move-object v0, v5

    .line 126
    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 117
    .local v4, "result":Ljava/lang/Object;, "TY;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 118
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 120
    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 122
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 124
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/util/LruCache;->evict()V

    .line 126
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 136
    .local v2, "value":Ljava/lang/Object;, "TY;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 137
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 139
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    return-object v0
.end method

.method public setSizeMultiplier(F)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move v1, p1

    .local v1, "multiplier":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Multiplier must be >= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:I

    int-to-float v3, v3

    move v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    .line 41
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/util/LruCache;->evict()V

    .line 42
    return-void
.end method

.method protected trimToSize(I)V
    .locals 10

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    move v1, p1

    .local v1, "size":I
    :goto_0
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    move v6, v1

    if-le v5, v6, :cond_0

    .line 157
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    .line 158
    .local v2, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TY;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 159
    .local v3, "toRemove":Ljava/lang/Object;, "TY;"
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 160
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 161
    .local v4, "key":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 162
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    goto :goto_0

    .line 164
    .end local v2    # "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TY;>;"
    .end local v3    # "toRemove":Ljava/lang/Object;, "TY;"
    .end local v4    # "key":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
