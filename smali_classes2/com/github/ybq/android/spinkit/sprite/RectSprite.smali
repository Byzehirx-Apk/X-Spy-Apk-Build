.class public Lcom/github/ybq/android/spinkit/sprite/RectSprite;
.super Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
.source "RectSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/RectSprite;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/RectSprite;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "paint":Landroid/graphics/Paint;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 19
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/RectSprite;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/RectSprite;
    return-object v0
.end method
