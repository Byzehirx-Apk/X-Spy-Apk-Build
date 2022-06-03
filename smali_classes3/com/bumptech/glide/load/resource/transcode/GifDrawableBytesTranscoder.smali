.class public Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    const-string/jumbo v1, "GifDrawableBytesTranscoder.com.bumptech.glide.load.resource.transcode"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    move-object v1, p1

    .local v1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v2, v3

    .line 16
    .local v2, "gifData":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    new-instance v3, Lcom/bumptech/glide/load/resource/bytes/BytesResource;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;-><init>([B)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    return-object v0
.end method
