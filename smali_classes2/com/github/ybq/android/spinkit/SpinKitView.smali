.class public Lcom/github/ybq/android/spinkit/SpinKitView;
.super Landroid/widget/ProgressBar;
.source "SpinKitView.java"


# instance fields
.field private mColor:I

.field private mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

.field private mStyle:Lcom/github/ybq/android/spinkit/Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/github/ybq/android/spinkit/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/github/ybq/android/spinkit/R$attr;->SpinKitViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    sget v8, Lcom/github/ybq/android/spinkit/R$style;->SpinKitView:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/github/ybq/android/spinkit/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move v4, p4

    .local v4, "defStyleRes":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView:[I

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 41
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    invoke-static {}, Lcom/github/ybq/android/spinkit/Style;->values()[Lcom/github/ybq/android/spinkit/Style;

    move-result-object v7

    move-object v8, v5

    sget v9, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView_SpinKit_Style:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/github/ybq/android/spinkit/SpinKitView;->mStyle:Lcom/github/ybq/android/spinkit/Style;

    .line 42
    move-object v6, v0

    move-object v7, v5

    sget v8, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView_SpinKit_Color:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, v6, Lcom/github/ybq/android/spinkit/SpinKitView;->mColor:I

    .line 43
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    move-object v6, v0

    invoke-direct {v6}, Lcom/github/ybq/android/spinkit/SpinKitView;->init()V

    .line 45
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminate(Z)V

    .line 46
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mStyle:Lcom/github/ybq/android/spinkit/Style;

    invoke-static {v2}, Lcom/github/ybq/android/spinkit/SpriteFactory;->create(Lcom/github/ybq/android/spinkit/Style;)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    move-object v1, v2

    .line 50
    .local v1, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/github/ybq/android/spinkit/SpinKitView;->mColor:I

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/SpinKitView;->getIndeterminateDrawable()Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    return-object v0
.end method

.method public getIndeterminateDrawable()Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, v0

    iget-object v1, v1, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move v1, p1

    .local v1, "screenState":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/ProgressBar;->onScreenStateChanged(I)V

    .line 113
    move v2, v1

    if-nez v2, :cond_0

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v2, :cond_0

    .line 117
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->stop()V

    .line 120
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move v1, p1

    .local v1, "hasWindowFocus":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/ProgressBar;->onWindowFocusChanged(Z)V

    .line 102
    move v2, v1

    if-eqz v2, :cond_0

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/SpinKitView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 108
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mColor:I

    .line 83
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 87
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/SpinKitView;->invalidate()V

    .line 88
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    instance-of v2, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "this d must be instanceof Sprite"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 60
    return-void
.end method

.method public setIndeterminateDrawable(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "d":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getColor()I

    move-result v2

    if-nez v2, :cond_0

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v3, v0

    iget v3, v3, Lcom/github/ybq/android/spinkit/SpinKitView;->mColor:I

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 69
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/SpinKitView;->getWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/github/ybq/android/spinkit/SpinKitView;->getHeight()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/ybq/android/spinkit/SpinKitView;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/github/ybq/android/spinkit/SpinKitView;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/SpinKitView;->onSizeChanged(IIII)V

    .line 70
    move-object v2, v0

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/SpinKitView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/github/ybq/android/spinkit/SpinKitView;->mSprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 74
    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpinKitView;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    move-object v2, v1

    instance-of v2, v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v1

    check-cast v2, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->stop()V

    .line 97
    :cond_0
    return-void
.end method
