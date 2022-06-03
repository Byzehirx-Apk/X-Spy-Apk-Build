.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 11805
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11806
    return-void
.end method

.method public constructor <init>(III)V
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 11814
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11815
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11825
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, p4

    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 11790
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11794
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11798
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11826
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11827
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11828
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11829
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11830
    return-void
.end method

.method private validate()V
    .locals 5

    .prologue
    .line 11889
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 11890
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11892
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 11893
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Scroll duration must be a positive number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11895
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .prologue
    .line 11918
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    return v0
.end method

.method public getDx()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 11899
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    return v0
.end method

.method public getDy()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 11909
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 11928
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 2

    .prologue
    .line 11852
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 4

    .prologue
    .line 11848
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "targetPosition":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11849
    return-void
.end method

.method runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    .prologue
    .line 11856
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v3, :cond_0

    .line 11857
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    move v2, v3

    .line 11858
    .local v2, "position":I
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11859
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11860
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11861
    .line 11886
    .end local v2    # "position":I
    :goto_0
    return-void

    .line 11863
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v3, :cond_4

    .line 11864
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11865
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_3

    .line 11866
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    .line 11867
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 11875
    :goto_1
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11876
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    .line 11879
    const-string/jumbo v3, "RecyclerView"

    const-string/jumbo v4, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 11882
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11886
    :goto_2
    goto :goto_0

    .line 11869
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_1

    .line 11872
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 11884
    :cond_4
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    goto :goto_2
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    .line 11922
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11923
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11924
    return-void
.end method

.method public setDx(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 11903
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "dx":I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11904
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11905
    return-void
.end method

.method public setDy(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 11913
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "dy":I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11914
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11915
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11938
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v1, p1

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11939
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11940
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11952
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, p4

    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11953
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11954
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11955
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11956
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11957
    return-void
.end method
