.class Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 11

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move v1, p1

    .local v1, "layoutPosition":I
    move v2, p2

    .local v2, "pixelDistance":I
    move v5, v1

    if-gez v5, :cond_0

    .line 111
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Layout positions must be non-negative"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_0
    move v5, v2

    if-gez v5, :cond_1

    .line 115
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Pixel distance must be non-negative"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 120
    .local v3, "storagePosition":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v5, :cond_3

    .line 121
    move-object v5, v0

    const/4 v6, 0x4

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 122
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 130
    :cond_2
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v6, v3

    move v7, v1

    aput v7, v5, v6

    .line 131
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    aput v7, v5, v6

    .line 133
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 134
    return-void

    .line 123
    :cond_3
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v6, v6

    if-lt v5, v6, :cond_2

    .line 124
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move-object v4, v5

    .line 125
    .local v4, "oldArray":[I
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 126
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v8, 0x0

    move-object v9, v4

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method clearPrefetchPositions()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v1, :cond_0

    .line 151
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 153
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 154
    return-void
.end method

.method collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 9

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "nested":Z
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 78
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v4, :cond_0

    .line 79
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 82
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v4

    .line 83
    .local v3, "layout":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_2

    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 85
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    move v4, v2

    if-eqz v4, :cond_3

    .line 89
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 100
    :cond_1
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v4, v5, :cond_2

    .line 101
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 102
    move-object v4, v3

    move v5, v2

    iput-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 103
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 106
    :cond_2
    return-void

    .line 94
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0
.end method

.method lastPrefetchIncludedPosition(I)Z
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move v1, p1

    .local v1, "position":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v4, :cond_1

    .line 138
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v2, v4

    .line 139
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 140
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v5, v3

    aget v4, v4, v5

    move v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .line 143
    .end local v0    # "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :goto_1
    return v0

    .line 139
    .restart local v0    # "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 143
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method setPrefetchVector(II)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    .line 73
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 74
    return-void
.end method
