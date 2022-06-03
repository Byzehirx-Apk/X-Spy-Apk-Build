.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "PathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

.field private final point:Landroid/graphics/PointF;

.field private final pos:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 13
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    .line 15
    move-object v2, v0

    new-instance v3, Landroid/graphics/PathMeasure;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 19
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;"
    move/from16 v2, p2

    .local v2, "keyframeProgress":F
    move-object v6, v1

    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-object v3, v6

    .line 23
    .local v3, "pathKeyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->getPath()Landroid/graphics/Path;

    move-result-object v6

    move-object v4, v6

    .line 24
    .local v4, "path":Landroid/graphics/Path;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 25
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    move-object v0, v6

    .line 44
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v6, :cond_1

    .line 29
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v7, v3

    iget v7, v7, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startFrame:F

    move-object v8, v3

    iget-object v8, v8, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v3

    iget-object v9, v9, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    move-object v10, v3

    iget-object v10, v10, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    move-object v11, v0

    .line 30
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v11

    move v12, v2

    move-object v13, v0

    .line 31
    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getProgress()F

    move-result v13

    .line 29
    invoke-virtual/range {v6 .. v13}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    move-object v5, v6

    .line 32
    .local v5, "value":Landroid/graphics/PointF;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 33
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 37
    .end local v5    # "value":Landroid/graphics/PointF;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-object v7, v3

    if-eq v6, v7, :cond_2

    .line 38
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 39
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 42
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    mul-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v6

    .line 43
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 44
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
    return-object v0
.end method
