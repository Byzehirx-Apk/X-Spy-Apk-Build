.class Landroidx/cardview/widget/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "backgroundColor":Landroid/content/res/ColorStateList;
    move v2, p2

    .local v2, "radius":F
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 48
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 53
    move-object v3, v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 57
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 60
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 61
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 9

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, p2

    .local v2, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 207
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 210
    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    :goto_0
    return-object v0

    .line 209
    .restart local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    :cond_1
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/cardview/widget/RoundRectDrawable;->getState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 210
    .local v3, "color":I
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v4

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 66
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/cardview/widget/RoundRectDrawable;->getState()[I

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    return-void

    .line 65
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 106
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/cardview/widget/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object v1, v4

    .line 108
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz v4, :cond_1

    .line 111
    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v4, v5, v6}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    move v2, v4

    .line 112
    .local v2, "vInset":F
    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v4, v5, v6}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    move v3, v4

    .line 113
    .local v3, "hInset":F
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    move v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    move v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 115
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 117
    .end local v2    # "vInset":F
    .end local v3    # "hInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, v4

    .line 90
    .local v2, "paint":Landroid/graphics/Paint;
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 91
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 92
    const/4 v4, 0x1

    move v3, v4

    .line 97
    .local v3, "clearColorFilter":Z
    :goto_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    move-object v7, v0

    iget v7, v7, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    move v4, v3

    if-eqz v4, :cond_0

    .line 100
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 102
    :cond_0
    return-void

    .line 94
    .end local v3    # "clearColorFilter":Z
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "clearColorFilter":Z
    goto :goto_0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "outline":Landroid/graphics/Outline;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 128
    return-void
.end method

.method getPadding()F
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 198
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    return v0

    .restart local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 122
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 123
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v2, v4

    .line 184
    .local v2, "newColor":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 185
    .local v3, "colorChanged":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 186
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_2

    .line 189
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    move-object v7, v0

    iget-object v7, v7, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    iput-object v5, v4, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 190
    const/4 v4, 0x1

    move v0, v4

    .line 192
    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    :goto_1
    return v0

    .line 184
    .end local v3    # "colorChanged":Z
    .restart local v0    # "this":Landroidx/cardview/widget/RoundRectDrawable;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 192
    .restart local v3    # "colorChanged":Z
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 160
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    .line 161
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "cf":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 147
    return-void
.end method

.method setPadding(FZZ)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move v1, p1

    .local v1, "padding":F
    move v2, p2

    .local v2, "insetForPadding":Z
    move v3, p3

    .local v3, "insetForRadius":Z
    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    move v5, v2

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    move v5, v3

    if-ne v4, v5, :cond_0

    .line 72
    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 75
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 76
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 77
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 78
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    .line 79
    goto :goto_0
.end method

.method setRadius(F)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move v1, p1

    .local v1, "radius":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 132
    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 135
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 136
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    .line 137
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 170
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, v2, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 171
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    .line 172
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 177
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, v2, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 178
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    .line 179
    return-void
.end method
