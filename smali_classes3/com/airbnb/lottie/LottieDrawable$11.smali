.class Lcom/airbnb/lottie/LottieDrawable$11;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$maxFrame:I

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 6

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$11;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieDrawable;
    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/airbnb/lottie/LottieDrawable$11;->val$minFrame:I

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/airbnb/lottie/LottieDrawable$11;->val$maxFrame:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$11;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/LottieDrawable$11;->val$minFrame:I

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieDrawable$11;->val$maxFrame:I

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 566
    return-void
.end method
