.class public Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
.super Ljava/lang/Object;
.source "ImageVideoBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageVideoDecoder"


# instance fields
.field private final fileDescriptorDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    move-object v1, p1

    .local v1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "fileDescriptorDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 28
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->fileDescriptorDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 29
    return-void
.end method


# virtual methods
.method public decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    move-object v1, p1

    .local v1, "source":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 36
    .local v4, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v7, v1

    invoke-virtual {v7}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v5, v7

    .line 37
    .local v5, "is":Ljava/io/InputStream;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 39
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v8, v5

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    .line 44
    .line 47
    :cond_0
    :goto_0
    move-object v7, v4

    if-nez v7, :cond_1

    .line 48
    move-object v7, v1

    invoke-virtual {v7}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    move-object v6, v7

    .line 49
    .local v6, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 50
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->fileDescriptorDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v8, v6

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v7

    move-object v4, v7

    .line 53
    .end local v6    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_1
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    return-object v0

    .line 40
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 41
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageVideoDecoder"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    const-string/jumbo v7, "ImageVideoDecoder"

    const-string/jumbo v8, "Failed to load image from stream, trying FileDescriptor"

    move-object v9, v6

    invoke-static {v7, v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    const-string/jumbo v1, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
    return-object v0
.end method
