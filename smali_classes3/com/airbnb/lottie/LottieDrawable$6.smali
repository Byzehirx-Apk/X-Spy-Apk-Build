.class Lcom/airbnb/lottie/LottieDrawable$6;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$maxFrame:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;I)V
    .locals 5

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$6;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieDrawable;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/LottieDrawable$6;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/airbnb/lottie/LottieDrawable$6;->val$maxFrame:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$6;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$6;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/LottieDrawable$6;->val$maxFrame:I

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 461
    return-void
.end method
