.class Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifDecoderPool"
.end annotation


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 8

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    move-object v1, p1

    .local v1, "bitmapProvider":Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->pool:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v2, v3

    .line 122
    .local v2, "result":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 123
    new-instance v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 125
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    monitor-exit v6

    return-object v0

    .line 121
    .end local v2    # "result":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    throw v0
.end method

.method public declared-synchronized release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    :try_start_0
    invoke-virtual {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->clear()V

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->pool:Ljava/util/Queue;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 131
    monitor-exit v4

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    throw v0
.end method
