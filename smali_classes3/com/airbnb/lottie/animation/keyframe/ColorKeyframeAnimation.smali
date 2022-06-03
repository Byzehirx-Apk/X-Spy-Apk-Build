.class public Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "ColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Integer;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getIntValue()I
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    return v0
.end method

.method public getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    move-object/from16 v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Integer;>;"
    move/from16 v2, p2

    .local v2, "keyframeProgress":F
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 25
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string/jumbo v8, "Missing values for keyframe."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 27
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 28
    .local v3, "startColor":I
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 30
    .local v4, "endColor":I
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v6, :cond_2

    .line 32
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v7, v1

    iget v7, v7, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    move-object v8, v1

    iget-object v8, v8, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move v10, v4

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move v11, v2

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getProgress()F

    move-result v13

    .line 32
    invoke-virtual/range {v6 .. v13}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v5, v6

    .line 34
    .local v5, "value":Ljava/lang/Integer;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 35
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v0, v6

    .line 39
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    .end local v5    # "value":Ljava/lang/Integer;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    :cond_2
    move v6, v2

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Integer;>;"
    move v2, p2

    .local v2, "keyframeProgress":F
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
    return-object v0
.end method
