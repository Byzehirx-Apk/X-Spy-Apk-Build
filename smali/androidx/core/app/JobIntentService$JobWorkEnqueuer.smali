.class final Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
.super Landroidx/core/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 11

    .prologue
    .line 332
    move-object v1, p0

    .local v1, "this":Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
    move-object v2, p1

    .local v2, "context":Landroid/content/Context;
    move-object v3, p2

    .local v3, "cn":Landroid/content/ComponentName;
    move v4, p3

    .local v4, "jobId":I
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 333
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->ensureJobId(I)V

    .line 334
    new-instance v6, Landroid/app/job/JobInfo$Builder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v4

    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v7, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    move-object v5, v6

    .line 335
    .local v5, "b":Landroid/app/job/JobInfo$Builder;
    move-object v6, v1

    move-object v7, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    iput-object v7, v6, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    .line 336
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "jobscheduler"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobScheduler;

    iput-object v7, v6, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 338
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
    move-object v1, p1

    .local v1, "work":Landroid/content/Intent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v4, Landroid/app/job/JobWorkItem;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v2

    .line 344
    return-void
.end method
