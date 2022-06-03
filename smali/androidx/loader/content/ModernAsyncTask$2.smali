.class Landroidx/loader/content/ModernAsyncTask$2;
.super Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/loader/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroidx/loader/content/ModernAsyncTask;)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$2;, "Landroidx/loader/content/ModernAsyncTask$2;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/loader/content/ModernAsyncTask;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$2;, "Landroidx/loader/content/ModernAsyncTask$2;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    const/4 v4, 0x0

    move-object v1, v4

    .line 139
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    const/16 v4, 0xa

    :try_start_0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/content/ModernAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/loader/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 142
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 148
    .line 149
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/loader/content/ModernAsyncTask$2;, "Landroidx/loader/content/ModernAsyncTask$2;"
    return-object v0

    .line 143
    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    .restart local v0    # "this":Landroidx/loader/content/ModernAsyncTask$2;, "Landroidx/loader/content/ModernAsyncTask$2;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 144
    .local v2, "tr":Ljava/lang/Throwable;
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    move-object v4, v2

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v2    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v3

    throw v4
.end method
