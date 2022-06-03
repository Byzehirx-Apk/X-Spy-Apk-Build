.class public Lcom/google/android/material/internal/CircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularBorderDrawable.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    }
.end annotation


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field private borderTint:Landroid/content/res/ColorStateList;

.field borderWidth:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private bottomInnerStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private bottomOuterStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentBorderTintColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private invalidateShader:Z

.field final paint:Landroid/graphics/Paint;

.field final rect:Landroid/graphics/Rect;

.field final rectF:Landroid/graphics/RectF;

.field private rotation:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 360.0
    .end annotation
.end field

.field final state:Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;

.field private topInnerStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private topOuterStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    .line 53
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 54
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;-><init>(Lcom/google/android/material/internal/CircularBorderDrawable;Lcom/google/android/material/internal/CircularBorderDrawable$1;)V

    iput-object v2, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->state:Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;

    .line 66
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    .line 72
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    .line 73
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 15

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    move-object v1, v5

    .line 201
    .local v1, "rect":Landroid/graphics/Rect;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 203
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->borderWidth:F

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v2, v5

    .line 205
    .local v2, "borderRatio":F
    const/4 v5, 0x6

    new-array v5, v5, [I

    move-object v3, v5

    .line 206
    .local v3, "colors":[I
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CircularBorderDrawable;->topOuterStrokeColor:I

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 207
    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CircularBorderDrawable;->topInnerStrokeColor:I

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 208
    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CircularBorderDrawable;->topInnerStrokeColor:I

    const/4 v8, 0x0

    .line 210
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    .line 209
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 211
    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CircularBorderDrawable;->bottomInnerStrokeColor:I

    const/4 v8, 0x0

    .line 213
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    .line 212
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 214
    move-object v5, v3

    const/4 v6, 0x4

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CircularBorderDrawable;->bottomInnerStrokeColor:I

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 215
    move-object v5, v3

    const/4 v6, 0x5

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CircularBorderDrawable;->bottomOuterStrokeColor:I

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 217
    const/4 v5, 0x6

    new-array v5, v5, [F

    move-object v4, v5

    .line 218
    .local v4, "positions":[F
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 219
    move-object v5, v4

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    .line 220
    move-object v5, v4

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v5, v6

    .line 221
    move-object v5, v4

    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v5, v6

    .line 222
    move-object v5, v4

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 223
    move-object v5, v4

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 225
    new-instance v5, Landroid/graphics/LinearGradient;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object v10, v1

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    move-object v11, v3

    move-object v12, v4

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    if-eqz v4, :cond_0

    .line 106
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/internal/CircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v4

    .line 107
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    .line 110
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move v2, v4

    .line 111
    .local v2, "halfBorderWidth":F
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CircularBorderDrawable;->rectF:Landroid/graphics/RectF;

    move-object v3, v4

    .line 115
    .local v3, "rectF":Landroid/graphics/RectF;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 116
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 117
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 118
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 119
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 120
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 122
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 123
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->rotation:F

    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 125
    move-object v4, v1

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 126
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 127
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->state:Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    return-object v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, -0x3

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->borderWidth:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v2, v3

    .line 132
    .local v2, "borderWidth":I
    move-object v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    .line 172
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, p1

    .local v1, "state":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 182
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    move v2, v3

    .line 183
    .local v2, "newColor":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    if-eq v3, v4, :cond_0

    .line 184
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    .line 185
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    .line 188
    .end local v2    # "newColor":I
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    if-eqz v3, :cond_1

    .line 189
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateSelf()V

    .line 191
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    return v0
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateSelf()V

    .line 140
    return-void
.end method

.method public setBorderTint(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/internal/CircularBorderDrawable;->getState()[I

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->currentBorderTintColor:I

    .line 146
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    .line 147
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    .line 148
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateSelf()V

    .line 149
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 5
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move v1, p1

    .local v1, "width":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->borderWidth:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->borderWidth:F

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    move v3, v1

    const v4, 0x3faaa993    # 1.3333f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateShader:Z

    .line 99
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateSelf()V

    .line 101
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateSelf()V

    .line 155
    return-void
.end method

.method public setGradientColors(IIII)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move v1, p1

    .local v1, "topOuterStrokeColor":I
    move v2, p2

    .local v2, "topInnerStrokeColor":I
    move v3, p3

    .local v3, "bottomOuterStrokeColor":I
    move v4, p4

    .local v4, "bottomInnerStrokeColor":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->topOuterStrokeColor:I

    .line 88
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->topInnerStrokeColor:I

    .line 89
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->bottomOuterStrokeColor:I

    .line 90
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/material/internal/CircularBorderDrawable;->bottomInnerStrokeColor:I

    .line 91
    return-void
.end method

.method public final setRotation(F)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable;
    move v1, p1

    .local v1, "rotation":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CircularBorderDrawable;->rotation:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 164
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable;->rotation:F

    .line 165
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CircularBorderDrawable;->invalidateSelf()V

    .line 167
    :cond_0
    return-void
.end method
