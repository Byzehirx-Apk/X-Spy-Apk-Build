.class public Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$1;,
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;,
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;,
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PriorityExecutor"


# instance fields
.field private final ordering:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
    move v1, p1

    .local v1, "poolSize":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;->LOG:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V

    .line 63
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
    .locals 19

    .prologue
    .line 80
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
    move/from16 v2, p1

    .local v2, "corePoolSize":I
    move/from16 v3, p2

    .local v3, "maximumPoolSize":I
    move-wide/from16 v4, p3

    .local v4, "keepAlive":J
    move-object/from16 v6, p5

    .local v6, "timeUnit":Ljava/util/concurrent/TimeUnit;
    move-object/from16 v7, p6

    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    move-object/from16 v8, p7

    .local v8, "uncaughtThrowableStrategy":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
    move-object v9, v1

    move v10, v2

    move v11, v3

    move-wide v12, v4

    move-object v14, v6

    new-instance v15, Ljava/util/concurrent/PriorityBlockingQueue;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    move-object v9, v1

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v10, v9, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->ordering:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    move-object v9, v1

    move-object v10, v8

    iput-object v10, v9, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    .line 82
    return-void
.end method

.method public constructor <init>(ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
    .locals 12

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
    move v1, p1

    .local v1, "poolSize":I
    move-object v2, p2

    .local v2, "uncaughtThrowableStrategy":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
    move-object v3, v0

    move v4, v1

    move v5, v1

    const-wide/16 v6, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;-><init>()V

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 92
    move-object v5, v2

    if-nez v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_0

    .line 93
    move-object v5, v1

    check-cast v5, Ljava/util/concurrent/Future;

    move-object v3, v5

    .line 94
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    move-object v5, v3

    :try_start_0
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 101
    .line 104
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 98
    .local v4, "e":Ljava/lang/InterruptedException;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    .line 101
    goto :goto_0

    .line 99
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 100
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    new-instance v3, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->ordering:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
    return-object v0
.end method
