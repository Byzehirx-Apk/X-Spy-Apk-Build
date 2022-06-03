.class public Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "GradientStrokeContent.java"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final linearGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V
    .locals 15

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object/from16 v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object/from16 v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object/from16 v3, p3

    .local v3, "stroke":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/GradientStroke;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v7

    move-object v8, v3

    .line 45
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/GradientStroke;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/GradientStroke;->getMiterLimit()F

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/GradientStroke;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v10

    move-object v11, v3

    .line 46
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/content/GradientStroke;->getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/content/GradientStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/content/GradientStroke;->getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    .line 44
    invoke-direct/range {v4 .. v13}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 31
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 32
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 33
    move-object v4, v0

    new-instance v5, Landroid/graphics/RectF;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    .line 48
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientStroke;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    .line 49
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientStroke;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 50
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientStroke;->isHidden()Z

    move-result v5

    iput-boolean v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->hidden:Z

    .line 51
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    .line 53
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientStroke;->getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 55
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 57
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientStroke;->getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 59
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 61
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientStroke;->getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 62
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 63
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 64
    return-void
.end method

.method private applyDynamicColorsIfNeeded([I)[I
    .locals 8

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object v1, p1

    .local v1, "colors":[I
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v4, :cond_0

    .line 147
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    check-cast v4, [Ljava/lang/Integer;

    move-object v2, v4

    .line 148
    .local v2, "dynamicColors":[Ljava/lang/Integer;
    move-object v4, v1

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 149
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 150
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "dynamicColors":[Ljava/lang/Integer;
    .end local v3    # "i":I
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    return-object v0

    .line 153
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    .restart local v2    # "dynamicColors":[Ljava/lang/Integer;
    :cond_1
    move-object v4, v2

    array-length v4, v4

    new-array v4, v4, [I

    move-object v1, v4

    .line 154
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 155
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getGradientHash()I
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v1, v5

    .line 130
    .local v1, "startPointProgress":I
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v2, v5

    .line 131
    .local v2, "endPointProgress":I
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v3, v5

    .line 132
    .local v3, "colorProgress":I
    const/16 v5, 0x11

    move v4, v5

    .line 133
    .local v4, "hash":I
    move v5, v1

    if-eqz v5, :cond_0

    .line 134
    move v5, v4

    const/16 v6, 0x1f

    mul-int/lit8 v5, v5, 0x1f

    move v6, v1

    mul-int/2addr v5, v6

    move v4, v5

    .line 136
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    .line 137
    move v5, v4

    const/16 v6, 0x1f

    mul-int/lit8 v5, v5, 0x1f

    move v6, v2

    mul-int/2addr v5, v6

    move v4, v5

    .line 139
    :cond_1
    move v5, v3

    if-eqz v5, :cond_2

    .line 140
    move v5, v4

    const/16 v6, 0x1f

    mul-int/lit8 v5, v5, 0x1f

    move v6, v3

    mul-int/2addr v5, v6

    move v4, v5

    .line 142
    :cond_2
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    return v0
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 23

    .prologue
    .line 88
    move-object/from16 v1, p0

    .local v1, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object v13, v1

    invoke-direct {v13}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v13

    move v2, v13

    .line 89
    .local v2, "gradientHash":I
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    move v14, v2

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/LinearGradient;

    move-object v3, v13

    .line 90
    .local v3, "gradient":Landroid/graphics/LinearGradient;
    move-object v13, v3

    if-eqz v13, :cond_0

    .line 91
    move-object v13, v3

    move-object v1, v13

    .line 104
    .end local v1    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    :goto_0
    return-object v1

    .line 93
    .restart local v1    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    move-object v4, v13

    .line 94
    .local v4, "startPoint":Landroid/graphics/PointF;
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    move-object v5, v13

    .line 95
    .local v5, "endPoint":Landroid/graphics/PointF;
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v6, v13

    .line 96
    .local v6, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v13, v1

    move-object v14, v6

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v13

    move-object v7, v13

    .line 97
    .local v7, "colors":[I
    move-object v13, v6

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v13

    move-object v8, v13

    .line 98
    .local v8, "positions":[F
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    move-object v14, v1

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object v14, v4

    iget v14, v14, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v9, v13

    .line 99
    .local v9, "x0":I
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    move-object v14, v1

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object v14, v4

    iget v14, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v10, v13

    .line 100
    .local v10, "y0":I
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    move-object v14, v1

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object v14, v5

    iget v14, v14, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v11, v13

    .line 101
    .local v11, "x1":I
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    move-object v14, v1

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object v14, v5

    iget v14, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v12, v13

    .line 102
    .local v12, "y1":I
    new-instance v13, Landroid/graphics/LinearGradient;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move v15, v9

    int-to-float v15, v15

    move/from16 v16, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v3, v13

    .line 103
    move-object v13, v1

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    move v14, v2

    int-to-long v14, v14

    move-object/from16 v16, v3

    invoke-virtual/range {v13 .. v16}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 104
    move-object v13, v3

    move-object v1, v13

    goto/16 :goto_0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 25

    .prologue
    .line 108
    move-object/from16 v3, p0

    .local v3, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v16

    move/from16 v4, v16

    .line 109
    .local v4, "gradientHash":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/RadialGradient;

    move-object/from16 v5, v16

    .line 110
    .local v5, "gradient":Landroid/graphics/RadialGradient;
    move-object/from16 v16, v5

    if-eqz v16, :cond_0

    .line 111
    move-object/from16 v16, v5

    move-object/from16 v3, v16

    .line 125
    .end local v3    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    :goto_0
    return-object v3

    .line 113
    .restart local v3    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v6, v16

    .line 114
    .local v6, "startPoint":Landroid/graphics/PointF;
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v7, v16

    .line 115
    .local v7, "endPoint":Landroid/graphics/PointF;
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object/from16 v8, v16

    .line 116
    .local v8, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object/from16 v16, v3

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v16

    move-object/from16 v9, v16

    .line 117
    .local v9, "colors":[I
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v16

    move-object/from16 v10, v16

    .line 118
    .local v10, "positions":[F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 119
    .local v11, "x0":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    .line 120
    .local v12, "y0":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v13, v16

    .line 121
    .local v13, "x1":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v14, v16

    .line 122
    .local v14, "y1":I
    move/from16 v16, v13

    move/from16 v17, v11

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v14

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 123
    .local v15, "r":F
    new-instance v16, Landroid/graphics/RadialGradient;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v15

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v5, v16

    .line 124
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v16 .. v19}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 125
    move-object/from16 v16, v5

    move-object/from16 v3, v16

    goto/16 :goto_0
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
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 165
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    .line 166
    move-object v3, v2

    if-nez v3, :cond_2

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 170
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 173
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 174
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->hidden:Z

    if-eqz v5, :cond_0

    .line 68
    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 73
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v6, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v5, v6, :cond_1

    .line 74
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v5

    move-object v4, v5

    .line 78
    .local v4, "shader":Landroid/graphics/Shader;
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v5

    .line 80
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 81
    goto :goto_0

    .line 76
    .end local v4    # "shader":Landroid/graphics/Shader;
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "shader":Landroid/graphics/Shader;
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
    return-object v0
.end method
