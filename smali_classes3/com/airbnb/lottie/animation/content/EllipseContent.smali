.class public Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private final circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .locals 8

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, p3

    .local v3, "circleShape":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 32
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 36
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/CircleShape;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 37
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 38
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/CircleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/CircleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v5

    invoke-interface {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 40
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 42
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 46
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 47
    return-void
.end method

.method private invalidate()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 55
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 56
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 5
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_1

    .line 128
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_0

    .line 130
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 14

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    if-eqz v7, :cond_0

    .line 75
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move-object v0, v7

    .line 116
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    .local v1, "size":Landroid/graphics/PointF;
    .local v2, "halfWidth":F
    .local v3, "halfHeight":F
    .local v4, "cpW":F
    .local v5, "cpH":F
    .local v6, "position":Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .line 78
    .end local v1    # "size":Landroid/graphics/PointF;
    .end local v2    # "halfWidth":F
    .end local v3    # "halfHeight":F
    .end local v4    # "cpW":F
    .end local v5    # "cpH":F
    .end local v6    # "position":Landroid/graphics/PointF;
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 80
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/CircleShape;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 82
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move-object v0, v7

    goto :goto_0

    .line 85
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    move-object v1, v7

    .line 86
    .restart local v1    # "size":Landroid/graphics/PointF;
    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v2, v7

    .line 87
    .restart local v2    # "halfWidth":F
    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v3, v7

    .line 90
    .restart local v3    # "halfHeight":F
    move v7, v2

    const v8, 0x3f0d6239    # 0.55228f

    mul-float/2addr v7, v8

    move v4, v7

    .line 91
    .restart local v4    # "cpW":F
    move v7, v3

    const v8, 0x3f0d6239    # 0.55228f

    mul-float/2addr v7, v8

    move v5, v7

    .line 93
    .restart local v5    # "cpH":F
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 94
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    move v9, v3

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    move v9, v4

    sub-float/2addr v8, v9

    move v9, v3

    neg-float v9, v9

    move v10, v2

    neg-float v10, v10

    const/4 v11, 0x0

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v2

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 97
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move v8, v2

    neg-float v8, v8

    const/4 v9, 0x0

    move v10, v5

    add-float/2addr v9, v10

    const/4 v10, 0x0

    move v11, v4

    sub-float/2addr v10, v11

    move v11, v3

    const/4 v12, 0x0

    move v13, v3

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    move v9, v4

    add-float/2addr v8, v9

    move v9, v3

    move v10, v2

    const/4 v11, 0x0

    move v12, v5

    add-float/2addr v11, v12

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move v8, v2

    const/4 v9, 0x0

    move v10, v5

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    move v11, v4

    add-float/2addr v10, v11

    move v11, v3

    neg-float v11, v11

    const/4 v12, 0x0

    move v13, v3

    neg-float v13, v13

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 108
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    move-object v6, v7

    .line 109
    .restart local v6    # "position":Landroid/graphics/PointF;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->offset(FF)V

    .line 111
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 113
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 115
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 116
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move-object v0, v7

    goto/16 :goto_0

    .line 101
    .end local v6    # "position":Landroid/graphics/PointF;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    move v9, v3

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    move v9, v4

    add-float/2addr v8, v9

    move v9, v3

    neg-float v9, v9

    move v10, v2

    const/4 v11, 0x0

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move v8, v2

    const/4 v9, 0x0

    move v10, v5

    add-float/2addr v9, v10

    const/4 v10, 0x0

    move v11, v4

    add-float/2addr v10, v11

    move v11, v3

    const/4 v12, 0x0

    move v13, v3

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    move v9, v4

    sub-float/2addr v8, v9

    move v9, v3

    move v10, v2

    neg-float v10, v10

    const/4 v11, 0x0

    move v12, v5

    add-float/2addr v11, v12

    move v12, v2

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 105
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    move v8, v2

    neg-float v8, v8

    const/4 v9, 0x0

    move v10, v5

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    move v11, v4

    sub-float/2addr v10, v11

    move v11, v3

    neg-float v11, v11

    const/4 v12, 0x0

    move v13, v3

    neg-float v13, v13

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/EllipseContent;->invalidate()V

    .line 51
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move v2, p2

    .local v2, "depth":I
    move-object v3, p3

    .local v3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object v4, p4

    .local v4, "currentPartialKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 122
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/EllipseContent;
    move-object v1, p1

    .local v1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    move-object v2, p2

    .local v2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 60
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v4, v6

    .line 61
    .local v4, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v4

    instance-of v6, v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v6, v7, :cond_0

    .line 62
    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v5, v6

    .line 63
    .local v5, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 64
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 59
    .end local v5    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    return-void
.end method
