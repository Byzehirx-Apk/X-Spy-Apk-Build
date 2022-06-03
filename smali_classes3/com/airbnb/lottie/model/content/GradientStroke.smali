.class public Lcom/airbnb/lottie/model/content/GradientStroke;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

.field private final gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/airbnb/lottie/model/content/GradientType;

.field private final hidden:Z

.field private final joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final miterLimit:F

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

.field private final width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 16
    .param p12    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    move-object/from16 v3, p3

    .local v3, "gradientColor":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    move-object/from16 v4, p4

    .local v4, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object/from16 v5, p5

    .local v5, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move-object/from16 v6, p6

    .local v6, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move-object/from16 v7, p7

    .local v7, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v8, p8

    .local v8, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    move-object/from16 v9, p9

    .local v9, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    move/from16 v10, p10

    .local v10, "miterLimit":F
    move-object/from16 v11, p11

    .local v11, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    move-object/from16 v12, p12

    .local v12, "dashOffset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move/from16 v13, p13

    .local v13, "hidden":Z
    move-object v14, v0

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v14, v0

    move-object v15, v1

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->name:Ljava/lang/String;

    .line 40
    move-object v14, v0

    move-object v15, v2

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    .line 41
    move-object v14, v0

    move-object v15, v3

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 42
    move-object v14, v0

    move-object v15, v4

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 43
    move-object v14, v0

    move-object v15, v5

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 44
    move-object v14, v0

    move-object v15, v6

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 45
    move-object v14, v0

    move-object v15, v7

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 46
    move-object v14, v0

    move-object v15, v8

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 47
    move-object v14, v0

    move-object v15, v9

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 48
    move-object v14, v0

    move v15, v10

    iput v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->miterLimit:F

    .line 49
    move-object v14, v0

    move-object v15, v11

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    .line 50
    move-object v14, v0

    move-object v15, v12

    iput-object v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 51
    move-object v14, v0

    move v15, v13

    iput-boolean v15, v14, Lcom/airbnb/lottie/model/content/GradientStroke;->hidden:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getMiterLimit()F
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->miterLimit:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/GradientStroke;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientStroke;
    return-object v0
.end method
