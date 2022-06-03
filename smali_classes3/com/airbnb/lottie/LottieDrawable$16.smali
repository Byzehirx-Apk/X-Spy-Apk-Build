.class Lcom/airbnb/lottie/LottieDrawable$16;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$callback:Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 5

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$16;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/LottieDrawable$16;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/LottieDrawable$16;->val$callback:Lcom/airbnb/lottie/value/SimpleLottieValueCallback;

    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$16;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$16;->val$callback:Lcom/airbnb/lottie/value/SimpleLottieValueCallback;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/airbnb/lottie/value/SimpleLottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable$16;
    return-object v0
.end method
