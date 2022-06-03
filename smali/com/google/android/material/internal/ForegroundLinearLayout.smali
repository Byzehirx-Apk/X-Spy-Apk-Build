.class public Lcom/google/android/material/internal/ForegroundLinearLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ForegroundLinearLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private foreground:Landroid/graphics/drawable/Drawable;

.field foregroundBoundsChanged:Z

.field private foregroundGravity:I

.field protected mForegroundInPadding:Z

.field private final overlayBounds:Landroid/graphics/Rect;

.field private final selfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyle":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 44
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    .line 46
    move-object v6, v0

    const/16 v7, 0x77

    iput v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 48
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 50
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 63
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout:[I

    move v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [I

    .line 64
    invoke-static/range {v6 .. v11}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 67
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 68
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 70
    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 71
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 72
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    const/4 v9, 0x1

    .line 76
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 78
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    .line 204
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 205
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    move-object v2, v7

    .line 207
    .local v2, "foreground":Landroid/graphics/drawable/Drawable;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    if-eqz v7, :cond_0

    .line 208
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 209
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    move-object v3, v7

    .line 210
    .local v3, "selfBounds":Landroid/graphics/Rect;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    move-object v4, v7

    .line 212
    .local v4, "overlayBounds":Landroid/graphics/Rect;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getRight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 213
    .local v5, "w":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getBottom()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 215
    .local v6, "h":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    if-eqz v7, :cond_2

    .line 216
    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    :goto_0
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    move-object v8, v2

    .line 224
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move-object v9, v2

    .line 225
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    move-object v10, v3

    move-object v11, v4

    .line 222
    invoke-static {v7, v8, v9, v10, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 228
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "overlayBounds":Landroid/graphics/Rect;
    .end local v5    # "w":I
    .end local v6    # "h":I
    :cond_0
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    .end local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 218
    .restart local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selfBounds":Landroid/graphics/Rect;
    .restart local v4    # "overlayBounds":Landroid/graphics/Rect;
    .restart local v5    # "w":I
    .restart local v6    # "h":I
    :cond_2
    move-object v7, v3

    move-object v8, v0

    .line 219
    invoke-virtual {v8}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingTop()I

    move-result v9

    move v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 218
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    .line 240
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 241
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 243
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawableStateChanged()V

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 140
    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    .line 129
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 130
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 132
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 191
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-boolean v7, v7, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    move v8, v1

    or-int/2addr v7, v8

    iput-boolean v7, v6, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 192
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move v3, p3

    .local v3, "oldw":I
    move v4, p4

    .local v4, "oldh":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    .line 197
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 198
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    if-eq v3, v4, :cond_3

    .line 152
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 153
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/ForegroundLinearLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 159
    move-object v3, v1

    if-eqz v3, :cond_4

    .line 160
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    .line 161
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    .line 165
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v4, 0x77

    if-ne v3, v4, :cond_2

    .line 166
    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 167
    .local v2, "padding":Landroid/graphics/Rect;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 168
    .line 172
    .end local v2    # "padding":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/ForegroundLinearLayout;->requestLayout()V

    .line 173
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/ForegroundLinearLayout;->invalidate()V

    .line 175
    :cond_3
    return-void

    .line 170
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move v1, p1

    .local v1, "foregroundGravity":I
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    move v4, v1

    if-eq v3, v4, :cond_3

    .line 101
    move v3, v1

    const v4, 0x800007

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 102
    move v3, v1

    const v4, 0x800003

    or-int/2addr v3, v4

    move v1, v3

    .line 105
    :cond_0
    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    if-nez v3, :cond_1

    .line 106
    move v3, v1

    const/16 v4, 0x30

    or-int/lit8 v3, v3, 0x30

    move v1, v3

    .line 109
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 111
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v4, 0x77

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 112
    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 113
    .local v2, "padding":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 116
    .end local v2    # "padding":Landroid/graphics/Rect;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/ForegroundLinearLayout;->requestLayout()V

    .line 118
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/internal/ForegroundLinearLayout;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
