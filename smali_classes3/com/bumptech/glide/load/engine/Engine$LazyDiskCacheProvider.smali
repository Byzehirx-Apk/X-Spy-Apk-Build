.class Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyDiskCacheProvider"
.end annotation


# instance fields
.field private volatile diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

.field private final factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
    move-object v1, p1

    .local v1, "factory":Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 316
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 317
    return-void
.end method


# virtual methods
.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 7

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v3, :cond_2

    .line 322
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 323
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v3, :cond_0

    .line 324
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;->build()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 326
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v3, :cond_1

    .line 327
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 329
    :cond_1
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
    return-object v0

    .line 329
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method
