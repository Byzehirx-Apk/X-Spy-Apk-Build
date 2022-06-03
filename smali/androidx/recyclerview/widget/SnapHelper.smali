.class public abstract Landroidx/recyclerview/widget/SnapHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    .line 42
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/SnapHelper$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SnapHelper$1;-><init>(Landroidx/recyclerview/widget/SnapHelper;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/SnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private destroyCallbacks()V
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 124
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 125
    return-void
.end method

.method private setupCallbacks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "An instance of OnFlingListener already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 117
    return-void
.end method

.method private snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v2, p2

    .local v2, "velocityX":I
    move v3, p3

    .local v3, "velocityY":I
    move-object v6, v1

    instance-of v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v6, :cond_0

    .line 158
    const/4 v6, 0x0

    move v0, v6

    .line 173
    .end local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    :goto_0
    return v0

    .line 161
    .restart local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/SnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object v6

    move-object v4, v6

    .line 162
    .local v4, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v6, v4

    if-nez v6, :cond_1

    .line 163
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 166
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/SnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result v6

    move v5, v6

    .line 167
    .local v5, "targetPosition":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 168
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 171
    :cond_2
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 172
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 173
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 94
    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 97
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SnapHelper;->destroyCallbacks()V

    .line 99
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 101
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SnapHelper;->setupCallbacks()V

    .line 102
    move-object v2, v0

    new-instance v3, Landroid/widget/Scroller;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v4, v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 104
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    .line 106
    :cond_2
    goto :goto_0
.end method

.method public abstract calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public calculateScrollDistance(II)[I
    .locals 13

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move v1, p1

    .local v1, "velocityX":I
    move v2, p2

    .local v2, "velocityY":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 138
    .local v3, "outDist":[I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 140
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v6

    aput v6, v4, v5

    .line 141
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v6

    aput v6, v4, v5

    .line 142
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    return-object v0
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    return-object v0
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v2, :cond_0

    .line 225
    const/4 v2, 0x0

    move-object v0, v2

    .line 227
    .end local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/SnapHelper$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Landroidx/recyclerview/widget/SnapHelper;Landroid/content/Context;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 10

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move v1, p1

    .local v1, "velocityX":I
    move v2, p2

    .local v2, "velocityY":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    move-object v3, v6

    .line 66
    .local v3, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 67
    const/4 v6, 0x0

    move v0, v6

    .line 75
    .end local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    :goto_0
    return v0

    .line 69
    .restart local v0    # "this":Landroidx/recyclerview/widget/SnapHelper;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    move-object v4, v6

    .line 70
    .local v4, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v6, v4

    if-nez v6, :cond_1

    .line 71
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 73
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v6

    move v5, v6

    .line 74
    .local v5, "minFlingVelocity":I
    move v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v7, v5

    if-gt v6, v7, :cond_2

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v7, v5

    if-le v6, v7, :cond_3

    :cond_2
    move-object v6, v0

    move-object v7, v3

    move v8, v1

    move v9, v2

    .line 75
    invoke-direct {v6, v7, v8, v9}, Landroidx/recyclerview/widget/SnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method snapToTargetExistingView()V
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_0

    .line 183
    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    move-object v1, v4

    .line 186
    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 190
    .local v2, "snapView":Landroid/view/View;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 191
    goto :goto_0

    .line 193
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v4

    move-object v3, v4

    .line 194
    .local v3, "snapDistance":[I
    move-object v4, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_3

    move-object v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eqz v4, :cond_4

    .line 195
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 197
    :cond_4
    goto :goto_0
.end method
