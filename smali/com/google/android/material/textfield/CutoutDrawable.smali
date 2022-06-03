.class Lcom/google/android/material/textfield/CutoutDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "CutoutDrawable.java"


# instance fields
.field private final cutoutBounds:Landroid/graphics/RectF;

.field private final cutoutPaint:Landroid/graphics/Paint;

.field private savedLayer:I


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 44
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/CutoutDrawable;->setPaintStyles()V

    .line 45
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    .line 46
    return-void
.end method

.method private postDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/CutoutDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/textfield/CutoutDrawable;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 115
    :cond_0
    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/textfield/CutoutDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v2, v4

    .line 93
    .local v2, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/google/android/material/textfield/CutoutDrawable;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 95
    .local v3, "viewCallback":Landroid/view/View;
    move-object v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 96
    .line 100
    .end local v3    # "viewCallback":Landroid/view/View;
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/textfield/CutoutDrawable;->saveCanvasLayer(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private saveCanvasLayer(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 104
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v3

    iput v3, v2, Lcom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    const/16 v9, 0x1f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v3

    iput v3, v2, Lcom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    goto :goto_0
.end method

.method private setPaintStyles()V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v1

    .line 52
    return-void
.end method

.method private useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, p1

    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/View;

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/textfield/CutoutDrawable;
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/textfield/CutoutDrawable;->preDraw(Landroid/graphics/Canvas;)V

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 87
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/textfield/CutoutDrawable;->postDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method

.method hasCutout()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/CutoutDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/CutoutDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeCutout()V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    .line 77
    return-void
.end method

.method setCutout(FFFF)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move v1, p1

    .local v1, "left":F
    move v2, p2

    .local v2, "top":F
    move v3, p3

    .local v3, "right":F
    move v4, p4

    .local v4, "bottom":F
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 65
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/textfield/CutoutDrawable;->invalidateSelf()V

    .line 68
    :cond_1
    return-void
.end method

.method setCutout(Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/CutoutDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/RectF;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object v4, v1

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object v6, v1

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    .line 72
    return-void
.end method
