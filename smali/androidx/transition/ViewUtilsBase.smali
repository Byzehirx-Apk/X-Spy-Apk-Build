.class Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# instance fields
.field private mMatrixValues:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 57
    move-object v2, v1

    sget v3, Landroidx/transition/R$id;->save_non_transition_alpha:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    sget v4, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    move-object v2, v3

    .line 40
    .local v2, "savedAlpha":Ljava/lang/Float;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 41
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v3, v4

    move v0, v3

    .line 43
    .end local v0    # "this":Landroidx/transition/ViewUtilsBase;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/transition/ViewUtilsBase;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    sget v3, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 49
    move-object v2, v1

    sget v3, Landroidx/transition/R$id;->save_non_transition_alpha:I

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/transition/ViewUtilsBase;
    move-object/from16 v2, p1

    .local v2, "view":Landroid/view/View;
    move-object/from16 v3, p2

    .local v3, "matrix":Landroid/graphics/Matrix;
    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 94
    :cond_0
    move-object v12, v2

    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    .line 95
    move-object v12, v2

    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 96
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 98
    move-object v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    .line 99
    move-object v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    .line 100
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setRotation(F)V

    .line 123
    :goto_0
    return-void

    .line 102
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    move-object v4, v12

    .line 103
    .local v4, "values":[F
    move-object v12, v4

    if-nez v12, :cond_2

    .line 104
    move-object v12, v1

    const/16 v13, 0x9

    new-array v13, v13, [F

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v4, v14

    iput-object v13, v12, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    .line 106
    :cond_2
    move-object v12, v3

    move-object v13, v4

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 107
    move-object v12, v4

    const/4 v13, 0x3

    aget v12, v12, v13

    move v5, v12

    .line 108
    .local v5, "sin":F
    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v5

    move v14, v5

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move-object v13, v4

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    const/4 v13, -0x1

    :goto_1
    int-to-float v13, v13

    mul-float/2addr v12, v13

    move v6, v12

    .line 110
    .local v6, "cos":F
    move v12, v5

    float-to-double v12, v12

    move v14, v6

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v7, v12

    .line 111
    .local v7, "rotation":F
    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    move v13, v6

    div-float/2addr v12, v13

    move v8, v12

    .line 112
    .local v8, "scaleX":F
    move-object v12, v4

    const/4 v13, 0x4

    aget v12, v12, v13

    move v13, v6

    div-float/2addr v12, v13

    move v9, v12

    .line 113
    .local v9, "scaleY":F
    move-object v12, v4

    const/4 v13, 0x2

    aget v12, v12, v13

    move v10, v12

    .line 114
    .local v10, "dx":F
    move-object v12, v4

    const/4 v13, 0x5

    aget v12, v12, v13

    move v11, v12

    .line 115
    .local v11, "dy":F
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    .line 116
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 117
    move-object v12, v2

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    move-object v12, v2

    move v13, v11

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    move-object v12, v2

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/View;->setRotation(F)V

    .line 120
    move-object v12, v2

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    .line 121
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_0

    .line 108
    .end local v6    # "cos":F
    .end local v7    # "rotation":F
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    :cond_3
    const/4 v13, 0x1

    goto :goto_1
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move v4, p4

    .local v4, "right":I
    move v5, p5

    .local v5, "bottom":I
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setLeft(I)V

    .line 127
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->setTop(I)V

    .line 128
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->setRight(I)V

    .line 129
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setBottom(I)V

    .line 130
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "alpha":F
    move-object v4, v1

    sget v5, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    move-object v3, v4

    .line 31
    .local v3, "savedAlpha":Ljava/lang/Float;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 32
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 63
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 64
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 65
    .local v4, "vp":Landroid/view/View;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 66
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 68
    .end local v4    # "vp":Landroid/view/View;
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 69
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "vm":Landroid/graphics/Matrix;
    move-object v5, v4

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 73
    :cond_1
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsBase;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v3, v6

    .line 77
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v6, v3

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 78
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    .line 79
    .local v4, "vp":Landroid/view/View;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 80
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 82
    .end local v4    # "vp":Landroid/view/View;
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 83
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object v4, v6

    .line 84
    .local v4, "vm":Landroid/graphics/Matrix;
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    new-instance v6, Landroid/graphics/Matrix;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v6

    .line 86
    .local v5, "inverted":Landroid/graphics/Matrix;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 90
    .end local v5    # "inverted":Landroid/graphics/Matrix;
    :cond_1
    return-void
.end method
