.class final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroidx/recyclerview/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/recyclerview/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 188
    new-instance v0, Landroidx/recyclerview/widget/GapWorker$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/GapWorker$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 58
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private buildTaskList()V
    .locals 15

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v1, v11

    .line 216
    .local v1, "viewCount":I
    const/4 v11, 0x0

    move v2, v11

    .line 217
    .local v2, "totalTaskCount":I
    const/4 v11, 0x0

    move v3, v11

    .local v3, "i":I
    :goto_0
    move v11, v3

    move v12, v1

    if-ge v11, v12, :cond_1

    .line 218
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v11

    .line 219
    .local v4, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v11, v4

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-nez v11, :cond_0

    .line 220
    move-object v11, v4

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v12, v4

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 221
    move v11, v2

    move-object v12, v4

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v11, v12

    move v2, v11

    .line 217
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v4    # "view":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 227
    const/4 v11, 0x0

    move v3, v11

    .line 228
    .local v3, "totalTaskIndex":I
    const/4 v11, 0x0

    move v4, v11

    .local v4, "i":I
    :goto_1
    move v11, v4

    move v12, v1

    if-ge v11, v12, :cond_6

    .line 229
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v11

    .line 230
    .local v5, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v11, v5

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-eqz v11, :cond_3

    .line 232
    .line 228
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 235
    :cond_3
    move-object v11, v5

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v6, v11

    .line 236
    .local v6, "prefetchRegistry":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 237
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    move v7, v11

    .line 238
    .local v7, "viewVelocity":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "j":I
    :goto_2
    move v11, v8

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_2

    .line 240
    move v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_4

    .line 241
    new-instance v11, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroidx/recyclerview/widget/GapWorker$Task;-><init>()V

    move-object v9, v11

    .line 242
    .local v9, "task":Landroidx/recyclerview/widget/GapWorker$Task;
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 246
    :goto_3
    move-object v11, v6

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    move v10, v11

    .line 248
    .local v10, "distanceToItem":I
    move-object v11, v9

    move v12, v10

    move v13, v7

    if-gt v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    .line 249
    move-object v11, v9

    move v12, v7

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 250
    move-object v11, v9

    move v12, v10

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 251
    move-object v11, v9

    move-object v12, v5

    iput-object v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 252
    move-object v11, v9

    move-object v12, v6

    iget-object v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v13, v8

    aget v12, v12, v13

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 238
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 244
    .end local v9    # "task":Landroidx/recyclerview/widget/GapWorker$Task;
    .end local v10    # "distanceToItem":I
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v9, v11

    .restart local v9    # "task":Landroidx/recyclerview/widget/GapWorker$Task;
    goto :goto_3

    .line 248
    .restart local v10    # "distanceToItem":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 259
    .end local v5    # "view":Landroidx/recyclerview/widget/RecyclerView;
    .end local v6    # "prefetchRegistry":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "viewVelocity":I
    .end local v8    # "j":I
    .end local v9    # "task":Landroidx/recyclerview/widget/GapWorker$Task;
    .end local v10    # "distanceToItem":I
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v12, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    return-void
.end method

.method private flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V
    .locals 12

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v1, p1

    .local v1, "task":Landroidx/recyclerview/widget/GapWorker$Task;
    move-wide v2, p2

    .local v2, "deadlineNs":J
    move-object v7, v1

    iget-boolean v7, v7, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v7, :cond_1

    const-wide v7, 0x7fffffffffffffffL

    :goto_0
    move-wide v4, v7

    .line 343
    .local v4, "taskDeadlineNs":J
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v6, v7

    .line 345
    .local v6, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v6

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 347
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 348
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_0

    .line 349
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    move-wide v9, v2

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V

    .line 351
    :cond_0
    return-void

    .line 342
    .end local v4    # "taskDeadlineNs":J
    .end local v6    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-wide v7, v2

    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 11

    .prologue
    .line 354
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/GapWorker;
    move-wide v2, p1

    .local v2, "deadlineNs":J
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 355
    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v5, v6

    .line 356
    .local v5, "task":Landroidx/recyclerview/widget/GapWorker$Task;
    move-object v6, v5

    iget-object v6, v6, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_1

    .line 357
    .line 362
    .end local v5    # "task":Landroidx/recyclerview/widget/GapWorker$Task;
    :cond_0
    return-void

    .line 359
    .restart local v5    # "task":Landroidx/recyclerview/widget/GapWorker$Task;
    :cond_1
    move-object v6, v1

    move-object v7, v5

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/recyclerview/widget/GapWorker;->flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V

    .line 360
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/GapWorker$Task;->clear()V

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 8

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "view":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v2, v6

    .line 264
    .local v2, "childCount":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 265
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 266
    .local v4, "attachedView":Landroid/view/View;
    move-object v6, v4

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 268
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    const/4 v6, 0x1

    move v0, v6

    .line 272
    .end local v0    # "view":Landroidx/recyclerview/widget/RecyclerView;
    .end local v4    # "attachedView":Landroid/view/View;
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    return v0

    .line 264
    .restart local v0    # "view":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v4    # "attachedView":Landroid/view/View;
    .restart local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v4    # "attachedView":Landroid/view/View;
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 14
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v1, p1

    .local v1, "innerView":Landroidx/recyclerview/widget/RecyclerView;
    move-wide/from16 v2, p2

    .local v2, "deadlineNs":J
    move-object v8, v1

    if-nez v8, :cond_0

    .line 311
    .line 339
    :goto_0
    return-void

    .line 314
    :cond_0
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v8, :cond_1

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 315
    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v8

    if-eqz v8, :cond_1

    .line 318
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 322
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v4, v8

    .line 323
    .local v4, "innerPrefetchRegistry":Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    move-object v8, v4

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 325
    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v8, :cond_3

    .line 327
    :try_start_0
    const-string/jumbo v8, "RV Nested Prefetch"

    invoke-static {v8}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 328
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 329
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_2

    .line 332
    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 333
    .local v6, "innerPosition":I
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move-wide v11, v2

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 329
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 336
    .end local v6    # "innerPosition":I
    :cond_2
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 337
    .line 339
    .end local v5    # "i":I
    :cond_3
    goto :goto_0

    .line 336
    :catchall_0
    move-exception v8

    move-object v7, v8

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v8, v7

    throw v8
.end method

.method private prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 15

    .prologue
    .line 277
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object/from16 v2, p1

    .local v2, "view":Landroidx/recyclerview/widget/RecyclerView;
    move/from16 v3, p2

    .local v3, "position":I
    move-wide/from16 v4, p3

    .local v4, "deadlineNs":J
    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/GapWorker;->isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 279
    const/4 v9, 0x0

    move-object v1, v9

    .line 305
    .end local v1    # "this":Landroidx/recyclerview/widget/GapWorker;
    :goto_0
    return-object v1

    .line 282
    .restart local v1    # "this":Landroidx/recyclerview/widget/GapWorker;
    :cond_0
    move-object v9, v2

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v6, v9

    .line 285
    .local v6, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v9, v2

    :try_start_0
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 286
    move-object v9, v6

    move v10, v3

    const/4 v11, 0x0

    move-wide v12, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v7, v9

    .line 289
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 290
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v9

    if-nez v9, :cond_2

    .line 293
    move-object v9, v6

    move-object v10, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_1
    :goto_1
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 304
    .line 305
    move-object v9, v7

    move-object v1, v9

    goto :goto_0

    .line 299
    :cond_2
    move-object v9, v6

    move-object v10, v7

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 303
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    move-object v9, v8

    throw v9
.end method


# virtual methods
.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 162
    return-void
.end method

.method postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "prefetchDx":I
    move v3, p3

    .local v3, "prefetchDy":I
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    move-object v4, v0

    iget-wide v4, v4, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 180
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 181
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 185
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 186
    return-void
.end method

.method prefetch(J)V
    .locals 7

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-wide v1, p1

    .local v1, "deadlineNs":J
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/GapWorker;->buildTaskList()V

    .line 366
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 367
    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 169
    .local v2, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GapWorker;
    :try_start_0
    const-string/jumbo v7, "RV Prefetch"

    invoke-static {v7}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 374
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 401
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 376
    .line 404
    :goto_0
    return-void

    .line 381
    :cond_0
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 382
    .local v1, "size":I
    const-wide/16 v7, 0x0

    move-wide v2, v7

    .line 383
    .local v2, "latestFrameVsyncMs":J
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 384
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v7

    .line 385
    .local v5, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 386
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v7

    move-wide v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    move-wide v2, v7

    .line 383
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 390
    .end local v5    # "view":Landroidx/recyclerview/widget/RecyclerView;
    :cond_2
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 401
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 392
    goto :goto_0

    .line 395
    :cond_3
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    move-object v9, v0

    iget-wide v9, v9, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v7, v9

    move-wide v4, v7

    .line 397
    .local v4, "nextFrameNs":J
    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 403
    .line 404
    goto :goto_0

    .line 401
    .end local v1    # "size":I
    .end local v2    # "latestFrameVsyncMs":J
    .end local v4    # "nextFrameNs":J
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v7, v6

    throw v7
.end method
