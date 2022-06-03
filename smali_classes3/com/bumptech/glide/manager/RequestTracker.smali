.class public Lcom/bumptech/glide/manager/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private isPaused:Z

.field private final pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    .line 26
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    return-void
.end method

.method public clearRequests()V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/Request;

    move-object v2, v3

    .line 94
    .local v2, "request":Lcom/bumptech/glide/request/Request;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 95
    goto :goto_0

    .line 96
    .end local v2    # "request":Lcom/bumptech/glide/request/Request;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 97
    return-void
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestTracker;
    return v0
.end method

.method public pauseRequests()V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 68
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/Request;

    move-object v2, v3

    .line 69
    .local v2, "request":Lcom/bumptech/glide/request/Request;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 73
    :cond_0
    goto :goto_0

    .line 74
    .end local v2    # "request":Lcom/bumptech/glide/request/Request;
    :cond_1
    return-void
.end method

.method public removeRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 54
    return-void
.end method

.method public restartRequests()V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/Request;

    move-object v2, v3

    .line 104
    .local v2, "request":Lcom/bumptech/glide/request/Request;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 107
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v3, :cond_1

    .line 108
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 113
    :cond_0
    :goto_1
    goto :goto_0

    .line 110
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 114
    .end local v2    # "request":Lcom/bumptech/glide/request/Request;
    :cond_2
    return-void
.end method

.method public resumeRequests()V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 81
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/Request;

    move-object v2, v3

    .line 82
    .local v2, "request":Lcom/bumptech/glide/request/Request;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 85
    :cond_0
    goto :goto_0

    .line 86
    .end local v2    # "request":Lcom/bumptech/glide/request/Request;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public runRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 36
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v2, :cond_0

    .line 37
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
