.class public Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        "Landroid/graphics/Path;",
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
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 16
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
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    return-object v0
.end method

.method public bridge synthetic isStatic()Z
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    return-object v0
.end method
