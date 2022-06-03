.class Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BufferedStreamFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "buffer":[B
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    return-object v0
.end method
