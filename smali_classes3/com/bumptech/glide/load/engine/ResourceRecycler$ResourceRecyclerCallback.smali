.class Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/ResourceRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceRecyclerCallback"
.end annotation


# static fields
.field public static final RECYCLE_RESOURCE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/ResourceRecycler$1;)V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/ResourceRecycler$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 36
    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/bumptech/glide/load/engine/Resource;

    move-object v2, v3

    .line 37
    .local v2, "resource":Lcom/bumptech/glide/load/engine/Resource;
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 38
    const/4 v3, 0x1

    move v0, v3

    .line 40
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    .end local v2    # "resource":Lcom/bumptech/glide/load/engine/Resource;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
