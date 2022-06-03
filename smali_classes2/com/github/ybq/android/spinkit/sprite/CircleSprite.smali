.class public Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
.super Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
.source "CircleSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "paint":Landroid/graphics/Paint;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 20
    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 21
    .local v3, "radius":I
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    .line 22
    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    move-object v8, v2

    .line 21
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    .end local v3    # "radius":I
    :cond_0
    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
    return-object v0
.end method
