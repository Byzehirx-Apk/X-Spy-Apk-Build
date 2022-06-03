.class Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 14
    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
    return-object v0
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    :cond_0
    return-void
.end method
