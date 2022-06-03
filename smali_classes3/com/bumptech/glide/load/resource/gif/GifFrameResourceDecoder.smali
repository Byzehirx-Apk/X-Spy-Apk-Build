.class Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 16
    return-void
.end method


# virtual methods
.method public decode(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    move-object v1, p1

    .local v1, "source":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v5, v1

    invoke-virtual {v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 21
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->decode(Lcom/bumptech/glide/gifdecoder/GifDecoder;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    const-string/jumbo v1, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    return-object v0
.end method
