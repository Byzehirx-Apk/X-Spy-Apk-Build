.class public Lcom/airbnb/lottie/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

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

.field private final rect:Landroid/graphics/RectF;

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
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, p3

    .local v3, "rectShape":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 24
    move-object v4, v0

    new-instance v5, Landroid/graphics/RectF;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 33
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 37
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 38
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/RectangleShape;->isHidden()Z

    move-result v5

    iput-boolean v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    .line 39
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 40
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/RectangleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v5

    invoke-interface {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/RectangleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/RectangleShape;->getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 51
    return-void
.end method

.method private invalidate()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 63
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 64
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
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_1

    .line 159
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_2

    .line 161
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 162
    :cond_2
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    if-ne v3, v4, :cond_0

    .line 163
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 14

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    if-eqz v7, :cond_0

    .line 80
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v0, v7

    .line 149
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    .local v1, "size":Landroid/graphics/PointF;
    .local v2, "halfWidth":F
    .local v3, "halfHeight":F
    .local v4, "radius":F
    .local v5, "maxRadius":F
    .local v6, "position":Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .line 83
    .end local v1    # "size":Landroid/graphics/PointF;
    .end local v2    # "halfWidth":F
    .end local v3    # "halfHeight":F
    .end local v4    # "radius":F
    .end local v5    # "maxRadius":F
    .end local v6    # "position":Landroid/graphics/PointF;
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 85
    move-object v7, v0

    iget-boolean v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    if-eqz v7, :cond_1

    .line 86
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 87
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v0, v7

    goto :goto_0

    .line 90
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    move-object v1, v7

    .line 91
    .restart local v1    # "size":Landroid/graphics/PointF;
    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v2, v7

    .line 92
    .restart local v2    # "halfWidth":F
    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v3, v7

    .line 93
    .restart local v3    # "halfHeight":F
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v7, :cond_7

    const/4 v7, 0x0

    .line 94
    :goto_1
    move v4, v7

    .line 95
    .restart local v4    # "radius":F
    move v7, v2

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v5, v7

    .line 96
    .restart local v5    # "maxRadius":F
    move v7, v4

    move v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 97
    move v7, v5

    move v4, v7

    .line 101
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    move-object v6, v7

    .line 103
    .restart local v6    # "position":Landroid/graphics/PointF;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    sub-float/2addr v9, v10

    move v10, v4

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 105
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    add-float/2addr v9, v10

    move v10, v4

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 108
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    move v10, v4

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    move v11, v4

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move v11, v2

    add-float/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move v12, v3

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 115
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    sub-float/2addr v8, v9

    move v9, v4

    add-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 118
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    sub-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    move v11, v4

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move v11, v2

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move v12, v3

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 125
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    sub-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    sub-float/2addr v9, v10

    move v10, v4

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 128
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    sub-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    sub-float/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move v11, v2

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move v12, v3

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v4

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 135
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    add-float/2addr v8, v9

    move v9, v4

    sub-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 138
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    move-object v8, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move v9, v2

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    move v10, v4

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object v9, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move v10, v3

    sub-float/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move v11, v2

    add-float/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move v12, v3

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v4

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 144
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 146
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 148
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 149
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    move-object v0, v7

    goto/16 :goto_0

    .line 93
    .end local v4    # "radius":F
    .end local v5    # "maxRadius":F
    .end local v6    # "position":Landroid/graphics/PointF;
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v7, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 94
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v7

    goto/16 :goto_1
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/RectangleContent;->invalidate()V

    .line 59
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
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
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

    .line 155
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
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/RectangleContent;
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

    .line 68
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v4, v6

    .line 69
    .local v4, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v4

    instance-of v6, v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 70
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v6, v7, :cond_0

    .line 71
    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v5, v6

    .line 72
    .local v5, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 73
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    .end local v5    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v4    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    return-void
.end method
