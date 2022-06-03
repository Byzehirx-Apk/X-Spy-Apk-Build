.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Landroid/graphics/Rect;

.field final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 39
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 40
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 42
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 40
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 49
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 2

    .prologue
    .line 162
    move v0, p0

    .local v0, "gravity":I
    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800033

    :goto_0
    move v0, v1

    .end local v0    # "gravity":I
    return v0

    .restart local v0    # "gravity":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, p1

    .local v1, "header":Landroid/view/View;
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    .line 158
    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    goto :goto_0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, p1

    .local v1, "header":Landroid/view/View;
    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    return v0
.end method

.method public final getOverlayTop()I
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 19

    .prologue
    .line 107
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object/from16 v2, p1

    .local v2, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v3, p2

    .local v3, "child":Landroid/view/View;
    move/from16 v4, p3

    .local v4, "layoutDirection":I
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v12

    move-object v5, v12

    .line 108
    .local v5, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v12, v13}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v12

    move-object v6, v12

    .line 110
    .local v6, "header":Landroid/view/View;
    move-object v12, v6

    if-eqz v12, :cond_1

    .line 111
    move-object v12, v3

    .line 112
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v12

    .line 113
    .local v7, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    move-object v8, v12

    .line 114
    .local v8, "available":Landroid/graphics/Rect;
    move-object v12, v8

    move-object v13, v2

    .line 115
    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v13

    move-object v14, v7

    iget v14, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v6

    .line 116
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object v15, v7

    iget v15, v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    move-object v15, v2

    .line 117
    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v15

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v16, v2

    .line 118
    invoke-virtual/range {v16 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v16

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    .line 114
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v12

    move-object v9, v12

    .line 121
    .local v9, "parentInsets":Landroidx/core/view/WindowInsetsCompat;
    move-object v12, v9

    if-eqz v12, :cond_0

    move-object v12, v2

    .line 122
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v3

    .line 123
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 127
    move-object v12, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 128
    move-object v12, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 131
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    move-object v10, v12

    .line 132
    .local v10, "out":Landroid/graphics/Rect;
    move-object v12, v7

    iget v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 133
    invoke-static {v12}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v12

    move-object v13, v3

    .line 134
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object v14, v3

    .line 135
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object v15, v8

    move-object/from16 v16, v10

    move/from16 v17, v4

    .line 132
    invoke-static/range {v12 .. v17}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 140
    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v12, v13}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v12

    move v11, v12

    .line 142
    .local v11, "overlap":I
    move-object v12, v3

    move-object v13, v10

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v10

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move v15, v11

    sub-int/2addr v14, v15

    move-object v15, v10

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v17, v11

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 143
    move-object v12, v1

    move-object v13, v10

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object v14, v6

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v12, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 144
    .line 149
    .end local v7    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "available":Landroid/graphics/Rect;
    .end local v9    # "parentInsets":Landroidx/core/view/WindowInsetsCompat;
    .end local v10    # "out":Landroid/graphics/Rect;
    .end local v11    # "overlap":I
    :goto_0
    return-void

    .line 146
    :cond_1
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    invoke-super {v12, v13, v14, v15}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 147
    move-object v12, v1

    const/4 v13, 0x0

    iput v13, v12, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    goto :goto_0
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 19

    .prologue
    .line 59
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move-object/from16 v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "parentWidthMeasureSpec":I
    move/from16 v4, p4

    .local v4, "widthUsed":I
    move/from16 v5, p5

    .local v5, "parentHeightMeasureSpec":I
    move/from16 v6, p6

    .local v6, "heightUsed":I
    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v7, v13

    .line 60
    .local v7, "childLpHeight":I
    move v13, v7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move v13, v7

    const/4 v14, -0x2

    if-ne v13, v14, :cond_4

    .line 65
    :cond_0
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v13

    move-object v8, v13

    .line 66
    .local v8, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v13

    move-object v9, v13

    .line 67
    .local v9, "header":Landroid/view/View;
    move-object v13, v9

    if-eqz v13, :cond_4

    .line 68
    move-object v13, v9

    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v2

    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 71
    move-object v13, v2

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 73
    move-object v13, v2

    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 75
    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->requestLayout()V

    .line 76
    const/4 v13, 0x1

    move v0, v13

    .line 101
    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "header":Landroid/view/View;
    :goto_0
    return v0

    .line 80
    .restart local v0    # "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    .restart local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v9    # "header":Landroid/view/View;
    :cond_1
    move v13, v5

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v10, v13

    .line 81
    .local v10, "availableHeight":I
    move v13, v10

    if-nez v13, :cond_2

    .line 83
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v13

    move v10, v13

    .line 86
    :cond_2
    move v13, v10

    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    move-object v14, v0

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v14

    add-int/2addr v13, v14

    move v11, v13

    .line 87
    .local v11, "height":I
    move v13, v11

    move v14, v7

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    const/high16 v14, 0x40000000    # 2.0f

    .line 88
    :goto_1
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v12, v13

    .line 95
    .local v12, "heightMeasureSpec":I
    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 98
    const/4 v13, 0x1

    move v0, v13

    goto :goto_0

    .line 87
    .end local v12    # "heightMeasureSpec":I
    :cond_3
    const/high16 v14, -0x80000000

    goto :goto_1

    .line 101
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "header":Landroid/view/View;
    .end local v10    # "availableHeight":I
    .end local v11    # "height":I
    :cond_4
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0
.end method

.method public final setOverlayTop(I)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
    move v1, p1

    .local v1, "overlayTop":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 186
    return-void
.end method
