.class public Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    move-object v1, p1

    .local v1, "animatableXDimension":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v2, p2

    .local v2, "animatableYDimension":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 20
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 21
    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 35
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 34
    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isStatic()Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
