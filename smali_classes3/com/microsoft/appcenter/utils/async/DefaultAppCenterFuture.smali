.class public Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
.super Ljava/lang/Object;
.source "DefaultAppCenterFuture.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mConsumers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v1, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mResult:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    return-object v0
.end method

.method static synthetic access$102(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    move-object v1, p1

    .local v1, "x1":Ljava/util/Collection;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    move-object v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    return-object v0
.end method


# virtual methods
.method public declared-synchronized complete(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mResult:Ljava/lang/Object;

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;-><init>(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit v6

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    :goto_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 46
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mResult:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    return-object v0

    .line 43
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 44
    goto :goto_0
.end method

.method public isDone()Z
    .locals 7

    .prologue
    .line 53
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    :goto_0
    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v1, v3

    .end local v1    # "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    return v1

    .line 54
    .restart local v1    # "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 55
    goto :goto_0
.end method

.method public declared-synchronized thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    move-object v1, p1

    .local v1, "function":Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;, "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<TT;>;"
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;-><init>(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit v6

    return-void

    .line 70
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    if-nez v2, :cond_1

    .line 71
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    .line 73
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    throw v0
.end method
