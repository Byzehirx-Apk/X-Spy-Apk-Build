.class public Lcom/airbnb/lottie/model/layer/SolidLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SolidLayer.java"


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final points:[F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/SolidLayer;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 20
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 21
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/LPaint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 22
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 23
    move-object v3, v0

    new-instance v4, Landroid/graphics/Path;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 29
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 31
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 8
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
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/SolidLayer;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 83
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_0

    .line 84
    move-object v3, v2

    if-nez v3, :cond_1

    .line 85
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/SolidLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    move v4, v7

    .line 38
    .local v4, "backgroundAlpha":I
    move v7, v4

    if-nez v7, :cond_0

    .line 39
    .line 70
    :goto_0
    return-void

    .line 42
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    if-nez v7, :cond_3

    const/16 v7, 0x64

    :goto_1
    move v5, v7

    .line 43
    .local v5, "opacity":I
    move v7, v3

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    move v8, v4

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    move v9, v5

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move v6, v7

    .line 44
    .local v6, "alpha":I
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v7, :cond_1

    .line 46
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v7

    .line 48
    :cond_1
    move v7, v6

    if-lez v7, :cond_2

    .line 49
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 50
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 51
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    .line 52
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 53
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x4

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    .line 54
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x5

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    .line 55
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x6

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 56
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x7

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    .line 60
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 61
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 62
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v10, 0x5

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x6

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v10, 0x7

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 68
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    :cond_2
    goto/16 :goto_0

    .line 42
    .end local v5    # "opacity":I
    .end local v6    # "alpha":I
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_1
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/SolidLayer;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/RectF;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "applyParents":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/SolidLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v4

    .line 76
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 77
    return-void
.end method
