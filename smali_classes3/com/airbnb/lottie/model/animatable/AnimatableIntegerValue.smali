.class public Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object v1, v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    .line 13
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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Integer;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 17
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    return-object v0
.end method

.method public bridge synthetic isStatic()Z
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    return-object v0
.end method
