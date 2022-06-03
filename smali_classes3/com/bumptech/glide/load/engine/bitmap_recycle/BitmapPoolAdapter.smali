.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
.super Ljava/lang/Object;
.source "BitmapPoolAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    return-object v0
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    return-object v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    return v0
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
    return v0
.end method

.method public setSizeMultiplier(F)V
    .locals 0
    .param p1, "sizeMultiplier"    # F

    .prologue
    .line 18
    return-void
.end method

.method public trimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 43
    return-void
.end method
