.class public Lcom/airbnb/lottie/model/content/GradientFill;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/airbnb/lottie/model/content/GradientType;

.field private final hidden:Z

.field private final highlightAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final highlightLength:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 13

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    move-object/from16 v3, p3

    .local v3, "fillType":Landroid/graphics/Path$FillType;
    move-object/from16 v4, p4

    .local v4, "gradientColor":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    move-object/from16 v5, p5

    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object/from16 v6, p6

    .local v6, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move-object/from16 v7, p7

    .local v7, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move-object/from16 v8, p8

    .local v8, "highlightLength":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v9, p9

    .local v9, "highlightAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move/from16 v10, p10

    .local v10, "hidden":Z
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    .line 34
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    .line 35
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 36
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 37
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 38
    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 39
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->name:Ljava/lang/String;

    .line 40
    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->highlightLength:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 41
    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->highlightAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 42
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lcom/airbnb/lottie/model/content/GradientFill;->hidden:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method getHighlightAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->highlightAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method getHighlightLength()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->highlightLength:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/GradientFill;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientFill;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/GradientFillContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/GradientFillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientFill;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientFill;
    return-object v0
.end method
