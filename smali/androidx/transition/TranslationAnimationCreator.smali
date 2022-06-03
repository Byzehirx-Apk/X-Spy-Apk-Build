.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TranslationAnimationCreator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 27

    .prologue
    .line 51
    move-object/from16 v1, p0

    .local v1, "view":Landroid/view/View;
    move-object/from16 v2, p1

    .local v2, "values":Landroidx/transition/TransitionValues;
    move/from16 v3, p2

    .local v3, "viewPosX":I
    move/from16 v4, p3

    .local v4, "viewPosY":I
    move/from16 v5, p4

    .local v5, "startX":F
    move/from16 v6, p5

    .local v6, "startY":F
    move/from16 v7, p6

    .local v7, "endX":F
    move/from16 v8, p7

    .local v8, "endY":F
    move-object/from16 v9, p8

    .local v9, "interpolator":Landroid/animation/TimeInterpolator;
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationX()F

    move-result v17

    move/from16 v10, v17

    .line 52
    .local v10, "terminalX":F
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationY()F

    move-result v17

    move/from16 v11, v17

    .line 53
    .local v11, "terminalY":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v17, v0

    sget v18, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    check-cast v17, [I

    move-object/from16 v12, v17

    .line 54
    .local v12, "startPosition":[I
    move-object/from16 v17, v12

    if-eqz v17, :cond_0

    .line 55
    move-object/from16 v17, v12

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v18, v3

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v10

    add-float v17, v17, v18

    move/from16 v5, v17

    .line 56
    move-object/from16 v17, v12

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v18, v4

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    add-float v17, v17, v18

    move/from16 v6, v17

    .line 59
    :cond_0
    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v10

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v13, v17

    .line 60
    .local v13, "startPosX":I
    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v11

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 62
    .local v14, "startPosY":I
    move-object/from16 v17, v1

    move/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    move-object/from16 v17, v1

    move/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    move/from16 v17, v5

    move/from16 v18, v7

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    move/from16 v17, v6

    move/from16 v18, v8

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 65
    const/16 v17, 0x0

    move-object/from16 v1, v17

    .line 76
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .line 67
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v17, v1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move/from16 v25, v5

    aput v25, v23, v24

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x1

    move/from16 v25, v7

    aput v25, v23, v24

    .line 68
    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move/from16 v25, v6

    aput v25, v23, v24

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x1

    move/from16 v25, v8

    aput v25, v23, v24

    .line 69
    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    aput-object v21, v19, v20

    .line 67
    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v15, v17

    .line 71
    .local v15, "anim":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-direct/range {v18 .. v24}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 v16, v17

    .line 73
    .local v16, "listener":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v17, v15

    move-object/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    move-object/from16 v17, v15

    move-object/from16 v18, v16

    invoke-static/range {v17 .. v18}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 75
    move-object/from16 v17, v15

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    move-object/from16 v17, v15

    move-object/from16 v1, v17

    goto/16 :goto_0
.end method
