.class public Lcom/github/ybq/android/spinkit/style/WanderingCubes;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "WanderingCubes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/WanderingCubes$Cube;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/WanderingCubes;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/WanderingCubes;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v1, v4

    .line 36
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 37
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 38
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v4

    move-object v3, v4

    .line 39
    .local v3, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v4, v3

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v1

    .line 42
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v9, 0x4

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object v9, v1

    .line 43
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x4

    div-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    .line 39
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method

.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/WanderingCubes;
    move-object v1, p1

    .local v1, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 29
    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, -0x384

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    .line 31
    :cond_0
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 9

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/WanderingCubes;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x0

    new-instance v4, Lcom/github/ybq/android/spinkit/style/WanderingCubes$Cube;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/github/ybq/android/spinkit/style/WanderingCubes$Cube;-><init>(Lcom/github/ybq/android/spinkit/style/WanderingCubes;I)V

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x1

    new-instance v4, Lcom/github/ybq/android/spinkit/style/WanderingCubes$Cube;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/github/ybq/android/spinkit/style/WanderingCubes$Cube;-><init>(Lcom/github/ybq/android/spinkit/style/WanderingCubes;I)V

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/WanderingCubes;
    return-object v0
.end method
