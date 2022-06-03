.class public Lcom/github/ybq/android/spinkit/style/FoldingCube;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "FoldingCube.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;
    }
.end annotation


# instance fields
.field private wrapContent:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/FoldingCube;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    .line 19
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/github/ybq/android/spinkit/style/FoldingCube;->wrapContent:Z

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/FoldingCube;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 76
    .local v2, "bounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 77
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    move v4, v6

    .line 78
    .local v4, "count":I
    move-object v6, v1

    const/16 v7, 0x2d

    move v8, v3

    const/16 v9, 0x5a

    mul-int/lit8 v8, v8, 0x5a

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 79
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v6

    move-object v5, v6

    .line 80
    .local v5, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 81
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "count":I
    .end local v5    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 16

    .prologue
    .line 40
    move-object/from16 v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/style/FoldingCube;
    move-object/from16 v2, p1

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v8, v1

    move-object v9, v2

    invoke-super {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 41
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v2, v8

    .line 42
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v3, v8

    .line 43
    .local v3, "size":I
    move-object v8, v1

    iget-boolean v8, v8, Lcom/github/ybq/android/spinkit/style/FoldingCube;->wrapContent:Z

    if-eqz v8, :cond_0

    .line 44
    move v8, v3

    move v9, v3

    mul-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v3, v8

    .line 47
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v4, v8

    .line 48
    .local v4, "oW":I
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v5, v8

    .line 49
    .local v5, "oH":I
    new-instance v8, Landroid/graphics/Rect;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move v11, v4

    add-int/2addr v10, v11

    move-object v11, v2

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v12, v5

    add-int/2addr v11, v12

    move-object v12, v2

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move v13, v4

    sub-int/2addr v12, v13

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v5

    sub-int/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v8

    .line 57
    .end local v4    # "oW":I
    .end local v5    # "oH":I
    :cond_0
    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move v9, v3

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 58
    .local v4, "px":I
    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move v9, v3

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 59
    .local v5, "py":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move-object v9, v1

    invoke-virtual {v9}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 60
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v8

    move-object v7, v8

    .line 61
    .local v7, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v8, v7

    move-object v9, v2

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v4

    move v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 67
    move-object v8, v7

    move-object v9, v7

    invoke-virtual {v9}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotX(F)V

    .line 68
    move-object v8, v7

    move-object v9, v7

    invoke-virtual {v9}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotY(F)V

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    .end local v7    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_1
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/FoldingCube;
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;

    move-object v1, v3

    .line 26
    .local v1, "cubes":[Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 27
    move-object v3, v1

    move v4, v2

    new-instance v5, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;-><init>(Lcom/github/ybq/android/spinkit/style/FoldingCube;)V

    aput-object v5, v3, v4

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 30
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0x12c

    move v5, v2

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 26
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0x12c

    move v5, v2

    mul-int/2addr v4, v5

    const/16 v5, 0x4b0

    add-int/lit16 v4, v4, -0x4b0

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    goto :goto_1

    .line 35
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/FoldingCube;
    return-object v0
.end method
