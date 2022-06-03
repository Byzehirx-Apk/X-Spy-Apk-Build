.class public Lcom/github/ybq/android/spinkit/style/CubeGrid;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "CubeGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/CubeGrid;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 16

    .prologue
    .line 33
    move-object/from16 v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/CubeGrid;
    move-object/from16 v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v10, v0

    move-object v11, v1

    invoke-super {v10, v11}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 34
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/github/ybq/android/spinkit/style/CubeGrid;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    move-object v1, v10

    .line 35
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v2, v10

    .line 36
    .local v2, "width":I
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v3, v10

    .line 37
    .local v3, "height":I
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_0
    move v10, v4

    move-object v11, v0

    invoke-virtual {v11}, Lcom/github/ybq/android/spinkit/style/CubeGrid;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 38
    move v10, v4

    const/4 v11, 0x3

    rem-int/lit8 v10, v10, 0x3

    move v5, v10

    .line 39
    .local v5, "x":I
    move v10, v4

    const/4 v11, 0x3

    div-int/lit8 v10, v10, 0x3

    move v6, v10

    .line 40
    .local v6, "y":I
    move-object v10, v1

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move v11, v5

    move v12, v2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    move v7, v10

    .line 41
    .local v7, "l":I
    move-object v10, v1

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v6

    move v12, v3

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    move v8, v10

    .line 42
    .local v8, "t":I
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Lcom/github/ybq/android/spinkit/style/CubeGrid;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v10

    move-object v9, v10

    .line 43
    .local v9, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v10, v9

    move v11, v7

    move v12, v8

    move v13, v7

    move v14, v2

    add-int/2addr v13, v14

    move v14, v8

    move v15, v3

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "l":I
    .end local v8    # "t":I
    .end local v9    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 11

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/CubeGrid;
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    move-object v1, v4

    .line 23
    .local v1, "delays":[I
    const/16 v4, 0x9

    new-array v4, v4, [Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;

    move-object v2, v4

    .line 24
    .local v2, "gridItems":[Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 25
    move-object v4, v2

    move v5, v3

    new-instance v6, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;-><init>(Lcom/github/ybq/android/spinkit/style/CubeGrid;Lcom/github/ybq/android/spinkit/style/CubeGrid$1;)V

    aput-object v6, v4, v5

    .line 26
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v4

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/CubeGrid;
    return-object v0

    .line 18
    nop

    :array_0
    .array-data 4
        0xc8
        0x12c
        0x190
        0x64
        0xc8
        0x12c
        0x0
        0x64
        0xc8
    .end array-data
.end method
