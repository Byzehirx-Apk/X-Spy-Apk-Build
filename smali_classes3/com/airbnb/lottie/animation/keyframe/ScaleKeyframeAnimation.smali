.class public Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/value/ScaleXY;",
        ">;"
    }
.end annotation


# instance fields
.field private final scaleXY:Lcom/airbnb/lottie/value/ScaleXY;


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
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/value/ScaleXY;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    .line 15
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/value/ScaleXY;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/value/ScaleXY;"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
    move-object/from16 v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/value/ScaleXY;>;"
    move/from16 v2, p2

    .local v2, "keyframeProgress":F
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 19
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

    check-cast v6, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v3, v6

    .line 22
    .local v3, "startTransform":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v6, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v4, v6

    .line 24
    .local v4, "endTransform":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v6, :cond_2

    .line 26
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

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

    .line 28
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getProgress()F

    move-result v13

    .line 26
    invoke-virtual/range {v6 .. v13}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v5, v6

    .line 29
    .local v5, "value":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 30
    move-object v6, v5

    move-object v0, v6

    .line 38
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
    .end local v5    # "value":Lcom/airbnb/lottie/value/ScaleXY;
    :goto_0
    return-object v0

    .line 34
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    move-object v7, v3

    .line 35
    invoke-virtual {v7}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v8

    move v9, v2

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v7

    move-object v8, v3

    .line 36
    invoke-virtual {v8}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v9

    move v10, v2

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v8

    .line 34
    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/value/ScaleXY;->set(FF)V

    .line 38
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/value/ScaleXY;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
    return-object v0
.end method
