.class public Lcom/airbnb/lottie/model/LottieCompositionCache;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;


# instance fields
.field private final cache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/model/LottieCompositionCache;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-void
.end method

.method constructor <init>()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v1, v0

    new-instance v2, Landroidx/collection/LruCache;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v2, v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 42
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x0

    move-object v0, v2

    .line 30
    .end local v0    # "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    move-object v1, p1

    .local v1, "cacheKey":Ljava/lang/String;
    move-object v2, p2

    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 35
    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    goto :goto_0
.end method

.method public resize(I)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/LottieCompositionCache;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/LruCache;->resize(I)V

    .line 50
    return-void
.end method
