.class public Landroidx/transition/CircularPropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/transition/CircularPropagation;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 35
    move-object v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, v1, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)F
    .locals 9

    .prologue
    .line 101
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v6, v2

    move v7, v0

    sub-float/2addr v6, v7

    move v4, v6

    .line 102
    .local v4, "x":F
    move v6, v3

    move v7, v1

    sub-float/2addr v6, v7

    move v5, v6

    .line 103
    .local v5, "y":F
    move v6, v4

    move v7, v4

    mul-float/2addr v6, v7

    move v7, v5

    move v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 24

    .prologue
    .line 59
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/transition/CircularPropagation;
    move-object/from16 v4, p1

    .local v4, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v5, p2

    .local v5, "transition":Landroidx/transition/Transition;
    move-object/from16 v6, p3

    .local v6, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v7, p4

    .local v7, "endValues":Landroidx/transition/TransitionValues;
    move-object/from16 v20, v6

    if-nez v20, :cond_0

    move-object/from16 v20, v7

    if-nez v20, :cond_0

    .line 60
    const-wide/16 v20, 0x0

    move-wide/from16 v3, v20

    .line 97
    .end local v3    # "this":Landroidx/transition/CircularPropagation;
    :goto_0
    return-wide v3

    .line 62
    .restart local v3    # "this":Landroidx/transition/CircularPropagation;
    :cond_0
    const/16 v20, 0x1

    move/from16 v8, v20

    .line 64
    .local v8, "directionMultiplier":I
    move-object/from16 v20, v7

    if-eqz v20, :cond_1

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Landroidx/transition/CircularPropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v20

    if-nez v20, :cond_3

    .line 65
    :cond_1
    move-object/from16 v20, v6

    move-object/from16 v9, v20

    .line 66
    .local v9, "positionValues":Landroidx/transition/TransitionValues;
    const/16 v20, -0x1

    move/from16 v8, v20

    .line 71
    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/transition/CircularPropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v20

    move/from16 v10, v20

    .line 72
    .local v10, "viewCenterX":I
    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/transition/CircularPropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v20

    move/from16 v11, v20

    .line 74
    .local v11, "viewCenterY":I
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v12, v20

    .line 77
    .local v12, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v20, v12

    if-eqz v20, :cond_4

    .line 78
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    move/from16 v13, v20

    .line 79
    .local v13, "epicenterX":I
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v20

    move/from16 v14, v20

    .line 88
    .local v14, "epicenterY":I
    :goto_2
    move/from16 v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v20 .. v23}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    move-result v20

    move/from16 v15, v20

    .line 89
    .local v15, "distance":F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v20 .. v23}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    move-result v20

    move/from16 v16, v20

    .line 90
    .local v16, "maxDistance":F
    move/from16 v20, v15

    move/from16 v21, v16

    div-float v20, v20, v21

    move/from16 v17, v20

    .line 92
    .local v17, "distanceFraction":F
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 93
    .local v18, "duration":J
    move-wide/from16 v20, v18

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    .line 94
    const-wide/16 v20, 0x12c

    move-wide/from16 v18, v20

    .line 97
    :cond_2
    move-wide/from16 v20, v18

    move/from16 v22, v8

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v21, v17

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v3, v20

    goto/16 :goto_0

    .line 68
    .end local v9    # "positionValues":Landroidx/transition/TransitionValues;
    .end local v10    # "viewCenterX":I
    .end local v11    # "viewCenterY":I
    .end local v12    # "epicenter":Landroid/graphics/Rect;
    .end local v13    # "epicenterX":I
    .end local v14    # "epicenterY":I
    .end local v15    # "distance":F
    .end local v16    # "maxDistance":F
    .end local v17    # "distanceFraction":F
    .end local v18    # "duration":J
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v9, v20

    .restart local v9    # "positionValues":Landroidx/transition/TransitionValues;
    goto/16 :goto_1

    .line 81
    .restart local v10    # "viewCenterX":I
    .restart local v11    # "viewCenterY":I
    .restart local v12    # "epicenter":Landroid/graphics/Rect;
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v15, v20

    .line 82
    .local v15, "loc":[I
    move-object/from16 v20, v4

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 83
    move-object/from16 v20, v15

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getWidth()I

    move-result v21

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 84
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v21

    add-float v20, v20, v21

    .line 83
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v13, v20

    .line 85
    .restart local v13    # "epicenterX":I
    move-object/from16 v20, v15

    const/16 v21, 0x1

    aget v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getHeight()I

    move-result v21

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 86
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v21

    add-float v20, v20, v21

    .line 85
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v14, v20

    .restart local v14    # "epicenterY":I
    goto/16 :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/transition/CircularPropagation;
    move v1, p1

    .local v1, "propagationSpeed":F
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "propagationSpeed may not be 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    .line 54
    return-void
.end method
