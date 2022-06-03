.class Lcom/airbnb/lottie/LottieAnimationView$1;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$1;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView$1;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
