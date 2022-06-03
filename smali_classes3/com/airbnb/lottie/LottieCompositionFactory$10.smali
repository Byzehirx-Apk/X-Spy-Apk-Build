.class final Lcom/airbnb/lottie/LottieCompositionFactory$10;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener",
        "<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory$10;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory$10;
    move-object v1, p1

    .local v1, "result":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 367
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 369
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/LottieCompositionFactory;->access$000()Ljava/util/Map;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 370
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory$10;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory$10;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
