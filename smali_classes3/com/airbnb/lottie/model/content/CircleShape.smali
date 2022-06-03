.class public Lcom/airbnb/lottie/model/content/CircleShape;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final hidden:Z

.field private final isReversed:Z

.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    move-object v3, p3

    .local v3, "size":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move v4, p4

    .local v4, "isReversed":Z
    move v5, p5

    .local v5, "hidden":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    .line 22
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 23
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 24
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed:Z

    .line 25
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/airbnb/lottie/model/content/CircleShape;->hidden:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/CircleShape;
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
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/CircleShape;
    return-object v0
.end method

.method public getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/CircleShape;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/CircleShape;
    return v0
.end method

.method public isReversed()Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/CircleShape;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/CircleShape;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/EllipseContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/EllipseContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/CircleShape;
    return-object v0
.end method
