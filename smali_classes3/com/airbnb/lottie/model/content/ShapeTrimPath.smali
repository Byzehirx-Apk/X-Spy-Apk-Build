.class public Lcom/airbnb/lottie/model/content/ShapeTrimPath;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final end:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final start:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    move-object v3, p3

    .local v3, "start":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v4, p4

    .local v4, "end":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v5, p5

    .local v5, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move v6, p6

    .local v6, "hidden":Z
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    .line 37
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 38
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->start:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 39
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->end:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 40
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 41
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->hidden:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getEnd()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->end:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method

.method public getOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method

.method public getStart()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->start:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/animation/content/TrimPathContent;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trim Path: {start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->start:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->end:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    return-object v0
.end method
