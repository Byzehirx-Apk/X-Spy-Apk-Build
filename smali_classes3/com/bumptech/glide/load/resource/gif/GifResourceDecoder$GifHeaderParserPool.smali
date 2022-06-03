.class Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifHeaderParserPool"
.end annotation


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 136
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    move-object v1, p1

    .local v1, "data":[B
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-object v2, v3

    .line 140
    .local v2, "result":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    move-object v2, v3

    .line 143
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    monitor-exit v5

    return-object v0

    .line 139
    .end local v2    # "result":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    throw v0
.end method

.method public declared-synchronized release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    move-object v1, p1

    .local v1, "parser":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    :try_start_0
    invoke-virtual {v2}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->clear()V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 149
    monitor-exit v4

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    throw v0
.end method
