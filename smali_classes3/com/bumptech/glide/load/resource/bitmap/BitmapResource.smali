.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v3, v1

    if-nez v3, :cond_0

    .line 33
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Bitmap must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 36
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "BitmapPool must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 40
    return-void
.end method

.method public static obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 7

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 25
    const/4 v2, 0x0

    move-object v0, v2

    .line 27
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->get()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_0
    return-void
.end method
