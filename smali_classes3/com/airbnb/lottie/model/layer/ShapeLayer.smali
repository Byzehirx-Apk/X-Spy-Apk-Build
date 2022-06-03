.class public Lcom/airbnb/lottie/model/layer/ShapeLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 11

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ShapeLayer;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 24
    new-instance v4, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "__container"

    move-object v7, v2

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getShapes()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move-object v3, v4

    .line 25
    .local v3, "shapeGroup":Lcom/airbnb/lottie/model/content/ShapeGroup;
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/animation/content/ContentGroup;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 26
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 27
    return-void
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ShapeLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 31
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ShapeLayer;
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

    .line 35
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/ShapeLayer;->boundsMatrix:Landroid/graphics/Matrix;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 36
    return-void
.end method

.method protected resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
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
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/ShapeLayer;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move v2, p2

    .local v2, "depth":I
    move-object v3, p3

    .local v3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object v4, p4

    .local v4, "currentPartialKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/airbnb/lottie/animation/content/ContentGroup;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 42
    return-void
.end method
