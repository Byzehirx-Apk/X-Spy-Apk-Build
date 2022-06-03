.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 74
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 77
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 77
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 83
    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    sget v4, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 634
    .local v2, "childContentContainer":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 635
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object v0, v3

    .line 645
    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :goto_0
    return-object v0

    .line 639
    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v3, :cond_1

    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v3, :cond_2

    .line 640
    :cond_1
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 641
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 645
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .locals 20

    .prologue
    .line 591
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v3, p3

    .local v3, "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    move-object/from16 v4, p4

    .local v4, "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    move/from16 v5, p5

    .local v5, "fromX":F
    move/from16 v6, p6

    .local v6, "fromY":F
    move/from16 v7, p7

    .local v7, "toX":F
    move/from16 v8, p8

    .local v8, "toY":F
    move-object/from16 v9, p9

    .local v9, "childBounds":Landroid/graphics/RectF;
    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v7

    .line 592
    invoke-direct/range {v15 .. v19}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result v15

    move v10, v15

    .line 593
    .local v10, "translationX":F
    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v8

    .line 594
    invoke-direct/range {v15 .. v19}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result v15

    move v11, v15

    .line 597
    .local v11, "translationY":F
    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    move-object v12, v15

    .line 598
    .local v12, "window":Landroid/graphics/Rect;
    move-object v15, v1

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 599
    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v13, v15

    .line 600
    .local v13, "windowF":Landroid/graphics/RectF;
    move-object v15, v13

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 603
    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    move-object v14, v15

    .line 604
    .local v14, "childVisibleBounds":Landroid/graphics/RectF;
    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v17}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 605
    move-object v15, v14

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/RectF;->offset(FF)V

    .line 606
    move-object v15, v14

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v15

    .line 608
    move-object v15, v9

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 609
    return-void
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 11

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "positioning":Lcom/google/android/material/animation/Positioning;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v4, v7

    .line 557
    .local v4, "dependencyBounds":Landroid/graphics/RectF;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    move-object v5, v7

    .line 559
    .local v5, "childBounds":Landroid/graphics/RectF;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 560
    move-object v7, v0

    move-object v8, v2

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 562
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v7

    move v6, v7

    .line 563
    .local v6, "translationX":F
    move-object v7, v5

    move v8, v6

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 565
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    move-object v8, v5

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    return v0
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 11

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "positioning":Lcom/google/android/material/animation/Positioning;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v4, v7

    .line 570
    .local v4, "dependencyBounds":Landroid/graphics/RectF;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    move-object v5, v7

    .line 572
    .local v5, "childBounds":Landroid/graphics/RectF;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 573
    move-object v7, v0

    move-object v8, v2

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 575
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v7

    move v6, v7

    .line 576
    .local v6, "translationY":F
    move-object v7, v5

    const/4 v8, 0x0

    move v9, v6

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 578
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object v8, v5

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    return v0
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 10

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "positioning":Lcom/google/android/material/animation/Positioning;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v4, v7

    .line 493
    .local v4, "dependencyBounds":Landroid/graphics/RectF;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    move-object v5, v7

    .line 495
    .local v5, "childBounds":Landroid/graphics/RectF;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 496
    move-object v7, v0

    move-object v8, v2

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 498
    const/4 v7, 0x0

    move v6, v7

    .line 499
    .local v6, "translationX":F
    move-object v7, v3

    iget v7, v7, Lcom/google/android/material/animation/Positioning;->gravity:I

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    packed-switch v7, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    move v7, v6

    move-object v8, v3

    iget v8, v8, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr v7, v8

    move v6, v7

    .line 513
    move v7, v6

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    return v0

    .line 501
    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :pswitch_1
    move-object v7, v5

    iget v7, v7, Landroid/graphics/RectF;->left:F

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    move v6, v7

    .line 502
    goto :goto_0

    .line 504
    :pswitch_2
    move-object v7, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 505
    goto :goto_0

    .line 507
    :pswitch_3
    move-object v7, v5

    iget v7, v7, Landroid/graphics/RectF;->right:F

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    move v6, v7

    .line 508
    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 10

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "positioning":Lcom/google/android/material/animation/Positioning;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v4, v7

    .line 518
    .local v4, "dependencyBounds":Landroid/graphics/RectF;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    move-object v5, v7

    .line 520
    .local v5, "childBounds":Landroid/graphics/RectF;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 521
    move-object v7, v0

    move-object v8, v2

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 523
    const/4 v7, 0x0

    move v6, v7

    .line 524
    .local v6, "translationY":F
    move-object v7, v3

    iget v7, v7, Lcom/google/android/material/animation/Positioning;->gravity:I

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_0

    .line 537
    :goto_0
    move v7, v6

    move-object v8, v3

    iget v8, v8, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr v7, v8

    move v6, v7

    .line 538
    move v7, v6

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    return v0

    .line 526
    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :sswitch_0
    move-object v7, v5

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    move v6, v7

    .line 527
    goto :goto_0

    .line 529
    :sswitch_1
    move-object v7, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 530
    goto :goto_0

    .line 532
    :sswitch_2
    move-object v7, v5

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    move v6, v7

    .line 533
    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .locals 18

    .prologue
    .line 613
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v2, p1

    .local v2, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v3, p2

    .local v3, "timing":Lcom/google/android/material/animation/MotionTiming;
    move/from16 v4, p3

    .local v4, "from":F
    move/from16 v5, p4

    .local v5, "to":F
    move-object v14, v3

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v14

    move-wide v6, v14

    .line 614
    .local v6, "delay":J
    move-object v14, v3

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v14

    move-wide v8, v14

    .line 617
    .local v8, "duration":J
    move-object v14, v2

    iget-object v14, v14, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo v15, "expansion"

    invoke-virtual {v14, v15}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v14

    move-object v10, v14

    .line 618
    .local v10, "expansionTiming":Lcom/google/android/material/animation/MotionTiming;
    move-object v14, v10

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v14

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v16

    add-long v14, v14, v16

    move-wide v11, v14

    .line 621
    .local v11, "expansionEnd":J
    move-wide v14, v11

    const-wide/16 v16, 0x11

    add-long v14, v14, v16

    move-wide v11, v14

    .line 622
    move-wide v14, v11

    move-wide/from16 v16, v6

    sub-long v14, v14, v16

    long-to-float v14, v14

    move-wide v15, v8

    long-to-float v15, v15

    div-float/2addr v14, v15

    move v13, v14

    .line 625
    .local v13, "fraction":F
    move-object v14, v3

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v14

    move v15, v13

    invoke-interface {v14, v15}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v14

    move v13, v14

    .line 626
    move v14, v4

    move v15, v5

    move/from16 v16, v13

    invoke-static/range {v14 .. v16}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v14

    move v1, v14

    .end local v1    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    return v1
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 10

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "rect":Landroid/graphics/RectF;
    move-object v5, v2

    move-object v3, v5

    .line 543
    .local v3, "windowBounds":Landroid/graphics/RectF;
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    move-object v4, v5

    .line 546
    .local v4, "windowLocation":[I
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 548
    move-object v5, v3

    move-object v6, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    move-object v7, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 552
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    neg-float v6, v6

    float-to-int v6, v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    neg-float v7, v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 553
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v1, p1

    .local v1, "unusedDependency":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "expanded":Z
    move/from16 v4, p4

    .local v4, "currentlyAnimating":Z
    move-object/from16 v5, p5

    .local v5, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v6, p6

    .local v6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v7, p7

    .local v7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v11, v2

    instance-of v11, v11, Landroid/view/ViewGroup;

    if-nez v11, :cond_0

    .line 460
    .line 489
    :goto_0
    return-void

    .line 462
    :cond_0
    move-object v11, v2

    instance-of v11, v11, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v11, :cond_1

    sget v11, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v11, :cond_1

    .line 465
    goto :goto_0

    .line 468
    :cond_1
    move-object v11, v0

    move-object v12, v2

    invoke-direct {v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v11

    move-object v8, v11

    .line 469
    .local v8, "childContentContainer":Landroid/view/ViewGroup;
    move-object v11, v8

    if-nez v11, :cond_2

    .line 470
    goto :goto_0

    .line 475
    :cond_2
    move v11, v3

    if-eqz v11, :cond_4

    .line 476
    move v11, v4

    if-nez v11, :cond_3

    .line 477
    sget-object v11, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    move-object v12, v8

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :cond_3
    move-object v11, v8

    sget-object v12, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    const/4 v13, 0x1

    new-array v13, v13, [F

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 480
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object v9, v11

    .line 486
    .local v9, "animator":Landroid/animation/Animator;
    :goto_1
    move-object v11, v5

    iget-object v11, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo v12, "contentFade"

    invoke-virtual {v11, v12}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v11

    move-object v10, v11

    .line 487
    .local v10, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-object v11, v10

    move-object v12, v9

    invoke-virtual {v11, v12}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 488
    move-object v11, v6

    move-object v12, v9

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 489
    goto :goto_0

    .line 482
    .end local v9    # "animator":Landroid/animation/Animator;
    .end local v10    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_4
    move-object v11, v8

    sget-object v12, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    const/4 v13, 0x1

    new-array v13, v13, [F

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 483
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object v9, v11

    .restart local v9    # "animator":Landroid/animation/Animator;
    goto :goto_1
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "expanded":Z
    move/from16 v4, p4

    .local v4, "currentlyAnimating":Z
    move-object/from16 v5, p5

    .local v5, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v6, p6

    .local v6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v7, p7

    .local v7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v13, v2

    instance-of v13, v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v13, :cond_0

    .line 420
    .line 449
    :goto_0
    return-void

    .line 422
    :cond_0
    move-object v13, v2

    check-cast v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v8, v13

    .line 424
    .local v8, "circularRevealChild":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result v13

    move v9, v13

    .line 425
    .local v9, "tint":I
    move v13, v9

    const v14, 0xffffff

    and-int/2addr v13, v14

    move v10, v13

    .line 428
    .local v10, "transparent":I
    move v13, v3

    if-eqz v13, :cond_2

    .line 429
    move v13, v4

    if-nez v13, :cond_1

    .line 430
    move-object v13, v8

    move v14, v9

    invoke-interface {v13, v14}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 432
    :cond_1
    move-object v13, v8

    sget-object v14, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [I

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move/from16 v18, v10

    aput v18, v16, v17

    .line 433
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object v11, v13

    .line 445
    .local v11, "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    move-object v13, v11

    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 446
    move-object v13, v5

    iget-object v13, v13, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo v14, "color"

    invoke-virtual {v13, v14}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v13

    move-object v12, v13

    .line 447
    .local v12, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-object v13, v12

    move-object v14, v11

    invoke-virtual {v13, v14}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 448
    move-object v13, v6

    move-object v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 449
    goto :goto_0

    .line 438
    .end local v11    # "animator":Landroid/animation/ObjectAnimator;
    .end local v12    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_2
    move-object v13, v8

    sget-object v14, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [I

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move/from16 v18, v9

    aput v18, v16, v17

    .line 439
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object v11, v13

    .restart local v11    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v2, p1

    .local v2, "dependency":Landroid/view/View;
    move-object/from16 v3, p2

    .local v3, "child":Landroid/view/View;
    move/from16 v4, p3

    .local v4, "expanded":Z
    move/from16 v5, p4

    .local v5, "currentlyAnimating":Z
    move-object/from16 v6, p5

    .local v6, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v7, p6

    .local v7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v8, p7

    .local v8, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v12, v3

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v12

    move-object v13, v2

    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v13

    sub-float/2addr v12, v13

    move v9, v12

    .line 190
    .local v9, "translationZ":F
    move v12, v4

    if-eqz v12, :cond_1

    .line 191
    move v12, v5

    if-nez v12, :cond_0

    .line 192
    move-object v12, v3

    move v13, v9

    neg-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationZ(F)V

    .line 194
    :cond_0
    move-object v12, v3

    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object v10, v12

    .line 199
    .local v10, "animator":Landroid/animation/Animator;
    :goto_0
    move-object v12, v6

    iget-object v12, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo v13, "elevation"

    invoke-virtual {v12, v13}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v12

    move-object v11, v12

    .line 200
    .local v11, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-object v12, v11

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 201
    move-object v12, v7

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 202
    return-void

    .line 196
    .end local v10    # "animator":Landroid/animation/Animator;
    .end local v11    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_1
    move-object v12, v3

    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move/from16 v17, v9

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object v10, v12

    .restart local v10    # "animator":Landroid/animation/Animator;
    goto :goto_0
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v3, p1

    .local v3, "dependency":Landroid/view/View;
    move-object/from16 v4, p2

    .local v4, "child":Landroid/view/View;
    move/from16 v5, p3

    .local v5, "expanded":Z
    move/from16 v6, p4

    .local v6, "currentlyAnimating":Z
    move-object/from16 v7, p5

    .local v7, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move/from16 v8, p6

    .local v8, "childWidth":F
    move/from16 v9, p7

    .local v9, "childHeight":F
    move-object/from16 v10, p8

    .local v10, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v11, p9

    .local v11, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 335
    .line 409
    :goto_0
    return-void

    .line 337
    :cond_0
    move-object/from16 v20, v4

    check-cast v20, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object/from16 v12, v20

    .line 339
    .local v12, "circularRevealChild":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v20

    move/from16 v13, v20

    .line 340
    .local v13, "revealCenterX":F
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v20

    move/from16 v14, v20

    .line 341
    .local v14, "revealCenterY":F
    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v20

    .line 342
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v15, v20

    .line 345
    .local v15, "dependencyRadius":F
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v20, v0

    const-string/jumbo v21, "expansion"

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v20

    move-object/from16 v17, v20

    .line 347
    .local v17, "timing":Lcom/google/android/material/animation/MotionTiming;
    move/from16 v20, v5

    if-eqz v20, :cond_3

    .line 348
    move/from16 v20, v6

    if-nez v20, :cond_1

    .line 349
    move-object/from16 v20, v12

    new-instance v21, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    invoke-direct/range {v22 .. v25}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface/range {v20 .. v21}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 352
    :cond_1
    move/from16 v20, v6

    if-eqz v20, :cond_2

    move-object/from16 v20, v12

    .line 353
    invoke-interface/range {v20 .. v20}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move/from16 v20, v0

    :goto_1
    move/from16 v18, v20

    .line 354
    .local v18, "fromRadius":F
    move/from16 v20, v13

    move/from16 v21, v14

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v8

    move/from16 v25, v9

    .line 355
    invoke-static/range {v20 .. v25}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v20

    move/from16 v19, v20

    .line 358
    .local v19, "toRadius":F
    move-object/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v19

    .line 359
    invoke-static/range {v20 .. v23}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v16, v20

    .line 361
    .local v16, "animator":Landroid/animation/Animator;
    move-object/from16 v20, v16

    new-instance v21, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    move-object/from16 v23, v2

    move-object/from16 v24, v12

    invoke-direct/range {v22 .. v24}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v17

    .line 375
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v22

    move/from16 v24, v13

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v14

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v26, v18

    move-object/from16 v27, v10

    .line 373
    invoke-direct/range {v20 .. v27}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 381
    .line 406
    :goto_2
    move-object/from16 v20, v17

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 407
    move-object/from16 v20, v10

    move-object/from16 v21, v16

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 408
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-static/range {v21 .. v21}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 409
    goto/16 :goto_0

    .line 353
    .end local v16    # "animator":Landroid/animation/Animator;
    .end local v18    # "fromRadius":F
    .end local v19    # "toRadius":F
    :cond_2
    move/from16 v20, v15

    goto :goto_1

    .line 382
    :cond_3
    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move/from16 v20, v0

    move/from16 v18, v20

    .line 383
    .restart local v18    # "fromRadius":F
    move/from16 v20, v15

    move/from16 v19, v20

    .line 384
    .restart local v19    # "toRadius":F
    move-object/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v19

    .line 385
    invoke-static/range {v20 .. v23}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v16, v20

    .line 388
    .restart local v16    # "animator":Landroid/animation/Animator;
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v17

    .line 390
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v22

    move/from16 v24, v13

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v14

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v26, v18

    move-object/from16 v27, v10

    .line 388
    invoke-direct/range {v20 .. v27}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 395
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v17

    .line 397
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v22

    move-object/from16 v24, v17

    .line 398
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v24

    move-object/from16 v26, v7

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v26, v0

    .line 399
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v26

    move/from16 v28, v13

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v29, v14

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v30, v19

    move-object/from16 v31, v10

    .line 395
    invoke-direct/range {v20 .. v31}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    goto/16 :goto_2
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "expanded":Z
    move/from16 v4, p4

    .local v4, "currentlyAnimating":Z
    move-object/from16 v5, p5

    .local v5, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v6, p6

    .local v6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v7, p7

    .local v7, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v13, v2

    instance-of v13, v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v13, :cond_0

    move-object v13, v1

    instance-of v13, v13, Landroid/widget/ImageView;

    if-nez v13, :cond_1

    .line 273
    .line 322
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    move-object v13, v2

    check-cast v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v8, v13

    .line 277
    .local v8, "circularRevealChild":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    move-object v9, v13

    .line 278
    .local v9, "dependencyImageView":Landroid/widget/ImageView;
    move-object v13, v9

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v10, v13

    .line 280
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    move-object v13, v10

    if-nez v13, :cond_2

    .line 281
    goto :goto_0

    .line 283
    :cond_2
    move-object v13, v10

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 287
    move v13, v3

    if-eqz v13, :cond_4

    .line 288
    move v13, v4

    if-nez v13, :cond_3

    .line 289
    move-object v13, v10

    const/16 v14, 0xff

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 291
    :cond_3
    move-object v13, v10

    sget-object v14, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [I

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object v11, v13

    .line 296
    .local v11, "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    move-object v13, v11

    new-instance v14, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v17}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    move-object v13, v5

    iget-object v13, v13, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo v14, "iconFade"

    invoke-virtual {v13, v14}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v13

    move-object v12, v13

    .line 307
    .local v12, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-object v13, v12

    move-object v14, v11

    invoke-virtual {v13, v14}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 308
    move-object v13, v6

    move-object v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 309
    move-object v13, v7

    new-instance v14, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    invoke-direct/range {v15 .. v18}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 322
    goto :goto_0

    .line 293
    .end local v11    # "animator":Landroid/animation/ObjectAnimator;
    .end local v12    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_4
    move-object v13, v10

    sget-object v14, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [I

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const/16 v18, 0xff

    aput v18, v16, v17

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object v11, v13

    .restart local v11    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move-wide/from16 v2, p2

    .local v2, "delay":J
    move-wide/from16 v4, p4

    .local v4, "duration":J
    move-wide/from16 v6, p6

    .local v6, "totalDuration":J
    move/from16 v8, p8

    .local v8, "revealCenterX":I
    move/from16 v9, p9

    .local v9, "revealCenterY":I
    move/from16 v10, p10

    .local v10, "toRadius":F
    move-object/from16 v11, p11

    .local v11, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_0

    .line 697
    move-wide v13, v2

    move-wide v15, v4

    add-long/2addr v13, v15

    move-wide v15, v6

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    .line 698
    move-object v13, v1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v10

    .line 699
    invoke-static/range {v13 .. v17}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v13

    move-object v12, v13

    .line 701
    .local v12, "animator":Landroid/animation/Animator;
    move-object v13, v12

    move-wide v14, v2

    move-wide/from16 v16, v4

    add-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 702
    move-object v13, v12

    move-wide v14, v6

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    add-long v16, v16, v18

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v13

    .line 703
    move-object v13, v11

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 706
    .end local v12    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-wide/from16 v2, p2

    .local v2, "delay":J
    move/from16 v4, p4

    .local v4, "revealCenterX":I
    move/from16 v5, p5

    .local v5, "revealCenterY":I
    move/from16 v6, p6

    .local v6, "fromRadius":F
    move-object/from16 v7, p7

    .local v7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_0

    .line 675
    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 676
    move-object v9, v1

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v6

    .line 677
    invoke-static {v9, v10, v11, v12, v13}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v9

    move-object v8, v9

    .line 679
    .local v8, "animator":Landroid/animation/Animator;
    move-object v9, v8

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 680
    move-object v9, v8

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 681
    move-object v9, v7

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 684
    .end local v8    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v2, p1

    .local v2, "dependency":Landroid/view/View;
    move-object/from16 v3, p2

    .local v3, "child":Landroid/view/View;
    move/from16 v4, p3

    .local v4, "expanded":Z
    move/from16 v5, p4

    .local v5, "currentlyAnimating":Z
    move-object/from16 v6, p5

    .local v6, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object/from16 v7, p6

    .local v7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v8, p7

    .local v8, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v9, p8

    .local v9, "childBounds":Landroid/graphics/RectF;
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v16

    move/from16 v10, v16

    .line 214
    .local v10, "translationX":F
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v16

    move/from16 v11, v16

    .line 221
    .local v11, "translationY":F
    move/from16 v16, v10

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_0

    move/from16 v16, v11

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_2

    .line 223
    :cond_0
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationXLinear"

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v16

    move-object/from16 v14, v16

    .line 224
    .local v14, "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationYLinear"

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v16

    move-object/from16 v15, v16

    .line 235
    .local v15, "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    :goto_0
    move/from16 v16, v4

    if-eqz v16, :cond_6

    .line 236
    move/from16 v16, v5

    if-nez v16, :cond_1

    .line 237
    move-object/from16 v16, v3

    move/from16 v17, v10

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    move-object/from16 v16, v3

    move/from16 v17, v11

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_1
    move-object/from16 v16, v3

    sget-object v17, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v12, v16

    .line 241
    .local v12, "translationXAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v16, v3

    sget-object v17, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v13, v16

    .line 243
    .local v13, "translationYAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move/from16 v21, v10

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v11

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v9

    invoke-direct/range {v16 .. v25}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    .line 258
    :goto_1
    move-object/from16 v16, v14

    move-object/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 259
    move-object/from16 v16, v15

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 260
    move-object/from16 v16, v7

    move-object/from16 v17, v12

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 261
    move-object/from16 v16, v7

    move-object/from16 v17, v13

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 262
    return-void

    .line 225
    .end local v12    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .end local v13    # "translationYAnimator":Landroid/animation/ValueAnimator;
    .end local v14    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    .end local v15    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    :cond_2
    move/from16 v16, v4

    if-eqz v16, :cond_3

    move/from16 v16, v11

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_4

    :cond_3
    move/from16 v16, v4

    if-nez v16, :cond_5

    move/from16 v16, v11

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_5

    .line 227
    :cond_4
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationXCurveUpwards"

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v16

    move-object/from16 v14, v16

    .line 228
    .restart local v14    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationYCurveUpwards"

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v16

    move-object/from16 v15, v16

    .restart local v15    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    goto/16 :goto_0

    .line 231
    .end local v14    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    .end local v15    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    :cond_5
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationXCurveDownwards"

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v16

    move-object/from16 v14, v16

    .line 232
    .restart local v14    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationYCurveDownwards"

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v16

    move-object/from16 v15, v16

    .restart local v15    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    goto/16 :goto_0

    .line 254
    :cond_6
    move-object/from16 v16, v3

    sget-object v17, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    move/from16 v21, v10

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v12, v16

    .line 255
    .restart local v12    # "translationXAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v16, v3

    sget-object v17, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    move/from16 v21, v11

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v13, v16

    .restart local v13    # "translationYAnimator":Landroid/animation/ValueAnimator;
    goto/16 :goto_1
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v2, v3

    .line 659
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 660
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    move v0, v3

    .line 662
    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 651
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v2

    .line 653
    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 89
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_0
    move-object v5, v3

    instance-of v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v5, :cond_3

    .line 94
    move-object v5, v3

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 95
    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v5

    move v4, v5

    .line 96
    .local v4, "expandedComponentIdHint":I
    move v5, v4

    if-eqz v5, :cond_1

    move v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 98
    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    .end local v4    # "expandedComponentIdHint":I
    :goto_1
    return v0

    .line 96
    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    .restart local v4    # "expandedComponentIdHint":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 98
    .end local v4    # "expandedComponentIdHint":I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 4
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v1, p1

    .local v1, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v2, v1

    iget v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v2, :cond_0

    .line 107
    move-object v2, v1

    const/16 v3, 0x50

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 109
    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 25
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object/from16 v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "expanded":Z
    move/from16 v4, p4

    .local v4, "isAnimating":Z
    move-object v14, v0

    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v14

    move-object v5, v14

    .line 117
    .local v5, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    .line 118
    .local v6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v14

    .line 120
    .local v7, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_0

    .line 121
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 125
    :cond_0
    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v8, v14

    .line 126
    .local v8, "childBounds":Landroid/graphics/RectF;
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v14 .. v22}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 128
    move-object v14, v8

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    move v9, v14

    .line 129
    .local v9, "childWidth":F
    move-object v14, v8

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    move v10, v14

    .line 131
    .local v10, "childHeight":F
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 132
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-direct/range {v14 .. v23}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    .line 142
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 143
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 146
    new-instance v14, Landroid/animation/AnimatorSet;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v11, v14

    .line 147
    .local v11, "set":Landroid/animation/AnimatorSet;
    move-object v14, v11

    move-object v15, v6

    invoke-static {v14, v15}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 148
    move-object v14, v11

    new-instance v15, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v0

    move/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    invoke-direct/range {v16 .. v20}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i":I
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v13, v14

    .local v13, "count":I
    :goto_0
    move v14, v12

    move v15, v13

    if-ge v14, v15, :cond_1

    .line 171
    move-object v14, v11

    move-object v15, v7

    move/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 173
    :cond_1
    move-object v14, v11

    move-object v0, v14

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationBehavior;
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
