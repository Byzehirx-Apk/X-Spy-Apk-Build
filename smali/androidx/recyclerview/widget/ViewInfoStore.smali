.class Landroidx/recyclerview/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;,
        Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroidx/collection/LongSparseArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 45
    move-object v1, v0

    new-instance v2, Landroidx/collection/LongSparseArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    .line 288
    return-void
.end method

.method private popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 11

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "flag":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 100
    .local v3, "index":I
    move v6, v3

    if-gez v6, :cond_0

    .line 101
    const/4 v6, 0x0

    move-object v0, v6

    .line 121
    .end local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    :goto_0
    return-object v0

    .line 103
    .restart local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v4, v6

    .line 104
    .local v4, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v6, v4

    if-eqz v6, :cond_4

    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    move v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 105
    move-object v6, v4

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    move v8, v2

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 107
    move v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 108
    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v5, v6

    .line 115
    .local v5, "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v7, 0xc

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    .line 116
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 117
    move-object v6, v4

    invoke-static {v6}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    .line 119
    :cond_1
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 109
    .end local v5    # "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_2
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 110
    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v5, v6

    .restart local v5    # "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_1

    .line 112
    .end local v5    # "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Must provide flag PRE or POST"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 144
    .local v3, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 145
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 146
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 148
    :cond_0
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 149
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 150
    return-void
.end method

.method addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 197
    .local v2, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 198
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v3

    move-object v2, v3

    .line 199
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 202
    return-void
.end method

.method addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-wide v2, p1

    .local v2, "key":J
    move-object v4, p3

    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 131
    return-void
.end method

.method addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 181
    .local v3, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 182
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 183
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 186
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 187
    return-void
.end method

.method addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "info":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 63
    .local v3, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 64
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 65
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 67
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 68
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 69
    return-void
.end method

.method clear()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->clear()V

    .line 53
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 54
    return-void
.end method

.method getFromOldChangeHolders(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-wide v1, p1

    .local v1, "key":J
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    return-object v0
.end method

.method isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 73
    .local v2, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget v3, v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isInPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 160
    .local v2, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget v3, v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    .prologue
    .line 271
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 272
    return-void
.end method

.method public onViewDetached(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 276
    return-void
.end method

.method popFromPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    return-object v0
.end method

.method popFromPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ViewInfoStore;
    return-object v0
.end method

.method process(Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V
    .locals 9

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_8

    .line 218
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 219
    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v4, v5

    .line 220
    .local v4, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x3

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 222
    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 249
    :cond_0
    :goto_1
    move-object v5, v4

    invoke-static {v5}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    .line 217
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 223
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 225
    move-object v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v5, :cond_2

    .line 228
    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 230
    :cond_2
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 232
    :cond_3
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0xe

    and-int/lit8 v5, v5, 0xe

    const/16 v6, 0xe

    if-ne v5, v6, :cond_4

    .line 234
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 235
    :cond_4
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0xc

    and-int/lit8 v5, v5, 0xc

    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    .line 237
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 238
    :cond_5
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6

    .line 240
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 241
    :cond_6
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    .line 243
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 244
    :cond_7
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 251
    .end local v3    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    :cond_8
    return-void
.end method

.method removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 210
    .local v2, "record":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 211
    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v5, -0x2

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 214
    goto :goto_0
.end method

.method removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewInfoStore;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 259
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 260
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    .line 261
    .line 264
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 265
    .local v2, "info":Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 266
    move-object v3, v2

    invoke-static {v3}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    .line 268
    :cond_1
    return-void

    .line 258
    .local v2, "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
