.class public abstract Landroidx/loader/content/AsyncTaskLoader;
.super Landroidx/loader/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/Loader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3, v4}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    .line 124
    move-object v3, v0

    const-wide/16 v4, -0x2710

    iput-wide v4, v3, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 133
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/loader/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 134
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    .prologue
    .line 322
    .local p0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    return-void
.end method

.method dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, p1

    .local v1, "task":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 234
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 236
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 237
    move-object v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 238
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 240
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader;->deliverCancellation()V

    .line 241
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    .line 243
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, p1

    .local v1, "task":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 248
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/AsyncTaskLoader;->commitContentChanged()V

    .line 255
    move-object v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 256
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 258
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    move-object v1, p0

    .local v1, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v2, p1

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, p2

    .local v3, "fd":Ljava/io/FileDescriptor;
    move-object v4, p3

    .local v4, "writer":Ljava/io/PrintWriter;
    move-object v5, p4

    .local v5, "args":[Ljava/lang/String;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-super {v6, v7, v8, v9, v10}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    move-object v6, v1

    iget-object v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v6, :cond_0

    .line 358
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    const-string/jumbo v7, "mTask="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    move-object v6, v4

    const-string/jumbo v7, " waiting="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v7, v7, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v6, :cond_1

    .line 362
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    const-string/jumbo v7, "mCancellingTask="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 363
    move-object v6, v4

    const-string/jumbo v7, " waiting="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v7, v7, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 365
    :cond_1
    move-object v6, v1

    iget-wide v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 366
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v4

    const-string/jumbo v7, "mUpdateThrottle="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    move-object v6, v1

    iget-wide v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 368
    move-object v6, v4

    const-string/jumbo v7, " mLastLoadCompleteTime="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    move-object v6, v1

    iget-wide v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v10, v4

    .line 369
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 371
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 373
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 10

    .prologue
    .line 210
    move-object v1, p0

    .local v1, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-nez v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v4, :cond_2

    .line 211
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v4, v4, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v4, :cond_0

    .line 212
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 213
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v5, v1

    iget-object v5, v5, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    move-object v4, v1

    iget-wide v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    .line 217
    .local v2, "now":J
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    move-object v8, v1

    iget-wide v8, v8, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 222
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 223
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v5, v1

    iget-object v5, v5, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    move-object v6, v1

    iget-wide v6, v6, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    move-object v8, v1

    iget-wide v8, v8, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 224
    .line 230
    .end local v2    # "now":J
    :goto_0
    return-void

    .line 228
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    move-object v5, v1

    iget-object v5, v5, Landroidx/loader/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    move-result-object v4

    .line 230
    :cond_2
    goto :goto_0
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    return v0

    .restart local v0    # "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_5

    .line 163
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    if-nez v2, :cond_0

    .line 164
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mContentChanged:Z

    .line 166
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_2

    .line 171
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_1

    .line 172
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 173
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 176
    const/4 v2, 0x0

    move v0, v2

    .line 196
    .end local v0    # "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    .local v1, "cancelled":Z
    :goto_0
    return v0

    .line 177
    .end local v1    # "cancelled":Z
    .restart local v0    # "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_3

    .line 181
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 182
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 184
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 186
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v2

    move v1, v2

    .line 188
    .restart local v1    # "cancelled":Z
    move v2, v1

    if-eqz v2, :cond_4

    .line 189
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 190
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 192
    :cond_4
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 193
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 196
    .end local v1    # "cancelled":Z
    :cond_5
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, v0

    invoke-super {v1}, Landroidx/loader/content/Loader;->onForceLoad()V

    .line 153
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoad()Z

    move-result v1

    .line 154
    move-object v1, v0

    new-instance v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;-><init>(Landroidx/loader/content/AsyncTaskLoader;)V

    iput-object v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 156
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    .line 157
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 9

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-wide v2, p1

    .local v2, "delayMS":J
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 145
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 146
    move-object v4, v1

    new-instance v5, Landroid/os/Handler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 148
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/AsyncTaskLoader;, "Landroidx/loader/content/AsyncTaskLoader<TD;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    move-object v1, v2

    .line 348
    .local v1, "task":Landroidx/loader/content/AsyncTaskLoader$LoadTask;, "Landroidx/loader/content/AsyncTaskLoader<TD;>.LoadTask;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 349
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 351
    :cond_0
    return-void
.end method
