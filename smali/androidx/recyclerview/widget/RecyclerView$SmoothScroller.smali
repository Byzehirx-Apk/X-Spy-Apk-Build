.class public abstract Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 11507
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11491
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11508
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 11509
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 11562
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move v1, p1

    .local v1, "targetPosition":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    move-object v2, v3

    .line 11563
    .local v2, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v3, v2

    instance-of v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v3, :cond_0

    .line 11564
    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    move v4, v1

    .line 11565
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    move-object v0, v3

    .line 11569
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    :goto_0
    return-object v0

    .line 11567
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    :cond_0
    const-string/jumbo v3, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 11568
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11567
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 11569
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 11707
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 11700
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 11693
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 11578
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return-object v0
.end method

.method public getTargetPosition()I
    .locals 2

    .prologue
    .line 11630
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11716
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 11717
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 2

    .prologue
    .line 11612
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 11620
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 8
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11733
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v2, p1

    .local v2, "scrollVector":Landroid/graphics/PointF;
    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    move-object v5, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 11735
    .local v3, "magnitude":F
    move-object v4, v2

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move v6, v3

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 11736
    move-object v4, v2

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move v6, v3

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 11737
    return-void
.end method

.method onAnimation(II)V
    .locals 10

    .prologue
    .line 11637
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v5

    .line 11638
    .local v3, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v3

    if-nez v5, :cond_1

    .line 11639
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 11648
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-nez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_3

    .line 11649
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v5

    move-object v4, v5

    .line 11650
    .local v4, "pointF":Landroid/graphics/PointF;
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    move-object v5, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 11651
    :cond_2
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 11652
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-int v6, v6

    move-object v7, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 11653
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    .line 11651
    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 11658
    .end local v4    # "pointF":Landroid/graphics/PointF;
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11660
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 11662
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v5, v6, :cond_6

    .line 11663
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    move-object v7, v3

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11664
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11665
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 11671
    :cond_4
    :goto_0
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v5, :cond_5

    .line 11672
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11673
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v5

    move v4, v5

    .line 11674
    .local v4, "hadJumpTarget":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11675
    move v5, v4

    if-eqz v5, :cond_5

    .line 11677
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v5, :cond_7

    .line 11678
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11679
    move-object v5, v3

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11687
    .end local v4    # "hadJumpTarget":Z
    :cond_5
    :goto_1
    return-void

    .line 11667
    :cond_6
    const-string/jumbo v5, "RecyclerView"

    const-string/jumbo v6, "Passed over target position while smooth scrolling."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 11668
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 11683
    .restart local v4    # "hadJumpTarget":Z
    :cond_7
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 11720
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 11721
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11726
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setTargetPosition(I)V
    .locals 4

    .prologue
    .line 11547
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move v1, p1

    .local v1, "targetPosition":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11548
    return-void
.end method

.method start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 7

    .prologue
    .line 11524
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    if-eqz v3, :cond_0

    .line 11525
    const-string/jumbo v3, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "An instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was started "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "more than once. Each instance of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 11526
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "is intended to only be used once. You should create a new instance for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "each use."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11525
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 11531
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 11532
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11533
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 11534
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Invalid target position"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 11536
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 11537
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11538
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11539
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11540
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 11541
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11543
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    .line 11544
    return-void
.end method

.method protected final stop()V
    .locals 3

    .prologue
    .line 11588
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v1, :cond_0

    .line 11589
    .line 11602
    :goto_0
    return-void

    .line 11591
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11592
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 11593
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 11594
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11595
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11596
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11598
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 11600
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11601
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 11602
    goto :goto_0
.end method
