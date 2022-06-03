.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 316
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    return-object v0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
    return-object v0
.end method
