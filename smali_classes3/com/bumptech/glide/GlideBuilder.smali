.class public Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Landroid/content/Context;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method createGlide()Lcom/bumptech/glide/Glide;
    .locals 11

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_0

    .line 170
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 171
    .local v1, "cores":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v1

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 173
    .end local v1    # "cores":I
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_1

    .line 174
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v3, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;)V

    move-object v1, v3

    .line 178
    .local v1, "calculator":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v3, :cond_2

    .line 179
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_7

    .line 180
    move-object v3, v1

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v3

    move v2, v3

    .line 181
    .local v2, "size":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v2

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 182
    .line 187
    .end local v2    # "size":I
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v3, :cond_3

    .line 188
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 191
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v3, :cond_4

    .line 192
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 195
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    if-nez v3, :cond_5

    .line 196
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/Engine;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 199
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v3, :cond_6

    .line 200
    move-object v3, v0

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 203
    :cond_6
    new-instance v3, Lcom/bumptech/glide/Glide;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/Glide;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0

    .line 183
    .restart local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    :cond_7
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_0
.end method

.method public setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 47
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method public setDecodeFormat(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 159
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "diskCacheFactory":Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 92
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "diskCache":Lcom/bumptech/glide/load/engine/cache/DiskCache;
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/GlideBuilder$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method public setDiskCacheService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "service":Ljava/util/concurrent/ExecutorService;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 132
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method setEngine(Lcom/bumptech/glide/load/engine/Engine;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "engine":Lcom/bumptech/glide/load/engine/Engine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 165
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method public setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "memoryCache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 59
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method

.method public setResizeService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder;
    move-object v1, p1

    .local v1, "service":Ljava/util/concurrent/ExecutorService;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 112
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder;
    return-object v0
.end method
