.class Lcom/bumptech/glide/load/engine/EngineResource;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private acquired:I

.field private final isCacheable:Z

.field private isRecycled:Z

.field private key:Lcom/bumptech/glide/load/Key;

.field private listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Resource;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, p1

    .local v1, "toWrap":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    move v2, p2

    .local v2, "isCacheable":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v3, v1

    if-nez v3, :cond_0

    .line 27
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Wrapped resource must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 30
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    .line 31
    return-void
.end method


# virtual methods
.method acquire()V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Cannot acquire a recycled resource"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Must call acquire on the main thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    .line 81
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    return v0
.end method

.method isCacheable()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    return v0
.end method

.method public recycle()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-lez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    .line 61
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 62
    return-void
.end method

.method release()V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-gtz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Must call release on the main thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-nez v1, :cond_2

    .line 100
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineResource;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineResource;->key:Lcom/bumptech/glide/load/Key;

    move-object v3, v0

    invoke-interface {v1, v2, v3}, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 102
    :cond_2
    return-void
.end method

.method setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "listener":Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/EngineResource;->key:Lcom/bumptech/glide/load/Key;

    .line 35
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/EngineResource;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 36
    return-void
.end method
