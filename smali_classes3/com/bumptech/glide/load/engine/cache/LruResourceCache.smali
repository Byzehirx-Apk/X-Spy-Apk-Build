.class public Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
.super Lcom/bumptech/glide/util/LruCache;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/LruCache",
        "<",
        "Lcom/bumptech/glide/load/Key;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<*>;>;",
        "Lcom/bumptech/glide/load/engine/cache/MemoryCache;"
    }
.end annotation


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getSize(Lcom/bumptech/glide/load/engine/Resource;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "item":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    return v0
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->getSize(Lcom/bumptech/glide/load/engine/Resource;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    return v0
.end method

.method protected onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "item":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    if-eqz v3, :cond_0

    .line 32
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/Key;

    move-object v5, v2

    check-cast v5, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V

    return-void
.end method

.method public bridge synthetic put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/load/engine/Resource;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/Resource;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    return-object v0
.end method

.method public bridge synthetic remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/Resource;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    return-object v0
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move-object v1, p1

    .local v1, "listener":Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 27
    return-void
.end method

.method public trimMemory(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
    move v1, p1

    .local v1, "level":I
    move v2, v1

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1

    .line 47
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->clearMemory()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    move v2, v1

    const/16 v3, 0x28

    if-lt v2, v3, :cond_0

    .line 51
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->getCurrentSize()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->trimToSize(I)V

    goto :goto_0
.end method
