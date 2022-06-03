.class Landroidx/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static final HAS_IS_ATTACHED_TO_WINDOW:Z

.field private static final HAS_OVERLAY:Z

.field private static final HAS_PICTURE_BITMAP:Z

.field private static final MAX_IMAGE_SIZE:I = 0x100000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/transition/TransitionUtils;->HAS_IS_ATTACHED_TO_WINDOW:Z

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroidx/transition/TransitionUtils;->HAS_OVERLAY:Z

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Landroidx/transition/TransitionUtils;->HAS_PICTURE_BITMAP:Z

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 21

    .prologue
    .line 51
    move-object/from16 v1, p0

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p1

    .local v2, "view":Landroid/view/View;
    move-object/from16 v3, p2

    .local v3, "parent":Landroid/view/View;
    new-instance v14, Landroid/graphics/Matrix;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    move-object v4, v14

    .line 52
    .local v4, "matrix":Landroid/graphics/Matrix;
    move-object v14, v4

    move-object v15, v3

    invoke-virtual {v15}, Landroid/view/View;->getScrollX()I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 53
    move-object v14, v2

    move-object v15, v4

    invoke-static {v14, v15}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 54
    move-object v14, v1

    move-object v15, v4

    invoke-static {v14, v15}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 55
    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v5, v14

    .line 56
    .local v5, "bounds":Landroid/graphics/RectF;
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v14

    .line 57
    move-object v14, v5

    iget v14, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v6, v14

    .line 58
    .local v6, "left":I
    move-object v14, v5

    iget v14, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v7, v14

    .line 59
    .local v7, "top":I
    move-object v14, v5

    iget v14, v14, Landroid/graphics/RectF;->right:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v8, v14

    .line 60
    .local v8, "right":I
    move-object v14, v5

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v9, v14

    .line 62
    .local v9, "bottom":I
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v10, v14

    .line 63
    .local v10, "copy":Landroid/widget/ImageView;
    move-object v14, v10

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    move-object v14, v2

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v17}, Landroidx/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v11, v14

    .line 65
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    move-object v14, v11

    if-eqz v14, :cond_0

    .line 66
    move-object v14, v10

    move-object v15, v11

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    :cond_0
    move v14, v8

    move v15, v6

    sub-int/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v12, v14

    .line 69
    .local v12, "widthSpec":I
    move v14, v9

    move v15, v7

    sub-int/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v13, v14

    .line 70
    .local v13, "heightSpec":I
    move-object v14, v10

    move v15, v12

    move/from16 v16, v13

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ImageView;->measure(II)V

    .line 71
    move-object v14, v10

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual/range {v14 .. v18}, Landroid/widget/ImageView;->layout(IIII)V

    .line 72
    move-object v14, v10

    move-object v1, v14

    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    return-object v1
.end method

.method private static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .locals 20

    .prologue
    .line 93
    move-object/from16 v1, p0

    .local v1, "view":Landroid/view/View;
    move-object/from16 v2, p1

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v3, p2

    .local v3, "bounds":Landroid/graphics/RectF;
    move-object/from16 v4, p3

    .local v4, "sceneRoot":Landroid/view/ViewGroup;
    sget-boolean v15, Landroidx/transition/TransitionUtils;->HAS_IS_ATTACHED_TO_WINDOW:Z

    if-eqz v15, :cond_2

    .line 94
    move-object v15, v1

    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    move v5, v15

    .line 95
    .local v5, "addToOverlay":Z
    move-object v15, v4

    if-nez v15, :cond_1

    const/4 v15, 0x0

    :goto_1
    move v6, v15

    .line 100
    .local v6, "sceneRootIsAttached":Z
    :goto_2
    const/4 v15, 0x0

    move-object v7, v15

    .line 101
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v15, 0x0

    move v8, v15

    .line 102
    .local v8, "indexInParent":I
    sget-boolean v15, Landroidx/transition/TransitionUtils;->HAS_OVERLAY:Z

    if-eqz v15, :cond_4

    move v15, v5

    if-eqz v15, :cond_4

    .line 103
    move v15, v6

    if-nez v15, :cond_3

    .line 104
    const/4 v15, 0x0

    move-object v1, v15

    .line 140
    .end local v1    # "view":Landroid/view/View;
    :goto_3
    return-object v1

    .line 94
    .end local v5    # "addToOverlay":Z
    .end local v6    # "sceneRootIsAttached":Z
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "indexInParent":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 95
    .restart local v5    # "addToOverlay":Z
    :cond_1
    move-object v15, v4

    invoke-virtual {v15}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v15

    goto :goto_1

    .line 97
    .end local v5    # "addToOverlay":Z
    :cond_2
    const/4 v15, 0x0

    move v5, v15

    .line 98
    .restart local v5    # "addToOverlay":Z
    const/4 v15, 0x0

    move v6, v15

    .restart local v6    # "sceneRootIsAttached":Z
    goto :goto_2

    .line 106
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v8    # "indexInParent":I
    :cond_3
    move-object v15, v1

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    move-object v7, v15

    .line 107
    move-object v15, v7

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v15

    move v8, v15

    .line 108
    move-object v15, v4

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 110
    :cond_4
    const/4 v15, 0x0

    move-object v9, v15

    .line 111
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    move-object v15, v3

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v10, v15

    .line 112
    .local v10, "bitmapWidth":I
    move-object v15, v3

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v11, v15

    .line 113
    .local v11, "bitmapHeight":I
    move v15, v10

    if-lez v15, :cond_5

    move v15, v11

    if-lez v15, :cond_5

    .line 114
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x49800000    # 1048576.0f

    move/from16 v17, v10

    move/from16 v18, v11

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move v12, v15

    .line 115
    .local v12, "scale":F
    move v15, v10

    int-to-float v15, v15

    move/from16 v16, v12

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v10, v15

    .line 116
    move v15, v11

    int-to-float v15, v15

    move/from16 v16, v12

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v11, v15

    .line 117
    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v15

    .line 118
    move-object v15, v2

    move/from16 v16, v12

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v15

    .line 120
    sget-boolean v15, Landroidx/transition/TransitionUtils;->HAS_PICTURE_BITMAP:Z

    if-eqz v15, :cond_7

    .line 122
    new-instance v15, Landroid/graphics/Picture;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Picture;-><init>()V

    move-object v13, v15

    .line 123
    .local v13, "picture":Landroid/graphics/Picture;
    move-object v15, v13

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v15

    move-object v14, v15

    .line 124
    .local v14, "canvas":Landroid/graphics/Canvas;
    move-object v15, v14

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 125
    move-object v15, v1

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    move-object v15, v13

    invoke-virtual {v15}, Landroid/graphics/Picture;->endRecording()V

    .line 127
    move-object v15, v13

    invoke-static {v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v9, v15

    .line 136
    .end local v12    # "scale":F
    .end local v13    # "picture":Landroid/graphics/Picture;
    .end local v14    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    :goto_4
    sget-boolean v15, Landroidx/transition/TransitionUtils;->HAS_OVERLAY:Z

    if-eqz v15, :cond_6

    move v15, v5

    if-eqz v15, :cond_6

    .line 137
    move-object v15, v4

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 138
    move-object v15, v7

    move-object/from16 v16, v1

    move/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 140
    :cond_6
    move-object v15, v9

    move-object v1, v15

    goto/16 :goto_3

    .line 130
    .restart local v12    # "scale":F
    :cond_7
    move v15, v10

    move/from16 v16, v11

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v9, v15

    .line 131
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v17}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v13, v15

    .line 132
    .local v13, "canvas":Landroid/graphics/Canvas;
    move-object v15, v13

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 133
    move-object v15, v1

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 9

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "animator1":Landroid/animation/Animator;
    move-object v1, p1

    .local v1, "animator2":Landroid/animation/Animator;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 145
    move-object v3, v1

    move-object v0, v3

    .line 151
    .end local v0    # "animator1":Landroid/animation/Animator;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "animator1":Landroid/animation/Animator;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 147
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 149
    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v2, v3

    .line 150
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    move-object v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
