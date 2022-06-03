.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 1561
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1563
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 1564
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1565
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v7, 0x0

    .line 1566
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1565
    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1567
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 3

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "abl":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v2, v0

    .line 1644
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    move-object v1, v2

    .line 1645
    .local v1, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v2, :cond_0

    .line 1646
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    move v0, v2

    .line 1648
    .end local v0    # "abl":Lcom/google/android/material/appbar/AppBarLayout;
    :goto_0
    return v0

    .restart local v0    # "abl":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 1605
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "dependency":Landroid/view/View;
    move-object v5, v2

    .line 1606
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    move-object v3, v5

    .line 1607
    .local v3, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v5, v3

    instance-of v5, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v5, :cond_0

    .line 1610
    move-object v5, v3

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    move-object v4, v5

    .line 1611
    .local v4, "ablBehavior":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    move-object v5, v1

    move-object v6, v2

    .line 1613
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v4

    .line 1614
    invoke-static {v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->access$000(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v0

    .line 1615
    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v0

    move-object v8, v2

    .line 1616
    invoke-virtual {v7, v8}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1611
    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1618
    .end local v4    # "ablBehavior":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    :cond_0
    return-void
.end method

.method private updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1672
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "dependency":Landroid/view/View;
    move-object v4, v2

    instance-of v4, v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_0

    .line 1673
    move-object v4, v2

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v3, v4

    .line 1674
    .local v3, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1675
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result v4

    .line 1678
    .end local v3    # "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    return-void

    .line 1675
    .restart local v3    # "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 4

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return-object v0
.end method

.method findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/appbar/AppBarLayout;"
        }
    .end annotation

    .prologue
    .line 1653
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "z":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1654
    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 1655
    .local v4, "view":Landroid/view/View;
    move-object v5, v4

    instance-of v5, v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    .line 1656
    move-object v5, v4

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, v5

    .line 1659
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    .end local v4    # "view":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1653
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    .restart local v4    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1659
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 10

    .prologue
    .line 1622
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "header":Landroid/view/View;
    move-object v7, v1

    instance-of v7, v7, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v7, :cond_1

    .line 1623
    move-object v7, v1

    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v2, v7

    .line 1624
    .local v2, "abl":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v7

    move v3, v7

    .line 1625
    .local v3, "totalScrollRange":I
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v7

    move v4, v7

    .line 1626
    .local v4, "preScrollDown":I
    move-object v7, v2

    invoke-static {v7}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result v7

    move v5, v7

    .line 1628
    .local v5, "offset":I
    move v7, v4

    if-eqz v7, :cond_0

    move v7, v3

    move v8, v5

    add-int/2addr v7, v8

    move v8, v4

    if-gt v7, v8, :cond_0

    .line 1630
    const/4 v7, 0x0

    move v0, v7

    .line 1639
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    .end local v2    # "abl":Lcom/google/android/material/appbar/AppBarLayout;
    .end local v3    # "totalScrollRange":I
    .end local v4    # "preScrollDown":I
    .end local v5    # "offset":I
    :goto_0
    return v0

    .line 1632
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    .restart local v2    # "abl":Lcom/google/android/material/appbar/AppBarLayout;
    .restart local v3    # "totalScrollRange":I
    .restart local v4    # "preScrollDown":I
    .restart local v5    # "offset":I
    :cond_0
    move v7, v3

    move v8, v4

    sub-int/2addr v7, v8

    move v6, v7

    .line 1633
    .local v6, "availScrollRange":I
    move v7, v6

    if-eqz v7, :cond_1

    .line 1635
    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v5

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 1639
    .end local v2    # "abl":Lcom/google/android/material/appbar/AppBarLayout;
    .end local v3    # "totalScrollRange":I
    .end local v4    # "preScrollDown":I
    .end local v5    # "offset":I
    .end local v6    # "availScrollRange":I
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 1664
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 1665
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    move v0, v2

    .line 1667
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1573
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/appbar/AppBarLayout;

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1579
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1580
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 14

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method public onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    .prologue
    .line 1586
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "rectangle":Landroid/graphics/Rect;
    move/from16 v4, p4

    .local v4, "immediate":Z
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v7

    move-object v5, v7

    .line 1587
    .local v5, "header":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 1589
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1591
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    move-object v6, v7

    .line 1592
    .local v6, "parentRect":Landroid/graphics/Rect;
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1594
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1597
    move-object v7, v5

    const/4 v8, 0x0

    move v9, v4

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 1598
    const/4 v7, 0x1

    move v0, v7

    .line 1601
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    .end local v6    # "parentRect":Landroid/graphics/Rect;
    :goto_1
    return v0

    .line 1597
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    .restart local v6    # "parentRect":Landroid/graphics/Rect;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1601
    .end local v6    # "parentRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    return v0
.end method
