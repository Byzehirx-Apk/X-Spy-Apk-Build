.class public Lcom/airbnb/lottie/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final hidden:Z

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapePath;)V
    .locals 8

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, p3

    .local v3, "shape":Lcom/airbnb/lottie/model/content/ShapePath;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 22
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 25
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/ShapePath;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 26
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/ShapePath;->isHidden()Z

    move-result v5

    iput-boolean v5, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    .line 27
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 28
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/ShapePath;->getShapePath()Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 30
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 31
    return-void
.end method

.method private invalidate()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 39
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 40
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 57
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    .line 73
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 62
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 64
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 68
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 70
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 72
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 73
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/ShapeContent;->invalidate()V

    .line 35
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
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ShapeContent;
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

    .line 44
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v4, v6

    .line 45
    .local v4, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v4

    instance-of v6, v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 46
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v6, v7, :cond_0

    .line 48
    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v5, v6

    .line 49
    .local v5, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 50
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 43
    .end local v5    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    return-void
.end method
