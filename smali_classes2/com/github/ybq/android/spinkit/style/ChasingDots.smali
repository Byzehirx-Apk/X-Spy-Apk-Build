.class public Lcom/github/ybq/android/spinkit/style/ChasingDots;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "ChasingDots.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/ChasingDots$Dot;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 49
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/ChasingDots;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object v1, v3

    .line 50
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 51
    .local v2, "drawW":I
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/ChasingDots;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move v8, v2

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 57
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/ChasingDots;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v6, v2

    sub-int/2addr v5, v6

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 63
    return-void
.end method

.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    move-object v1, p1

    .local v1, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 30
    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, -0x3e8

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 39
    .local v2, "fractions":[F
    new-instance v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;-><init>(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    move-object v4, v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/16 v8, 0x168

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->rotate([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    .line 41
    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 42
    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 39
    move-object v1, v3

    .end local v1    # "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    return-object v1

    .line 38
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x0

    new-instance v4, Lcom/github/ybq/android/spinkit/style/ChasingDots$Dot;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/ChasingDots$Dot;-><init>(Lcom/github/ybq/android/spinkit/style/ChasingDots;)V

    aput-object v4, v2, v3

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x1

    new-instance v4, Lcom/github/ybq/android/spinkit/style/ChasingDots$Dot;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/ChasingDots$Dot;-><init>(Lcom/github/ybq/android/spinkit/style/ChasingDots;)V

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/ChasingDots;
    return-object v0
.end method
