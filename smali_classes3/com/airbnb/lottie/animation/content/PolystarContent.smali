.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object v1, p1

    .local v1, "lottieDrawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, p3

    .local v3, "polystarShape":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 43
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 48
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 50
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 51
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 52
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->isHidden()Z

    move-result v5

    iput-boolean v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 53
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v5

    invoke-interface {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v4, v5, :cond_2

    .line 59
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    :goto_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 67
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v4, v5, :cond_0

    .line 72
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 73
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 76
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 77
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v4, v5, :cond_1

    .line 82
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    :cond_1
    return-void

    .line 62
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0
.end method

.method private createPolygonPath()V
    .locals 33

    .prologue
    .line 248
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v3, v26

    .line 249
    .local v3, "points":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    const-wide/16 v26, 0x0

    :goto_0
    move-wide/from16 v4, v26

    .line 251
    .local v4, "currentAngle":D
    move-wide/from16 v26, v4

    const-wide v28, 0x4056800000000000L    # 90.0

    sub-double v26, v26, v28

    move-wide/from16 v4, v26

    .line 253
    move-wide/from16 v26, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    move-wide/from16 v4, v26

    .line 255
    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v28, v3

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v6, v26

    .line 257
    .local v6, "anglePerPoint":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    const/high16 v27, 0x42c80000    # 100.0f

    div-float v26, v26, v27

    move/from16 v7, v26

    .line 258
    .local v7, "roundedness":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move/from16 v8, v26

    .line 263
    .local v8, "radius":F
    move/from16 v26, v8

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v4

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v9, v26

    .line 264
    .local v9, "x":F
    move/from16 v26, v8

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v4

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v10, v26

    .line 265
    .local v10, "y":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move/from16 v27, v9

    move/from16 v28, v10

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->moveTo(FF)V

    .line 266
    move-wide/from16 v26, v4

    move/from16 v28, v6

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v4, v26

    .line 268
    move/from16 v26, v3

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v13, v26

    .line 269
    .local v13, "numPoints":D
    const/16 v26, 0x0

    move/from16 v15, v26

    .local v15, "i":I
    :goto_1
    move/from16 v26, v15

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v13

    cmpg-double v26, v26, v28

    if-gez v26, :cond_2

    .line 270
    move/from16 v26, v9

    move/from16 v11, v26

    .line 271
    .local v11, "previousX":F
    move/from16 v26, v10

    move/from16 v12, v26

    .line 272
    .local v12, "previousY":F
    move/from16 v26, v8

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v4

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v9, v26

    .line 273
    move/from16 v26, v8

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v4

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v10, v26

    .line 275
    move/from16 v26, v7

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_1

    .line 276
    move/from16 v26, v12

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v11

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v16, v26

    .line 277
    .local v16, "cp1Theta":F
    move/from16 v26, v16

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v17, v26

    .line 278
    .local v17, "cp1Dx":F
    move/from16 v26, v16

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v18, v26

    .line 280
    .local v18, "cp1Dy":F
    move/from16 v26, v10

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v9

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v19, v26

    .line 281
    .local v19, "cp2Theta":F
    move/from16 v26, v19

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v20, v26

    .line 282
    .local v20, "cp2Dx":F
    move/from16 v26, v19

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v21, v26

    .line 284
    .local v21, "cp2Dy":F
    move/from16 v26, v8

    move/from16 v27, v7

    mul-float v26, v26, v27

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    move/from16 v27, v17

    mul-float v26, v26, v27

    move/from16 v22, v26

    .line 285
    .local v22, "cp1x":F
    move/from16 v26, v8

    move/from16 v27, v7

    mul-float v26, v26, v27

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    move/from16 v27, v18

    mul-float v26, v26, v27

    move/from16 v23, v26

    .line 286
    .local v23, "cp1y":F
    move/from16 v26, v8

    move/from16 v27, v7

    mul-float v26, v26, v27

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    move/from16 v27, v20

    mul-float v26, v26, v27

    move/from16 v24, v26

    .line 287
    .local v24, "cp2x":F
    move/from16 v26, v8

    move/from16 v27, v7

    mul-float v26, v26, v27

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    move/from16 v27, v21

    mul-float v26, v26, v27

    move/from16 v25, v26

    .line 288
    .local v25, "cp2y":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move/from16 v27, v11

    move/from16 v28, v22

    sub-float v27, v27, v28

    move/from16 v28, v12

    move/from16 v29, v23

    sub-float v28, v28, v29

    move/from16 v29, v9

    move/from16 v30, v24

    add-float v29, v29, v30

    move/from16 v30, v10

    move/from16 v31, v25

    add-float v30, v30, v31

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 289
    .line 293
    .end local v16    # "cp1Theta":F
    .end local v17    # "cp1Dx":F
    .end local v18    # "cp1Dy":F
    .end local v19    # "cp2Theta":F
    .end local v20    # "cp2Dx":F
    .end local v21    # "cp2Dy":F
    .end local v22    # "cp1x":F
    .end local v23    # "cp1y":F
    .end local v24    # "cp2x":F
    .end local v25    # "cp2y":F
    :goto_2
    move-wide/from16 v26, v4

    move/from16 v28, v6

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v4, v26

    .line 269
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 249
    .end local v4    # "currentAngle":D
    .end local v6    # "anglePerPoint":F
    .end local v7    # "roundedness":F
    .end local v8    # "radius":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "previousX":F
    .end local v12    # "previousY":F
    .end local v13    # "numPoints":D
    .end local v15    # "i":I
    :cond_0
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    goto/16 :goto_0

    .line 290
    .restart local v4    # "currentAngle":D
    .restart local v6    # "anglePerPoint":F
    .restart local v7    # "roundedness":F
    .restart local v8    # "radius":F
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    .restart local v11    # "previousX":F
    .restart local v12    # "previousY":F
    .restart local v13    # "numPoints":D
    .restart local v15    # "i":I
    :cond_1
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move/from16 v27, v9

    move/from16 v28, v10

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 296
    .end local v11    # "previousX":F
    .end local v12    # "previousY":F
    :cond_2
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/PointF;

    move-object/from16 v15, v26

    .line 297
    .local v15, "position":Landroid/graphics/PointF;
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->offset(FF)V

    .line 298
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Path;->close()V

    .line 299
    return-void
.end method

.method private createStarPath()V
    .locals 45

    .prologue
    .line 142
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Float;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    move/from16 v3, v38

    .line 143
    .local v3, "points":F
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    if-nez v38, :cond_5

    const-wide/16 v38, 0x0

    :goto_0
    move-wide/from16 v4, v38

    .line 145
    .local v4, "currentAngle":D
    move-wide/from16 v38, v4

    const-wide v40, 0x4056800000000000L    # 90.0

    sub-double v38, v38, v40

    move-wide/from16 v4, v38

    .line 147
    move-wide/from16 v38, v4

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v38

    move-wide/from16 v4, v38

    .line 149
    const-wide v38, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v40, v3

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v6, v38

    .line 150
    .local v6, "anglePerPoint":F
    move/from16 v38, v6

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    move/from16 v7, v38

    .line 151
    .local v7, "halfAnglePerPoint":F
    move/from16 v38, v3

    move/from16 v39, v3

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    move/from16 v8, v38

    .line 152
    .local v8, "partialPointAmount":F
    move/from16 v38, v8

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-eqz v38, :cond_0

    .line 153
    move-wide/from16 v38, v4

    move/from16 v40, v7

    const/high16 v41, 0x3f800000    # 1.0f

    move/from16 v42, v8

    sub-float v41, v41, v42

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    move-wide/from16 v4, v38

    .line 156
    :cond_0
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Float;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    move/from16 v9, v38

    .line 158
    .local v9, "outerRadius":F
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Float;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    move/from16 v10, v38

    .line 160
    .local v10, "innerRadius":F
    const/16 v38, 0x0

    move/from16 v11, v38

    .line 161
    .local v11, "innerRoundedness":F
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1

    .line 162
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Float;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v11, v38

    .line 164
    :cond_1
    const/16 v38, 0x0

    move/from16 v12, v38

    .line 165
    .local v12, "outerRoundedness":F
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2

    .line 166
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Float;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v12, v38

    .line 173
    :cond_2
    const/16 v38, 0x0

    move/from16 v17, v38

    .line 174
    .local v17, "partialPointRadius":F
    move/from16 v38, v8

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-eqz v38, :cond_6

    .line 175
    move/from16 v38, v10

    move/from16 v39, v8

    move/from16 v40, v9

    move/from16 v41, v10

    sub-float v40, v40, v41

    mul-float v39, v39, v40

    add-float v38, v38, v39

    move/from16 v17, v38

    .line 176
    move/from16 v38, v17

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v13, v38

    .line 177
    .local v13, "x":F
    move/from16 v38, v17

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v14, v38

    .line 178
    .local v14, "y":F
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v38, v0

    move/from16 v39, v13

    move/from16 v40, v14

    invoke-virtual/range {v38 .. v40}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    move-wide/from16 v38, v4

    move/from16 v40, v6

    move/from16 v41, v8

    mul-float v40, v40, v41

    const/high16 v41, 0x40000000    # 2.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    move-wide/from16 v4, v38

    .line 188
    :goto_1
    const/16 v38, 0x0

    move/from16 v18, v38

    .line 189
    .local v18, "longSegment":Z
    move/from16 v38, v3

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v40

    move-wide/from16 v19, v38

    .line 190
    .local v19, "numPoints":D
    const/16 v38, 0x0

    move/from16 v21, v38

    .local v21, "i":I
    :goto_2
    move/from16 v38, v21

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v19

    cmpg-double v38, v38, v40

    if-gez v38, :cond_10

    .line 191
    move/from16 v38, v18

    if-eqz v38, :cond_7

    move/from16 v38, v9

    :goto_3
    move/from16 v22, v38

    .line 192
    .local v22, "radius":F
    move/from16 v38, v7

    move/from16 v23, v38

    .line 193
    .local v23, "dTheta":F
    move/from16 v38, v17

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-eqz v38, :cond_3

    move/from16 v38, v21

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v19

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    sub-double v40, v40, v42

    cmpl-double v38, v38, v40

    if-nez v38, :cond_3

    .line 194
    move/from16 v38, v6

    move/from16 v39, v8

    mul-float v38, v38, v39

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    move/from16 v23, v38

    .line 196
    :cond_3
    move/from16 v38, v17

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-eqz v38, :cond_4

    move/from16 v38, v21

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v19

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v40, v40, v42

    cmpl-double v38, v38, v40

    if-nez v38, :cond_4

    .line 197
    move/from16 v38, v17

    move/from16 v22, v38

    .line 199
    :cond_4
    move/from16 v38, v13

    move/from16 v15, v38

    .line 200
    .local v15, "previousX":F
    move/from16 v38, v14

    move/from16 v16, v38

    .line 201
    .local v16, "previousY":F
    move/from16 v38, v22

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v13, v38

    .line 202
    move/from16 v38, v22

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v14, v38

    .line 204
    move/from16 v38, v11

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-nez v38, :cond_8

    move/from16 v38, v12

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-nez v38, :cond_8

    .line 205
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v38, v0

    move/from16 v39, v13

    move/from16 v40, v14

    invoke-virtual/range {v38 .. v40}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    :goto_4
    move-wide/from16 v38, v4

    move/from16 v40, v23

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    move-wide/from16 v4, v38

    .line 238
    move/from16 v38, v18

    if-nez v38, :cond_f

    const/16 v38, 0x1

    :goto_5
    move/from16 v18, v38

    .line 190
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 143
    .end local v4    # "currentAngle":D
    .end local v6    # "anglePerPoint":F
    .end local v7    # "halfAnglePerPoint":F
    .end local v8    # "partialPointAmount":F
    .end local v9    # "outerRadius":F
    .end local v10    # "innerRadius":F
    .end local v11    # "innerRoundedness":F
    .end local v12    # "outerRoundedness":F
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "previousX":F
    .end local v16    # "previousY":F
    .end local v17    # "partialPointRadius":F
    .end local v18    # "longSegment":Z
    .end local v19    # "numPoints":D
    .end local v21    # "i":I
    .end local v22    # "radius":F
    .end local v23    # "dTheta":F
    :cond_5
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Float;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    goto/16 :goto_0

    .line 181
    .restart local v4    # "currentAngle":D
    .restart local v6    # "anglePerPoint":F
    .restart local v7    # "halfAnglePerPoint":F
    .restart local v8    # "partialPointAmount":F
    .restart local v9    # "outerRadius":F
    .restart local v10    # "innerRadius":F
    .restart local v11    # "innerRoundedness":F
    .restart local v12    # "outerRoundedness":F
    .restart local v17    # "partialPointRadius":F
    :cond_6
    move/from16 v38, v9

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v13, v38

    .line 182
    .restart local v13    # "x":F
    move/from16 v38, v9

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v14, v38

    .line 183
    .restart local v14    # "y":F
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v38, v0

    move/from16 v39, v13

    move/from16 v40, v14

    invoke-virtual/range {v38 .. v40}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    move-wide/from16 v38, v4

    move/from16 v40, v7

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    move-wide/from16 v4, v38

    goto/16 :goto_1

    .line 191
    .restart local v18    # "longSegment":Z
    .restart local v19    # "numPoints":D
    .restart local v21    # "i":I
    :cond_7
    move/from16 v38, v10

    goto/16 :goto_3

    .line 207
    .restart local v15    # "previousX":F
    .restart local v16    # "previousY":F
    .restart local v22    # "radius":F
    .restart local v23    # "dTheta":F
    :cond_8
    move/from16 v38, v16

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v40, v15

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v38

    const-wide v40, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v24, v38

    .line 208
    .local v24, "cp1Theta":F
    move/from16 v38, v24

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v25, v38

    .line 209
    .local v25, "cp1Dx":F
    move/from16 v38, v24

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v26, v38

    .line 211
    .local v26, "cp1Dy":F
    move/from16 v38, v14

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v40, v13

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v38

    const-wide v40, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v27, v38

    .line 212
    .local v27, "cp2Theta":F
    move/from16 v38, v27

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v28, v38

    .line 213
    .local v28, "cp2Dx":F
    move/from16 v38, v27

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v29, v38

    .line 215
    .local v29, "cp2Dy":F
    move/from16 v38, v18

    if-eqz v38, :cond_a

    move/from16 v38, v11

    :goto_6
    move/from16 v30, v38

    .line 216
    .local v30, "cp1Roundedness":F
    move/from16 v38, v18

    if-eqz v38, :cond_b

    move/from16 v38, v12

    :goto_7
    move/from16 v31, v38

    .line 217
    .local v31, "cp2Roundedness":F
    move/from16 v38, v18

    if-eqz v38, :cond_c

    move/from16 v38, v10

    :goto_8
    move/from16 v32, v38

    .line 218
    .local v32, "cp1Radius":F
    move/from16 v38, v18

    if-eqz v38, :cond_d

    move/from16 v38, v9

    :goto_9
    move/from16 v33, v38

    .line 220
    .local v33, "cp2Radius":F
    move/from16 v38, v32

    move/from16 v39, v30

    mul-float v38, v38, v39

    const v39, 0x3ef4e26d    # 0.47829f

    mul-float v38, v38, v39

    move/from16 v39, v25

    mul-float v38, v38, v39

    move/from16 v34, v38

    .line 221
    .local v34, "cp1x":F
    move/from16 v38, v32

    move/from16 v39, v30

    mul-float v38, v38, v39

    const v39, 0x3ef4e26d    # 0.47829f

    mul-float v38, v38, v39

    move/from16 v39, v26

    mul-float v38, v38, v39

    move/from16 v35, v38

    .line 222
    .local v35, "cp1y":F
    move/from16 v38, v33

    move/from16 v39, v31

    mul-float v38, v38, v39

    const v39, 0x3ef4e26d    # 0.47829f

    mul-float v38, v38, v39

    move/from16 v39, v28

    mul-float v38, v38, v39

    move/from16 v36, v38

    .line 223
    .local v36, "cp2x":F
    move/from16 v38, v33

    move/from16 v39, v31

    mul-float v38, v38, v39

    const v39, 0x3ef4e26d    # 0.47829f

    mul-float v38, v38, v39

    move/from16 v39, v29

    mul-float v38, v38, v39

    move/from16 v37, v38

    .line 224
    .local v37, "cp2y":F
    move/from16 v38, v8

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-eqz v38, :cond_9

    .line 225
    move/from16 v38, v21

    if-nez v38, :cond_e

    .line 226
    move/from16 v38, v34

    move/from16 v39, v8

    mul-float v38, v38, v39

    move/from16 v34, v38

    .line 227
    move/from16 v38, v35

    move/from16 v39, v8

    mul-float v38, v38, v39

    move/from16 v35, v38

    .line 234
    :cond_9
    :goto_a
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move/from16 v40, v34

    sub-float v39, v39, v40

    move/from16 v40, v16

    move/from16 v41, v35

    sub-float v40, v40, v41

    move/from16 v41, v13

    move/from16 v42, v36

    add-float v41, v41, v42

    move/from16 v42, v14

    move/from16 v43, v37

    add-float v42, v42, v43

    move/from16 v43, v13

    move/from16 v44, v14

    invoke-virtual/range {v38 .. v44}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_4

    .line 215
    .end local v30    # "cp1Roundedness":F
    .end local v31    # "cp2Roundedness":F
    .end local v32    # "cp1Radius":F
    .end local v33    # "cp2Radius":F
    .end local v34    # "cp1x":F
    .end local v35    # "cp1y":F
    .end local v36    # "cp2x":F
    .end local v37    # "cp2y":F
    :cond_a
    move/from16 v38, v12

    goto/16 :goto_6

    .line 216
    .restart local v30    # "cp1Roundedness":F
    :cond_b
    move/from16 v38, v11

    goto/16 :goto_7

    .line 217
    .restart local v31    # "cp2Roundedness":F
    :cond_c
    move/from16 v38, v9

    goto/16 :goto_8

    .line 218
    .restart local v32    # "cp1Radius":F
    :cond_d
    move/from16 v38, v10

    goto/16 :goto_9

    .line 228
    .restart local v33    # "cp2Radius":F
    .restart local v34    # "cp1x":F
    .restart local v35    # "cp1y":F
    .restart local v36    # "cp2x":F
    .restart local v37    # "cp2y":F
    :cond_e
    move/from16 v38, v21

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v40, v19

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v40, v40, v42

    cmpl-double v38, v38, v40

    if-nez v38, :cond_9

    .line 229
    move/from16 v38, v36

    move/from16 v39, v8

    mul-float v38, v38, v39

    move/from16 v36, v38

    .line 230
    move/from16 v38, v37

    move/from16 v39, v8

    mul-float v38, v38, v39

    move/from16 v37, v38

    goto :goto_a

    .line 238
    .end local v24    # "cp1Theta":F
    .end local v25    # "cp1Dx":F
    .end local v26    # "cp1Dy":F
    .end local v27    # "cp2Theta":F
    .end local v28    # "cp2Dx":F
    .end local v29    # "cp2Dy":F
    .end local v30    # "cp1Roundedness":F
    .end local v31    # "cp2Roundedness":F
    .end local v32    # "cp1Radius":F
    .end local v33    # "cp2Radius":F
    .end local v34    # "cp1x":F
    .end local v35    # "cp1y":F
    .end local v36    # "cp2x":F
    .end local v37    # "cp2y":F
    :cond_f
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 242
    .end local v15    # "previousX":F
    .end local v16    # "previousY":F
    .end local v22    # "radius":F
    .end local v23    # "dTheta":F
    :cond_10
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/graphics/PointF;

    move-object/from16 v21, v38

    .line 243
    .local v21, "position":Landroid/graphics/PointF;
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v38, v0

    move-object/from16 v39, v21

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v39, v0

    move-object/from16 v40, v21

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Landroid/graphics/Path;->offset(FF)V

    .line 244
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Path;->close()V

    .line 245
    return-void
.end method

.method private invalidate()V
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 93
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 94
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 5
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
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne v3, v4, :cond_1

    .line 310
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne v3, v4, :cond_2

    .line 312
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 313
    :cond_2
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_3

    .line 314
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 315
    :cond_3
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_4

    .line 316
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 317
    :cond_4
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne v3, v4, :cond_5

    .line 318
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 319
    :cond_5
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne v3, v4, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_6

    .line 321
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 322
    :cond_6
    move-object v3, v1

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne v3, v4, :cond_0

    .line 323
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 110
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    .line 134
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    :goto_0
    return-object v0

    .line 113
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 115
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    if-eqz v1, :cond_1

    .line 116
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 117
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    goto :goto_0

    .line 120
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 131
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 133
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 134
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    goto :goto_0

    .line 122
    :pswitch_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createStarPath()V

    .line 123
    goto :goto_1

    .line 125
    :pswitch_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/PolystarContent;->invalidate()V

    .line 89
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
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
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

    .line 304
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
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/PolystarContent;
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

    .line 98
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/Content;

    move-object v4, v6

    .line 99
    .local v4, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v6, v4

    instance-of v6, v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 100
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v6, v7, :cond_0

    .line 101
    move-object v6, v4

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v5, v6

    .line 102
    .local v5, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 103
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 97
    .end local v5    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v4    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_1
    return-void
.end method
