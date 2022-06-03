.class public final Landroidx/core/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
    }
.end annotation


# static fields
.field static final LISTENER_TAG_ID:I = 0x7e000000

.field private static final TAG:Ljava/lang/String; = "ViewAnimatorCompat"


# instance fields
.field mEndAction:Ljava/lang/Runnable;

.field mOldLayerType:I

.field mStartAction:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 31
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 32
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 38
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method private setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
    .locals 10

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 740
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroidx/core/view/ViewPropertyAnimatorCompat$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat$1;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 138
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 140
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public alphaBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 153
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 155
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 464
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 466
    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 5

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 237
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    move-wide v0, v2

    .line 239
    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 267
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 268
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    move-object v0, v2

    .line 271
    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 302
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v2

    move-wide v0, v2

    .line 304
    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 318
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 320
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 333
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 335
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public rotationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 348
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 350
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public rotationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 363
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 365
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public rotationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 378
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 380
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public rotationYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 393
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 395
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 408
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 410
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public scaleXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 423
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 425
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 438
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 440
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public scaleYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 453
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 455
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-wide v2, p1

    .local v2, "value":J
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v4, v6

    .local v4, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 123
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 125
    :cond_0
    move-object v5, v1

    move-object v1, v5

    .end local v1    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "value":Landroid/view/animation/Interpolator;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 254
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 256
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 9

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 728
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 729
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 735
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0

    .line 731
    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_1
    move-object v3, v2

    const/high16 v4, 0x7e000000

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 732
    move-object v3, v0

    move-object v4, v2

    new-instance v5, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V

    goto :goto_0
.end method

.method public setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 9

    .prologue
    .line 285
    move-object v1, p0

    .local v1, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-wide v2, p1

    .local v2, "value":J
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v4, v6

    .local v4, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 286
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 288
    :cond_0
    move-object v5, v1

    move-object v1, v5

    .end local v1    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v1
.end method

.method public setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 10

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorUpdateListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    .local v2, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 775
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 776
    const/4 v4, 0x0

    move-object v3, v4

    .line 777
    .local v3, "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 778
    new-instance v4, Landroidx/core/view/ViewPropertyAnimatorCompat$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat$2;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    move-object v3, v4

    .line 785
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 788
    .end local v3    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_1
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 644
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 646
    :cond_0
    return-void
.end method

.method public translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 168
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 170
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 538
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 540
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 183
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 185
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public translationYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 553
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 555
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public translationZ(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 589
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 590
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 593
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public translationZBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 570
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 571
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 574
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 9

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 216
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 217
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 223
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0

    .line 219
    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_1
    move-object v3, v0

    move-object v4, v2

    new-instance v5, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 220
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public withLayer()Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 8

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v1, v3

    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 679
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 680
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 686
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0

    .line 682
    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayerType()I

    move-result v3

    iput v3, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 683
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V

    goto :goto_0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 9

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 707
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 708
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 714
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0

    .line 710
    .restart local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_1
    move-object v3, v0

    move-object v4, v2

    new-instance v5, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 711
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public x(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 478
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 480
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public xBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 493
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 495
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public y(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 508
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 510
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public yBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 523
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 525
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public z(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 608
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 609
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 612
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method

.method public zBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v1, p1

    .local v1, "value":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 627
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 628
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 631
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v0
.end method
