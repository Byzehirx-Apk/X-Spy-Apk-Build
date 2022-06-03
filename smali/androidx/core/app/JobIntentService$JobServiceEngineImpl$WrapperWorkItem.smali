.class final Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
    move-object v2, p2

    .local v2, "jobWork":Landroid/app/job/JobWorkItem;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 256
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 257
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 267
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    if-eqz v3, :cond_0

    .line 268
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    iget-object v3, v3, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v3, v4}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 270
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 271
    return-void

    .line 270
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

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    return-object v0
.end method
