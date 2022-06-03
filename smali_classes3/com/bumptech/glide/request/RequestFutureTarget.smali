.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/FutureTarget;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/FutureTarget",
        "<TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final assertBackgroundThread:Z

.field private exception:Ljava/lang/Exception;

.field private exceptionReceived:Z

.field private final height:I

.field private isCancelled:Z

.field private final mainHandler:Landroid/os/Handler;

.field private request:Lcom/bumptech/glide/request/Request;

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private resultReceived:Z

.field private final waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 10

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "mainHandler":Landroid/os/Handler;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    sget-object v9, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "mainHandler":Landroid/os/Handler;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move v4, p4

    .local v4, "assertBackgroundThread":Z
    move-object v5, p5

    .local v5, "waiter":Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    .line 64
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 65
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 66
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 67
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 68
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "timeoutMillis":Ljava/lang/Long;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    if-eqz v2, :cond_0

    .line 169
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 172
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-eqz v2, :cond_1

    .line 173
    new-instance v2, Ljava/util/concurrent/CancellationException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    throw v0

    .line 174
    .restart local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :cond_1
    move-object v2, v0

    :try_start_1
    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    if-eqz v2, :cond_2

    .line 175
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    invoke-direct {v3, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 176
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz v2, :cond_3

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 196
    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :goto_0
    monitor-exit v6

    return-object v0

    .line 180
    .restart local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :cond_3
    move-object v2, v1

    if-nez v2, :cond_5

    .line 181
    move-object v2, v0

    :try_start_2
    iget-object v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 186
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    new-instance v2, Ljava/lang/InterruptedException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 182
    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 183
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    goto :goto_1

    .line 188
    :cond_6
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    if-eqz v2, :cond_7

    .line 189
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    invoke-direct {v3, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 190
    :cond_7
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-eqz v2, :cond_8

    .line 191
    new-instance v2, Ljava/util/concurrent/CancellationException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 192
    :cond_8
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-nez v2, :cond_9

    .line 193
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    .line 196
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move v1, p1

    .local v1, "mayInterruptIfRunning":Z
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 73
    const/4 v3, 0x1

    move v0, v3

    .line 84
    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :goto_0
    monitor-exit v5

    return v0

    .line 76
    .restart local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :cond_0
    move-object v3, v0

    :try_start_1
    invoke-virtual {v3}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 77
    .local v2, "result":Z
    move v3, v2

    if-eqz v3, :cond_2

    .line 78
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 79
    move v3, v1

    if-eqz v3, :cond_1

    .line 80
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/request/RequestFutureTarget;->clear()V

    .line 82
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 76
    .end local v2    # "result":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 217
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-object v0

    .line 101
    .restart local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 102
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
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
    .line 108
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-wide v2, p1

    .local v2, "time":J
    move-object v4, p3

    .local v4, "timeUnit":Ljava/util/concurrent/TimeUnit;
    move-object v5, v1

    move-object v6, v4

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-object v1
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 117
    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 232
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 135
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public declared-synchronized onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, p2

    .local v2, "errorDrawable":Landroid/graphics/drawable/Drawable;
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    .line 152
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    .line 153
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit v5

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    throw v0
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;, "TR;"
    move-object v2, p2

    .local v2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-TR;>;"
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 163
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v5

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    throw v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 222
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 227
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    if-eqz v1, :cond_0

    .line 205
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestFutureTarget;->cancel(Z)Z

    move-result v1

    .line 208
    :cond_0
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 122
    return-void
.end method
