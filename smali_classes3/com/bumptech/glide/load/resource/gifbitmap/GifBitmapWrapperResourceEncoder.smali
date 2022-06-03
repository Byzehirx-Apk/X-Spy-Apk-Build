.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    move-object v1, p1

    .local v1, "bitmapEncoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "gifEncoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 23
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 24
    return-void
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    move-object v5, v1

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v3, v5

    .line 29
    .local v3, "gifBitmap":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v5

    move-object v4, v5

    .line 31
    .local v4, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 32
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    move-object v6, v4

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v5

    move v0, v5

    .line 34
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    move-object v6, v3

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/engine/Resource;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    .line 43
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    return-object v0
.end method
