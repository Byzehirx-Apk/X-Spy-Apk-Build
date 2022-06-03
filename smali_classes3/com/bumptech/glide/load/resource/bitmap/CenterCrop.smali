.class public Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    const-string/jumbo v1, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    move-object v1, p1

    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, p2

    .local v2, "toTransform":Landroid/graphics/Bitmap;
    move v3, p3

    .local v3, "outWidth":I
    move v4, p4

    .local v4, "outHeight":I
    move-object v7, v1

    move v8, v3

    move v9, v4

    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    :goto_0
    invoke-interface {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v5, v7

    .line 30
    .local v5, "toReuse":Landroid/graphics/Bitmap;
    move-object v7, v5

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v6, v7

    .line 31
    .local v6, "transformed":Landroid/graphics/Bitmap;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    move-object v8, v6

    if-eq v7, v8, :cond_0

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 32
    move-object v7, v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_0
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    return-object v0

    .line 28
    .end local v5    # "toReuse":Landroid/graphics/Bitmap;
    .end local v6    # "transformed":Landroid/graphics/Bitmap;
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    :cond_1
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
