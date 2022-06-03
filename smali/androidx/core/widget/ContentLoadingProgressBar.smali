.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "ContentLoadingProgressBar.java"


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    move-object v3, v0

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 39
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 41
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 45
    move-object v3, v0

    new-instance v4, Landroidx/core/widget/ContentLoadingProgressBar$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/widget/ContentLoadingProgressBar$1;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object v4, v3, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 55
    move-object v3, v0

    new-instance v4, Landroidx/core/widget/ContentLoadingProgressBar$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/widget/ContentLoadingProgressBar$2;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object v4, v3, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method private removeCallbacks()V
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 89
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 90
    return-void
.end method


# virtual methods
.method public declared-synchronized hide()V
    .locals 11

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v10, p0

    monitor-enter v10

    move-object v4, v1

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v4, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 99
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    .line 100
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 102
    .local v2, "diff":J
    move-wide v4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move-object v4, v1

    iget-wide v4, v4, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 106
    :cond_0
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    :goto_0
    monitor-exit v10

    return-void

    .line 111
    :cond_2
    move-object v4, v1

    :try_start_1
    iget-boolean v4, v4, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v4, :cond_1

    .line 112
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    move-wide v8, v2

    sub-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 113
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v2    # "diff":J
    :catchall_0
    move-exception v1

    monitor-exit v10

    .end local v1    # "this":Landroidx/core/widget/ContentLoadingProgressBar;
    throw v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 78
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    .line 79
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 84
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    .line 85
    return-void
.end method

.method public declared-synchronized show()V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 125
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 126
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 127
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 128
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v1, :cond_0

    .line 129
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 130
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit v5

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Landroidx/core/widget/ContentLoadingProgressBar;
    throw v0
.end method
