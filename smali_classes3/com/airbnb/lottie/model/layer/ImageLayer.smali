.class public Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "ImageLayer.java"


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

.field private final dst:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ImageLayer;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 23
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/LPaint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 24
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 25
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 30
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ImageLayer;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 63
    .local v1, "refId":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/ImageLayer;
    return-object v0
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
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ImageLayer;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 70
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_0

    .line 71
    move-object v3, v2

    if-nez v3, :cond_1

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ImageLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    move-object v6, v0

    invoke-direct {v6}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v4, v6

    .line 34
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    .line 49
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    move v5, v6

    .line 39
    .local v5, "density":F
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_2

    .line 41
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v6

    .line 43
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 44
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 45
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move v10, v5

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move v11, v5

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    move-object v6, v1

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 49
    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ImageLayer;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/RectF;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "applyParents":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 53
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 54
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 55
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/ImageLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v5

    .line 58
    :cond_0
    return-void
.end method
