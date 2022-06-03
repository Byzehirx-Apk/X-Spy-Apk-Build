.class Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/Lifecycle;


# instance fields
.field private isDestroyed:Z

.field private isStarted:Z

.field private final lifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v1, p1

    .local v1, "listener":Lcom/bumptech/glide/manager/LifecycleListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 38
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    if-eqz v2, :cond_0

    .line 39
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/manager/LifecycleListener;->onDestroy()V

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    if-eqz v2, :cond_1

    .line 41
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    goto :goto_0

    .line 43
    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/manager/LifecycleListener;->onStop()V

    goto :goto_0
.end method

.method onDestroy()V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    .line 63
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

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

    check-cast v3, Lcom/bumptech/glide/manager/LifecycleListener;

    move-object v2, v3

    .line 64
    .local v2, "lifecycleListener":Lcom/bumptech/glide/manager/LifecycleListener;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/manager/LifecycleListener;->onDestroy()V

    .line 65
    goto :goto_0

    .line 66
    .end local v2    # "lifecycleListener":Lcom/bumptech/glide/manager/LifecycleListener;
    :cond_0
    return-void
.end method

.method onStart()V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 49
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

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

    check-cast v3, Lcom/bumptech/glide/manager/LifecycleListener;

    move-object v2, v3

    .line 50
    .local v2, "lifecycleListener":Lcom/bumptech/glide/manager/LifecycleListener;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    .line 51
    goto :goto_0

    .line 52
    .end local v2    # "lifecycleListener":Lcom/bumptech/glide/manager/LifecycleListener;
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

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

    check-cast v3, Lcom/bumptech/glide/manager/LifecycleListener;

    move-object v2, v3

    .line 57
    .local v2, "lifecycleListener":Lcom/bumptech/glide/manager/LifecycleListener;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/manager/LifecycleListener;->onStop()V

    .line 58
    goto :goto_0

    .line 59
    .end local v2    # "lifecycleListener":Lcom/bumptech/glide/manager/LifecycleListener;
    :cond_0
    return-void
.end method
