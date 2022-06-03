.class Lcom/bumptech/glide/load/engine/EngineJob;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineJob$1;,
        Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;,
        Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private static final MAIN_THREAD_HANDLER:Landroid/os/Handler;

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_EXCEPTION:I = 0x2


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private engineResource:Lcom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private engineRunnable:Lcom/bumptech/glide/load/engine/EngineRunnable;

.field private exception:Ljava/lang/Exception;

.field private volatile future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private hasException:Z

.field private hasResource:Z

.field private ignoredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final isCacheable:Z

.field private isCancelled:Z

.field private final key:Lcom/bumptech/glide/load/Key;

.field private final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private final sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 24
    new-instance v0, Landroid/os/Handler;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 13

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "diskCacheService":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v3, p3

    .local v3, "sourceService":Ljava/util/concurrent/ExecutorService;
    move/from16 v4, p4

    .local v4, "isCacheable":Z
    move-object/from16 v5, p5

    .local v5, "listener":Lcom/bumptech/glide/load/engine/EngineJobListener;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    sget-object v12, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct/range {v6 .. v12}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .locals 11

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "diskCacheService":Ljava/util/concurrent/ExecutorService;
    move-object v3, p3

    .local v3, "sourceService":Ljava/util/concurrent/ExecutorService;
    move v4, p4

    .local v4, "isCacheable":Z
    move-object/from16 v5, p5

    .local v5, "listener":Lcom/bumptech/glide/load/engine/EngineJobListener;
    move-object/from16 v6, p6

    .local v6, "engineResourceFactory":Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    .line 58
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 59
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 60
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 61
    move-object v7, v0

    move v8, v4

    iput-boolean v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    .line 62
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 63
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V

    return-void
.end method

.method private addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 106
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    .line 108
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 109
    return-void
.end method

.method private handleExceptionOnMainThread()V
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v3, :cond_0

    .line 173
    .line 186
    :goto_0
    return-void

    .line 174
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Received an exception without any callbacks to notify"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    .line 179
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 181
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/ResourceCallback;

    move-object v2, v3

    .line 182
    .local v2, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Ljava/lang/Exception;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/request/ResourceCallback;->onException(Ljava/lang/Exception;)V

    .line 185
    :cond_2
    goto :goto_1

    .line 186
    .end local v2    # "cb":Lcom/bumptech/glide/request/ResourceCallback;
    :cond_3
    goto :goto_0
.end method

.method private handleResultOnMainThread()V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v3, :cond_0

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 143
    .line 163
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Received a resource without any callbacks to notify"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;->build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 148
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    .line 152
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 153
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 155
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/ResourceCallback;

    move-object v2, v3

    .line 156
    .local v2, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 158
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 160
    :cond_2
    goto :goto_1

    .line 162
    .end local v2    # "cb":Lcom/bumptech/glide/request/ResourceCallback;
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 163
    goto :goto_0
.end method

.method private isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineJob;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 78
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-eqz v2, :cond_1

    .line 81
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Ljava/lang/Exception;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/ResourceCallback;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method cancel()V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v2, :cond_1

    .line 118
    .line 127
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->engineRunnable:Lcom/bumptech/glide/load/engine/EngineRunnable;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineRunnable;->cancel()V

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    move-object v1, v2

    .line 122
    .local v1, "currentFuture":Ljava/util/concurrent/Future;
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 123
    move-object v2, v1

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    .line 125
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    .line 127
    goto :goto_0
.end method

.method isCancelled()Z
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineJob;
    return v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Ljava/lang/Exception;

    .line 168
    sget-object v2, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    const/4 v3, 0x2

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 137
    sget-object v2, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 89
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-eqz v2, :cond_2

    .line 90
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 93
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob;->cancel()V

    goto :goto_0
.end method

.method public start(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "engineRunnable":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->engineRunnable:Lcom/bumptech/glide/load/engine/EngineRunnable;

    .line 68
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public submitForSource(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v1, p1

    .local v1, "runnable":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineJob;->sourceService:Ljava/util/concurrent/ExecutorService;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 74
    return-void
.end method
