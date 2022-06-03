.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v5, v0

    new-instance v6, Landroid/graphics/Path;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 68
    move-object v5, v0

    new-instance v6, Landroid/graphics/Matrix;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 69
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 70
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 71
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 72
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 73
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/LPaint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 74
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 75
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 76
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 77
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 79
    move-object v5, v0

    new-instance v6, Landroid/graphics/Matrix;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 94
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 96
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 99
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 100
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 101
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#draw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 102
    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v5, v6, :cond_0

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v5

    .line 108
    :goto_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 109
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 111
    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    move-object v5, v0

    new-instance v6, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v6, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 113
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v5

    .line 116
    .local v4, "animation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 117
    goto :goto_1

    .line 105
    .end local v4    # "animation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v5

    goto :goto_0

    .line 118
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v5

    .line 119
    .local v4, "animation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 120
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 121
    goto :goto_2

    .line 123
    .end local v4    # "animation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/model/layer/BaseLayer;Z)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    return-void
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object v4, p4

    .local v4, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object v5, p5

    .local v5, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 421
    .local v6, "maskPath":Landroid/graphics/Path;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 422
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 423
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 425
    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object/from16 v4, p4

    .local v4, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object/from16 v5, p5

    .local v5, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 462
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 463
    .local v6, "maskPath":Landroid/graphics/Path;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 464
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 465
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 466
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 467
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 468
    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object/from16 v4, p4

    .local v4, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object/from16 v5, p5

    .local v5, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 430
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 431
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 432
    .local v6, "maskPath":Landroid/graphics/Path;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 433
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 434
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 435
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 436
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 437
    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object/from16 v4, p4

    .local v4, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object/from16 v5, p5

    .local v5, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 473
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 474
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 475
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 476
    .local v6, "maskPath":Landroid/graphics/Path;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 477
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 478
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 479
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 480
    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object/from16 v4, p4

    .local v4, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object/from16 v5, p5

    .local v5, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 450
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 451
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 453
    .local v6, "maskPath":Landroid/graphics/Path;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 454
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 455
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 456
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 457
    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 15

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object/from16 v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    const-string/jumbo v8, "Layer#saveLayer"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 377
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 378
    const-string/jumbo v8, "Layer#saveLayer"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    .line 379
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 380
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/content/Mask;

    move-object v4, v8

    .line 381
    .local v4, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v8

    .line 382
    .local v5, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v6, v8

    .line 383
    .local v6, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v8, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    move-object v9, v4

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 379
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :pswitch_0
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 386
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 388
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 390
    goto :goto_1

    .line 392
    :pswitch_1
    move v8, v3

    if-nez v8, :cond_1

    .line 394
    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object v7, v8

    .line 395
    .local v7, "paint":Landroid/graphics/Paint;
    move-object v8, v7

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 398
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_1
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 399
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 401
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 403
    goto :goto_1

    .line 405
    :pswitch_2
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 406
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 408
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 413
    .end local v4    # "mask":Lcom/airbnb/lottie/model/content/Mask;
    .end local v5    # "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    .end local v6    # "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v8, "Layer#restoreLayer"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 414
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 415
    const-string/jumbo v8, "Layer#restoreLayer"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    .line 416
    return-void

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object v4, p4

    .local v4, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;>;"
    move-object v5, p5

    .local v5, "opacityAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v7, v4

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    move-object v6, v7

    .line 442
    .local v6, "maskPath":Landroid/graphics/Path;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 443
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 444
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 445
    return-void
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 6

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 516
    .line 529
    :goto_0
    return-void

    .line 518
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-nez v2, :cond_1

    .line 519
    move-object v2, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 520
    goto :goto_0

    .line 523
    :cond_1
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 524
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v1, v2

    .line 525
    .local v1, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :goto_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 526
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 527
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v1, v2

    goto :goto_1

    .line 529
    :cond_2
    goto :goto_0
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    const-string/jumbo v2, "Layer#clearLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 302
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 303
    const-string/jumbo v2, "Layer#clearLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    .line 304
    return-void
.end method

.method static forModel(Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    sget-object v3, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown layer type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    :pswitch_0
    new-instance v3, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 49
    :pswitch_1
    new-instance v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    .line 50
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    .line 49
    move-object v0, v3

    goto :goto_0

    .line 52
    :pswitch_2
    new-instance v3, Lcom/airbnb/lottie/model/layer/SolidLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 54
    :pswitch_3
    new-instance v3, Lcom/airbnb/lottie/model/layer/ImageLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 56
    :pswitch_4
    new-instance v3, Lcom/airbnb/lottie/model/layer/NullLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 58
    :pswitch_5
    new-instance v3, Lcom/airbnb/lottie/model/layer/TextLayer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    move-object v0, v3

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 14

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/RectF;
    move-object/from16 v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v8

    if-nez v8, :cond_0

    .line 309
    .line 352
    :goto_0
    return-void

    .line 312
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    .line 313
    .local v3, "size":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 314
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/content/Mask;

    move-object v5, v8

    .line 315
    .local v5, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v8

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v6, v8

    .line 316
    .local v6, "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    move-object v8, v6

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    move-object v7, v8

    .line 317
    .local v7, "maskPath":Landroid/graphics/Path;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 318
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 320
    sget-object v8, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    move-object v9, v5

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 331
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 335
    move v8, v4

    if-nez v8, :cond_2

    .line 336
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 313
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 324
    :pswitch_0
    goto :goto_0

    .line 327
    :pswitch_1
    move-object v8, v5

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 328
    goto :goto_0

    .line 338
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    .line 339
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    .line 340
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    .line 341
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    .line 342
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 338
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 348
    .end local v5    # "mask":Lcom/airbnb/lottie/model/content/Mask;
    .end local v6    # "maskAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    .end local v7    # "maskPath":Landroid/graphics/Path;
    :cond_3
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    move v4, v8

    .line 349
    .local v4, "intersects":Z
    move v8, v4

    if-nez v8, :cond_4

    .line 350
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 352
    :cond_4
    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 9

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/RectF;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 356
    .line 371
    :goto_0
    return-void

    .line 359
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v4, v5, :cond_1

    .line 362
    goto :goto_0

    .line 365
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 367
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    move v3, v4

    .line 368
    .local v3, "intersects":Z
    move v4, v3

    if-nez v4, :cond_2

    .line 369
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 371
    :cond_2
    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 167
    return-void
.end method

.method private recordRenderTime(F)V
    .locals 5

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move v1, p1

    .local v1, "ms":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    .line 297
    return-void
.end method

.method private saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "rect":Landroid/graphics/RectF;
    move-object v3, p3

    .local v3, "paint":Landroid/graphics/Paint;
    move v4, p4

    .local v4, "all":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    .line 174
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    if-eqz v8, :cond_0

    const/16 v8, 0x1f

    :goto_0
    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v5

    .line 178
    :goto_1
    return-void

    .line 174
    :cond_0
    const/16 v8, 0x13

    goto :goto_0

    .line 176
    :cond_1
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v5

    goto :goto_1
.end method

.method private setVisible(Z)V
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move v1, p1

    .local v1, "visible":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eq v2, v3, :cond_0

    .line 488
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 489
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 491
    :cond_0
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    new-instance v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 150
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    move-object v1, v2

    .line 151
    .local v1, "inOutAnimation":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->setIsDiscrete()V

    .line 152
    move-object v2, v1

    new-instance v3, Lcom/airbnb/lottie/model/layer/BaseLayer$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 158
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 159
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 160
    .line 163
    .end local v1    # "inOutAnimation":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    :goto_1
    return-void

    .line 158
    .restart local v1    # "inOutAnimation":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    .end local v1    # "inOutAnimation":Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method public addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "newAnimation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<**>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 182
    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 185
    goto :goto_0
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 6
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

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
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    move-result v3

    .line 570
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 215
    move-object v6, v0

    iget-boolean v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 217
    .line 291
    :goto_0
    return-void

    .line 219
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 220
    const-string/jumbo v6, "Layer#parentMatrix"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 221
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 222
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 223
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    if-ltz v6, :cond_2

    .line 224
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 223
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 226
    :cond_2
    const-string/jumbo v6, "Layer#parentMatrix"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 227
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    if-nez v6, :cond_3

    const/16 v6, 0x64

    :goto_2
    move v4, v6

    .line 228
    .local v4, "opacity":I
    move v6, v3

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    move v7, v4

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v5, v6

    .line 230
    .local v5, "alpha":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v6

    if-nez v6, :cond_4

    .line 231
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 232
    const-string/jumbo v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 233
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 234
    const-string/jumbo v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 235
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 236
    goto/16 :goto_0

    .line 227
    .end local v5    # "alpha":I
    .local v4, "i":I
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 239
    .local v4, "opacity":I
    .restart local v5    # "alpha":I
    :cond_4
    const-string/jumbo v6, "Layer#computeBounds"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 240
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 249
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 251
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 252
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 254
    const-string/jumbo v6, "Layer#computeBounds"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 256
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 257
    const-string/jumbo v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 258
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 259
    const-string/jumbo v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 262
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 263
    const-string/jumbo v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 264
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 265
    const-string/jumbo v6, "Layer#drawLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 267
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 268
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 271
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 272
    const-string/jumbo v6, "Layer#drawMatte"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 274
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 275
    const-string/jumbo v6, "Layer#saveLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 276
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 278
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v7, v1

    move-object v8, v2

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 279
    const-string/jumbo v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 280
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 281
    const-string/jumbo v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 282
    const-string/jumbo v6, "Layer#drawMatte"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 285
    :cond_6
    const-string/jumbo v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 286
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 287
    const-string/jumbo v6, "Layer#restoreLayer"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v6

    .line 290
    :cond_7
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 291
    goto/16 :goto_0
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 10
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/RectF;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "applyParents":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 197
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 199
    move v5, v3

    if-eqz v5, :cond_0

    .line 200
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 201
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 202
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 201
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 209
    .end local v4    # "i":I
    :cond_0
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 210
    return-void

    .line 204
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v5, :cond_0

    .line 205
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    goto :goto_1
.end method

.method getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasMatteOnThisLayer()Z
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 129
    return-void
.end method

.method public removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "animation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<**>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 189
    return-void
.end method

.method resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .param p2, "depth"    # I
    .param p4, "currentPartialKeyPath"    # Lcom/airbnb/lottie/model/KeyPath;
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
    .line 564
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 11
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
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move v2, p2

    .local v2, "depth":I
    move-object v3, p3

    .local v3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object v4, p4

    .local v4, "currentPartialKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 545
    .line 560
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string/jumbo v6, "__container"

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 549
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v6

    move-object v4, v6

    .line 551
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 552
    move-object v6, v3

    move-object v7, v4

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 556
    :cond_1
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    move v6, v2

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v8

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v6, v7

    move v5, v6

    .line 558
    .local v5, "newDepth":I
    move-object v6, v0

    move-object v7, v1

    move v8, v5

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 560
    .end local v5    # "newDepth":I
    :cond_2
    goto :goto_0
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 539
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    return-void
.end method

.method setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "matteLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 137
    return-void
.end method

.method setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v1, p1

    .local v1, "parentLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 145
    return-void
.end method

.method setProgress(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move v1, p1

    .local v1, "progress":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 496
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 497
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 498
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    .end local v2    # "i":I
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 502
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v4

    div-float/2addr v3, v4

    move v1, v3

    .line 504
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v3, :cond_2

    .line 506
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v3

    move v2, v3

    .line 507
    .local v2, "matteTimeStretch":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move v4, v1

    move v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 509
    .end local v2    # "matteTimeStretch":F
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 510
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 512
    :cond_3
    return-void
.end method
