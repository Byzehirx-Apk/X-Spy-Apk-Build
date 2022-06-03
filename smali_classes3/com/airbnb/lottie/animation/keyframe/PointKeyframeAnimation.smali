.class public Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "PointKeyframeAnimation.java"


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
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 14
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 15
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
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
    move-object/from16 v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;"
    move/from16 v2, p2

    .local v2, "keyframeProgress":F
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 18
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string/jumbo v8, "Missing values for keyframe."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 21
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    move-object v3, v6

    .line 22
    .local v3, "startPoint":Landroid/graphics/PointF;
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    move-object v4, v6

    .line 24
    .local v4, "endPoint":Landroid/graphics/PointF;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v6, :cond_2

    .line 26
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v7, v1

    iget v7, v7, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    move-object v8, v1

    iget-object v8, v8, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v3

    move-object v10, v4

    move v11, v2

    move-object v12, v0

    .line 27
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getProgress()F

    move-result v13

    .line 26
    invoke-virtual/range {v6 .. v13}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    move-object v5, v6

    .line 28
    .local v5, "value":Landroid/graphics/PointF;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 29
    move-object v6, v5

    move-object v0, v6

    .line 35
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
    .end local v5    # "value":Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .line 33
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    move-object v7, v3

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move v8, v2

    move-object v9, v4

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v3

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v3

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move v9, v2

    move-object v10, v4

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move-object v11, v3

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
    return-object v0
.end method
