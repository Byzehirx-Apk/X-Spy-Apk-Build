.class final Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$CompatJobEngine;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobServiceEngineImpl"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 6

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    move-object v1, p1

    .local v1, "service":Landroidx/core/app/JobIntentService;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 249
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 276
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    .line 277
    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    return-object v0
.end method

.method public dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .locals 9

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 312
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    if-nez v4, :cond_0

    .line 313
    const/4 v4, 0x0

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .line 321
    .end local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    .local v1, "work":Landroid/app/job/JobWorkItem;
    :goto_0
    return-object v0

    .line 315
    .end local v1    # "work":Landroid/app/job/JobWorkItem;
    .restart local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v4

    move-object v1, v4

    .line 316
    .restart local v1    # "work":Landroid/app/job/JobWorkItem;
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 318
    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    invoke-virtual {v5}, Landroidx/core/app/JobIntentService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 319
    new-instance v4, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Landroidx/core/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    move-object v0, v4

    goto :goto_0

    .line 316
    .end local v1    # "work":Landroid/app/job/JobWorkItem;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4

    .line 321
    .restart local v1    # "work":Landroid/app/job/JobWorkItem;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    move-object v1, p1

    .local v1, "params":Landroid/app/job/JobParameters;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 289
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 290
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    move-object v1, p1

    .local v1, "params":Landroid/app/job/JobParameters;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    invoke-virtual {v5}, Landroidx/core/app/JobIntentService;->doStopCurrentWork()Z

    move-result v5

    move v2, v5

    .line 297
    .local v2, "result":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 300
    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    iput-object v6, v5, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 301
    move-object v5, v3

    monitor-exit v5

    .line 302
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    return v0

    .line 301
    .restart local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method
