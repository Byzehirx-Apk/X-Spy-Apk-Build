.class public Lcom/airbnb/lottie/model/content/RectangleShape;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

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
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
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
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    move-object v3, p3

    .local v3, "size":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move-object v4, p4

    .local v4, "cornerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move v5, p5

    .local v5, "hidden":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/RectangleShape;->name:Ljava/lang/String;

    .line 23
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/RectangleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 24
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/RectangleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 25
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/RectangleShape;->cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 26
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/airbnb/lottie/model/content/RectangleShape;->hidden:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/RectangleShape;->cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/RectangleShape;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
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
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/RectangleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    return-object v0
.end method

.method public getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/RectangleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/RectangleShape;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/RectangleContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/RectangleContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RectangleShape{position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/RectangleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/RectangleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/RectangleShape;
    return-object v0
.end method
