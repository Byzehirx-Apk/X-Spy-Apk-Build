.class public Lcom/airbnb/lottie/model/layer/CompositionLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
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


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move-object/from16 v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object/from16 v2, p2

    .local v2, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object/from16 v3, p3

    .local v3, "layerModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object/from16 v4, p4

    .local v4, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 25
    move-object v13, v0

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 26
    move-object v13, v0

    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 27
    move-object v13, v0

    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 36
    move-object v13, v2

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeRemapping()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    move-object v5, v13

    .line 37
    .local v5, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v13, v5

    if-eqz v13, :cond_0

    .line 38
    move-object v13, v0

    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v14

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 41
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 46
    :goto_0
    new-instance v13, Landroidx/collection/LongSparseArray;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v4

    .line 47
    invoke-virtual {v15}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Landroidx/collection/LongSparseArray;-><init>(I)V

    move-object v6, v13

    .line 49
    .local v6, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/BaseLayer;>;"
    const/4 v13, 0x0

    move-object v7, v13

    .line 50
    .local v7, "mattedLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v13, v3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v8, v13

    .local v8, "i":I
    :goto_1
    move v13, v8

    if-ltz v13, :cond_3

    .line 51
    move-object v13, v3

    move v14, v8

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/layer/Layer;

    move-object v9, v13

    .line 52
    .local v9, "lm":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v13, v9

    move-object v14, v1

    move-object v15, v4

    invoke-static {v13, v14, v15}, Lcom/airbnb/lottie/model/layer/BaseLayer;->forModel(Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-result-object v13

    move-object v10, v13

    .line 53
    .local v10, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v13, v10

    if-nez v13, :cond_1

    .line 54
    .line 50
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 43
    .end local v6    # "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/BaseLayer;>;"
    .end local v7    # "mattedLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    .end local v8    # "i":I
    .end local v9    # "lm":Lcom/airbnb/lottie/model/layer/Layer;
    .end local v10    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_0
    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 56
    .restart local v6    # "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/BaseLayer;>;"
    .restart local v7    # "mattedLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    .restart local v8    # "i":I
    .restart local v9    # "lm":Lcom/airbnb/lottie/model/layer/Layer;
    .restart local v10    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_1
    move-object v13, v6

    move-object v14, v10

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v14

    move-object/from16 v16, v10

    invoke-virtual/range {v13 .. v16}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 57
    move-object v13, v7

    if-eqz v13, :cond_2

    .line 58
    move-object v13, v7

    move-object v14, v10

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 59
    const/4 v13, 0x0

    move-object v7, v13

    goto :goto_2

    .line 61
    :cond_2
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    const/4 v14, 0x0

    move-object v15, v10

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    sget-object v13, Lcom/airbnb/lottie/model/layer/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    move-object v14, v9

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_2

    .line 65
    :pswitch_0
    move-object v13, v10

    move-object v7, v13

    goto :goto_2

    .line 71
    .end local v9    # "lm":Lcom/airbnb/lottie/model/layer/Layer;
    .end local v10    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_3
    const/4 v13, 0x0

    move v8, v13

    :goto_3
    move v13, v8

    move-object v14, v6

    invoke-virtual {v14}, Landroidx/collection/LongSparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 72
    move-object v13, v6

    move v14, v8

    invoke-virtual {v13, v14}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    move-wide v9, v13

    .line 73
    .local v9, "key":J
    move-object v13, v6

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v11, v13

    .line 77
    .local v11, "layerView":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v13, v11

    if-nez v13, :cond_5

    .line 78
    .line 71
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 80
    :cond_5
    move-object v13, v6

    move-object v14, v11

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v12, v13

    .line 81
    .local v12, "parentLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v13, v12

    if-eqz v13, :cond_4

    .line 82
    move-object v13, v11

    move-object v14, v12

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    goto :goto_4

    .line 85
    .end local v9    # "key":J
    .end local v11    # "layerView":Lcom/airbnb/lottie/model/layer/BaseLayer;
    .end local v12    # "parentLayer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_6
    return-void

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 183
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne v3, v4, :cond_0

    .line 184
    move-object v3, v2

    if-nez v3, :cond_1

    .line 185
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 188
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 12

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    const-string/jumbo v7, "CompositionLayer#draw"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 89
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 90
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v10}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v7

    .line 93
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    if-ltz v7, :cond_2

    .line 94
    const/4 v7, 0x1

    move v5, v7

    .line 95
    .local v5, "nonEmptyClip":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v7

    move v5, v7

    .line 98
    :cond_0
    move v7, v5

    if-eqz v7, :cond_1

    .line 99
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v6, v7

    .line 100
    .local v6, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 93
    .end local v6    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 103
    .end local v5    # "nonEmptyClip":Z
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 104
    const-string/jumbo v7, "CompositionLayer#draw"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    .line 105
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 10

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
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

    .line 109
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 110
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->boundsMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 112
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 109
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public hasMasks()Z
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_2

    .line 136
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v2, v3

    .line 137
    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    if-eqz v3, :cond_0

    .line 138
    move-object v3, v2

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 140
    const/4 v3, 0x1

    move v0, v3

    .line 149
    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .end local v1    # "i":I
    .end local v2    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :goto_1
    return v0

    .line 142
    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .restart local v1    # "i":I
    .restart local v2    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 144
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 147
    .end local v2    # "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 149
    .end local v1    # "i":I
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_1
.end method

.method public hasMatte()Z
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 156
    const/4 v2, 0x1

    move v0, v2

    .line 167
    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    :goto_0
    return v0

    .line 159
    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_1
    move v2, v1

    if-ltz v2, :cond_2

    .line 160
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 162
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 165
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 167
    .end local v1    # "i":I
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
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
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move v2, p2

    .local v2, "depth":I
    move-object v3, p3

    .local v3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object v4, p4

    .local v4, "currentPartialKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 174
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 8
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 117
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/model/layer/CompositionLayer;
    move v2, p1

    .local v2, "progress":F
    move-object v6, v1

    move v7, v2

    invoke-super {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 118
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_0

    .line 119
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v6

    move v3, v6

    .line 120
    .local v3, "duration":F
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    move-wide v4, v6

    .line 121
    .local v4, "remappedTime":J
    move-wide v6, v4

    long-to-float v6, v6

    move v7, v3

    div-float/2addr v6, v7

    move v2, v6

    .line 123
    .end local v3    # "duration":F
    .end local v4    # "remappedTime":J
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 124
    move v6, v2

    move-object v7, v1

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    move-result v7

    div-float/2addr v6, v7

    move v2, v6

    .line 127
    :cond_1
    move v6, v2

    move-object v7, v1

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getStartProgress()F

    move-result v7

    sub-float/2addr v6, v7

    move v2, v6

    .line 128
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    if-ltz v6, :cond_2

    .line 129
    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/layer/BaseLayer;

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 128
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method
