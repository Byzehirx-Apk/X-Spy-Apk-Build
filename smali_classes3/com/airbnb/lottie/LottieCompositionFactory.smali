.class public Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;)",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "cacheKey":Ljava/lang/String;
    move-object v1, p1

    .local v1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;>;"
    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 351
    .local v2, "cachedComposition":Lcom/airbnb/lottie/LottieComposition;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 352
    new-instance v4, Lcom/airbnb/lottie/LottieTask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lcom/airbnb/lottie/LottieCompositionFactory$9;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/LottieCompositionFactory$9;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, v4

    .line 378
    .end local v0    # "cacheKey":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 350
    .end local v2    # "cachedComposition":Lcom/airbnb/lottie/LottieComposition;
    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    goto :goto_0

    .line 359
    .restart local v2    # "cachedComposition":Lcom/airbnb/lottie/LottieComposition;
    :cond_1
    move-object v4, v0

    if-eqz v4, :cond_2

    sget-object v4, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    sget-object v4, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieTask;

    move-object v0, v4

    goto :goto_1

    .line 363
    :cond_2
    new-instance v4, Lcom/airbnb/lottie/LottieTask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v3, v4

    .line 364
    .local v3, "task":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<Lcom/airbnb/lottie/LottieComposition;>;"
    move-object v4, v3

    new-instance v5, Lcom/airbnb/lottie/LottieCompositionFactory$10;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    .line 372
    move-object v4, v3

    new-instance v5, Lcom/airbnb/lottie/LottieCompositionFactory$11;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    .line 377
    sget-object v4, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 378
    move-object v4, v3

    move-object v0, v4

    goto :goto_1
.end method

.method private static findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v3, v4

    .line 336
    .local v3, "asset":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    move-object v4, v3

    move-object v0, v4

    .line 340
    .end local v0    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local v3    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    :goto_1
    return-object v0

    .line 339
    .restart local v0    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local v3    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_0
    goto :goto_0

    .line 340
    .end local v3    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 93
    .local v2, "appContext":Landroid/content/Context;
    move-object v3, v1

    new-instance v4, Lcom/airbnb/lottie/LottieCompositionFactory$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "asset_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 111
    .local v2, "cacheKey":Ljava/lang/String;
    move-object v3, v1

    const-string/jumbo v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v3, Ljava/util/zip/ZipInputStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    move-object v0, v3

    .line 116
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 114
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "cacheKey":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 115
    .end local v2    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 116
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/airbnb/lottie/LottieResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "json":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$5;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "json":Lorg/json/JSONObject;
    return-object v0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$4;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "stream":Ljava/io/InputStream;
    return-object v0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "stream":Ljava/io/InputStream;
    return-object v0
.end method

.method private static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move v2, p2

    .local v2, "close":Z
    :try_start_0
    new-instance v5, Landroid/util/JsonReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 179
    move v5, v2

    if-eqz v5, :cond_0

    .line 180
    move-object v5, v0

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "stream":Ljava/io/InputStream;
    return-object v0

    .line 179
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    .line 180
    move-object v5, v0

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    :cond_1
    move-object v5, v4

    throw v5
.end method

.method public static fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$7;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method public static fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method private static fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move v2, p2

    .local v2, "close":Z
    move-object v6, v0

    :try_start_0
    invoke-static {v6}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v6

    move-object v3, v6

    .line 249
    .local v3, "composition":Lcom/airbnb/lottie/LottieComposition;
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v6

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 250
    new-instance v6, Lcom/airbnb/lottie/LottieResult;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    .line 254
    move v6, v2

    if-eqz v6, :cond_0

    .line 255
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 250
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 252
    .end local v0    # "reader":Landroid/util/JsonReader;
    .end local v3    # "composition":Lcom/airbnb/lottie/LottieComposition;
    :goto_0
    return-object v0

    .line 251
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 252
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Lcom/airbnb/lottie/LottieResult;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    .line 254
    move v6, v2

    if-eqz v6, :cond_1

    .line 255
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 252
    :cond_1
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 254
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move v6, v2

    if-eqz v6, :cond_2

    .line 255
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    :cond_2
    move-object v6, v5

    throw v6
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "json":Ljava/lang/String;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "json":Ljava/lang/String;
    return-object v0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "json":Ljava/lang/String;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    new-instance v2, Landroid/util/JsonReader;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/io/StringReader;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "json":Ljava/lang/String;
    return-object v0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "json":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "json":Lorg/json/JSONObject;
    return-object v0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "rawRes":I
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 128
    .local v2, "appContext":Landroid/content/Context;
    move v3, v1

    invoke-static {v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/lottie/LottieCompositionFactory$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$3;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "rawRes":I
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    move v4, v1

    invoke-static {v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 145
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 144
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 145
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Lcom/airbnb/lottie/LottieResult;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 66
    .local v2, "urlCacheKey":Ljava/lang/String;
    move-object v3, v2

    new-instance v4, Lcom/airbnb/lottie/LottieCompositionFactory$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "inputStream":Ljava/util/zip/ZipInputStream;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$8;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory$8;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "inputStream":Ljava/util/zip/ZipInputStream;
    return-object v0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "inputStream":Ljava/util/zip/ZipInputStream;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 278
    move-object v4, v0

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "inputStream":Ljava/util/zip/ZipInputStream;
    return-object v0

    .line 278
    .restart local v0    # "inputStream":Ljava/util/zip/ZipInputStream;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 279
    move-object v4, v3

    throw v4
.end method

.method private static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "inputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v2, v8

    .line 285
    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v8, Ljava/util/HashMap;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v3, v8

    .line 288
    .local v3, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v4, v8

    .line 289
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 290
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 291
    .local v5, "entryName":Ljava/lang/String;
    move-object v8, v5

    const-string/jumbo v9, "__MACOSX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 292
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 304
    :goto_1
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v4, v8

    .line 305
    goto :goto_0

    .line 293
    :cond_0
    move-object v8, v5

    const-string/jumbo v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 294
    new-instance v8, Landroid/util/JsonReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v8

    .line 295
    .local v6, "reader":Landroid/util/JsonReader;
    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieComposition;

    move-object v2, v8

    .line 296
    goto :goto_1

    .end local v6    # "reader":Landroid/util/JsonReader;
    :cond_1
    move-object v8, v5

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v5

    const-string/jumbo v9, ".webp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 297
    :cond_2
    move-object v8, v5

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 298
    .local v6, "splitName":[Ljava/lang/String;
    move-object v8, v6

    move-object v9, v6

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    move-object v7, v8

    .line 299
    .local v7, "name":Ljava/lang/String;
    move-object v8, v3

    move-object v9, v7

    move-object v10, v0

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 300
    goto :goto_1

    .line 301
    .end local v6    # "splitName":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 307
    .local v4, "e":Ljava/io/IOException;
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 330
    .end local v0    # "inputStream":Ljava/util/zip/ZipInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-object v0

    .line 308
    .line 311
    .restart local v0    # "inputStream":Ljava/util/zip/ZipInputStream;
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    :cond_4
    move-object v8, v2

    if-nez v8, :cond_5

    .line 312
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "Unable to parse composition"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_2

    .line 315
    :cond_5
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :goto_3
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 316
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    move-object v8, v2

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/airbnb/lottie/LottieCompositionFactory;->findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v8

    move-object v6, v8

    .line 317
    .local v6, "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v8, v6

    if-eqz v8, :cond_6

    .line 318
    move-object v8, v6

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v10, v6

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result v10

    move-object v11, v6

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    :cond_6
    goto :goto_3

    .line 323
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v6    # "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_7
    move-object v8, v2

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_4
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 324
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_8

    .line 325
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "There is no image for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    goto/16 :goto_2

    .line 327
    :cond_8
    goto :goto_4

    .line 329
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    :cond_9
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 330
    new-instance v8, Lcom/airbnb/lottie/LottieResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    goto/16 :goto_2
.end method

.method private static rawResCacheKey(I)Ljava/lang/String;
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 150
    move v0, p0

    .local v0, "resId":I
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rawRes_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "resId":I
    return-object v0
.end method

.method public static setMaxCacheSize(I)V
    .locals 3

    .prologue
    .line 56
    move v0, p0

    .local v0, "size":I
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->resize(I)V

    .line 57
    return-void
.end method
