.class public Lcom/airbnb/lottie/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V
    .locals 9
    .param p4    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "fillEnabled":Z
    move-object v3, p3

    .local v3, "fillType":Landroid/graphics/Path$FillType;
    move-object v4, p4

    .local v4, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    move-object v5, p5

    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move v6, p6

    .local v6, "hidden":Z
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    .line 24
    move-object v7, v0

    move v8, v2

    iput-boolean v8, v7, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    .line 25
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 26
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 27
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 28
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/FillContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeFill;
    return-object v0
.end method
