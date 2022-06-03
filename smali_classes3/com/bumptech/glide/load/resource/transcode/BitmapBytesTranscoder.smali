.class public Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
.super Ljava/lang/Object;
.source "BitmapBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final quality:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    move-object v1, v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    move-object v1, p1

    .local v1, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    move v2, p2

    .local v2, "quality":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 25
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->quality:I

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    const-string/jumbo v1, "BitmapBytesTranscoder.com.bumptech.glide.load.resource.transcode"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    move-object v1, p1

    .local v1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    .line 31
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->quality:I

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 32
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 33
    new-instance v3, Lcom/bumptech/glide/load/resource/bytes/BytesResource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;-><init>([B)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    return-object v0
.end method
