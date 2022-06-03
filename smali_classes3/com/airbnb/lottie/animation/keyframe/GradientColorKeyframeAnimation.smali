.class public Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/GradientColor;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 13
    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v2, v4

    .line 14
    .local v2, "startValue":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 15
    .local v3, "size":I
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    new-array v7, v7, [F

    move v8, v3

    new-array v8, v8, [I

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    iput-object v5, v4, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    .line 16
    return-void

    .line 14
    .end local v3    # "size":I
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;F)",
            "Lcom/airbnb/lottie/model/content/GradientColor;"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/GradientColor;>;"
    move v2, p2

    .local v2, "keyframeProgress":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v4, v1

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v5, v1

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/model/content/GradientColor;

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/lottie/model/content/GradientColor;->lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V

    .line 20
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
    return-object v0
.end method
