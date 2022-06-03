.class public final Lcom/google/android/material/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .locals 21

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move/from16 v1, p1

    .local v1, "centerX":F
    move/from16 v2, p2

    .local v2, "centerY":F
    move/from16 v3, p3

    .local v3, "endRadius":F
    move-object v9, v0

    sget-object v10, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v11, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v16 .. v19}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v15, v13, v14

    .line 56
    invoke-static {v9, v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v4, v9

    .line 61
    .local v4, "revealInfoAnimator":Landroid/animation/Animator;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_1

    .line 64
    move-object v9, v0

    invoke-interface {v9}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v9

    move-object v5, v9

    .line 65
    .local v5, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v9, v5

    if-nez v9, :cond_0

    .line 66
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string/jumbo v11, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 69
    :cond_0
    move-object v9, v5

    iget v9, v9, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v6, v9

    .line 70
    .local v6, "startRadius":F
    move-object v9, v0

    check-cast v9, Landroid/view/View;

    move v10, v1

    float-to-int v10, v10

    move v11, v2

    float-to-int v11, v11

    move v12, v6

    move v13, v3

    .line 71
    invoke-static {v9, v10, v11, v12, v13}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v9

    move-object v7, v9

    .line 73
    .local v7, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v9, Landroid/animation/AnimatorSet;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v8, v9

    .line 74
    .local v8, "set":Landroid/animation/AnimatorSet;
    move-object v9, v8

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    move-object v13, v4

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x1

    move-object v13, v7

    aput-object v13, v11, v12

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    move-object v9, v8

    move-object v0, v9

    .line 77
    .end local v0    # "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    .end local v5    # "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .end local v6    # "startRadius":F
    .end local v7    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v8    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-object v0

    .restart local v0    # "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    :cond_1
    move-object v9, v4

    move-object v0, v9

    goto :goto_0
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFFF)Landroid/animation/Animator;
    .locals 20

    .prologue
    .line 94
    move-object/from16 v0, p0

    .local v0, "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move/from16 v1, p1

    .local v1, "centerX":F
    move/from16 v2, p2

    .local v2, "centerY":F
    move/from16 v3, p3

    .local v3, "startRadius":F
    move/from16 v4, p4

    .local v4, "endRadius":F
    move-object v8, v0

    sget-object v9, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v10, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x1

    new-instance v14, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    invoke-direct/range {v15 .. v18}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v14, v12, v13

    .line 95
    invoke-static {v8, v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object v5, v8

    .line 101
    .local v5, "revealInfoAnimator":Landroid/animation/Animator;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 102
    move-object v8, v0

    check-cast v8, Landroid/view/View;

    move v9, v1

    float-to-int v9, v9

    move v10, v2

    float-to-int v10, v10

    move v11, v3

    move v12, v4

    .line 103
    invoke-static {v8, v9, v10, v11, v12}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v8

    move-object v6, v8

    .line 105
    .local v6, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v8, Landroid/animation/AnimatorSet;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v7, v8

    .line 106
    .local v7, "set":Landroid/animation/AnimatorSet;
    move-object v8, v7

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 107
    move-object v8, v7

    move-object v0, v8

    .line 109
    .end local v0    # "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    .end local v6    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-object v0

    .restart local v0    # "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    :cond_0
    move-object v8, v5

    move-object v0, v8

    goto :goto_0
.end method

.method public static createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    move-object v0, v1

    .end local v0    # "view":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    return-object v0
.end method
