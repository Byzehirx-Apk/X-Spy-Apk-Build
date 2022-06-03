.class Lcom/airbnb/lottie/LottieDrawable$3;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable$3;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$3;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$3;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 406
    return-void
.end method
