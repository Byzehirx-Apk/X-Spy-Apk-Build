.class public Lcom/github/ybq/android/spinkit/style/Wave;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "Wave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Wave;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Wave;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 35
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/style/Wave;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v1, v8

    .line 36
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/github/ybq/android/spinkit/style/Wave;->getChildCount()I

    move-result v9

    div-int/2addr v8, v9

    move v2, v8

    .line 37
    .local v2, "rw":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    const/4 v9, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    move v3, v8

    .line 38
    .local v3, "width":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Lcom/github/ybq/android/spinkit/style/Wave;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 39
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/github/ybq/android/spinkit/style/Wave;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v8

    move-object v5, v8

    .line 40
    .local v5, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move v9, v4

    move v10, v2

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    move v9, v2

    const/4 v10, 0x5

    div-int/lit8 v9, v9, 0x5

    add-int/2addr v8, v9

    move v6, v8

    .line 41
    .local v6, "l":I
    move v8, v6

    move v9, v3

    add-int/2addr v8, v9

    move v7, v8

    .line 42
    .local v7, "r":I
    move-object v8, v5

    move v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v7

    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    .end local v5    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .end local v6    # "l":I
    .end local v7    # "r":I
    :cond_0
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 9

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Wave;
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;

    move-object v1, v3

    .line 20
    .local v1, "waveItems":[Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 21
    move-object v3, v1

    move v4, v2

    new-instance v5, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;-><init>(Lcom/github/ybq/android/spinkit/style/Wave;)V

    aput-object v5, v3, v4

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 23
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0x258

    move v5, v2

    const/16 v6, 0x64

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 20
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, -0x4b0

    move v5, v2

    const/16 v6, 0x64

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    goto :goto_1

    .line 29
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/Wave;
    return-object v0
.end method
