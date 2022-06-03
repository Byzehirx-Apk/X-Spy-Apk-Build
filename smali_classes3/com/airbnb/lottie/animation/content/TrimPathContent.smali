.class public Lcom/airbnb/lottie/animation/content/TrimPathContent;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/Content;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final endAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final startAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, p1

    .local v1, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v2, p2

    .local v2, "trimPath":Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    .line 21
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->name:Ljava/lang/String;

    .line 22
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->isHidden()Z

    move-result v4

    iput-boolean v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->hidden:Z

    .line 23
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getStart()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getEnd()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 29
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 30
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 32
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 34
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 53
    return-void
.end method

.method public getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    return-object v0
.end method

.method public getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    return-object v0
.end method

.method public getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    return-object v0
.end method

.method getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    return v0
.end method

.method public onValueChanged()V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 39
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    return-void
.end method
