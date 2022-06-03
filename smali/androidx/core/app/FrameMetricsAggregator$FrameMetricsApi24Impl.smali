.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.super Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.source "FrameMetricsAggregator.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsApi24Impl"
.end annotation


# static fields
.field private static final NANOS_PER_MS:I = 0xf4240

.field private static final NANOS_ROUNDING_VALUE:I = 0x7a120

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field mMetrics:[Landroid/util/SparseIntArray;

.field mTrackingFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    .line 345
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(I)V
    .locals 7

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move v1, p1

    .local v1, "trackingFlags":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    .line 342
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [Landroid/util/SparseIntArray;

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    .line 343
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    .line 351
    move-object v2, v0

    new-instance v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;-><init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 348
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    .line 349
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    .line 415
    new-instance v3, Landroid/os/HandlerThread;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "FrameMetricsAggregator"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    .line 416
    sget-object v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 417
    new-instance v3, Landroid/os/Handler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandler:Landroid/os/Handler;

    .line 419
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/16 v4, 0x8

    if-gt v3, v4, :cond_2

    .line 420
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move v4, v2

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v4, 0x1

    move v5, v2

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 421
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move v4, v2

    new-instance v5, Landroid/util/SparseIntArray;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    aput-object v5, v3, v4

    .line 419
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    sget-object v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 425
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 426
    return-void
.end method

.method addDurationItem(Landroid/util/SparseIntArray;J)V
    .locals 10

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v1, p1

    .local v1, "buckets":Landroid/util/SparseIntArray;
    move-wide v2, p2

    .local v2, "duration":J
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 403
    move-wide v6, v2

    const-wide/32 v8, 0x7a120

    add-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v4, v6

    .line 404
    .local v4, "durationMs":I
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 406
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    move v5, v6

    .line 407
    .local v5, "oldValue":I
    move-object v6, v1

    move v7, v4

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 410
    .end local v4    # "durationMs":I
    .end local v5    # "oldValue":I
    :cond_0
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 6

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v3, v4

    .line 431
    .local v3, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 432
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 433
    .line 436
    .end local v3    # "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-virtual {v4, v5}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 437
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    return-object v0

    .line 435
    .restart local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    .restart local v3    # "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_1
    goto :goto_0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move-object v1, v2

    .line 462
    .local v1, "returnVal":[Landroid/util/SparseIntArray;
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [Landroid/util/SparseIntArray;

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    .line 463
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .locals 7

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 443
    .local v1, "size":I
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 444
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 445
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    move-object v4, v5

    .line 446
    .local v4, "activity":Landroid/app/Activity;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 447
    move-object v5, v4

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-virtual {v5, v6}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 448
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 443
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 451
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v4    # "activity":Landroid/app/Activity;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    return-object v0
.end method
