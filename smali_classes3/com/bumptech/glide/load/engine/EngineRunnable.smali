.class Lcom/bumptech/glide/load/engine/EngineRunnable;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/bumptech/glide/load/engine/executor/Prioritized;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;,
        Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineRunnable"


# instance fields
.field private final decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<***>;"
        }
    .end annotation
.end field

.field private volatile isCancelled:Z

.field private final manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

.field private final priority:Lcom/bumptech/glide/Priority;

.field private stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<***>;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, p1

    .local v1, "manager":Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
    move-object v2, p2

    .local v2, "decodeJob":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<***>;"
    move-object v3, p3

    .local v3, "priority":Lcom/bumptech/glide/Priority;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    .line 39
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 40
    move-object v4, v0

    sget-object v5, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/EngineRunnable;->stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 41
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/EngineRunnable;->priority:Lcom/bumptech/glide/Priority;

    .line 42
    return-void
.end method

.method private decode()Lcom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineRunnable;->isDecodingFromCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeFromCache()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    move-object v0, v1

    .line 106
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private decodeFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    const/4 v3, 0x0

    move-object v1, v3

    .line 113
    .local v1, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeResultFromCache()Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 118
    .line 120
    :cond_0
    :goto_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeSourceFromCache()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    move-object v1, v3

    .line 123
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    return-object v0

    .line 114
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EngineRunnable"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const-string/jumbo v3, "EngineRunnable"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception decoding result from cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    return-object v0
.end method

.method private isDecodingFromCache()Z
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineRunnable;->stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onLoadComplete(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 91
    return-void
.end method

.method private onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/EngineRunnable;->isDecodingFromCache()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    sget-object v3, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/EngineRunnable;->stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->submitForSource(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->onException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    .line 46
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->cancel()V

    .line 47
    return-void
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineRunnable;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {v1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    if-eqz v4, :cond_0

    .line 52
    .line 83
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    .line 56
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v4, 0x0

    move-object v2, v4

    .line 58
    .local v2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/bumptech/glide/load/engine/EngineRunnable;->decode()Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v2, v4

    .line 69
    .line 71
    :goto_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    if-eqz v4, :cond_4

    .line 72
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 73
    move-object v4, v2

    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 75
    :cond_1
    goto :goto_0

    .line 59
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 60
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v4, "EngineRunnable"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    const-string/jumbo v4, "EngineRunnable"

    const-string/jumbo v5, "Out Of Memory Error decoding"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 63
    :cond_2
    new-instance v4, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;-><init>(Ljava/lang/Error;)V

    move-object v1, v4

    .line 69
    goto :goto_1

    .line 64
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EngineRunnable"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    const-string/jumbo v4, "EngineRunnable"

    const-string/jumbo v5, "Exception decoding"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 68
    :cond_3
    move-object v4, v3

    move-object v1, v4

    goto :goto_1

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v4, v2

    if-nez v4, :cond_5

    .line 79
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/EngineRunnable;->onLoadFailed(Ljava/lang/Exception;)V

    .line 83
    :goto_2
    goto :goto_0

    .line 81
    :cond_5
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/EngineRunnable;->onLoadComplete(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_2
.end method
