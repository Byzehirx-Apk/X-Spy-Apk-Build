.class public Landroidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;,
        Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroidx/recyclerview/widget/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncListUtil$DataCallback;Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .locals 11
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback",
            "<TT;>;",
            "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, p1

    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move v2, p2

    .local v2, "tileSize":I
    move-object v3, p3

    .local v3, "dataCallback":Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;, "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<TT;>;"
    move-object v4, p4

    .local v4, "viewCallback":Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 65
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    .line 66
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 69
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 71
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 73
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    .line 74
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    iput v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    .line 76
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 211
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/AsyncListUtil$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/AsyncListUtil$1;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 293
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/AsyncListUtil$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/AsyncListUtil$2;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 92
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    .line 93
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    .line 94
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    .line 95
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 97
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/TileList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/TileList;-><init>(I)V

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 99
    new-instance v6, Landroidx/recyclerview/widget/MessageThreadUtil;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/recyclerview/widget/MessageThreadUtil;-><init>()V

    move-object v5, v6

    .line 100
    .local v5, "threadUtil":Landroidx/recyclerview/widget/ThreadUtil;, "Landroidx/recyclerview/widget/ThreadUtil<TT;>;"
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/ThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-result-object v7

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 101
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/ThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-result-object v7

    iput-object v7, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 103
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/AsyncListUtil;->refresh()V

    .line 104
    return-void
.end method

.method private isRefreshPending()Z
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move v1, p1

    .local v1, "position":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-lt v3, v4, :cond_1

    .line 156
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not within 0 and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 159
    .local v2, "item":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    :cond_2
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    const-string/jumbo v3, "AsyncListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MAIN] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 80
    return-void
.end method

.method public onRangeChanged()V
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    .line 123
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    .line 124
    goto :goto_0
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 134
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v1, v2}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 135
    return-void
.end method

.method updateRange()V
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil;, "Landroidx/recyclerview/widget/AsyncListUtil<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    .line 180
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-gez v1, :cond_1

    .line 181
    .line 209
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-lt v1, v2, :cond_2

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v1, :cond_4

    .line 189
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 199
    :cond_3
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 200
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 202
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    .line 203
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v1, v2

    .line 204
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v1, v2

    .line 207
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v1 .. v6}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    .line 209
    goto/16 :goto_0

    .line 190
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_5

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-le v1, v2, :cond_6

    .line 192
    :cond_5
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    .line 193
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ge v1, v2, :cond_7

    .line 194
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    .line 195
    :cond_7
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-le v1, v2, :cond_3

    .line 196
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1
.end method
