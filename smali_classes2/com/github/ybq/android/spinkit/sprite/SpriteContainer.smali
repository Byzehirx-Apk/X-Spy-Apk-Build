.class public abstract Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.super Lcom/github/ybq/android/spinkit/sprite/Sprite;
.source "SpriteContainer.java"


# instance fields
.field private color:I

.field private sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;-><init>()V

    .line 19
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    iput-object v2, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 20
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->initCallBack()V

    .line 21
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 22
    return-void
.end method

.method private initCallBack()V
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v5, v0

    iget-object v5, v5, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v5, :cond_0

    .line 26
    move-object v5, v0

    iget-object v5, v5, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 27
    .local v4, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .end local v4    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->drawChild(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v7, v0

    iget-object v7, v7, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v7, :cond_0

    .line 65
    move-object v7, v0

    iget-object v7, v7, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 66
    .local v5, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v6, v7

    .line 67
    .local v6, "count":I
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 68
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .end local v6    # "count":I
    :cond_0
    return-void
.end method

.method protected drawSelf(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    return-void
.end method

.method public getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    return-object v0

    .restart local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move v3, v1

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    return v0

    .restart local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    array-length v1, v1

    goto :goto_0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, v0

    iget v1, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->color:I

    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isRunning([Lcom/github/ybq/android/spinkit/sprite/Sprite;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    return v0

    .restart local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    move-object v6, v0

    iget-object v6, v6, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 81
    .local v5, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v5    # "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    :cond_0
    return-void
.end method

.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 0
    .param p1, "sprites"    # [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .prologue
    .line 34
    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    return-object v0
.end method

.method public abstract onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
.end method

.method public setColor(I)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move v1, p1

    .local v1, "color":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->color:I

    .line 47
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 48
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, v0

    invoke-super {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 88
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->start([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
    move-object v1, v0

    invoke-super {v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->stop()V

    .line 94
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->stop([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 95
    return-void
.end method
