.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$CommandProcessor;,
        Landroidx/core/app/JobIntentService$CompatWorkItem;,
        Landroidx/core/app/JobIntentService$GenericWorkItem;,
        Landroidx/core/app/JobIntentService$JobWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl;,
        Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$CompatJobEngine;,
        Landroidx/core/app/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 99
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/app/JobIntentService;->mStopped:Z

    .line 101
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    .line 417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 418
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "component":Landroid/content/ComponentName;
    move v2, p2

    .local v2, "jobId":I
    move-object v3, p3

    .local v3, "work":Landroid/content/Intent;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 518
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "work must not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 520
    :cond_0
    sget-object v7, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    monitor-enter v7

    .line 521
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    move v10, v2

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v7

    move-object v5, v7

    .line 522
    .local v5, "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 523
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 524
    move-object v7, v4

    monitor-exit v7

    .line 525
    return-void

    .line 524
    .end local v5    # "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "cls":Ljava/lang/Class;
    move v2, p2

    .local v2, "jobId":I
    move-object v3, p3

    .local v3, "work":Landroid/content/Intent;
    move-object v4, v0

    new-instance v5, Landroid/content/ComponentName;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 502
    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;
    .locals 11

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "cn":Landroid/content/ComponentName;
    move v2, p2

    .local v2, "hasJobId":Z
    move v3, p3

    .local v3, "jobId":I
    sget-object v5, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-object v4, v5

    .line 530
    .local v4, "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 531
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_2

    .line 532
    move v5, v2

    if-nez v5, :cond_0

    .line 533
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Can\'t be here without a job id"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 535
    :cond_0
    new-instance v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    move-object v4, v5

    .line 539
    :goto_0
    sget-object v5, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 541
    :cond_1
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 537
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    new-instance v5, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .locals 6

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    if-eqz v3, :cond_0

    .line 640
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    invoke-interface {v3}, Landroidx/core/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;

    move-result-object v3

    move-object v0, v3

    .line 646
    .end local v0    # "this":Landroidx/core/app/JobIntentService;
    :goto_0
    return-object v0

    .line 642
    .restart local v0    # "this":Landroidx/core/app/JobIntentService;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 643
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 644
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/JobIntentService$GenericWorkItem;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 646
    :cond_1
    const/4 v3, 0x0

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method doStopCurrentWork()Z
    .locals 3

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    if-eqz v1, :cond_0

    .line 600
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v1, v2}, Landroidx/core/app/JobIntentService$CommandProcessor;->cancel(Z)Z

    move-result v1

    .line 602
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/app/JobIntentService;->mStopped:Z

    .line 603
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService;->onStopCurrentWork()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/JobIntentService;
    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .locals 7

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move v1, p1

    .local v1, "reportStarted":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    if-nez v2, :cond_1

    .line 608
    move-object v2, v0

    new-instance v3, Landroidx/core/app/JobIntentService$CommandProcessor;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/core/app/JobIntentService$CommandProcessor;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v3, v2, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    .line 609
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_0

    .line 610
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 613
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroidx/core/app/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 615
    :cond_1
    return-void
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/JobIntentService;->mStopped:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/JobIntentService;
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    if-eqz v3, :cond_0

    .line 466
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    invoke-interface {v3}, Landroidx/core/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v2, v3

    .line 468
    .local v2, "engine":Landroid/os/IBinder;
    move-object v3, v2

    move-object v0, v3

    .line 470
    .end local v0    # "this":Landroidx/core/app/JobIntentService;
    .end local v2    # "engine":Landroid/os/IBinder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/app/JobIntentService;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    .line 428
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 429
    move-object v2, v0

    new-instance v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v3, v2, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    .line 430
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    .line 433
    new-instance v2, Landroid/content/ComponentName;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v2

    .line 434
    .local v1, "cn":Landroid/content/ComponentName;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v3, v0

    invoke-super {v3}, Landroid/app/Service;->onDestroy()V

    .line 477
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 478
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 479
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    .line 480
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v3}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 481
    move-object v3, v1

    monitor-exit v3

    .line 483
    :cond_0
    return-void

    .line 481
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move v2, p2

    .local v2, "flags":I
    move/from16 v3, p3

    .local v3, "startId":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 445
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v6}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 447
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    monitor-enter v6

    .line 448
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v7, Landroidx/core/app/JobIntentService$CompatWorkItem;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v1

    :goto_0
    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Landroidx/core/app/JobIntentService$CompatWorkItem;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 450
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 451
    move-object v6, v4

    monitor-exit v6

    .line 452
    const/4 v6, 0x3

    move v0, v6

    .line 455
    .end local v0    # "this":Landroidx/core/app/JobIntentService;
    :goto_1
    return v0

    .line 448
    .restart local v0    # "this":Landroidx/core/app/JobIntentService;
    :cond_0
    new-instance v10, Landroid/content/Intent;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 455
    :cond_1
    const/4 v6, 0x2

    move v0, v6

    goto :goto_1
.end method

.method public onStopCurrentWork()Z
    .locals 2

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/JobIntentService;
    return v0
.end method

.method processorFinished()V
    .locals 6

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 619
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 620
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v3, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    .line 629
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 630
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 634
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 636
    :cond_1
    return-void

    .line 631
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    if-nez v3, :cond_0

    .line 632
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v3}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public setInterruptIfStopped(Z)V
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService;
    move v1, p1

    .local v1, "interruptIfStopped":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    .line 573
    return-void
.end method
