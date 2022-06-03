.class final Landroidx/loader/content/AsyncTaskLoader$LoadTask;
.super Landroidx/loader/content/ModernAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroidx/loader/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/loader/content/AsyncTaskLoader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    .line 49
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v1, p1

    .local v1, "params":[Ljava/lang/Void;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 62
    .local v2, "data":Ljava/lang/Object;, "TD;"
    move-object v3, v2

    move-object v0, v3

    .line 74
    .end local v0    # "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    .end local v2    # "data":Ljava/lang/Object;, "TD;"
    :goto_0
    return-object v0

    .line 63
    .restart local v0    # "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 64
    .local v2, "ex":Landroidx/core/os/OperationCanceledException;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    move-object v3, v2

    throw v3

    .line 74
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v3, v2

    throw v3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86
    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v3, v2

    throw v3
.end method

.method public run()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 105
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    .line 106
    return-void
.end method

.method public waitForLoader()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
