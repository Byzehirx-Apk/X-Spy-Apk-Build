.class public abstract Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "CircleLayoutContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 14
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v5

    move-object v3, v5

    .line 15
    .local v3, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    move v4, v5

    .line 16
    .local v4, "count":I
    move-object v5, v1

    move v6, v2

    const/16 v7, 0x168

    mul-int/lit16 v6, v6, 0x168

    move-object v7, v0

    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v7

    div-int/2addr v6, v7

    int-to-float v6, v6

    move-object v7, v0

    .line 17
    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    .line 18
    invoke-virtual {v8}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    .line 16
    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 20
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .end local v3    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .end local v4    # "count":I
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 15

    .prologue
    .line 26
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
    move-object/from16 v2, p1

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v8, v1

    move-object v9, v2

    invoke-super {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 27
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v2, v8

    .line 28
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x400cccccc0000000L    # 3.5999999046325684

    div-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v8, v8

    move v3, v8

    .line 29
    .local v3, "radius":I
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    move v9, v3

    sub-int/2addr v8, v9

    move v4, v8

    .line 30
    .local v4, "left":I
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    move v9, v3

    add-int/2addr v8, v9

    move v5, v8

    .line 31
    .local v5, "right":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move-object v9, v1

    invoke-virtual {v9}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 32
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v8

    move-object v7, v8

    .line 33
    .local v7, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v8, v7

    move v9, v4

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v5

    move-object v12, v2

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v3

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 31
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 35
    .end local v7    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method
