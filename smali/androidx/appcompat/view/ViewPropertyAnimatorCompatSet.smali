.class public Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 120
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;

    .line 49
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v3, :cond_0

    .line 91
    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-object v2, v3

    .line 94
    .local v2, "animator":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 95
    goto :goto_1

    .line 96
    .end local v2    # "animator":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 97
    goto :goto_0
.end method

.method onAnimationsEnded()V
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 87
    return-void
.end method

.method public play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v1, p1

    .local v1, "animator":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v2, :cond_0

    .line 54
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 56
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    return-object v0
.end method

.method public playSequentially(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v1, p1

    .local v1, "anim1":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, p2

    .local v2, "anim2":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 62
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 63
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    return-object v0
.end method

.method public setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-wide v1, p1

    .local v1, "duration":J
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v3, :cond_0

    .line 101
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 103
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    return-object v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v1, p1

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v2, :cond_0

    .line 108
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    return-object v0
.end method

.method public setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v2, :cond_0

    .line 115
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 117
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    return-object v0
.end method

.method public start()V
    .locals 8

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v4, :cond_0

    .line 83
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-object v3, v4

    .line 70
    .local v3, "animator":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v4, v1

    iget-wide v4, v4, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 71
    move-object v4, v3

    move-object v5, v1

    iget-wide v5, v5, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v4, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 73
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v4, :cond_2

    .line 74
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 76
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v4, :cond_3

    .line 77
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 79
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 80
    goto :goto_1

    .line 82
    .end local v3    # "animator":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_4
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 83
    goto :goto_0
.end method
