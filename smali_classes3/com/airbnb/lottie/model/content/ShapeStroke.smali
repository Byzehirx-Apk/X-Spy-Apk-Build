.class public Lcom/airbnb/lottie/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;,
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

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

.field private final offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 13
    .param p2    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v3, p3

    .local v3, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    move-object/from16 v4, p4

    .local v4, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    move-object/from16 v5, p5

    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move-object/from16 v6, p6

    .local v6, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v7, p7

    .local v7, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    move-object/from16 v8, p8

    .local v8, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    move/from16 v9, p9

    .local v9, "miterLimit":F
    move/from16 v10, p10

    .local v10, "hidden":Z
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->name:Ljava/lang/String;

    .line 69
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 70
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    .line 71
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 72
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 73
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 74
    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 75
    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 76
    move-object v11, v0

    move v12, v9

    iput v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->miterLimit:F

    .line 77
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lcom/airbnb/lottie/model/content/ShapeStroke;->hidden:Z

    .line 78
    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
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
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public getMiterLimit()F
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->miterLimit:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/ShapeStroke;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/StrokeContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/StrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeStroke;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke;
    return-object v0
.end method
