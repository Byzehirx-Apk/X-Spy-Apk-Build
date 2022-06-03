.class Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
    move-object v1, p1

    .local v1, "vpa":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 47
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v4, v1

    const/high16 v5, 0x7e000000

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 101
    .local v2, "listenerTag":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v3, v4

    .line 102
    .local v3, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    move-object v4, v2

    instance-of v4, v4, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v4, :cond_0

    .line 103
    move-object v4, v2

    check-cast v4, Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v3, v4

    .line 105
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 106
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 108
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 75
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v5, v5, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v5, -0x1

    iput v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 78
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v4, :cond_5

    .line 81
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 82
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    move-object v2, v4

    .line 83
    .local v2, "endAction":Ljava/lang/Runnable;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 84
    move-object v4, v2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 86
    .end local v2    # "endAction":Ljava/lang/Runnable;
    :cond_2
    move-object v4, v1

    const/high16 v5, 0x7e000000

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 87
    .local v2, "listenerTag":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v3, v4

    .line 88
    .local v3, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    move-object v4, v2

    instance-of v4, v4, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v4, :cond_3

    .line 89
    move-object v4, v2

    check-cast v4, Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v3, v4

    .line 91
    :cond_3
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 92
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 94
    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 96
    .end local v2    # "listenerTag":Ljava/lang/Object;
    .end local v3    # "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    :cond_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 54
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 55
    move-object v4, v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 58
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    move-object v2, v4

    .line 59
    .local v2, "startAction":Ljava/lang/Runnable;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 60
    move-object v4, v2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 62
    .end local v2    # "startAction":Ljava/lang/Runnable;
    :cond_1
    move-object v4, v1

    const/high16 v5, 0x7e000000

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 63
    .local v2, "listenerTag":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v3, v4

    .line 64
    .local v3, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    move-object v4, v2

    instance-of v4, v4, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v4, :cond_2

    .line 65
    move-object v4, v2

    check-cast v4, Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v3, v4

    .line 67
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 68
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 70
    :cond_3
    return-void
.end method
