.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private final codePointCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
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

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
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

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layerModel":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 37
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 38
    move-object v4, v0

    new-instance v5, Landroid/graphics/RectF;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 39
    move-object v4, v0

    new-instance v5, Landroid/graphics/Matrix;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 40
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 43
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 46
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 47
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 62
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 63
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 65
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 66
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v4

    move-object v3, v4

    .line 70
    .local v3, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v4, :cond_0

    .line 71
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 73
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 76
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v4, :cond_1

    .line 77
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_2

    .line 83
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 84
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 88
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    iget-object v4, v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_3

    .line 89
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 90
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 93
    :cond_3
    return-void
.end method

.method private applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 7

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "justification":Lcom/airbnb/lottie/model/DocumentData$Justification;
    move-object v2, p2

    .local v2, "canvas":Landroid/graphics/Canvas;
    move v3, p3

    .local v3, "textLineWidth":F
    sget-object v4, Lcom/airbnb/lottie/model/layer/TextLayer$3;->$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 293
    :pswitch_0
    goto :goto_0

    .line 295
    :pswitch_1
    move-object v4, v2

    move v5, v3

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    goto :goto_0

    .line 298
    :pswitch_2
    move-object v4, v2

    move v5, v3

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move v2, p2

    .local v2, "startIndex":I
    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v3, v9

    .line 374
    .local v3, "firstCodePoint":I
    move v9, v3

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    move v4, v9

    .line 375
    .local v4, "firstCodePointLength":I
    move v9, v3

    move v5, v9

    .line 376
    .local v5, "key":I
    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move v6, v9

    .line 377
    .local v6, "index":I
    :goto_0
    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 378
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v7, v9

    .line 379
    .local v7, "nextCodePoint":I
    move-object v9, v0

    move v10, v7

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/model/layer/TextLayer;->isModifier(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 380
    .line 387
    .end local v7    # "nextCodePoint":I
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    move v10, v5

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 388
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    move v10, v5

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v0, v9

    .line 399
    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    :goto_1
    return-object v0

    .line 382
    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    .restart local v7    # "nextCodePoint":I
    :cond_1
    move v9, v7

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    move v8, v9

    .line 383
    .local v8, "nextCodePointLength":I
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 384
    move v9, v5

    const/16 v10, 0x1f

    mul-int/lit8 v9, v9, 0x1f

    move v10, v7

    add-int/2addr v9, v10

    move v5, v9

    .line 385
    goto :goto_0

    .line 391
    .end local v7    # "nextCodePoint":I
    .end local v8    # "nextCodePointLength":I
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    move v9, v2

    move v7, v9

    .local v7, "i":I
    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 393
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v8, v9

    .line 394
    .local v8, "codePoint":I
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 395
    move v9, v7

    move v10, v8

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 396
    goto :goto_2

    .line 397
    .end local v8    # "codePoint":I
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 398
    .local v7, "str":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    move v10, v5

    int-to-long v10, v10

    move-object v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 399
    move-object v9, v7

    move-object v0, v9

    goto :goto_1
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    move-object v2, p2

    .local v2, "paint":Landroid/graphics/Paint;
    move-object v3, p3

    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-nez v4, :cond_0

    .line 349
    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 352
    goto :goto_0

    .line 354
    :cond_1
    move-object v4, v3

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 355
    goto :goto_0
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 309
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v2, p1

    .local v2, "character":Lcom/airbnb/lottie/model/FontCharacter;
    move-object/from16 v3, p2

    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    move/from16 v4, p3

    .local v4, "fontScale":F
    move-object/from16 v5, p4

    .local v5, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object/from16 v6, p5

    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object v10, v1

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 310
    .local v7, "contentGroups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v10, 0x0

    move v8, v10

    .local v8, "j":I
    :goto_0
    move v10, v8

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 311
    move-object v10, v7

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v10

    move-object v9, v10

    .line 312
    .local v9, "path":Landroid/graphics/Path;
    move-object v10, v9

    move-object v11, v1

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 313
    move-object v10, v1

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 314
    move-object v10, v1

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v11, 0x0

    move-object v12, v5

    iget-wide v12, v12, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:D

    neg-double v12, v12

    double-to-float v12, v12

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v10

    .line 315
    move-object v10, v1

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    move v11, v4

    move v12, v4

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v10

    .line 316
    move-object v10, v9

    move-object v11, v1

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 317
    move-object v10, v5

    iget-boolean v10, v10, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v10, :cond_0

    .line 318
    move-object v10, v1

    move-object v11, v9

    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v13, v6

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 319
    move-object v10, v1

    move-object v11, v9

    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v13, v6

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 310
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 321
    :cond_0
    move-object v10, v1

    move-object v11, v9

    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v13, v6

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 322
    move-object v10, v1

    move-object v11, v9

    move-object v12, v1

    iget-object v12, v12, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v13, v6

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 325
    .end local v9    # "path":Landroid/graphics/Path;
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    move-object v2, p2

    .local v2, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object v3, p3

    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object v4, v2

    iget-boolean v4, v4, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v4, :cond_0

    .line 339
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 340
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 343
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 14

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object/from16 v3, p3

    .local v3, "canvas":Landroid/graphics/Canvas;
    move/from16 v4, p4

    .local v4, "parentScale":F
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 260
    move-object v10, v0

    move-object v11, v1

    move v12, v5

    invoke-direct {v10, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 261
    .local v6, "charString":Ljava/lang/String;
    move v10, v5

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 262
    move-object v10, v0

    move-object v11, v6

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 263
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    move v7, v10

    .line 265
    .local v7, "charWidth":F
    move-object v10, v2

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    move v8, v10

    .line 266
    .local v8, "tracking":F
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v10, :cond_0

    .line 267
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    move v8, v10

    .line 269
    :cond_0
    move v10, v7

    move v11, v8

    move v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v9, v10

    .line 270
    .local v9, "tx":F
    move-object v10, v3

    move v11, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    goto :goto_0

    .line 272
    .end local v6    # "charString":Ljava/lang/String;
    .end local v7    # "charWidth":F
    .end local v8    # "tracking":F
    .end local v9    # "tx":F
    :cond_1
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "path":Landroid/graphics/Path;
    move-object v2, p2

    .local v2, "paint":Landroid/graphics/Paint;
    move-object v3, p3

    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-nez v4, :cond_0

    .line 329
    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 332
    goto :goto_0

    .line 334
    :cond_1
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 335
    goto :goto_0
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V
    .locals 20

    .prologue
    .line 186
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object/from16 v3, p3

    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    move-object/from16 v4, p4

    .local v4, "font":Lcom/airbnb/lottie/model/Font;
    move-object/from16 v5, p5

    .local v5, "canvas":Landroid/graphics/Canvas;
    move/from16 v6, p6

    .local v6, "parentScale":F
    move/from16 v7, p7

    .local v7, "fontScale":F
    const/4 v14, 0x0

    move v8, v14

    .local v8, "i":I
    :goto_0
    move v14, v8

    move-object v15, v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 187
    move-object v14, v1

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v9, v14

    .line 188
    .local v9, "c":C
    move v14, v9

    move-object v15, v4

    invoke-virtual {v15}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v14

    move v10, v14

    .line 189
    .local v10, "characterHash":I
    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v14

    move v15, v10

    invoke-virtual {v14, v15}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/FontCharacter;

    move-object v11, v14

    .line 190
    .local v11, "character":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v14, v11

    if-nez v14, :cond_0

    .line 192
    .line 186
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 194
    :cond_0
    move-object v14, v0

    move-object v15, v11

    move-object/from16 v16, v3

    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v19}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 195
    move-object v14, v11

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v14

    double-to-float v14, v14

    move v15, v7

    mul-float/2addr v14, v15

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v15

    mul-float/2addr v14, v15

    move v15, v6

    mul-float/2addr v14, v15

    move v12, v14

    .line 197
    .local v12, "tx":F
    move-object v14, v2

    iget v14, v14, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v14, v14

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    move v13, v14

    .line 198
    .local v13, "tracking":F
    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_1

    .line 199
    move v14, v13

    move-object v15, v0

    iget-object v15, v15, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v14, v15

    move v13, v14

    .line 201
    :cond_1
    move v14, v12

    move v15, v13

    move/from16 v16, v6

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v12, v14

    .line 202
    move-object v14, v5

    move v15, v12

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 204
    .end local v9    # "c":C
    .end local v10    # "characterHash":I
    .end local v11    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    .end local v12    # "tx":F
    .end local v13    # "tracking":F
    :cond_2
    return-void
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V
    .locals 26

    .prologue
    .line 150
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object/from16 v3, p1

    .local v3, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object/from16 v4, p2

    .local v4, "parentMatrix":Landroid/graphics/Matrix;
    move-object/from16 v5, p3

    .local v5, "font":Lcom/airbnb/lottie/model/Font;
    move-object/from16 v6, p4

    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/airbnb/lottie/model/DocumentData;->size:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v7, v18

    .line 151
    .local v7, "fontScale":F
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v18

    move/from16 v8, v18

    .line 153
    .local v8, "parentScale":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 156
    .local v9, "text":Ljava/lang/String;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v10, v18

    .line 159
    .local v10, "lineHeight":F
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    invoke-direct/range {v18 .. v19}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v11, v18

    .line 160
    .local v11, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v12, v18

    .line 161
    .local v12, "textLineCount":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "l":I
    :goto_0
    move/from16 v18, v13

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 163
    move-object/from16 v18, v11

    move/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v14, v18

    .line 164
    .local v14, "textLine":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v19, v14

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-direct/range {v18 .. v22}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F

    move-result v18

    move/from16 v15, v18

    .line 166
    .local v15, "textLineWidth":F
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 169
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move/from16 v21, v15

    invoke-direct/range {v18 .. v21}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 172
    move/from16 v18, v12

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v10

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v16, v18

    .line 173
    .local v16, "multilineTranslateY":F
    move/from16 v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v10

    mul-float v18, v18, v19

    move/from16 v19, v16

    sub-float v18, v18, v19

    move/from16 v17, v18

    .line 174
    .local v17, "translateY":F
    move-object/from16 v18, v6

    const/16 v19, 0x0

    move/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    move-object/from16 v18, v2

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v7

    invoke-direct/range {v18 .. v25}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V

    .line 180
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->restore()V

    .line 161
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 182
    .end local v14    # "textLine":Ljava/lang/String;
    .end local v15    # "textLineWidth":F
    .end local v16    # "multilineTranslateY":F
    .end local v17    # "translateY":F
    :cond_0
    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 24

    .prologue
    .line 208
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object/from16 v3, p1

    .local v3, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object/from16 v4, p2

    .local v4, "font":Lcom/airbnb/lottie/model/Font;
    move-object/from16 v5, p3

    .local v5, "parentMatrix":Landroid/graphics/Matrix;
    move-object/from16 v6, p4

    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v19, v5

    invoke-static/range {v19 .. v19}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v19

    move/from16 v7, v19

    .line 209
    .local v7, "parentScale":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v8, v19

    .line 210
    .local v8, "typeface":Landroid/graphics/Typeface;
    move-object/from16 v19, v8

    if-nez v19, :cond_0

    .line 211
    .line 248
    :goto_0
    return-void

    .line 213
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 214
    .local v9, "text":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v19

    move-object/from16 v10, v19

    .line 215
    .local v10, "textDelegate":Lcom/airbnb/lottie/TextDelegate;
    move-object/from16 v19, v10

    if-eqz v19, :cond_1

    .line 216
    move-object/from16 v19, v10

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 218
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v19

    .line 219
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/airbnb/lottie/model/DocumentData;->size:D

    move-wide/from16 v20, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v19

    .line 221
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getTextSize()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 224
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v20

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 227
    .local v11, "lineHeight":F
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v12, v19

    .line 228
    .local v12, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v13, v19

    .line 229
    .local v13, "textLineCount":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "l":I
    :goto_1
    move/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 231
    move-object/from16 v19, v12

    move/from16 v20, v14

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v15, v19

    .line 232
    .local v15, "textLine":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v16, v19

    .line 235
    .local v16, "textLineWidth":F
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move/from16 v22, v16

    invoke-direct/range {v19 .. v22}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 238
    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v11

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v17, v19

    .line 239
    .local v17, "multilineTranslateY":F
    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v11

    mul-float v19, v19, v20

    move/from16 v20, v17

    sub-float v19, v19, v20

    move/from16 v18, v19

    .line 240
    .local v18, "translateY":F
    move-object/from16 v19, v6

    const/16 v20, 0x0

    move/from16 v21, v18

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v19 .. v23}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 246
    move-object/from16 v19, v6

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 229
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 248
    .end local v15    # "textLine":Ljava/lang/String;
    .end local v16    # "textLineWidth":F
    .end local v17    # "multilineTranslateY":F
    .end local v18    # "translateY":F
    :cond_2
    goto/16 :goto_0
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "character":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 359
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v0, v7

    .line 369
    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    :goto_0
    return-object v0

    .line 361
    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 362
    .local v2, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v3, v7

    .line 363
    .local v3, "size":I
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move v9, v3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 364
    .local v4, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 365
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-object v6, v7

    .line 366
    .local v6, "sg":Lcom/airbnb/lottie/model/content/ShapeGroup;
    move-object v7, v4

    new-instance v8, Lcom/airbnb/lottie/animation/content/ContentGroup;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v11, v0

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 368
    .end local v6    # "sg":Lcom/airbnb/lottie/model/content/ShapeGroup;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    move-object v8, v1

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 369
    move-object v7, v4

    move-object v0, v7

    goto :goto_0
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F
    .locals 16

    .prologue
    .line 276
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object/from16 v1, p1

    .local v1, "textLine":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "font":Lcom/airbnb/lottie/model/Font;
    move/from16 v3, p3

    .local v3, "fontScale":F
    move/from16 v4, p4

    .local v4, "parentScale":F
    const/4 v10, 0x0

    move v5, v10

    .line 277
    .local v5, "textLineWidth":F
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 278
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v7, v10

    .line 279
    .local v7, "c":C
    move v10, v7

    move-object v11, v2

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 280
    .local v8, "characterHash":I
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v10

    move v11, v8

    invoke-virtual {v10, v11}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/model/FontCharacter;

    move-object v9, v10

    .line 281
    .local v9, "character":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v10, v9

    if-nez v10, :cond_0

    .line 282
    .line 277
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    :cond_0
    move v10, v5

    float-to-double v10, v10

    move-object v12, v9

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v12

    move v14, v3

    float-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v14

    float-to-double v14, v14

    mul-double/2addr v12, v14

    move v14, v4

    float-to-double v14, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    move v5, v10

    goto :goto_1

    .line 286
    .end local v7    # "c":C
    .end local v8    # "characterHash":I
    .end local v9    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    :cond_1
    move v10, v5

    move v0, v10

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "\r\n"

    const-string/jumbo v6, "\r"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\n"

    const-string/jumbo v6, "\r"

    .line 253
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 254
    .local v2, "formattedText":Ljava/lang/String;
    move-object v4, v2

    const-string/jumbo v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 255
    .local v3, "textLinesArray":[Ljava/lang/String;
    move-object v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    return-object v0
.end method

.method private isModifier(I)Z
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move v1, p1

    .local v1, "codePoint":I
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 404
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 405
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 406
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 407
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 403
    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    return v0

    .line 407
    .restart local v0    # "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 414
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_1

    .line 415
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_2

    .line 417
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 418
    :cond_2
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_3

    .line 419
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 420
    :cond_3
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 421
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move/from16 v3, p3

    .local v3, "parentAlpha":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 105
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 106
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 108
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/DocumentData;

    move-object v4, v9

    .line 109
    .local v4, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v9

    move-object v10, v4

    iget-object v10, v10, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/Font;

    move-object v5, v9

    .line 110
    .local v5, "font":Lcom/airbnb/lottie/model/Font;
    move-object v9, v5

    if-nez v9, :cond_1

    .line 112
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 113
    .line 146
    :goto_0
    return-void

    .line 116
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_2

    .line 117
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_3

    .line 123
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    if-nez v9, :cond_4

    const/16 v9, 0x64

    :goto_3
    move v6, v9

    .line 128
    .local v6, "opacity":I
    move v9, v6

    const/16 v10, 0xff

    mul-int/lit16 v9, v9, 0xff

    const/16 v10, 0x64

    div-int/lit8 v9, v9, 0x64

    move v7, v9

    .line 129
    .local v7, "alpha":I
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_5

    .line 133
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    :goto_4
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 140
    move-object v9, v0

    move-object v10, v4

    move-object v11, v2

    move-object v12, v5

    move-object v13, v1

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V

    .line 145
    :goto_5
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 146
    goto/16 :goto_0

    .line 119
    .end local v6    # "opacity":I
    .end local v7    # "alpha":I
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    move-object v10, v4

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 125
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v4

    iget v10, v10, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 127
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_3

    .line 135
    .restart local v6    # "opacity":I
    .restart local v7    # "alpha":I
    :cond_5
    move-object v9, v2

    invoke-static {v9}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v9

    move v8, v9

    .line 136
    .local v8, "parentScale":F
    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v4

    iget-wide v10, v10, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:D

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    move v12, v8

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    .line 142
    .end local v8    # "parentScale":F
    :cond_6
    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v2

    move-object v13, v1

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    goto :goto_5
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 9

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer;
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

    .line 99
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    return-void
.end method
