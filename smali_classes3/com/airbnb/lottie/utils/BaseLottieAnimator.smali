.class public abstract Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.super Landroid/animation/ValueAnimator;
.source "BaseLottieAnimator.java"


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, v0

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 12
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    .line 13
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 44
    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 32
    return-void
.end method

.method public getStartDelay()J
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "LottieAnimator does not support getStartDelay."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyCancel()V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    move-object v2, v3

    .line 82
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 83
    goto :goto_0

    .line 84
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method notifyEnd(Z)V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move v1, p1

    .local v1, "isReverse":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    move-object v3, v4

    .line 72
    .local v3, "listener":Landroid/animation/Animator$AnimatorListener;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 73
    move-object v4, v3

    move-object v5, v0

    move v6, v1

    invoke-interface {v4, v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 77
    :goto_1
    goto :goto_0

    .line 75
    :cond_0
    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 78
    .end local v3    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    return-void
.end method

.method notifyRepeat()V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    move-object v2, v3

    .line 66
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 67
    goto :goto_0

    .line 68
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method notifyStart(Z)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move v1, p1

    .local v1, "isReverse":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    move-object v3, v4

    .line 56
    .local v3, "listener":Landroid/animation/Animator$AnimatorListener;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 57
    move-object v4, v3

    move-object v5, v0

    move v6, v1

    invoke-interface {v4, v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 61
    :goto_1
    goto :goto_0

    .line 59
    :cond_0
    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    .line 62
    .end local v3    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    return-void
.end method

.method notifyUpdate()V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v2, v3

    .line 88
    .local v2, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 89
    goto :goto_0

    .line 90
    .end local v2    # "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 52
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 40
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 48
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 36
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 9

    .prologue
    .line 23
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-wide v2, p1

    .local v2, "duration":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "LottieAnimator does not support setDuration."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-object v1, p1

    .local v1, "value":Landroid/animation/TimeInterpolator;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "LottieAnimator does not support setInterpolator."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setStartDelay(J)V
    .locals 9

    .prologue
    .line 20
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/utils/BaseLottieAnimator;
    move-wide v2, p1

    .local v2, "startDelay":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "LottieAnimator does not support setStartDelay."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
