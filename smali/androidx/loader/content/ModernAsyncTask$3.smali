.class Landroidx/loader/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$3;, "Landroidx/loader/content/ModernAsyncTask$3;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/loader/content/ModernAsyncTask;
    move-object v2, p2

    .local v2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$3;, "Landroidx/loader/content/ModernAsyncTask$3;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroidx/loader/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 159
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 170
    .line 171
    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 161
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "AsyncTask"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 170
    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 163
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "An error occurred while executing doInBackground()"

    move-object v5, v1

    .line 164
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 165
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 166
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    .line 170
    goto :goto_0

    .line 167
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 168
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "An error occurred while executing doInBackground()"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
