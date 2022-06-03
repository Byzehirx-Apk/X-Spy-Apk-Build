.class public Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;
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

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    move-object/from16 v3, p3

    .local v3, "points":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v4, p4

    .local v4, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    move-object/from16 v5, p5

    .local v5, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v6, p6

    .local v6, "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v7, p7

    .local v7, "outerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v8, p8

    .local v8, "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v9, p9

    .local v9, "outerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move/from16 v10, p10

    .local v10, "hidden":Z
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 50
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 51
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 52
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 53
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 54
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 55
    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 56
    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 57
    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 58
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 2
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
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/PolystarContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/PolystarContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/PolystarShape;
    return-object v0
.end method
