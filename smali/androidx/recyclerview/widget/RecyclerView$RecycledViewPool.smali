.class public Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 5380
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5403
    move-object v1, v0

    new-instance v2, Landroid/util/SparseArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 5405
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 7

    .prologue
    .line 5556
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-object v2, v3

    .line 5557
    .local v2, "scrapData":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 5558
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    move-object v2, v3

    .line 5559
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5561
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    return-object v0
.end method


# virtual methods
.method attach()V
    .locals 5

    .prologue
    .line 5523
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5524
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 5411
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5412
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-object v2, v3

    .line 5413
    .local v2, "data":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    move-object v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5415
    .end local v2    # "data":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    :cond_0
    return-void
.end method

.method detach()V
    .locals 5

    .prologue
    .line 5527
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5528
    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 12

    .prologue
    .line 5507
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-wide v2, p2

    .local v2, "bindTimeNs":J
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v5

    move-object v4, v5

    .line 5508
    .local v4, "scrapData":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    move-object v5, v4

    move-object v6, v0

    move-object v7, v4

    iget-wide v7, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    move-wide v9, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5510
    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 12

    .prologue
    .line 5501
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-wide v2, p2

    .local v2, "createTimeNs":J
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v5

    move-object v4, v5

    .line 5502
    .local v4, "scrapData":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    move-object v5, v4

    move-object v6, v0

    move-object v7, v4

    iget-wide v7, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    move-wide v9, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5504
    return-void
.end method

.method public getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 5449
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-object v2, v4

    .line 5450
    .local v2, "scrapData":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5451
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    move-object v3, v4

    .line 5452
    .local v3, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v0, v4

    .line 5454
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .end local v3    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getRecycledViewCount(I)I
    .locals 4

    .prologue
    .line 5436
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    return v0
.end method

.method onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 5

    .prologue
    .line 5544
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v1, p1

    .local v1, "oldAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, p2

    .local v2, "newAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move v3, p3

    .local v3, "compatibleWithPrevious":Z
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 5545
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5547
    :cond_0
    move v4, v3

    if-nez v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v4, :cond_1

    .line 5548
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5550
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 5551
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    .line 5553
    :cond_2
    return-void
.end method

.method public putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .prologue
    .line 5481
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v1, p1

    .local v1, "scrap":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    move v2, v4

    .line 5482
    .local v2, "viewType":I
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v4

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    move-object v3, v4

    .line 5483
    .local v3, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 5484
    .line 5491
    :goto_0
    return-void

    .line 5489
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5490
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 5491
    goto :goto_0
.end method

.method runningAverage(JJ)J
    .locals 13

    .prologue
    .line 5494
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-wide v2, p1

    .local v2, "oldAverage":J
    move-wide/from16 v4, p3

    .local v4, "newValue":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 5495
    move-wide v6, v4

    move-wide v1, v6

    .line 5497
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    move-wide v8, v4

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    move-wide v1, v6

    goto :goto_0
.end method

.method public setMaxRecycledViews(II)V
    .locals 8

    .prologue
    .line 5424
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move v2, p2

    .local v2, "max":I
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v5

    move-object v3, v5

    .line 5425
    .local v3, "scrapData":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    move-object v5, v3

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5426
    move-object v5, v3

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    move-object v4, v5

    .line 5427
    .local v4, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :goto_0
    move-object v5, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    if-le v5, v6, :cond_0

    .line 5428
    move-object v5, v4

    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 5430
    :cond_0
    return-void
.end method

.method size()I
    .locals 6

    .prologue
    .line 5463
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    const/4 v4, 0x0

    move v1, v4

    .line 5464
    .local v1, "count":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 5465
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    move-object v3, v4

    .line 5466
    .local v3, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 5467
    move v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 5464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5470
    .end local v3    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    return v0
.end method

.method willBindInTime(IJJ)Z
    .locals 12

    .prologue
    .line 5518
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-wide v2, p2

    .local v2, "approxCurrentNs":J
    move-wide/from16 v4, p4

    .local v4, "deadlineNs":J
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v8

    iget-wide v8, v8, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    move-wide v6, v8

    .line 5519
    .local v6, "expectedDurationNs":J
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v8, v2

    move-wide v10, v6

    add-long/2addr v8, v10

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method willCreateInTime(IJJ)Z
    .locals 12

    .prologue
    .line 5513
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move v1, p1

    .local v1, "viewType":I
    move-wide v2, p2

    .local v2, "approxCurrentNs":J
    move-wide/from16 v4, p4

    .local v4, "deadlineNs":J
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v8

    iget-wide v8, v8, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    move-wide v6, v8

    .line 5514
    .local v6, "expectedDurationNs":J
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v8, v2

    move-wide v10, v6

    add-long/2addr v8, v10

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method
