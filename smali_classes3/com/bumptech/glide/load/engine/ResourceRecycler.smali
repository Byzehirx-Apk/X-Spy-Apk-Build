.class Lcom/bumptech/glide/load/engine/ResourceRecycler;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ResourceRecycler$1;,
        Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isRecycling:Z


# direct methods
.method constructor <init>()V
    .locals 9

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ResourceRecycler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>(Lcom/bumptech/glide/load/engine/ResourceRecycler$1;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method public recycle(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ResourceRecycler;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 19
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    if-eqz v2, :cond_0

    .line 22
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 25
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 26
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    goto :goto_0
.end method
