.class public Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue",
        "<",
        "Lcom/airbnb/lottie/value/ScaleXY;",
        "Lcom/airbnb/lottie/value/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Lcom/airbnb/lottie/value/ScaleXY;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/value/ScaleXY;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, p1

    .local v1, "value":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
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
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/value/ScaleXY;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    return-object v0
.end method

.method public bridge synthetic isStatic()Z
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    return-object v0
.end method
