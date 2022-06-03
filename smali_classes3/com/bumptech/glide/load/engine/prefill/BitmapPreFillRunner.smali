.class final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    }
.end annotation


# static fields
.field static final BACKOFF_RATIO:I = 0x4

.field private static final DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field static final INITIAL_BACKOFF_MS:J = 0x28L

.field static final MAX_BACKOFF_MS:J

.field static final MAX_DURATION_MS:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "PreFillRunner"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private currentDelay:J

.field private final handler:Landroid/os/Handler;

.field private isCancelled:Z

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final seenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field private final toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
    .locals 13

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, p2

    .local v2, "memoryCache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object/from16 v3, p3

    .local v3, "allocationOrder":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    new-instance v9, Landroid/os/Handler;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
    .locals 11

    .prologue
    .line 72
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v2, p1

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, p2

    .local v3, "memoryCache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object v4, p3

    .local v4, "allocationOrder":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v5, p4

    .local v5, "clock":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
    move-object/from16 v6, p5

    .local v6, "handler":Landroid/os/Handler;
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v7, v1

    new-instance v8, Ljava/util/HashSet;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    .line 63
    move-object v7, v1

    const-wide/16 v8, 0x28

    iput-wide v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 73
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 74
    move-object v7, v1

    move-object v8, v3

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 75
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 76
    move-object v7, v1

    move-object v8, v5

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 77
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private addToBitmapPool(Lcom/bumptech/glide/load/engine/prefill/PreFillType;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v1, p1

    .local v1, "toAllocate":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 126
    .local v3, "fromPool":Landroid/graphics/Bitmap;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 127
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v5, v3

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 131
    .end local v3    # "fromPool":Landroid/graphics/Bitmap;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 132
    return-void
.end method

.method private allocate()Z
    .locals 11

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v6

    move-wide v2, v6

    .line 90
    .local v2, "start":J
    :goto_0
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isGcDetected(J)Z

    move-result v6

    if-nez v6, :cond_2

    .line 91
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v6

    move-object v4, v6

    .line 92
    .local v4, "toAllocate":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v6, v4

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v6

    move-object v7, v4

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v5, v6

    .line 97
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move-object v6, v1

    invoke-direct {v6}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getFreeMemoryCacheBytes()I

    move-result v6

    move-object v7, v5

    invoke-static {v7}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 98
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    new-instance v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>(Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;)V

    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    .line 103
    :goto_1
    const-string/jumbo v6, "PreFillRunner"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const-string/jumbo v6, "PreFillRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allocated ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-static {v8}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 107
    :cond_0
    goto/16 :goto_0

    .line 100
    :cond_1
    move-object v6, v1

    move-object v7, v4

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->addToBitmapPool(Lcom/bumptech/glide/load/engine/prefill/PreFillType;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 109
    .end local v4    # "toAllocate":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v6, v1

    iget-boolean v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    if-nez v6, :cond_3

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v1, v6

    .end local v1    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    return v1

    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getFreeMemoryCacheBytes()I
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    return v0
.end method

.method private getNextDelay()J
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v3, v0

    iget-wide v3, v3, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    move-wide v1, v3

    .line 143
    .local v1, "result":J
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    sget-wide v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 144
    move-wide v3, v1

    move-wide v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    return-wide v0
.end method

.method private isGcDetected(J)Z
    .locals 9

    .prologue
    .line 113
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-wide v2, p1

    .local v2, "startTimeMs":J
    move-object v4, v1

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v4

    move-wide v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x20

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .end local v1    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    return v1

    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    .line 82
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 136
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
    move-object v2, v1

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->allocate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    move-object v2, v1

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    move-object v3, v1

    move-object v4, v1

    invoke-direct {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getNextDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 139
    :cond_0
    return-void
.end method
