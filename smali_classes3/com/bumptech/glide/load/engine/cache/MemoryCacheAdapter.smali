.class public Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public getCurrentSize()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    return v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    return v0
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 36
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    return-object v0
.end method

.method public remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    return-object v0
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
    move-object v1, p1

    .local v1, "listener":Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 42
    return-void
.end method

.method public setSizeMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 26
    return-void
.end method

.method public trimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 52
    return-void
.end method
