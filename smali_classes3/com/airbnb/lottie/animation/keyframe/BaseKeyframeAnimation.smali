.class public abstract Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedEndProgress:F

.field private cachedGetValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private cachedGetValueKeyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;"
        }
    .end annotation
.end field

.field private cachedGetValueProgress:F

.field private cachedKeyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;"
        }
    .end annotation
.end field

.field private cachedStartDelayProgress:F

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field protected valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<TK;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    .line 26
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 29
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 35
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueProgress:F

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    .line 38
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    .line 39
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    .line 43
    return-void
.end method

.method private getStartDelayProgress()F
    .locals 4
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 137
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    .line 139
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    return v0

    .line 137
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 51
    return-void
.end method

.method protected getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/value/Keyframe;->containsProgress(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    move-object v0, v3

    .line 100
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    :goto_0
    return-object v0

    .line 89
    .end local v1    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    move-object v1, v3

    .line 90
    .restart local v1    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 91
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    if-ltz v3, :cond_1

    .line 92
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    move-object v1, v3

    .line 93
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/value/Keyframe;->containsProgress(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    .line 99
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 100
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 91
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method getEndProgress()F
    .locals 5
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 145
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    .line 147
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    return v0

    .line 145
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v2

    goto :goto_0
.end method

.method protected getInterpolatedCurrentKeyframeProgress()F
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v2

    move-object v1, v2

    .line 127
    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x0

    move v0, v2

    .line 131
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method getLinearCurrentKeyframeProgress()F
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    if-eqz v4, :cond_0

    .line 109
    const/4 v4, 0x0

    move v0, v4

    .line 118
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    :goto_0
    return v0

    .line 112
    .end local v1    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v1, v4

    .line 113
    .restart local v1    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 116
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v5

    sub-float/2addr v4, v5

    move v2, v4

    .line 117
    .local v2, "progressIntoFrame":F
    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v5

    sub-float/2addr v4, v5

    move v3, v4

    .line 118
    .local v3, "keyframeProgress":F
    move v4, v2

    move v5, v3

    div-float/2addr v4, v5

    move v0, v4

    goto :goto_0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v1, v4

    .line 152
    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v4

    move v2, v4

    .line 153
    .local v2, "progress":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-nez v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueProgress:F

    move v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 154
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    move-object v0, v4

    .line 162
    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :goto_0
    return-object v0

    .line 157
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 158
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueProgress:F

    .line 159
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 160
    .local v3, "value":Ljava/lang/Object;, "TA;"
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    .line 162
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method abstract getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method public notifyListeners()V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public setIsDiscrete()V
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 47
    return-void
.end method

.method public setProgress(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move v1, p1

    .local v1, "progress":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    .line 76
    :goto_0
    return-void

    .line 59
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v2, v4

    .line 60
    .local v2, "previousKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move v4, v1

    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 61
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v4

    move v1, v4

    .line 66
    :cond_1
    :goto_1
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 67
    goto :goto_0

    .line 62
    :cond_2
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 63
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v4

    move v1, v4

    goto :goto_1

    .line 69
    :cond_3
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 71
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v3, v4

    .line 73
    .local v3, "newKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move-object v4, v2

    move-object v5, v3

    if-ne v4, v5, :cond_4

    move-object v4, v3

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v4

    if-nez v4, :cond_5

    .line 74
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 76
    :cond_5
    goto :goto_0
.end method

.method public setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    move-object v1, p1

    .local v1, "valueCallback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TA;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v2, :cond_0

    .line 171
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 173
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 174
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 175
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 177
    :cond_1
    return-void
.end method
