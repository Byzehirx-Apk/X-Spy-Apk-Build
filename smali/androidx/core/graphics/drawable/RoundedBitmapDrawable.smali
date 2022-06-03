.class public abstract Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x3


# instance fields
.field private mApplyGravity:Z

.field final mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mCornerRadius:F

.field final mDstRect:Landroid/graphics/Rect;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private mGravity:I

.field private mIsCircular:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    move-object v3, v0

    const/16 v4, 0xa0

    iput v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 51
    move-object v3, v0

    const/16 v4, 0x77

    iput v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 52
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 54
    move-object v3, v0

    new-instance v4, Landroid/graphics/Matrix;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 57
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 58
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    .line 60
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 383
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 384
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 387
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 388
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 389
    move-object v3, v0

    invoke-direct {v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 390
    move-object v3, v0

    new-instance v4, Landroid/graphics/BitmapShader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_1
    move-object v3, v0

    move-object v4, v0

    const/4 v5, -0x1

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    iput v6, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    iput v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 393
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v2

    iput v2, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 85
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v2

    iput v2, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    .line 86
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 3

    .prologue
    .line 398
    move v0, p0

    .local v0, "toCompare":F
    move v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "toCompare":F
    return v0

    .restart local v0    # "toCompare":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCircularCornerRadius()V
    .locals 5

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 316
    .local v1, "minCircularSize":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 317
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move-object v2, v3

    .line 261
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 262
    .line 271
    :goto_0
    return-void

    .line 265
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateDstRect()V

    .line 266
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-nez v3, :cond_1

    .line 267
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 271
    :goto_1
    goto :goto_0

    .line 269
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    move-object v6, v0

    iget v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return-object v0
.end method

.method public getCornerRadius()F
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    const/16 v3, 0x77

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v2, :cond_1

    .line 372
    :cond_0
    const/4 v2, -0x3

    move v0, v2

    .line 378
    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_0
    return v0

    .line 374
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 375
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 376
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 377
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_2

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 378
    invoke-static {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, -0x3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return-object v0
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "gravity":I
    move v2, p2

    .local v2, "bitmapWidth":I
    move v3, p3

    .local v3, "bitmapHeight":I
    move-object v4, p4

    .local v4, "bounds":Landroid/graphics/Rect;
    move-object v5, p5

    .local v5, "outRect":Landroid/graphics/Rect;
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method

.method public hasAntiAlias()Z
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method public hasMipMap()Z
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isCircular()Z
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 346
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v2, :cond_0

    .line 347
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    .line 349
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 350
    return-void
.end method

.method public setAlpha(I)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    move v2, v3

    .line 276
    .local v2, "oldAlpha":I
    move v3, v1

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 277
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 280
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "aa":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 196
    return-void
.end method

.method public setCircular(Z)V
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "circular":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 304
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 305
    move v2, v1

    if-eqz v2, :cond_0

    .line 306
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    .line 307
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v2

    .line 308
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, p1

    .local v1, "cf":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 290
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 291
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "cornerRadius":F
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 341
    :goto_0
    return-void

    .line 332
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 333
    move v2, v1

    invoke-static {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v2

    .line 339
    :goto_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 340
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 341
    goto :goto_0

    .line 336
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v2

    goto :goto_1
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "dither":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 218
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 219
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "filter":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 212
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 213
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 152
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 153
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 156
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "mipMap":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setTargetDensity(I)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move v1, p1

    .local v1, "density":I
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 124
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_2

    const/16 v3, 0xa0

    :goto_0
    iput v3, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 125
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 128
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 130
    :cond_1
    return-void

    .line 124
    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 100
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 4
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v1, p1

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 112
    return-void
.end method

.method updateDstRect()V
    .locals 11

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    if-eqz v5, :cond_1

    .line 228
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v5, :cond_2

    .line 229
    move-object v5, v0

    iget v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    move-object v6, v0

    iget v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v5

    .line 230
    .local v1, "minDimen":I
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    move v7, v1

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual/range {v5 .. v10}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 234
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v5

    .line 235
    .local v2, "minDrawDimen":I
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 236
    .local v3, "insetX":I
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 237
    .local v4, "insetY":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 238
    move-object v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    move v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iput v6, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 239
    .line 242
    .end local v1    # "minDimen":I
    .end local v2    # "minDrawDimen":I
    .end local v3    # "insetX":I
    .end local v4    # "insetY":I
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 244
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_0

    .line 246
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 247
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    .line 248
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    .line 249
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 247
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v5

    .line 250
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 251
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v5

    .line 254
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 256
    :cond_1
    return-void

    .line 240
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    move-object v7, v0

    iget v7, v7, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    move-object v8, v0

    iget v8, v8, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual/range {v5 .. v10}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
