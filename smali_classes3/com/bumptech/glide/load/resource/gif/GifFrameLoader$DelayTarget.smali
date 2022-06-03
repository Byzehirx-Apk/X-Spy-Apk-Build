.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final index:I

.field private resource:Landroid/graphics/Bitmap;

.field private final targetTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 9

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v1, p1

    .local v1, "handler":Landroid/os/Handler;
    move v2, p2

    .local v2, "index":I
    move-wide v3, p3

    .local v3, "targetTime":J
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 153
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    .line 154
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    .line 155
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    return v0
.end method


# virtual methods
.method public getResource()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    return-object v0
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v1, p1

    .local v1, "resource":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    .line 165
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object v3, v4

    .line 166
    .local v3, "msg":Landroid/os/Message;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    move-object v5, v3

    move-object v6, v0

    iget-wide v6, v6, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v4

    .line 167
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/request/animation/GlideAnimation;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
