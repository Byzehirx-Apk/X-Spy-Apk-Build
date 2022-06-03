.class Lcom/bumptech/glide/load/engine/CacheLoader;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheLoader"


# instance fields
.field private final diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/CacheLoader;
    move-object v1, p1

    .local v1, "diskCache":Lcom/bumptech/glide/load/engine/cache/DiskCache;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 18
    return-void
.end method


# virtual methods
.method public load(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/CacheLoader;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
    move v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v8

    move-object v5, v8

    .line 22
    .local v5, "fromCache":Ljava/io/File;
    move-object v8, v5

    if-nez v8, :cond_0

    .line 23
    const/4 v8, 0x0

    move-object v0, v8

    .line 40
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/CacheLoader;
    :goto_0
    return-object v0

    .line 26
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/CacheLoader;
    :cond_0
    const/4 v8, 0x0

    move-object v6, v8

    .line 28
    .local v6, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    move-object v8, v2

    move-object v9, v5

    move v10, v3

    move v11, v4

    :try_start_0
    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v6, v8

    .line 33
    .line 34
    :cond_1
    :goto_1
    move-object v8, v6

    if-nez v8, :cond_3

    .line 35
    const-string/jumbo v8, "CacheLoader"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 36
    const-string/jumbo v8, "CacheLoader"

    const-string/jumbo v9, "Failed to decode image from cache or not present in cache"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 38
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    .line 40
    :cond_3
    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 29
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 30
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v8, "CacheLoader"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 31
    const-string/jumbo v8, "CacheLoader"

    const-string/jumbo v9, "Exception decoding image from cache"

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_1
.end method
