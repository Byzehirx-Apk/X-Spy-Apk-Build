.class Lcom/airbnb/lottie/LottieDrawable$12;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$maxProgress:F

.field final synthetic val$minProgress:F


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .locals 6

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$12;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieDrawable;
    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable$12;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/airbnb/lottie/LottieDrawable$12;->val$minProgress:F

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/airbnb/lottie/LottieDrawable$12;->val$maxProgress:F

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$12;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$12;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/LottieDrawable$12;->val$minProgress:F

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieDrawable$12;->val$maxProgress:F

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 586
    return-void
.end method
