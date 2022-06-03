.class public Lcom/airbnb/lottie/model/content/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "copies":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v3, p3

    .local v3, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v4, p4

    .local v4, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    move v5, p5

    .local v5, "hidden":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/Repeater;->name:Ljava/lang/String;

    .line 22
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/Repeater;->copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 23
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/Repeater;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 24
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/model/content/Repeater;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 25
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/airbnb/lottie/model/content/Repeater;->hidden:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getCopies()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Repeater;->copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Repeater;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Repeater;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Repeater;
    return-object v0
.end method

.method public getOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Repeater;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Repeater;
    return-object v0
.end method

.method public getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Repeater;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Repeater;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/Repeater;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Repeater;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Repeater;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    new-instance v3, Lcom/airbnb/lottie/animation/content/RepeaterContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/lottie/animation/content/RepeaterContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/Repeater;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Repeater;
    return-object v0
.end method
