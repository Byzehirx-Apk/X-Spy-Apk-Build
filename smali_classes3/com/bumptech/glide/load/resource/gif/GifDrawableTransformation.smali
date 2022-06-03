.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final wrapped:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    move-object v1, p1

    .local v1, "wrapped":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 20
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    move-object/from16 v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move/from16 v2, p2

    .local v2, "outWidth":I
    move/from16 v3, p3

    .local v3, "outHeight":I
    move-object v9, v1

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v4, v9

    .line 31
    .local v4, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v9, v1

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 32
    .local v5, "firstFrame":Landroid/graphics/Bitmap;
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v5

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v10, v11, v12}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v6, v9

    .line 33
    .local v6, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    move-object v10, v6

    move v11, v2

    move v12, v3

    invoke-interface {v9, v10, v11, v12}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v9

    move-object v7, v9

    .line 34
    .local v7, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v9, v7

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v8, v9

    .line 35
    .local v8, "transformedFrame":Landroid/graphics/Bitmap;
    move-object v9, v8

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 36
    new-instance v9, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    new-instance v11, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v4

    move-object v14, v8

    move-object v15, v0

    iget-object v15, v15, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-direct {v12, v13, v14, v15}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V

    invoke-direct {v10, v11}, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    move-object v0, v9

    .line 38
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    :cond_0
    move-object v9, v1

    move-object v0, v9

    goto :goto_0
.end method
