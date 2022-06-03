.class public Lcom/github/ybq/android/spinkit/style/ThreeBounce;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "ThreeBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ThreeBounce;
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

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ThreeBounce;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 35
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    move-object v1, v7

    .line 36
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/16 v8, 0x8

    div-int/lit8 v7, v7, 0x8

    move v2, v7

    .line 37
    .local v2, "radius":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    move v8, v2

    sub-int/2addr v7, v8

    move v3, v7

    .line 38
    .local v3, "top":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    move v8, v2

    add-int/2addr v7, v8

    move v4, v7

    .line 40
    .local v4, "bottom":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 41
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move v8, v5

    mul-int/2addr v7, v8

    const/4 v8, 0x3

    div-int/lit8 v7, v7, 0x3

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    move v6, v7

    .line 43
    .local v6, "left":I
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v7

    move v8, v6

    move v9, v3

    move v10, v6

    move v11, v2

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 40
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    .end local v6    # "left":I
    :cond_0
    return-void
.end method

.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ThreeBounce;
    move-object v1, p1

    .local v1, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 28
    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    .line 29
    move-object v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x140

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    .line 30
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ThreeBounce;
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x0

    new-instance v4, Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/ThreeBounce;)V

    aput-object v4, v2, v3

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x1

    new-instance v4, Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/ThreeBounce;)V

    aput-object v4, v2, v3

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/ThreeBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/ThreeBounce;)V

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/ThreeBounce;
    return-object v0
.end method
