.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x2

.field public static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 134
    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    move-object v2, v3

    .line 135
    .local v2, "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    .line 136
    const/4 v3, 0x1

    move v0, v3

    .line 141
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
    .end local v2    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :goto_0
    return v0

    .line 137
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 138
    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    move-object v2, v3

    .line 139
    .restart local v2    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 141
    .end local v2    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
