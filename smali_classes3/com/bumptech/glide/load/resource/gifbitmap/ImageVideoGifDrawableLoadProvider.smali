.class public Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    move-object v1, p1

    .local v1, "bitmapProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "gifProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, p3

    .local v3, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v5, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-interface {v7}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v8}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v8

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v4, v5

    .line 36
    .local v4, "decoder":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v5, v0

    new-instance v6, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 37
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 38
    move-object v5, v0

    new-instance v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-interface {v8}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v8

    move-object v9, v2

    invoke-interface {v9}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;-><init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 41
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v6

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 42
    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
    return-object v0
.end method
