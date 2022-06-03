.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
.super Ljava/lang/Object;
.source "GifBitmapWrapperTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapTransformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final gifDataTransformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/Transformation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    move-object v1, p1

    .local v1, "bitmapTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "gifDataTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 26
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->gifDataTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, p2

    .local v2, "bitmapTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v3, v0

    move-object v4, v2

    new-instance v5, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/Transformation;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    move v2, p2

    .local v2, "outWidth":I
    move/from16 v3, p3

    .local v3, "outHeight":I
    move-object v8, v1

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v8}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v8

    move-object v4, v8

    .line 32
    .local v4, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v8, v1

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v8}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v8

    move-object v5, v8

    .line 33
    .local v5, "gifResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v8, :cond_1

    .line 34
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lcom/bumptech/glide/load/Transformation;

    move-object v9, v4

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v8

    move-object v6, v8

    .line 35
    .local v6, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 36
    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    move-object v11, v1

    invoke-interface {v11}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v11}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    move-object v7, v8

    .line 37
    .local v7, "gifBitmap":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    move-object v0, v8

    .line 46
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .end local v6    # "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    .end local v7    # "gifBitmap":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :goto_0
    return-object v0

    .line 39
    .line 46
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    :cond_0
    move-object v8, v1

    move-object v0, v8

    goto :goto_0

    .line 39
    :cond_1
    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->gifDataTransformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v8, :cond_0

    .line 40
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->gifDataTransformation:Lcom/bumptech/glide/load/Transformation;

    move-object v9, v5

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v8

    move-object v6, v8

    .line 41
    .local v6, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 42
    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-interface {v10}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v10

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    move-object v7, v8

    .line 43
    .restart local v7    # "gifBitmap":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    move-object v0, v8

    goto :goto_0
.end method
