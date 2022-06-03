.class public Lcom/microsoft/appcenter/utils/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/AsyncTaskUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static varargs execute(Ljava/lang/String;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 7
    .param p1    # Landroid/os/AsyncTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Type:",
            "Landroid/os/AsyncTask",
            "<TParams;**>;>(",
            "Ljava/lang/String;",
            "TType;[TParams;)TType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "logTag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "asyncTask":Landroid/os/AsyncTask;, "TType;"
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;, "[TParams;"
    move-object v4, v1

    :try_start_0
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 44
    .end local v0    # "logTag":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 43
    .local v3, "e":Ljava/util/concurrent/RejectedExecutionException;
    move-object v4, v0

    const-string/jumbo v5, "THREAD_POOL_EXECUTOR saturated, fall back on SERIAL_EXECUTOR which has an unbounded queue"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    move-object v4, v1

    sget-object v5, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
