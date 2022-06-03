.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 9

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
    move-object v1, p1

    .local v1, "memoryCache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, p3

    .local v3, "defaultFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    .line 29
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 30
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 32
    return-void
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v1

    move v0, v1

    .end local v0    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return v0
.end method


# virtual methods
.method generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .locals 17

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
    move-object/from16 v1, p1

    .local v1, "preFillSizes":[Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v13, v0

    iget-object v13, v13, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v13}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v13

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v14}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v14

    sub-int/2addr v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v14}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()I

    move-result v14

    add-int/2addr v13, v14

    move v2, v13

    .line 60
    .local v2, "maxSize":I
    const/4 v13, 0x0

    move v3, v13

    .line 61
    .local v3, "totalWeight":I
    move-object v13, v1

    move-object v4, v13

    .local v4, "arr$":[Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v13, v4

    array-length v13, v13

    move v5, v13

    .local v5, "len$":I
    const/4 v13, 0x0

    move v6, v13

    .local v6, "i$":I
    :goto_0
    move v13, v6

    move v14, v5

    if-ge v13, v14, :cond_0

    move-object v13, v4

    move v14, v6

    aget-object v13, v13, v14

    move-object v7, v13

    .line 62
    .local v7, "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move v13, v3

    move-object v14, v7

    invoke-virtual {v14}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v14

    add-int/2addr v13, v14

    move v3, v13

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    .end local v7    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_0
    move v13, v2

    int-to-float v13, v13

    move v14, v3

    int-to-float v14, v14

    div-float/2addr v13, v14

    move v4, v13

    .line 67
    .local v4, "bytesPerWeight":F
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object v5, v13

    .line 68
    .local v5, "attributeToCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;"
    move-object v13, v1

    move-object v6, v13

    .local v6, "arr$":[Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v13, v6

    array-length v13, v13

    move v7, v13

    .local v7, "len$":I
    const/4 v13, 0x0

    move v8, v13

    .local v8, "i$":I
    :goto_1
    move v13, v8

    move v14, v7

    if-ge v13, v14, :cond_1

    move-object v13, v6

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    .line 69
    .local v9, "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move v13, v4

    move-object v14, v9

    invoke-virtual {v14}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move v10, v13

    .line 70
    .local v10, "bytesForSize":I
    move-object v13, v9

    invoke-static {v13}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v13

    move v11, v13

    .line 71
    .local v11, "bytesPerBitmap":I
    move v13, v10

    move v14, v11

    div-int/2addr v13, v14

    move v12, v13

    .line 72
    .local v12, "bitmapsForSize":I
    move-object v13, v5

    move-object v14, v9

    move v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 75
    .end local v9    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v10    # "bytesForSize":I
    .end local v11    # "bytesPerBitmap":I
    .end local v12    # "bitmapsForSize":I
    :cond_1
    new-instance v13, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v5

    invoke-direct {v14, v15}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    move-object v0, v13

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
    return-object v0
.end method

.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 12

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
    move-object v1, p1

    .local v1, "bitmapAttributeBuilders":[Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v5, :cond_0

    .line 37
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    .line 40
    :cond_0
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-object v2, v5

    .line 41
    .local v2, "bitmapAttributes":[Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 42
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 43
    .local v4, "builder":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_2

    .line 44
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v7, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v7, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v6, v7, :cond_3

    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    move-result-object v5

    .line 48
    :cond_2
    move-object v5, v2

    move v6, v3

    move-object v7, v4

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v7

    aput-object v7, v5, v6

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 51
    .end local v4    # "builder":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    :cond_4
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-result-object v5

    move-object v3, v5

    .line 52
    .local v3, "allocationOrder":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v5, v0

    new-instance v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v6, v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 53
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 54
    return-void
.end method
