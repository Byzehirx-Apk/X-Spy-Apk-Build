.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/EngineJob$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x1

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    if-eq v3, v4, :cond_0

    const/4 v3, 0x2

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 200
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v2, v3

    .line 201
    .local v2, "job":Lcom/bumptech/glide/load/engine/EngineJob;
    const/4 v3, 0x1

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_1

    .line 202
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/EngineJob;->access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 206
    :goto_0
    const/4 v3, 0x1

    move v0, v3

    .line 209
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
    .end local v2    # "job":Lcom/bumptech/glide/load/engine/EngineJob;
    :goto_1
    return v0

    .line 204
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
    .restart local v2    # "job":Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_1
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/EngineJob;->access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_0

    .line 209
    .end local v2    # "job":Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method
