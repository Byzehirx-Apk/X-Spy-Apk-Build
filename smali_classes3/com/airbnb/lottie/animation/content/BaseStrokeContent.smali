.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


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

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field protected final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object/from16 v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object/from16 v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object/from16 v3, p3

    .local v3, "cap":Landroid/graphics/Paint$Cap;
    move-object/from16 v4, p4

    .local v4, "join":Landroid/graphics/Paint$Join;
    move/from16 v5, p5

    .local v5, "miterLimit":F
    move-object/from16 v6, p6

    .local v6, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object/from16 v7, p7

    .local v7, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v8, p8

    .local v8, "dashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    move-object/from16 v9, p9

    .local v9, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v11, v0

    new-instance v12, Landroid/graphics/PathMeasure;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 40
    move-object v11, v0

    new-instance v12, Landroid/graphics/Path;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 41
    move-object v11, v0

    new-instance v12, Landroid/graphics/Path;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 42
    move-object v11, v0

    new-instance v12, Landroid/graphics/RectF;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 45
    move-object v11, v0

    new-instance v12, Ljava/util/ArrayList;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 47
    move-object v11, v0

    new-instance v12, Lcom/airbnb/lottie/animation/LPaint;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 58
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 59
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 61
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 64
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 66
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v12

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v12

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    move-object v11, v9

    if-nez v11, :cond_0

    .line 70
    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    :goto_0
    move-object v11, v0

    new-instance v12, Ljava/util/ArrayList;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 75
    move-object v11, v0

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [F

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 77
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_1
    move v11, v10

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 78
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    move-object v12, v8

    move v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 77
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 72
    .end local v10    # "i":I
    :cond_0
    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v12

    iput-object v12, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 81
    .restart local v10    # "i":I
    :cond_1
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    const/4 v11, 0x0

    move v10, v11

    :goto_2
    move v11, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 84
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    move v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 86
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v11, :cond_3

    .line 87
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 90
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    const/4 v11, 0x0

    move v10, v11

    :goto_3
    move v11, v10

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 94
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    move v12, v10

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 96
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v11, :cond_5

    .line 97
    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 99
    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 11

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object v1, p1

    .local v1, "parentMatrix":Landroid/graphics/Matrix;
    const-string/jumbo v4, "StrokeContent#applyDashPattern"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 275
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const-string/jumbo v4, "StrokeContent#applyDashPattern"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v4

    .line 277
    .line 301
    :goto_0
    return-void

    .line 280
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    move v2, v4

    .line 281
    .local v2, "scale":F
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 282
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v5

    .line 287
    move v4, v3

    const/4 v5, 0x2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 288
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v5, v3

    aget v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 289
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 296
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v5, v3

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget v6, v6, v7

    move v7, v2

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v5, v3

    aget v4, v4, v5

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 293
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v5, v3

    const v6, 0x3dcccccd    # 0.1f

    aput v6, v4, v5

    goto :goto_2

    .line 298
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_3
    move v3, v4

    .line 299
    .local v3, "offset":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v8, v3

    invoke-direct {v6, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v4

    .line 300
    const-string/jumbo v4, "StrokeContent#applyDashPattern"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v4

    .line 301
    goto/16 :goto_0

    .line 298
    .local v3, "i":I
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_3
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 17

    .prologue
    .line 182
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object/from16 v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object/from16 v3, p3

    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    const-string/jumbo v13, "StrokeContent#applyTrimPath"

    invoke-static {v13}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 183
    move-object v13, v2

    invoke-static {v13}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v13

    if-nez v13, :cond_0

    .line 184
    const-string/jumbo v13, "StrokeContent#applyTrimPath"

    invoke-static {v13}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v13

    .line 185
    .line 246
    :goto_0
    return-void

    .line 187
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 188
    move-object v13, v2

    invoke-static {v13}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v4, v13

    .local v4, "j":I
    :goto_1
    move v13, v4

    if-ltz v13, :cond_1

    .line 189
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    move-object v14, v2

    invoke-static {v14}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v14

    move v15, v4

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v14}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 188
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 191
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 192
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    move v4, v13

    .line 193
    .local v4, "totalLength":F
    :goto_2
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 194
    move v13, v4

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v14

    add-float/2addr v13, v14

    move v4, v13

    goto :goto_2

    .line 196
    :cond_2
    move v13, v4

    move-object v14, v2

    invoke-static {v14}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    div-float/2addr v13, v14

    move v5, v13

    .line 197
    .local v5, "offsetLength":F
    move v13, v4

    move-object v14, v2

    .line 198
    invoke-static {v14}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    move v14, v5

    add-float/2addr v13, v14

    move v6, v13

    .line 199
    .local v6, "startLength":F
    move v13, v4

    move-object v14, v2

    .line 200
    invoke-static {v14}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    move v14, v5

    add-float/2addr v13, v14

    move v7, v13

    .line 202
    .local v7, "endLength":F
    const/4 v13, 0x0

    move v8, v13

    .line 203
    .local v8, "currentLength":F
    move-object v13, v2

    invoke-static {v13}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v9, v13

    .local v9, "j":I
    :goto_3
    move v13, v9

    if-ltz v13, :cond_a

    .line 204
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move-object v14, v2

    invoke-static {v14}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v14

    move v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v14}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 205
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 206
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 207
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    move v10, v13

    .line 208
    .local v10, "length":F
    move v13, v7

    move v14, v4

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    move v13, v7

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v8

    move v15, v10

    add-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    move v13, v8

    move v14, v7

    move v15, v4

    sub-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 213
    move v13, v6

    move v14, v4

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 214
    move v13, v6

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v10

    div-float/2addr v13, v14

    move v11, v13

    .line 218
    .local v11, "startValue":F
    :goto_4
    move v13, v7

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v10

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v12, v13

    .line 219
    .local v12, "endValue":F
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move v14, v11

    move v15, v12

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 220
    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move-object v15, v0

    iget-object v15, v15, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    .line 243
    .end local v11    # "startValue":F
    .end local v12    # "endValue":F
    :cond_3
    :goto_5
    move v13, v8

    move v14, v10

    add-float/2addr v13, v14

    move v8, v13

    .line 203
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 216
    :cond_4
    const/4 v13, 0x0

    move v11, v13

    .restart local v11    # "startValue":F
    goto :goto_4

    .line 223
    .end local v11    # "startValue":F
    :cond_5
    move v13, v8

    move v14, v10

    add-float/2addr v13, v14

    move v14, v6

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_3

    move v13, v8

    move v14, v7

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    goto :goto_5

    .line 225
    :cond_6
    move v13, v8

    move v14, v10

    add-float/2addr v13, v14

    move v14, v7

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_7

    move v13, v6

    move v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    .line 226
    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move-object v15, v0

    iget-object v15, v15, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 229
    :cond_7
    move v13, v6

    move v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    .line 230
    const/4 v13, 0x0

    move v11, v13

    .line 235
    .restart local v11    # "startValue":F
    :goto_6
    move v13, v7

    move v14, v8

    move v15, v10

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_9

    .line 236
    const/high16 v13, 0x3f800000    # 1.0f

    move v12, v13

    .line 240
    .restart local v12    # "endValue":F
    :goto_7
    move-object v13, v0

    iget-object v13, v13, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move v14, v11

    move v15, v12

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 241
    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    move-object v15, v0

    iget-object v15, v15, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 232
    .end local v11    # "startValue":F
    .end local v12    # "endValue":F
    :cond_8
    move v13, v6

    move v14, v8

    sub-float/2addr v13, v14

    move v14, v10

    div-float/2addr v13, v14

    move v11, v13

    .restart local v11    # "startValue":F
    goto :goto_6

    .line 238
    :cond_9
    move v13, v7

    move v14, v8

    sub-float/2addr v13, v14

    move v14, v10

    div-float/2addr v13, v14

    move v12, v13

    .restart local v12    # "endValue":F
    goto :goto_7

    .line 245
    .end local v10    # "length":F
    .end local v11    # "startValue":F
    .end local v12    # "endValue":F
    :cond_a
    const-string/jumbo v13, "StrokeContent#applyTrimPath"

    invoke-static {v13}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v13

    .line 246
    goto/16 :goto_0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 8
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
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    .line 313
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne v3, v4, :cond_2

    .line 315
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 316
    :cond_2
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_0

    .line 317
    move-object v3, v2

    if-nez v3, :cond_3

    .line 318
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 320
    :cond_3
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 322
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 323
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 12

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move v3, p3

    .local v3, "parentAlpha":I
    const-string/jumbo v8, "StrokeContent#draw"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 142
    move-object v8, v2

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Utils;->hasZeroScaleAxis(Landroid/graphics/Matrix;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    const-string/jumbo v8, "StrokeContent#draw"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    .line 144
    .line 179
    :goto_0
    return-void

    .line 146
    :cond_0
    move v8, v3

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v9, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v4, v8

    .line 147
    .local v4, "alpha":I
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    move v9, v4

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v9, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v9

    move-object v10, v2

    invoke-static {v10}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 151
    const-string/jumbo v8, "StrokeContent#draw"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    .line 152
    goto :goto_0

    .line 154
    :cond_1
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 156
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v8, :cond_2

    .line 157
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 160
    :cond_2
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 161
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v6, v8

    .line 164
    .local v6, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object v8, v6

    invoke-static {v8}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 165
    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    .line 160
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    :cond_3
    const-string/jumbo v8, "StrokeContent#buildPath"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 168
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 169
    move-object v8, v6

    invoke-static {v8}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    .local v7, "j":I
    :goto_3
    move v8, v7

    if-ltz v8, :cond_4

    .line 170
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    move-object v9, v6

    invoke-static {v9}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v9}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 169
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 172
    :cond_4
    const-string/jumbo v8, "StrokeContent#buildPath"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    .line 173
    const-string/jumbo v8, "StrokeContent#drawPath"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 174
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    const-string/jumbo v8, "StrokeContent#drawPath"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    goto :goto_2

    .line 178
    .end local v6    # "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    .end local v7    # "j":I
    :cond_5
    const-string/jumbo v8, "StrokeContent#draw"

    invoke-static {v8}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v8

    .line 179
    goto/16 :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 14

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/RectF;
    move-object/from16 v2, p2

    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    move/from16 v3, p3

    .local v3, "applyParents":Z
    const-string/jumbo v7, "StrokeContent#getBounds"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 250
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 251
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 252
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v5, v7

    .line 253
    .local v5, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "j":I
    :goto_1
    move v7, v6

    move-object v8, v5

    invoke-static {v8}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 254
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    move-object v8, v5

    invoke-static {v8}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v8

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v8}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 253
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 251
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .end local v5    # "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    .end local v6    # "j":I
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 259
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v7, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v7

    move v4, v7

    .line 260
    .local v4, "width":F
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    move v12, v4

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 264
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    move-object v10, v1

    iget v10, v10, Landroid/graphics/RectF;->right:F

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    move-object v11, v1

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    const-string/jumbo v7, "StrokeContent#getBounds"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v7

    .line 271
    return-void
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 103
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
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
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

    .line 306
    return-void
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
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
    move-object v1, p1

    .local v1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    move-object v2, p2

    .local v2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v7, 0x0

    move-object v3, v7

    .line 107
    .local v3, "trimPathContentBefore":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    if-ltz v7, :cond_1

    .line 108
    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/Content;

    move-object v5, v7

    .line 109
    .local v5, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v7, v5

    instance-of v7, v7, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 110
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v7

    sget-object v8, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v7, v8, :cond_0

    .line 111
    move-object v7, v5

    check-cast v7, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v3, v7

    .line 107
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 114
    .end local v5    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 115
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 118
    :cond_2
    const/4 v7, 0x0

    move-object v4, v7

    .line 119
    .local v4, "currentPathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    if-ltz v7, :cond_7

    .line 120
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/Content;

    move-object v6, v7

    .line 121
    .local v6, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v7, v6

    instance-of v7, v7, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 122
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v7

    sget-object v8, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v7, v8, :cond_5

    .line 123
    move-object v7, v4

    if-eqz v7, :cond_3

    .line 124
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 126
    :cond_3
    new-instance v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    check-cast v9, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    move-object v4, v7

    .line 127
    move-object v7, v6

    check-cast v7, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 119
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 128
    :cond_5
    move-object v7, v6

    instance-of v7, v7, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v7, :cond_4

    .line 129
    move-object v7, v4

    if-nez v7, :cond_6

    .line 130
    new-instance v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    move-object v4, v7

    .line 132
    :cond_6
    move-object v7, v4

    invoke-static {v7}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .line 135
    .end local v6    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_7
    move-object v7, v4

    if-eqz v7, :cond_8

    .line 136
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 138
    :cond_8
    return-void
.end method
