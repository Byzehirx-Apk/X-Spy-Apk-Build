.class public abstract Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.super Ljava/lang/Object;
.source "BitmapTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    move-object/from16 v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move/from16 v2, p2

    .local v2, "outWidth":I
    move/from16 v3, p3

    .local v3, "outHeight":I
    move v9, v2

    move v10, v3

    invoke-static {v9, v10}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 48
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot apply transformation on width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " or height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 51
    :cond_0
    move-object v9, v1

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v4, v9

    .line 52
    .local v4, "toTransform":Landroid/graphics/Bitmap;
    move v9, v2

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    :goto_0
    move v5, v9

    .line 53
    .local v5, "targetWidth":I
    move v9, v3

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    :goto_1
    move v6, v9

    .line 54
    .local v6, "targetHeight":I
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v7, v9

    .line 57
    .local v7, "transformed":Landroid/graphics/Bitmap;
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 58
    move-object v9, v1

    move-object v8, v9

    .line 63
    .local v8, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    :goto_2
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    return-object v0

    .line 52
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v7    # "transformed":Landroid/graphics/Bitmap;
    .end local v8    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    :cond_1
    move v9, v2

    goto :goto_0

    .line 53
    .restart local v5    # "targetWidth":I
    :cond_2
    move v9, v3

    goto :goto_1

    .line 60
    .restart local v6    # "targetHeight":I
    .restart local v7    # "transformed":Landroid/graphics/Bitmap;
    :cond_3
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v9, v10}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v9

    move-object v8, v9

    .restart local v8    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    goto :goto_2
.end method
