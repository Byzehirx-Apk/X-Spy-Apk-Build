.class final Lcom/airbnb/lottie/LottieCompositionFactory$3;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/airbnb/lottie/LottieResult",
        "<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$rawRes:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory$3;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$appContext:Landroid/content/Context;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$rawRes:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$appContext:Landroid/content/Context;

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/LottieCompositionFactory$3;->val$rawRes:I

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieCompositionFactory$3;
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieCompositionFactory$3;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieCompositionFactory$3;->call()Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieCompositionFactory$3;
    return-object v0
.end method
