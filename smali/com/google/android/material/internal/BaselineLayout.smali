.class public Lcom/google/android/material/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private baseline:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/BaselineLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/BaselineLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/BaselineLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    .line 43
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/BaselineLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/BaselineLayout;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 25

    .prologue
    .line 85
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/internal/BaselineLayout;
    move/from16 v3, p1

    .local v3, "changed":Z
    move/from16 v4, p2

    .local v4, "left":I
    move/from16 v5, p3

    .local v5, "top":I
    move/from16 v6, p4

    .local v6, "right":I
    move/from16 v7, p5

    .local v7, "bottom":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    move-result v19

    move/from16 v8, v19

    .line 86
    .local v8, "count":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingLeft()I

    move-result v19

    move/from16 v9, v19

    .line 87
    .local v9, "parentLeft":I
    move/from16 v19, v6

    move/from16 v20, v4

    sub-int v19, v19, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v10, v19

    .line 88
    .local v10, "parentRight":I
    move/from16 v19, v10

    move/from16 v20, v9

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 89
    .local v11, "parentContentWidth":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingTop()I

    move-result v19

    move/from16 v12, v19

    .line 91
    .local v12, "parentTop":I
    const/16 v19, 0x0

    move/from16 v13, v19

    .local v13, "i":I
    :goto_0
    move/from16 v19, v13

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 92
    move-object/from16 v19, v2

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v14, v19

    .line 93
    .local v14, "child":Landroid/view/View;
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 94
    .line 91
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 97
    :cond_0
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v15, v19

    .line 98
    .local v15, "width":I
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v16, v19

    .line 100
    .local v16, "height":I
    move/from16 v19, v9

    move/from16 v20, v11

    move/from16 v21, v15

    sub-int v20, v20, v21

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v17, v19

    .line 102
    .local v17, "childLeft":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBaseline()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 103
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBaseline()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v18, v19

    .line 108
    .local v18, "childTop":I
    :goto_2
    move-object/from16 v19, v14

    move/from16 v20, v17

    move/from16 v21, v18

    move/from16 v22, v17

    move/from16 v23, v15

    add-int v22, v22, v23

    move/from16 v23, v18

    move/from16 v24, v16

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 105
    .end local v18    # "childTop":I
    :cond_1
    move/from16 v19, v12

    move/from16 v18, v19

    .restart local v18    # "childTop":I
    goto :goto_2

    .line 110
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "width":I
    .end local v16    # "height":I
    .end local v17    # "childLeft":I
    .end local v18    # "childTop":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    .prologue
    .line 47
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/internal/BaselineLayout;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    move-result v12

    move v3, v12

    .line 48
    .local v3, "count":I
    const/4 v12, 0x0

    move v4, v12

    .line 49
    .local v4, "maxWidth":I
    const/4 v12, 0x0

    move v5, v12

    .line 50
    .local v5, "maxHeight":I
    const/4 v12, -0x1

    move v6, v12

    .line 51
    .local v6, "maxChildBaseline":I
    const/4 v12, -0x1

    move v7, v12

    .line 52
    .local v7, "maxChildDescent":I
    const/4 v12, 0x0

    move v8, v12

    .line 54
    .local v8, "childState":I
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_0
    move v12, v9

    move v13, v3

    if-ge v12, v13, :cond_2

    .line 55
    move-object v12, v0

    move v13, v9

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v10, v12

    .line 56
    .local v10, "child":Landroid/view/View;
    move-object v12, v10

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 57
    .line 54
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    :cond_0
    move-object v12, v0

    move-object v13, v10

    move v14, v1

    move v15, v2

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/material/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    .line 61
    move-object v12, v10

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v12

    move v11, v12

    .line 62
    .local v11, "baseline":I
    move v12, v11

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 63
    move v12, v6

    move v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v6, v12

    .line 64
    move v12, v7

    move-object v13, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move v14, v11

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v7, v12

    .line 66
    :cond_1
    move v12, v4

    move-object v13, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 67
    move v12, v5

    move-object v13, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v5, v12

    .line 68
    move v12, v8

    move-object v13, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    invoke-static {v12, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v8, v12

    goto :goto_1

    .line 70
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "baseline":I
    :cond_2
    move v12, v6

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 71
    move v12, v7

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingBottom()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v7, v12

    .line 72
    move v12, v5

    move v13, v6

    move v14, v7

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v5, v12

    .line 73
    move-object v12, v0

    move v13, v6

    iput v13, v12, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    .line 75
    :cond_3
    move v12, v5

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v5, v12

    .line 76
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 77
    move-object v12, v0

    move v13, v4

    move v14, v1

    move v15, v8

    .line 78
    invoke-static {v13, v14, v15}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    move v14, v5

    move v15, v2

    move/from16 v16, v8

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    .line 79
    invoke-static/range {v14 .. v16}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v14

    .line 77
    invoke-virtual {v12, v13, v14}, Lcom/google/android/material/internal/BaselineLayout;->setMeasuredDimension(II)V

    .line 81
    return-void
.end method
