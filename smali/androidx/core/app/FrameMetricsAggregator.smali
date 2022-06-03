.class public Landroidx/core/app/FrameMetricsAggregator;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;,
        Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;,
        Landroidx/core/app/FrameMetricsAggregator$MetricType;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x100

.field public static final ANIMATION_INDEX:I = 0x8

.field public static final COMMAND_DURATION:I = 0x20

.field public static final COMMAND_INDEX:I = 0x5

.field private static final DBG:Z = false

.field public static final DELAY_DURATION:I = 0x80

.field public static final DELAY_INDEX:I = 0x7

.field public static final DRAW_DURATION:I = 0x8

.field public static final DRAW_INDEX:I = 0x3

.field public static final EVERY_DURATION:I = 0x1ff

.field public static final INPUT_DURATION:I = 0x2

.field public static final INPUT_INDEX:I = 0x1

.field private static final LAST_INDEX:I = 0x8

.field public static final LAYOUT_MEASURE_DURATION:I = 0x4

.field public static final LAYOUT_MEASURE_INDEX:I = 0x2

.field public static final SWAP_DURATION:I = 0x40

.field public static final SWAP_INDEX:I = 0x6

.field public static final SYNC_DURATION:I = 0x10

.field public static final SYNC_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FrameMetrics"

.field public static final TOTAL_DURATION:I = 0x1

.field public static final TOTAL_INDEX:I


# instance fields
.field private mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/core/app/FrameMetricsAggregator;-><init>(I)V

    .line 203
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move v1, p1

    .local v1, "metricTypeFlags":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 217
    move-object v2, v0

    new-instance v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;-><init>(I)V

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    iput-object v3, v2, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->add(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator;
    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator;
    return-object v0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->reset()[Landroid/util/SparseIntArray;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator;
    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/FrameMetricsAggregator;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->stop()[Landroid/util/SparseIntArray;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/FrameMetricsAggregator;
    return-object v0
.end method
