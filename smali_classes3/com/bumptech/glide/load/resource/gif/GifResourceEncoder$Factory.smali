.class Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 6

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    move-object v1, p1

    .local v1, "bitmapProvider":Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    new-instance v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    return-object v0
.end method

.method public buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    new-instance v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    return-object v0
.end method

.method public buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    return-object v0
.end method

.method public buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    new-instance v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    return-object v0
.end method
