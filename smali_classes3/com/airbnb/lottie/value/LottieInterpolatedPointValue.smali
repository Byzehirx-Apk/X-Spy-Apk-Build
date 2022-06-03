.class public Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
.super Lcom/airbnb/lottie/value/LottieInterpolatedValue;
.source "LottieInterpolatedPointValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieInterpolatedValue",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 7

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
    move-object v1, p1

    .local v1, "startValue":Landroid/graphics/PointF;
    move-object v2, p2

    .local v2, "endValue":Landroid/graphics/PointF;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    move-object v3, v0

    new-instance v4, Landroid/graphics/PointF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;->point:Landroid/graphics/PointF;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;)V
    .locals 9

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
    move-object v1, p1

    .local v1, "startValue":Landroid/graphics/PointF;
    move-object v2, p2

    .local v2, "endValue":Landroid/graphics/PointF;
    move-object v3, p3

    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    .line 10
    move-object v4, v0

    new-instance v5, Landroid/graphics/PointF;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;->point:Landroid/graphics/PointF;

    .line 18
    return-void
.end method


# virtual methods
.method interpolateValue(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 9

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
    move-object v1, p1

    .local v1, "startValue":Landroid/graphics/PointF;
    move-object v2, p2

    .local v2, "endValue":Landroid/graphics/PointF;
    move v3, p3

    .local v3, "progress":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;->point:Landroid/graphics/PointF;

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move v7, v3

    .line 22
    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move v8, v3

    .line 23
    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    .line 21
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 25
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;->point:Landroid/graphics/PointF;

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
    return-object v0
.end method

.method bridge synthetic interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/graphics/PointF;

    move-object v6, v2

    check-cast v6, Landroid/graphics/PointF;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;->interpolateValue(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieInterpolatedPointValue;
    return-object v0
.end method
