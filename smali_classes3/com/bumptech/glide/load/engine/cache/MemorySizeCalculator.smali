.class public Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# static fields
.field static final BITMAP_POOL_TARGET_SCREENS:I = 0x4

.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"


# instance fields
.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    new-instance v5, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V
    .locals 14

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v3, p3

    .local v3, "screenDimensions":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 43
    move-object v9, v2

    invoke-static {v9}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;)I

    move-result v9

    move v4, v9

    .line 45
    .local v4, "maxSize":I
    move-object v9, v3

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v9

    move-object v10, v3

    invoke-interface {v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v10

    mul-int/2addr v9, v10

    const/4 v10, 0x4

    mul-int/lit8 v9, v9, 0x4

    move v5, v9

    .line 48
    .local v5, "screenSize":I
    move v9, v5

    const/4 v10, 0x4

    mul-int/lit8 v9, v9, 0x4

    move v6, v9

    .line 49
    .local v6, "targetPoolSize":I
    move v9, v5

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    move v7, v9

    .line 51
    .local v7, "targetMemoryCacheSize":I
    move v9, v7

    move v10, v6

    add-int/2addr v9, v10

    move v10, v4

    if-gt v9, v10, :cond_1

    .line 52
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 53
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 60
    :goto_0
    const-string/jumbo v9, "MemorySizeCalculator"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    const-string/jumbo v9, "MemorySizeCalculator"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Calculated memory cache size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    invoke-direct {v11, v12}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pool size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    invoke-direct {v11, v12}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " memory class limited? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v7

    move v12, v6

    add-int/2addr v11, v12

    move v12, v4

    if-le v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " max size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    move v12, v4

    invoke-direct {v11, v12}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " memoryClass: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " isLowMemoryDevice: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-static {v11}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 66
    :cond_0
    return-void

    .line 55
    :cond_1
    move v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v8, v9

    .line 56
    .local v8, "part":I
    move-object v9, v0

    move v10, v8

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 57
    move-object v9, v0

    move v10, v8

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    iput v10, v9, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto/16 :goto_0

    .line 61
    .end local v8    # "part":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;)I
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "activityManager":Landroid/app/ActivityManager;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/16 v4, 0x400

    mul-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    mul-int/lit16 v3, v3, 0x400

    move v1, v3

    .line 84
    .local v1, "memoryClassBytes":I
    move-object v3, v0

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v3

    move v2, v3

    .line 85
    .local v2, "isLowMemoryDevice":Z
    move v3, v1

    int-to-float v3, v3

    move v4, v2

    if-eqz v4, :cond_0

    const v4, 0x3ea8f5c3    # 0.33f

    :goto_0
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v0, v3

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    return v0

    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    const v4, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 96
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    move v0, v1

    .line 98
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_0
    return v0

    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    move v2, p1

    .local v2, "bytes":I
    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    move v4, v2

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    return-object v1
.end method


# virtual methods
.method public getBitmapPoolSize()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    return v0
.end method
