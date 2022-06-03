.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    move-object v1, p1

    .local v1, "data":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v2, v1

    if-nez v2, :cond_0

    .line 16
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Data must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 19
    return-void
.end method


# virtual methods
.method public get()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->get()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    move-object v1, v3

    .line 34
    .local v1, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 35
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 37
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    move-object v2, v3

    .line 38
    .local v2, "gifDataResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 39
    move-object v3, v2

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 41
    :cond_1
    return-void
.end method
