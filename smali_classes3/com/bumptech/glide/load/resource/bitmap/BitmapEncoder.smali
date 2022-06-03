.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSION_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private quality:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x5a

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    move-object v1, p1

    .local v1, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    move v2, p2

    .local v2, "quality":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 37
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    .line 38
    return-void
.end method

.method private getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v2, :cond_0

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v2

    .line 65
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    :goto_0
    return-object v0

    .line 62
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v2

    goto :goto_0

    .line 65
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 42
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    move-object v2, p1

    .local v2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v3, p2

    .local v3, "os":Ljava/io/OutputStream;
    move-object v8, v2

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    move-object v4, v8

    .line 44
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v8

    move-wide v5, v8

    .line 45
    .local v5, "start":J
    move-object v8, v1

    move-object v9, v4

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    move-object v7, v8

    .line 46
    .local v7, "format":Landroid/graphics/Bitmap$CompressFormat;
    move-object v8, v4

    move-object v9, v7

    move-object v10, v1

    iget v10, v10, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    .line 47
    const-string/jumbo v8, "BitmapEncoder"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 48
    const-string/jumbo v8, "BitmapEncoder"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Compressed with type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-static {v10}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v5

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 51
    :cond_0
    const/4 v8, 0x1

    move v1, v8

    .end local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    return v1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/engine/Resource;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    const-string/jumbo v1, "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    return-object v0
.end method
