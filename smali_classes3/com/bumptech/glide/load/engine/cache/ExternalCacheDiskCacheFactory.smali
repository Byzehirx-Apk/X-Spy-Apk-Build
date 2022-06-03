.class public final Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;
.super Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.source "ExternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "image_manager_disk_cache"

    const/high16 v5, 0xfa00000

    invoke-direct {v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "diskCacheSize":I
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "image_manager_disk_cache"

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "diskCacheName":Ljava/lang/String;
    move v3, p3

    .local v3, "diskCacheSize":I
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V

    .line 37
    return-void
.end method
