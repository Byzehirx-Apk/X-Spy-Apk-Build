.class public Lcom/github/ybq/android/spinkit/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/AnimationUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunning(Landroid/animation/ValueAnimator;)Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "animator":Landroid/animation/ValueAnimator;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    return v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs isRunning([Lcom/github/ybq/android/spinkit/sprite/Sprite;)Z
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 39
    .local v4, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const/4 v5, 0x1

    move v0, v5

    .line 43
    .end local v0    # "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :goto_1
    return v0

    .line 38
    .restart local v0    # "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v4    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public static isStarted(Landroid/animation/ValueAnimator;)Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "animator":Landroid/animation/ValueAnimator;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    return v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static start(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "animator":Landroid/animation/Animator;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    move-object v1, v0

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 17
    :cond_0
    return-void
.end method

.method public static varargs start([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 27
    .local v4, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    .end local v4    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method

.method public static stop(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "animator":Landroid/animation/Animator;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    move-object v1, v0

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs stop([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 33
    .local v4, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->stop()V

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v4    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method
