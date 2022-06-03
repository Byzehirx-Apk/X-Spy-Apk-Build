.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
    move-object v1, p1

    .local v1, "window":Landroid/view/Window;
    move-object v2, p2

    .local v2, "frameMetrics":Landroid/view/FrameMetrics;
    move v3, p3

    .local v3, "dropCountSinceLastInvocation":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 357
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    const/16 v7, 0x8

    .line 358
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 357
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 360
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 361
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    .line 362
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 361
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 365
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 366
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x3

    .line 367
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 366
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 370
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 371
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x4

    .line 372
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 371
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 374
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 375
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x5

    .line 376
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 375
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 378
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 v5, 0x40

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 379
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x7

    .line 380
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 379
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 383
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 v5, 0x20

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    .line 384
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x6

    .line 385
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 384
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 388
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_7

    .line 389
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x0

    .line 390
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 389
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 393
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 v5, 0x100

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_8

    .line 394
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x2

    .line 395
    invoke-virtual {v6, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 394
    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 398
    :cond_8
    return-void
.end method
