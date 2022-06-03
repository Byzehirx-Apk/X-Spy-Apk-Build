.class public Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
    move-object v1, p1

    .local v1, "drawable":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 16
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 26
    return-void
.end method
