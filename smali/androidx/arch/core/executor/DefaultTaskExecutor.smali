.class public Landroidx/arch/core/executor/DefaultTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "DefaultTaskExecutor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mDiskIO:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/executor/DefaultTaskExecutor;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    .line 36
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroidx/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    .line 38
    move-object v1, v0

    const/4 v2, 0x2

    new-instance v3, Landroidx/arch/core/executor/DefaultTaskExecutor$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/arch/core/executor/DefaultTaskExecutor$1;-><init>(Landroidx/arch/core/executor/DefaultTaskExecutor;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, v1, Landroidx/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/executor/DefaultTaskExecutor;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public isMainThread()Z
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/executor/DefaultTaskExecutor;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/arch/core/executor/DefaultTaskExecutor;
    return v0

    .restart local v0    # "this":Landroidx/arch/core/executor/DefaultTaskExecutor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/executor/DefaultTaskExecutor;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v4, v0

    iget-object v4, v4, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 62
    move-object v4, v0

    iget-object v4, v4, Landroidx/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 63
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 64
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v4, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    .line 66
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 70
    return-void

    .line 66
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
.end method
