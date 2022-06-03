.class Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefQueueIdleHandler"
.end annotation


# instance fields
.field private final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;
    move-object v1, p1

    .local v1, "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;"
    move-object v2, p2

    .local v2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 351
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->activeResources:Ljava/util/Map;

    .line 352
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 353
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    move-object v1, v2

    .line 358
    .local v1, "ref":Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 359
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->activeResources:Ljava/util/Map;

    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->access$000(Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;)Lcom/bumptech/glide/load/Key;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 362
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;
    return v0
.end method
