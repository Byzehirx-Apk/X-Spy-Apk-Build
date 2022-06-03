.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/BitmapCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 49
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    move v0, v1

    .line 51
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 29
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v1

    move v0, v1

    .line 31
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v1, p1

    .local v1, "hasMipMap":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 36
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 38
    :cond_0
    return-void
.end method
