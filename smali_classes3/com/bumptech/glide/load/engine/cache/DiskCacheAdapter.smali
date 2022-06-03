.class public Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 25
    return-void
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
    return-object v0
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 0
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "writer"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;

    .prologue
    .line 20
    return-void
.end method
