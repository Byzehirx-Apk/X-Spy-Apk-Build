.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
    }
.end annotation


# instance fields
.field private final cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

.field private final diskCacheSize:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
    move-object v1, p1

    .local v1, "cacheDirectoryGetter":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
    move v2, p2

    .local v2, "diskCacheSize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->diskCacheSize:I

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
    move-object v1, p1

    .local v1, "diskCacheFolder":Ljava/lang/String;
    move v2, p2

    .local v2, "diskCacheSize":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;-><init>(Ljava/lang/String;)V

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
    move-object v1, p1

    .local v1, "diskCacheFolder":Ljava/lang/String;
    move-object v2, p2

    .local v2, "diskCacheName":Ljava/lang/String;
    move v3, p3

    .local v3, "diskCacheSize":I
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 58
    .local v1, "cacheDir":Ljava/io/File;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 59
    const/4 v2, 0x0

    move-object v0, v2

    .line 66
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
    :goto_0
    return-object v0

    .line 62
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 66
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->diskCacheSize:I

    invoke-static {v2, v3}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
