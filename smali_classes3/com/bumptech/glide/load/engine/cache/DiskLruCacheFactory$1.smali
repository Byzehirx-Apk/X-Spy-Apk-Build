.class Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$diskCacheFolder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;->val$diskCacheFolder:Ljava/lang/String;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;->val$diskCacheFolder:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;
    return-object v0
.end method
