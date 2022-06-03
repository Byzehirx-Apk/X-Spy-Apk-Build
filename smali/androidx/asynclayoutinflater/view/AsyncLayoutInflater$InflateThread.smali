.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool",
            "<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 164
    sget-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->start()V

    .line 165
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    .line 171
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 172
    move-object v1, v0

    new-instance v2, Landroidx/core/util/Pools$SynchronizedPool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v2, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 8

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    move-object v1, p1

    .local v1, "request":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 227
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Failed to enqueue async inflate request"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public obtainRequest()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    move-object v2, v0

    iget-object v2, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    move-object v1, v2

    .line 208
    .local v1, "obj":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    move-object v1, v2

    .line 211
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    return-object v0
.end method

.method public releaseRequest(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    move-object v1, p1

    .local v1, "obj":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->callback:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 216
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 217
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 218
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 219
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 220
    move-object v2, v0

    iget-object v2, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 221
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->runInner()V

    goto :goto_0
.end method

.method public runInner()V
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 185
    .line 188
    .local v1, "request":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    move-object v3, v1

    move-object v4, v1

    :try_start_1
    iget-object v4, v4, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v4, v4, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v1

    iget v5, v5, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    move-object v6, v1

    iget-object v6, v6, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .line 195
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 197
    .end local v1    # "request":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 183
    .local v2, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "AsyncLayoutInflater"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 184
    goto :goto_1

    .line 190
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .restart local v1    # "request":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 192
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AsyncLayoutInflater"

    const-string/jumbo v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method
