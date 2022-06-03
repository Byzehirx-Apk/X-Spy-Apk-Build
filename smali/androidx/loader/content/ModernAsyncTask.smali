.class abstract Landroidx/loader/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;,
        Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;,
        Landroidx/loader/content/ModernAsyncTask$InternalHandler;,
        Landroidx/loader/content/ModernAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

.field final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/ModernAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 60
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$1;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    invoke-direct {v1}, Landroidx/loader/content/ModernAsyncTask$1;-><init>()V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroidx/loader/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroidx/loader/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 84
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v1, v0

    sget-object v2, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v2, v1, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 90
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v1, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v1, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    move-object v1, v0

    new-instance v2, Landroidx/loader/content/ModernAsyncTask$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/loader/content/ModernAsyncTask$2;-><init>(Landroidx/loader/content/ModernAsyncTask;)V

    iput-object v2, v1, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    .line 153
    move-object v1, v0

    new-instance v2, Landroidx/loader/content/ModernAsyncTask$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    invoke-direct {v3, v4, v5}, Landroidx/loader/content/ModernAsyncTask$3;-><init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v2, v1, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 173
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 5

    .prologue
    .line 115
    const-class v2, Landroidx/loader/content/ModernAsyncTask;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v0, v3

    monitor-enter v2

    .line 116
    :try_start_0
    sget-object v2, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    if-nez v2, :cond_0

    .line 117
    new-instance v2, Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/loader/content/ModernAsyncTask$InternalHandler;-><init>()V

    sput-object v2, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    .line 119
    :cond_0
    sget-object v2, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    move-object v3, v0

    monitor-exit v3

    move-object v0, v2

    return-object v0

    .line 120
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "exec":Ljava/util/concurrent/Executor;
    move-object v1, v0

    sput-object v1, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 127
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move v1, p1

    .local v1, "mayInterruptIfRunning":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroidx/loader/content/ModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "params":[Ljava/lang/Object;, "[TParams;"
    move-object v2, v0

    sget-object v3, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/loader/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroidx/loader/content/ModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "exec":Ljava/util/concurrent/Executor;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;, "[TParams;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    sget-object v4, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    if-eq v3, v4, :cond_0

    .line 434
    sget-object v3, Landroidx/loader/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v4}, Landroidx/loader/content/ModernAsyncTask$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 443
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "We should never reach this state"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Cannot execute task: the task is already running."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_0
    move-object v3, v0

    sget-object v4, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v4, v3, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 449
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/ModernAsyncTask;->onPreExecute()V

    .line 451
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    move-object v4, v2

    iput-object v4, v3, Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 452
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-object v0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method finish(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;, "TResult;"
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/loader/content/ModernAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 492
    :goto_0
    move-object v2, v0

    sget-object v3, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v3, v2, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 493
    return-void

    .line 490
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/loader/content/ModernAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 368
    move-object v1, p0

    .local v1, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-wide v2, p1

    .local v2, "timeout":J
    move-object v4, p3

    .local v4, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v5, v1

    iget-object v5, v5, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-object v1
.end method

.method public final getStatus()Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 286
    .local p0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;, "TResult;"
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/loader/content/ModernAsyncTask;->onCancelled()V

    .line 271
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 223
    .local p0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;, "TResult;"
    invoke-static {}, Landroidx/loader/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    .line 185
    .local v2, "message":Landroid/os/Message;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 186
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    return-object v0
.end method

.method postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;, "TResult;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    move v2, v3

    .line 177
    .local v2, "wasTaskInvoked":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 178
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    :cond_0
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask;, "Landroidx/loader/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    move-object v1, p1

    .local v1, "values":[Ljava/lang/Object;, "[TProgress;"
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    invoke-static {}, Landroidx/loader/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 484
    :cond_0
    return-void
.end method
