.class public Lcom/airbnb/lottie/LottieTask;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieTask$LottieFutureTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final failureListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private volatile result:Lcom/airbnb/lottie/LottieResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieResult",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final successListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieListener",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/airbnb/lottie/LottieResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/airbnb/lottie/LottieResult",
            "<TT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    move v2, p2

    .local v2, "runNow":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v4, v0

    new-instance v5, Ljava/util/LinkedHashSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    .line 40
    move-object v4, v0

    new-instance v5, Ljava/util/LinkedHashSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    .line 41
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    .line 43
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 55
    move v4, v2

    if-eqz v4, :cond_0

    .line 57
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 59
    .local v3, "e":Ljava/lang/Throwable;
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    .line 60
    goto :goto_0

    .line 62
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v4, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;-><init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieTask;)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/LottieTask;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    move-object v0, v1

    .end local v0    # "x0":Lcom/airbnb/lottie/LottieTask;
    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/LottieTask;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieTask;->notifySuccessListeners(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/LottieTask;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieTask;->notifyFailureListeners(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/LottieTask;
    move-object v1, p1

    .local v1, "x1":Lcom/airbnb/lottie/LottieResult;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    return-void
.end method

.method private declared-synchronized notifyFailureListeners(Ljava/lang/Throwable;)V
    .locals 10

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Throwable;
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    .line 152
    .local v2, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string/jumbo v5, "Lottie encountered an error but no failure listener was added:"

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 160
    :goto_0
    monitor-exit v8

    return-void

    .line 157
    :cond_0
    move-object v5, v2

    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieListener;

    move-object v4, v5

    .line 158
    .local v4, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    goto :goto_1

    .line 160
    .end local v4    # "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    :cond_1
    goto :goto_0

    .line 151
    .end local v2    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method private notifyListeners()V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/airbnb/lottie/LottieTask$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieTask$1;-><init>(Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 137
    return-void
.end method

.method private declared-synchronized notifySuccessListeners(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    .line 143
    .local v2, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<TT;>;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieListener;

    move-object v4, v5

    .line 144
    .local v4, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    goto :goto_0

    .line 146
    .end local v4    # "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    :cond_0
    monitor-exit v8

    return-void

    .line 142
    .end local v2    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<TT;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method private setResult(Lcom/airbnb/lottie/LottieResult;)V
    .locals 6
    .param p1    # Lcom/airbnb/lottie/LottieResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieResult",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "A task may only be set once."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 71
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieTask;->notifyListeners()V

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/LottieTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 107
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-exit v4

    return-object v0

    .line 103
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method public declared-synchronized addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener",
            "<TT;>;)",
            "Lcom/airbnb/lottie/LottieTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 83
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 84
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-exit v4

    return-object v0

    .line 79
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method public declared-synchronized removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/LottieTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 118
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-exit v4

    return-object v0

    .line 117
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener",
            "<TT;>;)",
            "Lcom/airbnb/lottie/LottieTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-exit v4

    return-object v0

    .line 93
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method
