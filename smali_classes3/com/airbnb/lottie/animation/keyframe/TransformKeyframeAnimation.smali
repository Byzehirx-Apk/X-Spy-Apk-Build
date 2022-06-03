.class public Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;"
        }
    .end annotation
.end field

.field private skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skewMatrix1:Landroid/graphics/Matrix;

.field private final skewMatrix2:Landroid/graphics/Matrix;

.field private final skewMatrix3:Landroid/graphics/Matrix;

.field private final skewValues:[F

.field private startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, p1

    .local v1, "animatableTransform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getScale()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkew()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    :goto_4
    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v2, :cond_6

    .line 52
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 53
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 54
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 55
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 62
    :goto_5
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_6
    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 63
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 67
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    :goto_7
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 72
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    :goto_8
    return-void

    .line 46
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    goto/16 :goto_0

    .line 47
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v3

    invoke-interface {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    goto/16 :goto_1

    .line 48
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getScale()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    goto/16 :goto_2

    .line 49
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    goto/16 :goto_3

    .line 50
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkew()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    goto/16 :goto_4

    .line 57
    :cond_6
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    goto/16 :goto_5

    .line 62
    :cond_7
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    goto/16 :goto_6

    .line 69
    :cond_8
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_7

    .line 74
    :cond_9
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_8
.end method

.method private clearSkewValues()V
    .locals 5

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, p1

    .local v1, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 80
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 81
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 84
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 86
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 87
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 88
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 89
    return-void
.end method

.method public addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 95
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_1

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 102
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 105
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_4

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 108
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_5

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 111
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_6

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 114
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v2, :cond_7

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 117
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v2, :cond_8

    .line 118
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 120
    :cond_8
    return-void
.end method

.method public applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z
    .locals 10
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_1

    .line 270
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_0

    .line 271
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    new-instance v7, Landroid/graphics/PointF;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 324
    :goto_0
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    :goto_1
    return v0

    .line 273
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 275
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_3

    .line 276
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_2

    .line 277
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    new-instance v7, Landroid/graphics/PointF;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 279
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 281
    :cond_3
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SCALE:Lcom/airbnb/lottie/value/ScaleXY;

    if-ne v3, v4, :cond_5

    .line 282
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_4

    .line 283
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 285
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 287
    :cond_5
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    if-ne v3, v4, :cond_7

    .line 288
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_6

    .line 289
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 291
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 293
    :cond_7
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    if-ne v3, v4, :cond_9

    .line 294
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_8

    .line 295
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 297
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 299
    :cond_9
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    if-ne v3, v4, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_b

    .line 300
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_a

    .line 301
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 303
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 305
    :cond_b
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    if-ne v3, v4, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_d

    .line 306
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_c

    .line 307
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 309
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 311
    :cond_d
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    if-ne v3, v4, :cond_f

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v3, :cond_f

    .line 312
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez v3, :cond_e

    .line 313
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 315
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 316
    :cond_f
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    if-ne v3, v4, :cond_11

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v3, :cond_11

    .line 317
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez v3, :cond_10

    .line 318
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 320
    :cond_10
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto/16 :goto_0

    .line 322
    :cond_11
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_1
.end method

.method public getEndOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 167
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_1

    .line 168
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    move-object v1, v4

    .line 169
    .local v1, "position":Landroid/graphics/PointF;
    move-object v4, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move-object v4, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 170
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v4

    .line 174
    .end local v1    # "position":Landroid/graphics/PointF;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_2

    .line 176
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    instance-of v4, v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v4, :cond_8

    .line 177
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v1, v4

    .line 181
    .local v1, "rotation":F
    :goto_0
    move v4, v1

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 182
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v4

    .line 186
    .end local v1    # "rotation":F
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v4, :cond_3

    .line 187
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_1
    move v1, v4

    .line 188
    .local v1, "mCos":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    move v2, v4

    .line 189
    .local v2, "mSin":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 190
    .local v3, "aTan":F
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 191
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x0

    move v6, v1

    aput v6, v4, v5

    .line 192
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x1

    move v6, v2

    aput v6, v4, v5

    .line 193
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x3

    move v6, v2

    neg-float v6, v6

    aput v6, v4, v5

    .line 194
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x4

    move v6, v1

    aput v6, v4, v5

    .line 195
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 196
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 197
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 198
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 199
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x3

    move v6, v3

    aput v6, v4, v5

    .line 200
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 201
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 202
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 203
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 204
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x0

    move v6, v1

    aput v6, v4, v5

    .line 205
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x1

    move v6, v2

    neg-float v6, v6

    aput v6, v4, v5

    .line 206
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x3

    move v6, v2

    aput v6, v4, v5

    .line 207
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v5, 0x4

    move v6, v1

    aput v6, v4, v5

    .line 208
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 209
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 210
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 211
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 213
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 216
    .end local v1    # "mCos":F
    .end local v2    # "mSin":F
    .end local v3    # "aTan":F
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_5

    .line 217
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/value/ScaleXY;

    move-object v1, v4

    .line 218
    .local v1, "scaleTransform":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 219
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v4

    .line 223
    .end local v1    # "scaleTransform":Lcom/airbnb/lottie/value/ScaleXY;
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_7

    .line 224
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    move-object v1, v4

    .line 225
    .local v1, "anchorPoint":Landroid/graphics/PointF;
    move-object v4, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    move-object v4, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 226
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v4

    .line 230
    .end local v1    # "anchorPoint":Landroid/graphics/PointF;
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    return-object v0

    .line 179
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    move v1, v4

    .local v1, "rotation":F
    goto/16 :goto_0

    .line 187
    .end local v1    # "rotation":F
    :cond_9
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    goto/16 :goto_1

    .line 188
    .local v1, "mCos":F
    :cond_a
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    goto/16 :goto_2
.end method

.method public getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 12

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move v1, p1

    .local v1, "amount":F
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_0
    move-object v2, v6

    .line 244
    .local v2, "position":Landroid/graphics/PointF;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    :goto_1
    move-object v3, v6

    .line 246
    .local v3, "scale":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 247
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 248
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move v8, v1

    mul-float/2addr v7, v8

    move-object v8, v2

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move v9, v1

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v6

    .line 250
    :cond_0
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 251
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v7, v3

    .line 252
    invoke-virtual {v7}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v7

    float-to-double v7, v7

    move v9, v1

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v3

    .line 253
    invoke-virtual {v8}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v8

    float-to-double v8, v8

    move v10, v1

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 251
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v6

    .line 255
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_2

    .line 256
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v6

    .line 257
    .local v4, "rotation":F
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v6, :cond_5

    const/4 v6, 0x0

    :goto_2
    move-object v5, v6

    .line 258
    .local v5, "anchorPoint":Landroid/graphics/PointF;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move v7, v4

    move v8, v1

    mul-float/2addr v7, v8

    move-object v8, v5

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_3
    move-object v9, v5

    if-nez v9, :cond_7

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result v6

    .line 261
    .end local v4    # "rotation":F
    .end local v5    # "anchorPoint":Landroid/graphics/PointF;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    move-object v0, v6

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    return-object v0

    .line 243
    .end local v2    # "position":Landroid/graphics/PointF;
    .end local v3    # "scale":Lcom/airbnb/lottie/value/ScaleXY;
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    goto :goto_0

    .line 244
    .restart local v2    # "position":Landroid/graphics/PointF;
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/value/ScaleXY;

    goto/16 :goto_1

    .line 257
    .restart local v3    # "scale":Lcom/airbnb/lottie/value/ScaleXY;
    .restart local v4    # "rotation":F
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    goto :goto_2

    .line 258
    .restart local v5    # "anchorPoint":Landroid/graphics/PointF;
    :cond_6
    move-object v8, v5

    iget v8, v8, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_7
    move-object v9, v5

    iget v9, v9, Landroid/graphics/PointF;->y:F

    goto :goto_4
.end method

.method public getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    return-object v0
.end method

.method public getStartOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    return-object v0
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    move v1, p1

    .local v1, "progress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 126
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 129
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 133
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 136
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_4

    .line 137
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 139
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_5

    .line 140
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 142
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_6

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 145
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v2, :cond_7

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setProgress(F)V

    .line 148
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v2, :cond_8

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setProgress(F)V

    .line 151
    :cond_8
    return-void
.end method
