.class public Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/ModifierContent;
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scale:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 12
    .param p1    # Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/model/animatable/AnimatableValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, p1

    .local v1, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    move-object v2, p2

    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    move-object v3, p3

    .local v3, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object/from16 v4, p4

    .local v4, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v5, p5

    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object/from16 v6, p6

    .local v6, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v7, p7

    .local v7, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v8, p8

    .local v8, "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v9, p9

    .local v9, "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 44
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 45
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 46
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 47
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 48
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 49
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 50
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 51
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 52
    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getAnchorPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getEndOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getScale()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getSkew()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getSkewAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public getStartOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    return-object v0
.end method
