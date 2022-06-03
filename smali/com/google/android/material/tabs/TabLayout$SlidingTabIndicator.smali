.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorAnimator:Landroid/animation/ValueAnimator;

.field private indicatorLeft:I

.field private indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 2385
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2386
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2375
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2378
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2380
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2381
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2387
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2388
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2389
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2390
    return-void
.end method

.method private calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V
    .locals 12

    .prologue
    .line 2632
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move-object v1, p1

    .local v1, "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v2, p2

    .local v2, "contentBounds":Landroid/graphics/RectF;
    move-object v7, v1

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$500(Lcom/google/android/material/tabs/TabLayout$TabView;)I

    move-result v7

    move v3, v7

    .line 2634
    .local v3, "tabViewContentWidth":I
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 2635
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v7

    move v3, v7

    .line 2638
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v4, v7

    .line 2639
    .local v4, "tabViewCenter":I
    move v7, v4

    move v8, v3

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    move v5, v7

    .line 2640
    .local v5, "contentLeftBounds":I
    move v7, v4

    move v8, v3

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move v6, v7

    .line 2642
    .local v6, "contentRightBounds":I
    move-object v7, v2

    move v8, v5

    int-to-float v8, v8

    const/4 v9, 0x0

    move v10, v6

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2643
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 11

    .prologue
    .line 2519
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v1, v7

    .line 2523
    .local v1, "selectedTitle":Landroid/view/View;
    move-object v7, v1

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    .line 2524
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move v2, v7

    .line 2525
    .local v2, "left":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    move v3, v7

    .line 2527
    .local v3, "right":I
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v7, :cond_0

    move-object v7, v1

    instance-of v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v7, :cond_0

    .line 2528
    move-object v7, v0

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v9}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2529
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    move v2, v7

    .line 2530
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move v3, v7

    .line 2533
    :cond_0
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 2535
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2536
    .local v4, "nextTitle":Landroid/view/View;
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move v5, v7

    .line 2537
    .local v5, "nextTitleLeft":I
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    move v6, v7

    .line 2539
    .local v6, "nextTitleRight":I
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v7, :cond_1

    move-object v7, v4

    instance-of v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v7, :cond_1

    .line 2540
    move-object v7, v0

    move-object v8, v4

    check-cast v8, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v9}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2541
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    move v5, v7

    .line 2542
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move v6, v7

    .line 2545
    :cond_1
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    move v8, v5

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    sub-float/2addr v8, v9

    move v9, v2

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    move v2, v7

    .line 2546
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    move v8, v6

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    sub-float/2addr v8, v9

    move v9, v3

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    move v3, v7

    .line 2553
    .end local v4    # "nextTitle":Landroid/view/View;
    .end local v5    # "nextTitleLeft":I
    .end local v6    # "nextTitleRight":I
    :cond_2
    :goto_0
    move-object v7, v0

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 2554
    return-void

    .line 2550
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_3
    const/4 v7, -0x1

    move v10, v7

    move v7, v10

    move v8, v10

    move v3, v8

    .restart local v3    # "right":I
    move v2, v7

    .restart local v2    # "left":I
    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 21

    .prologue
    .line 2566
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move/from16 v1, p1

    .local v1, "position":I
    move/from16 v2, p2

    .local v2, "duration":I
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2567
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2570
    :cond_0
    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v3, v11

    .line 2571
    .local v3, "targetView":Landroid/view/View;
    move-object v11, v3

    if-nez v11, :cond_1

    .line 2573
    move-object v11, v0

    invoke-direct {v11}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2574
    .line 2617
    :goto_0
    return-void

    .line 2577
    :cond_1
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    move v4, v11

    .line 2578
    .local v4, "targetLeft":I
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    move v5, v11

    .line 2580
    .local v5, "targetRight":I
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v11, v11, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v11, :cond_2

    move-object v11, v3

    instance-of v11, v11, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v11, :cond_2

    .line 2581
    move-object v11, v0

    move-object v12, v3

    check-cast v12, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v13}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2582
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v11}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    move v4, v11

    .line 2583
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v11}, Lcom/google/android/material/tabs/TabLayout;->access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    move v5, v11

    .line 2586
    :cond_2
    move v11, v4

    move v6, v11

    .line 2587
    .local v6, "finalTargetLeft":I
    move v11, v5

    move v7, v11

    .line 2589
    .local v7, "finalTargetRight":I
    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    move v8, v11

    .line 2590
    .local v8, "startLeft":I
    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    move v9, v11

    .line 2592
    .local v9, "startRight":I
    move v11, v8

    move v12, v6

    if-ne v11, v12, :cond_3

    move v11, v9

    move v12, v7

    if-eq v11, v12, :cond_4

    .line 2593
    :cond_3
    move-object v11, v0

    new-instance v12, Landroid/animation/ValueAnimator;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Landroid/animation/ValueAnimator;-><init>()V

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    iput-object v13, v12, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    move-object v10, v11

    .line 2594
    .local v10, "animator":Landroid/animation/ValueAnimator;
    move-object v11, v10

    sget-object v12, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2595
    move-object v11, v10

    move v12, v2

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 2596
    move-object v11, v10

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2597
    move-object v11, v10

    new-instance v12, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v0

    move v15, v8

    move/from16 v16, v6

    move/from16 v17, v9

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;IIII)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2607
    move-object v11, v10

    new-instance v12, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v0

    move v15, v1

    invoke-direct {v13, v14, v15}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2615
    move-object v11, v10

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 2617
    .end local v10    # "animator":Landroid/animation/ValueAnimator;
    :cond_4
    goto/16 :goto_0

    .line 2596
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 6

    .prologue
    .line 2407
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v4

    move v2, v4

    .local v2, "z":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 2408
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 2409
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gtz v4, :cond_0

    .line 2410
    const/4 v4, 0x1

    move v0, v4

    .line 2413
    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    return v0

    .line 2407
    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    .restart local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2413
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 2647
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    move v2, v6

    .line 2648
    .local v2, "indicatorHeight":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 2649
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move v2, v6

    .line 2651
    :cond_0
    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v6, :cond_1

    .line 2652
    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    move v2, v6

    .line 2655
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    .line 2656
    .local v3, "indicatorTop":I
    const/4 v6, 0x0

    move v4, v6

    .line 2658
    .local v4, "indicatorBottom":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    packed-switch v6, :pswitch_data_0

    .line 2680
    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-le v6, v7, :cond_3

    .line 2682
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 2683
    :goto_1
    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 2685
    .local v5, "selectedIndicator":Landroid/graphics/drawable/Drawable;
    move-object v6, v5

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2686
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_2

    .line 2687
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_5

    .line 2689
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2690
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2689
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2695
    :cond_2
    :goto_2
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2699
    .end local v5    # "selectedIndicator":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2700
    return-void

    .line 2660
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    move v3, v6

    .line 2661
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v6

    move v4, v6

    .line 2662
    goto :goto_0

    .line 2664
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v3, v6

    .line 2665
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v6

    move v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 2666
    goto :goto_0

    .line 2668
    :pswitch_2
    const/4 v6, 0x0

    move v3, v6

    .line 2669
    move v6, v2

    move v4, v6

    .line 2670
    goto :goto_0

    .line 2672
    :pswitch_3
    const/4 v6, 0x0

    move v3, v6

    .line 2673
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v6

    move v4, v6

    .line 2674
    goto :goto_0

    .line 2682
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    .line 2692
    .restart local v5    # "selectedIndicator":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 2658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getIndicatorPosition()F
    .locals 3

    .prologue
    .line 2427
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v1, v1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 2502
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "l":I
    move/from16 v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-super/range {v8 .. v13}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2504
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2507
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2508
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    move-wide v6, v8

    .line 2509
    .local v6, "duration":J
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2511
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v11

    sub-float/2addr v10, v11

    move-wide v11, v6

    long-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 2509
    invoke-virtual {v8, v9, v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 2512
    .line 2516
    .end local v6    # "duration":J
    :goto_0
    return-void

    .line 2514
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 2446
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2448
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_0

    .line 2451
    .line 2498
    :goto_0
    return-void

    .line 2454
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 2455
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v9

    move v3, v9

    .line 2458
    .local v3, "count":I
    const/4 v9, 0x0

    move v4, v9

    .line 2459
    .local v4, "largestTabWidth":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    move v9, v3

    move v6, v9

    .local v6, "z":I
    :goto_1
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 2460
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2461
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 2462
    move v9, v4

    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v4, v9

    .line 2459
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2466
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move v9, v4

    if-gtz v9, :cond_3

    .line 2468
    goto :goto_0

    .line 2471
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v9

    move v5, v9

    .line 2472
    .local v5, "gutter":I
    const/4 v9, 0x0

    move v6, v9

    .line 2474
    .local v6, "remeasure":Z
    move v9, v4

    move v10, v3

    mul-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v10

    move v11, v5

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_8

    .line 2477
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_2
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_6

    .line 2478
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v8, v9

    .line 2479
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v9, v8

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v10, v4

    if-ne v9, v10, :cond_4

    move-object v9, v8

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    .line 2480
    :cond_4
    move-object v9, v8

    move v10, v4

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2481
    move-object v9, v8

    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2482
    const/4 v9, 0x1

    move v6, v9

    .line 2477
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2493
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    :goto_3
    move v9, v6

    if-eqz v9, :cond_7

    .line 2495
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2498
    .end local v3    # "count":I
    .end local v4    # "largestTabWidth":I
    .end local v5    # "gutter":I
    .end local v6    # "remeasure":Z
    :cond_7
    goto/16 :goto_0

    .line 2488
    .restart local v3    # "count":I
    .restart local v4    # "largestTabWidth":I
    .restart local v5    # "gutter":I
    .restart local v6    # "remeasure":Z
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    const/4 v10, 0x0

    iput v10, v9, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 2489
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 2490
    const/4 v9, 0x1

    move v6, v9

    goto :goto_3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    .prologue
    .line 2432
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "layoutDirection":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2436
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 2437
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2438
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2439
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2442
    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 5

    .prologue
    .line 2557
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "right":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq v3, v4, :cond_1

    .line 2559
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2560
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2561
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2563
    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 5

    .prologue
    .line 2417
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "positionOffset":F
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2418
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2421
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2422
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 2423
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2424
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 4

    .prologue
    .line 2393
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2394
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2395
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2397
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 4

    .prologue
    .line 2400
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v1, p1

    .local v1, "height":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2401
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2402
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2404
    :cond_0
    return-void
.end method
