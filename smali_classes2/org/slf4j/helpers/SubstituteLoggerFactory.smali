.class public Lorg/slf4j/helpers/SubstituteLoggerFactory;
.super Ljava/lang/Object;
.source "SubstituteLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            ">;"
        }
    .end annotation
.end field

.field postInitialization:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 49
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 78
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 79
    return-void
.end method

.method public getEventQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    return-object v0
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v8, p0

    monitor-enter v8

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/slf4j/helpers/SubstituteLogger;

    move-object v2, v3

    .line 53
    .local v2, "logger":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Lorg/slf4j/helpers/SubstituteLogger;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v7, v0

    iget-boolean v7, v7, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    invoke-direct {v4, v5, v6, v7}, Lorg/slf4j/helpers/SubstituteLogger;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    move-object v2, v3

    .line 55
    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 57
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    monitor-exit v8

    return-object v0

    .line 52
    .end local v2    # "logger":Lorg/slf4j/helpers/SubstituteLogger;
    .restart local v0    # "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    throw v0
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    return-object v0
.end method

.method public getLoggers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    return-object v0
.end method

.method public postInitialization()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLoggerFactory;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    .line 74
    return-void
.end method
