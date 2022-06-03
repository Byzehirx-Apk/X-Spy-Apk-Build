.class public Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "FloatKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getFloatValue()F
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue(Lcom/airbnb/lottie/value/Keyframe;F)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    return v0
.end method

.method getFloatValue(Lcom/airbnb/lottie/value/Keyframe;F)F
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move v2, p2

    .local v2, "keyframeProgress":F
    move-object v4, v1

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 23
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string/jumbo v6, "Missing values for keyframe."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v4, :cond_2

    .line 28
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v5, v1

    iget v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v7, v1

    iget-object v7, v7, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    move-object v8, v1

    iget-object v8, v8, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move v9, v2

    move-object v10, v0

    .line 30
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getProgress()F

    move-result v11

    .line 28
    invoke-virtual/range {v4 .. v11}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    move-object v3, v4

    .line 31
    .local v3, "value":Ljava/lang/Float;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 32
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v0, v4

    .line 36
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .end local v3    # "value":Ljava/lang/Float;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getStartValueFloat()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/Keyframe;->getEndValueFloat()F

    move-result v5

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Float;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move v2, p2

    .local v2, "keyframeProgress":F
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue(Lcom/airbnb/lottie/value/Keyframe;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    return-object v0
.end method
