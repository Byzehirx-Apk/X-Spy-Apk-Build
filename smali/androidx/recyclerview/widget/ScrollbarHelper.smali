.class Landroidx/recyclerview/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ScrollbarHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 10

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, p1

    .local v1, "orientation":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v2, p2

    .local v2, "startChild":Landroid/view/View;
    move-object v3, p3

    .local v3, "endChild":Landroid/view/View;
    move-object v4, p4

    .local v4, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v5, p5

    .local v5, "smoothScrollbarEnabled":Z
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_1

    .line 65
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 72
    .end local v0    # "state":Landroidx/recyclerview/widget/RecyclerView$State;
    :goto_0
    return v0

    .line 67
    .restart local v0    # "state":Landroidx/recyclerview/widget/RecyclerView$State;
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 68
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    goto :goto_0

    .line 70
    :cond_2
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v1

    move-object v9, v2

    .line 71
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 72
    .local v6, "extend":I
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    move v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method static computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 17

    .prologue
    .line 32
    move-object/from16 v0, p0

    .local v0, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v1, p1

    .local v1, "orientation":Landroidx/recyclerview/widget/OrientationHelper;
    move-object/from16 v2, p2

    .local v2, "startChild":Landroid/view/View;
    move-object/from16 v3, p3

    .local v3, "endChild":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move/from16 v5, p5

    .local v5, "smoothScrollbarEnabled":Z
    move/from16 v6, p6

    .local v6, "reverseLayout":Z
    move-object v13, v4

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v2

    if-eqz v13, :cond_0

    move-object v13, v3

    if-nez v13, :cond_1

    .line 34
    :cond_0
    const/4 v13, 0x0

    move v0, v13

    .line 52
    .end local v0    # "state":Landroidx/recyclerview/widget/RecyclerView$State;
    :goto_0
    return v0

    .line 36
    .restart local v0    # "state":Landroidx/recyclerview/widget/RecyclerView$State;
    :cond_1
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move-object v14, v4

    move-object v15, v3

    .line 37
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    .line 36
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v7, v13

    .line 38
    .local v7, "minPosition":I
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move-object v14, v4

    move-object v15, v3

    .line 39
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    .line 38
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 40
    .local v8, "maxPosition":I
    move v13, v6

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    move-object v14, v0

    .line 41
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v14

    move v15, v8

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 42
    :goto_1
    move v9, v13

    .line 43
    .local v9, "itemsBefore":I
    move v13, v5

    if-nez v13, :cond_3

    .line 44
    move v13, v9

    move v0, v13

    goto :goto_0

    .line 41
    .end local v9    # "itemsBefore":I
    :cond_2
    const/4 v13, 0x0

    move v14, v7

    .line 42
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 46
    .restart local v9    # "itemsBefore":I
    :cond_3
    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    move-object v14, v1

    move-object v15, v2

    .line 47
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    sub-int/2addr v13, v14

    .line 46
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move v10, v13

    .line 48
    .local v10, "laidOutArea":I
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move-object v14, v4

    move-object v15, v3

    .line 49
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    sub-int/2addr v13, v14

    .line 48
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 50
    .local v11, "itemRange":I
    move v13, v10

    int-to-float v13, v13

    move v14, v11

    int-to-float v14, v14

    div-float/2addr v13, v14

    move v12, v13

    .line 52
    .local v12, "avgSizePerRow":F
    move v13, v9

    int-to-float v13, v13

    move v14, v12

    mul-float/2addr v13, v14

    move-object v14, v1

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    move-object v15, v1

    move-object/from16 v16, v2

    .line 53
    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    add-float/2addr v13, v14

    .line 52
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move v0, v13

    goto/16 :goto_0
.end method

.method static computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 11

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v1, p1

    .local v1, "orientation":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v2, p2

    .local v2, "startChild":Landroid/view/View;
    move-object v3, p3

    .local v3, "endChild":Landroid/view/View;
    move-object v4, p4

    .local v4, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move/from16 v5, p5

    .local v5, "smoothScrollbarEnabled":Z
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v3

    if-nez v8, :cond_1

    .line 84
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 96
    .end local v0    # "state":Landroidx/recyclerview/widget/RecyclerView$State;
    :goto_0
    return v0

    .line 86
    .restart local v0    # "state":Landroidx/recyclerview/widget/RecyclerView$State;
    :cond_1
    move v8, v5

    if-nez v8, :cond_2

    .line 87
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    move v0, v8

    goto :goto_0

    .line 90
    :cond_2
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move-object v9, v1

    move-object v10, v2

    .line 91
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    move v6, v8

    .line 92
    .local v6, "laidOutArea":I
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v4

    move-object v10, v3

    .line 93
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 92
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 96
    .local v7, "laidOutRange":I
    move v8, v6

    int-to-float v8, v8

    move v9, v7

    int-to-float v9, v9

    div-float/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v0, v8

    goto :goto_0
.end method
