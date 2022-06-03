.class public Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final destRect:Landroid/graphics/Rect;

.field private height:I

.field private mutated:Z

.field private state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 9

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .locals 9

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "state":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 20
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    .line 32
    move-object v5, v2

    if-nez v5, :cond_0

    .line 33
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "BitmapState must not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36
    :cond_0
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 38
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 39
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    move v4, v5

    .line 40
    .local v4, "density":I
    move v5, v4

    if-nez v5, :cond_1

    const/16 v5, 0xa0

    :goto_0
    move v3, v5

    .line 41
    .local v3, "targetDensity":I
    move-object v5, v2

    move v6, v3

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 42
    .line 45
    .end local v4    # "density":I
    :goto_1
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v6

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    .line 46
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v6

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    .line 47
    return-void

    .line 40
    .end local v3    # "targetDensity":I
    .restart local v4    # "density":I
    :cond_1
    move v5, v4

    goto :goto_0

    .line 43
    .end local v4    # "density":I
    :cond_2
    move-object v5, v2

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    move v3, v5

    .restart local v3    # "targetDensity":I
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    if-eqz v2, :cond_0

    .line 98
    const/16 v2, 0x77

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    invoke-static {v2, v3, v4, v5, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 99
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 101
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 122
    .local v1, "bm":Landroid/graphics/Bitmap;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, -0x3

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isAnimated()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 129
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 130
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    .line 132
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 88
    return-void
.end method

.method public setAlpha(I)V
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    move v2, v3

    .line 107
    .local v2, "currentAlpha":I
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->setAlpha(I)V

    .line 109
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    .line 111
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public setLoopCount(I)V
    .locals 0
    .param p1, "loopCount"    # I

    .prologue
    .line 67
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
