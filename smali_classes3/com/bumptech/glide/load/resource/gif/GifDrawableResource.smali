.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    move-object v1, p1

    .local v1, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 3

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v1

    array-length v1, v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 22
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->recycle()V

    .line 23
    return-void
.end method
