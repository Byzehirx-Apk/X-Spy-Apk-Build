.class abstract Landroidx/core/app/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkEnqueuer"
.end annotation


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cn":Landroid/content/ComponentName;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    .line 120
    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    move v1, p1

    .local v1, "jobId":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v2, :cond_1

    .line 124
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    .line 125
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    .line 130
    :cond_0
    return-void

    .line 126
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Given job ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is different than previous "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public serviceProcessingFinished()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public serviceProcessingStarted()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public serviceStartReceived()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
