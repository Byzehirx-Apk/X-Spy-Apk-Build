.class Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;
.super Ljava/lang/Object;
.source "ExternalCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diskCacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .locals 7

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 28
    .local v1, "cacheDirectory":Ljava/io/File;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 29
    const/4 v2, 0x0

    move-object v0, v2

    .line 34
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 32
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
