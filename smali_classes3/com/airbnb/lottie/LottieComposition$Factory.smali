.class public Lcom/airbnb/lottie/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "l":Lcom/airbnb/lottie/OnCompositionLoadedListener;
    new-instance v4, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    move-object v3, v4

    .line 230
    .local v3, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    .line 231
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "l":Lcom/airbnb/lottie/OnCompositionLoadedListener;
    new-instance v3, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    move-object v2, v3

    .line 250
    .local v2, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    .line 251
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "stream":Ljava/io/InputStream;
    return-object v0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    .end local v0    # "stream":Ljava/io/InputStream;
    return-object v0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;Z)Lcom/airbnb/lottie/LottieComposition;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move v1, p1

    .local v1, "close":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 304
    const-string/jumbo v2, "Lottie now auto-closes input stream!"

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 306
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v2

    .end local v0    # "stream":Ljava/io/InputStream;
    return-object v0
.end method

.method public static fromJsonReader(Landroid/util/JsonReader;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "l":Lcom/airbnb/lottie/OnCompositionLoadedListener;
    new-instance v3, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    move-object v2, v3

    .line 270
    .local v2, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    .line 271
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method public static fromJsonString(Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "jsonString":Ljava/lang/String;
    move-object v1, p1

    .local v1, "l":Lcom/airbnb/lottie/OnCompositionLoadedListener;
    new-instance v3, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    move-object v2, v3

    .line 260
    .local v2, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    .line 261
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "jsonString":Ljava/lang/String;
    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "json":Lorg/json/JSONObject;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v2

    .end local v0    # "res":Landroid/content/res/Resources;
    return-object v0
.end method

.method public static fromJsonSync(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method public static fromJsonSync(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "json":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    .end local v0    # "json":Ljava/lang/String;
    return-object v0
.end method

.method public static fromRawFile(Landroid/content/Context;ILcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "l":Lcom/airbnb/lottie/OnCompositionLoadedListener;
    new-instance v4, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    move-object v3, v4

    .line 240
    .local v3, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    .line 241
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method
