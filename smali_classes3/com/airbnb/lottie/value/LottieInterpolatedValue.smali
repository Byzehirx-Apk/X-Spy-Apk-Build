.class abstract Lcom/airbnb/lottie/value/LottieInterpolatedValue;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieInterpolatedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedValue;, "Lcom/airbnb/lottie/value/LottieInterpolatedValue<TT;>;"
    move-object v1, p1

    .local v1, "startValue":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    .line 14
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedValue;, "Lcom/airbnb/lottie/value/LottieInterpolatedValue<TT;>;"
    move-object v1, p1

    .local v1, "startValue":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    .line 17
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->startValue:Ljava/lang/Object;

    .line 18
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->endValue:Ljava/lang/Object;

    .line 19
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->interpolator:Landroid/view/animation/Interpolator;

    .line 20
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedValue;, "Lcom/airbnb/lottie/value/LottieInterpolatedValue<TT;>;"
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->interpolator:Landroid/view/animation/Interpolator;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    move v2, v3

    .line 24
    .local v2, "progress":F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->startValue:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->endValue:Ljava/lang/Object;

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;->interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieInterpolatedValue;, "Lcom/airbnb/lottie/value/LottieInterpolatedValue<TT;>;"
    return-object v0
.end method

.method abstract interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;F)TT;"
        }
    .end annotation
.end method
