.class public Lcom/airbnb/lottie/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V
    .locals 12

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, p3

    .local v3, "shapeGroup":Lcom/airbnb/lottie/model/content/ShapeGroup;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    .line 61
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeGroup;->isHidden()Z

    move-result v8

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/animation/content/ContentGroup;->contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v10, v3

    .line 62
    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v10

    .line 60
    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 14
    .param p6    # Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object/from16 v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object/from16 v3, p3

    .local v3, "name":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "hidden":Z
    move-object/from16 v5, p5

    .local v5, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    move-object/from16 v6, p6

    .local v6, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v10, v0

    new-instance v11, Landroid/graphics/Matrix;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 49
    move-object v10, v0

    new-instance v11, Landroid/graphics/Path;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 50
    move-object v10, v0

    new-instance v11, Landroid/graphics/RectF;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 67
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    .line 68
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 69
    move-object v10, v0

    move v11, v4

    iput-boolean v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    .line 70
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 72
    move-object v10, v6

    if-eqz v10, :cond_0

    .line 73
    move-object v10, v0

    move-object v11, v6

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v11

    iput-object v11, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 74
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 75
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 79
    .local v7, "greedyContents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/GreedyContent;>;"
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .local v8, "i":I
    :goto_0
    move v10, v8

    if-ltz v10, :cond_2

    .line 80
    move-object v10, v5

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/animation/content/Content;

    move-object v9, v10

    .line 81
    .local v9, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v10, v9

    instance-of v10, v10, Lcom/airbnb/lottie/animation/content/GreedyContent;

    if-eqz v10, :cond_1

    .line 82
    move-object v10, v7

    move-object v11, v9

    check-cast v11, Lcom/airbnb/lottie/animation/content/GreedyContent;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 79
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 86
    .end local v9    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_2
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    :goto_1
    move v10, v8

    if-ltz v10, :cond_3

    .line 87
    move-object v10, v7

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/animation/content/GreedyContent;

    move-object v11, v5

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/airbnb/lottie/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    .line 86
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 89
    :cond_3
    return-void
.end method

.method private static contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, p2

    .local v2, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 29
    .local v3, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 30
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/content/ContentModel;

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Lcom/airbnb/lottie/model/content/ContentModel;->toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;

    move-result-object v6

    move-object v5, v6

    .line 31
    .local v5, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 32
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 29
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    .end local v5    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "drawable":Lcom/airbnb/lottie/LottieDrawable;
    return-object v0
.end method

.method static findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 40
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/content/ContentModel;

    move-object v2, v3

    .line 41
    .local v2, "contentModel":Lcom/airbnb/lottie/model/content/ContentModel;
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    if-eqz v3, :cond_0

    .line 42
    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v0, v3

    .line 45
    .end local v0    # "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .end local v2    # "contentModel":Lcom/airbnb/lottie/model/content/ContentModel;
    :goto_1
    return-object v0

    .line 39
    .restart local v0    # "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v2    # "contentModel":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "contentModel":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 6
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
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 217
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    move-result v3

    .line 219
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    if-eqz v7, :cond_0

    .line 153
    .line 171
    :goto_0
    return-void

    .line 155
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 157
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v7, :cond_3

    .line 158
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 159
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    if-nez v7, :cond_2

    const/16 v7, 0x64

    :goto_1
    move v5, v7

    .line 160
    .local v5, "opacity":I
    move v7, v5

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    move v8, v3

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move v4, v7

    .line 165
    .end local v5    # "opacity":I
    .local v4, "alpha":I
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_3
    move v7, v5

    if-ltz v7, :cond_4

    .line 166
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 167
    .local v6, "content":Ljava/lang/Object;
    move-object v7, v6

    instance-of v7, v7, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-eqz v7, :cond_1

    .line 168
    move-object v7, v6

    check-cast v7, Lcom/airbnb/lottie/animation/content/DrawingContent;

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move v10, v4

    invoke-interface {v7, v8, v9, v10}, Lcom/airbnb/lottie/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 165
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 159
    .end local v4    # "alpha":I
    .end local v5    # "i":I
    .end local v6    # "content":Ljava/lang/Object;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .line 162
    :cond_3
    move v7, v3

    move v4, v7

    .restart local v4    # "alpha":I
    goto :goto_2

    .line 171
    .restart local v5    # "i":I
    :cond_4
    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 11

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/RectF;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "applyParents":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v6, :cond_0

    .line 176
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 178
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_2

    .line 180
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v5, v6

    .line 181
    .local v5, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v5

    instance-of v6, v6, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-eqz v6, :cond_1

    .line 182
    move-object v6, v5

    check-cast v6, Lcom/airbnb/lottie/animation/content/DrawingContent;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/airbnb/lottie/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 183
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 179
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 186
    .end local v5    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 136
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 138
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 139
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    if-eqz v3, :cond_1

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v0, v3

    .line 148
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    .local v1, "i":I
    :goto_0
    return-object v0

    .line 142
    .end local v1    # "i":I
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .restart local v1    # "i":I
    :goto_1
    move v3, v1

    if-ltz v3, :cond_3

    .line 143
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    move-object v2, v3

    .line 144
    .local v2, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v3, :cond_2

    .line 145
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 142
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 148
    .end local v2    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v0, v3

    goto :goto_0
.end method

.method getPathList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v3, :cond_1

    .line 113
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 114
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    move-object v2, v3

    .line 116
    .local v2, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v3, :cond_0

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    .end local v2    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    return-object v0
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    .line 129
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    :goto_0
    return-object v0

    .line 128
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 129
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    move-object v0, v1

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 93
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 14
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
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move/from16 v2, p2

    .local v2, "depth":I
    move-object/from16 v3, p3

    .local v3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object/from16 v4, p4

    .local v4, "currentPartialKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 191
    .line 212
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string/jumbo v9, "__container"

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 195
    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v9

    move-object v4, v9

    .line 197
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 198
    move-object v9, v3

    move-object v10, v4

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 202
    :cond_1
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v10

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    move v9, v2

    move-object v10, v1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v11

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v9, v10

    move v5, v9

    .line 204
    .local v5, "newDepth":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 205
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/content/Content;

    move-object v7, v9

    .line 206
    .local v7, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v9, v7

    instance-of v9, v9, Lcom/airbnb/lottie/model/KeyPathElement;

    if-eqz v9, :cond_2

    .line 207
    move-object v9, v7

    check-cast v9, Lcom/airbnb/lottie/model/KeyPathElement;

    move-object v8, v9

    .line 208
    .local v8, "element":Lcom/airbnb/lottie/model/KeyPathElement;
    move-object v9, v8

    move-object v10, v1

    move v11, v5

    move-object v12, v3

    move-object v13, v4

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/KeyPathElement;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 204
    .end local v8    # "element":Lcom/airbnb/lottie/model/KeyPathElement;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 212
    .end local v5    # "newDepth":I
    .end local v6    # "i":I
    .end local v7    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_3
    goto :goto_0
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 12
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
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/ContentGroup;
    move-object v1, p1

    .local v1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    move-object v2, p2

    .local v2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 102
    .local v3, "myContentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 104
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_0

    .line 105
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v5, v6

    .line 106
    .local v5, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v5

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    const/4 v9, 0x0

    move v10, v4

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/airbnb/lottie/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 107
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 104
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 109
    .end local v5    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_0
    return-void
.end method
