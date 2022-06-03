.class public abstract Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
.super Lcom/github/ybq/android/spinkit/sprite/Sprite;
.source "ShapeSprite.java"


# instance fields
.field private mBaseColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mUseColor:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;-><init>()V

    .line 18
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->setColor(I)V

    .line 19
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    .line 20
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    move-object v2, v0

    iget v2, v2, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    return-void
.end method

.method private updateUseColor()V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->getAlpha()I

    move-result v4

    move v1, v4

    .line 48
    .local v1, "alpha":I
    move v4, v1

    move v5, v1

    const/4 v6, 0x7

    shr-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    move v1, v4

    .line 49
    move-object v4, v0

    iget v4, v4, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    const/16 v5, 0x18

    ushr-int/lit8 v4, v4, 0x18

    move v2, v4

    .line 50
    .local v2, "baseAlpha":I
    move v4, v2

    move v5, v1

    mul-int/2addr v4, v5

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v3, v4

    .line 51
    .local v3, "useAlpha":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    ushr-int/lit8 v5, v5, 0x8

    move v6, v3

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    .line 52
    return-void
.end method


# virtual methods
.method protected final drawSelf(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 63
    return-void
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    return v0
.end method

.method public getUseColor()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAlpha(I)V

    .line 43
    move-object v2, v0

    invoke-direct {v2}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->updateUseColor()V

    .line 44
    return-void
.end method

.method public setColor(I)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    .line 27
    move-object v2, v0

    invoke-direct {v2}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->updateUseColor()V

    .line 28
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 57
    return-void
.end method
