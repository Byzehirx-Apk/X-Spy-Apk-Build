.class public Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
.super Lcom/airbnb/lottie/value/LottieInterpolatedValue;
.source "LottieInterpolatedIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieInterpolatedValue",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
    move-object v1, p1

    .local v1, "startValue":Ljava/lang/Integer;
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/animation/Interpolator;)V
    .locals 8

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
    move-object v1, p1

    .local v1, "startValue":Ljava/lang/Integer;
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Integer;
    move-object v3, p3

    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/value/LottieInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    .line 16
    return-void
.end method


# virtual methods
.method interpolateValue(Ljava/lang/Integer;Ljava/lang/Integer;F)Ljava/lang/Integer;
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
    move-object v1, p1

    .local v1, "startValue":Ljava/lang/Integer;
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Integer;
    move v3, p3

    .local v3, "progress":F
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(IIF)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
    return-object v0
.end method

.method bridge synthetic interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    move-object v6, v2

    check-cast v6, Ljava/lang/Integer;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;->interpolateValue(Ljava/lang/Integer;Ljava/lang/Integer;F)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieInterpolatedIntegerValue;
    return-object v0
.end method
