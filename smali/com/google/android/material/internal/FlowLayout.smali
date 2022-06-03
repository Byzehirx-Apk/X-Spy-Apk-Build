.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
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

    .line 56
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 57
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move v4, p4

    .local v4, "defStyleRes":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 64
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 5

    .prologue
    .line 159
    move v0, p0

    .local v0, "size":I
    move v1, p1

    .local v1, "mode":I
    move v2, p2

    .local v2, "childrenEdge":I
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 165
    move v3, v2

    move v0, v3

    .end local v0    # "size":I
    :goto_0
    return v0

    .line 161
    .restart local v0    # "size":I
    :sswitch_0
    move v3, v0

    move v0, v3

    goto :goto_0

    .line 163
    :sswitch_1
    move v3, v2

    move v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v1

    .line 69
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 70
    .local v3, "array":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 71
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 72
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/FlowLayout;
    return v0
.end method

.method protected getLineSpacing()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/FlowLayout;
    return v0
.end method

.method protected isSingleLine()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/FlowLayout;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    .prologue
    .line 171
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/internal/FlowLayout;
    move/from16 v3, p1

    .local v3, "sizeChanged":Z
    move/from16 v4, p2

    .local v4, "left":I
    move/from16 v5, p3

    .local v5, "top":I
    move/from16 v6, p4

    .local v6, "right":I
    move/from16 v7, p5

    .local v7, "bottom":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v22

    if-nez v22, :cond_0

    .line 173
    .line 221
    :goto_0
    return-void

    .line 176
    :cond_0
    move-object/from16 v22, v2

    invoke-static/range {v22 .. v22}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    :goto_1
    move/from16 v8, v22

    .line 177
    .local v8, "isRtl":Z
    move/from16 v22, v8

    if-eqz v22, :cond_2

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v22

    :goto_2
    move/from16 v9, v22

    .line 178
    .local v9, "paddingStart":I
    move/from16 v22, v8

    if-eqz v22, :cond_3

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v22

    :goto_3
    move/from16 v10, v22

    .line 179
    .local v10, "paddingEnd":I
    move/from16 v22, v9

    move/from16 v11, v22

    .line 180
    .local v11, "childStart":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v22

    move/from16 v12, v22

    .line 181
    .local v12, "childTop":I
    move/from16 v22, v12

    move/from16 v13, v22

    .line 184
    .local v13, "childBottom":I
    move/from16 v22, v6

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v23, v10

    sub-int v22, v22, v23

    move/from16 v15, v22

    .line 186
    .local v15, "maxChildEnd":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .local v16, "i":I
    :goto_4
    move/from16 v22, v16

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 187
    move-object/from16 v22, v2

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v17, v22

    .line 189
    .local v17, "child":Landroid/view/View;
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 190
    .line 186
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 176
    .end local v8    # "isRtl":Z
    .end local v9    # "paddingStart":I
    .end local v10    # "paddingEnd":I
    .end local v11    # "childStart":I
    .end local v12    # "childTop":I
    .end local v13    # "childBottom":I
    .end local v15    # "maxChildEnd":I
    .end local v16    # "i":I
    .end local v17    # "child":Landroid/view/View;
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 177
    .restart local v8    # "isRtl":Z
    :cond_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v22

    goto :goto_2

    .line 178
    .restart local v9    # "paddingStart":I
    :cond_3
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v22

    goto :goto_3

    .line 193
    .restart local v10    # "paddingEnd":I
    .restart local v11    # "childStart":I
    .restart local v12    # "childTop":I
    .restart local v13    # "childBottom":I
    .restart local v15    # "maxChildEnd":I
    .restart local v16    # "i":I
    .restart local v17    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v18, v22

    .line 194
    .local v18, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 195
    .local v19, "startMargin":I
    const/16 v22, 0x0

    move/from16 v20, v22

    .line 196
    .local v20, "endMargin":I
    move-object/from16 v22, v18

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 197
    move-object/from16 v22, v18

    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v21, v22

    .line 198
    .local v21, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v22, v21

    invoke-static/range {v22 .. v22}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v22

    move/from16 v19, v22

    .line 199
    move-object/from16 v22, v21

    invoke-static/range {v22 .. v22}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v22

    move/from16 v20, v22

    .line 202
    .end local v21    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    move/from16 v22, v11

    move/from16 v23, v19

    add-int v22, v22, v23

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v14, v22

    .line 204
    .local v14, "childEnd":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 205
    move/from16 v22, v9

    move/from16 v11, v22

    .line 206
    move/from16 v22, v13

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v12, v22

    .line 209
    :cond_6
    move/from16 v22, v11

    move/from16 v23, v19

    add-int v22, v22, v23

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v14, v22

    .line 210
    move/from16 v22, v12

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 212
    move/from16 v22, v8

    if-eqz v22, :cond_7

    .line 213
    move-object/from16 v22, v17

    move/from16 v23, v15

    move/from16 v24, v14

    sub-int v23, v23, v24

    move/from16 v24, v12

    move/from16 v25, v15

    move/from16 v26, v11

    sub-int v25, v25, v26

    move/from16 v26, v19

    sub-int v25, v25, v26

    move/from16 v26, v13

    invoke-virtual/range {v22 .. v26}, Landroid/view/View;->layout(IIII)V

    .line 219
    :goto_6
    move/from16 v22, v11

    move/from16 v23, v19

    move/from16 v24, v20

    add-int v23, v23, v24

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v11, v22

    goto/16 :goto_5

    .line 216
    :cond_7
    move-object/from16 v22, v17

    move/from16 v23, v11

    move/from16 v24, v19

    add-int v23, v23, v24

    move/from16 v24, v12

    move/from16 v25, v14

    move/from16 v26, v13

    invoke-virtual/range {v22 .. v26}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 221
    .end local v14    # "childEnd":I
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "startMargin":I
    .end local v20    # "endMargin":I
    :cond_8
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 26

    .prologue
    .line 102
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/internal/FlowLayout;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move/from16 v22, v3

    invoke-static/range {v22 .. v22}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    move/from16 v5, v22

    .line 103
    .local v5, "width":I
    move/from16 v22, v3

    invoke-static/range {v22 .. v22}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    move/from16 v6, v22

    .line 105
    .local v6, "widthMode":I
    move/from16 v22, v4

    invoke-static/range {v22 .. v22}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    move/from16 v7, v22

    .line 106
    .local v7, "height":I
    move/from16 v22, v4

    invoke-static/range {v22 .. v22}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    move/from16 v8, v22

    .line 108
    .local v8, "heightMode":I
    move/from16 v22, v6

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move/from16 v22, v6

    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v22, v5

    :goto_0
    move/from16 v9, v22

    .line 113
    .local v9, "maxWidth":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v22

    move/from16 v10, v22

    .line 114
    .local v10, "childLeft":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v22

    move/from16 v11, v22

    .line 115
    .local v11, "childTop":I
    move/from16 v22, v11

    move/from16 v12, v22

    .line 116
    .local v12, "childBottom":I
    move/from16 v22, v10

    move/from16 v13, v22

    .line 117
    .local v13, "childRight":I
    const/16 v22, 0x0

    move/from16 v14, v22

    .line 118
    .local v14, "maxChildRight":I
    move/from16 v22, v9

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v15, v22

    .line 119
    .local v15, "maxRight":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .local v16, "i":I
    :goto_1
    move/from16 v22, v16

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 120
    move-object/from16 v22, v2

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v17, v22

    .line 122
    .local v17, "child":Landroid/view/View;
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 123
    .line 119
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 108
    .end local v9    # "maxWidth":I
    .end local v10    # "childLeft":I
    .end local v11    # "childTop":I
    .end local v12    # "childBottom":I
    .end local v13    # "childRight":I
    .end local v14    # "maxChildRight":I
    .end local v15    # "maxRight":I
    .end local v16    # "i":I
    .end local v17    # "child":Landroid/view/View;
    :cond_1
    const v22, 0x7fffffff

    goto :goto_0

    .line 125
    .restart local v9    # "maxWidth":I
    .restart local v10    # "childLeft":I
    .restart local v11    # "childTop":I
    .restart local v12    # "childBottom":I
    .restart local v13    # "childRight":I
    .restart local v14    # "maxChildRight":I
    .restart local v15    # "maxRight":I
    .restart local v16    # "i":I
    .restart local v17    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v23, v17

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-virtual/range {v22 .. v25}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 127
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v18, v22

    .line 128
    .local v18, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 129
    .local v19, "leftMargin":I
    const/16 v22, 0x0

    move/from16 v20, v22

    .line 130
    .local v20, "rightMargin":I
    move-object/from16 v22, v18

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 131
    move-object/from16 v22, v18

    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v21, v22

    .line 132
    .local v21, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v22, v19

    move-object/from16 v23, v21

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 133
    move/from16 v22, v20

    move-object/from16 v23, v21

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v20, v22

    .line 136
    .end local v21    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move/from16 v22, v10

    move/from16 v23, v19

    add-int v22, v22, v23

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 138
    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v22

    if-nez v22, :cond_4

    .line 139
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v22

    move/from16 v10, v22

    .line 140
    move/from16 v22, v12

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 143
    :cond_4
    move/from16 v22, v10

    move/from16 v23, v19

    add-int v22, v22, v23

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 144
    move/from16 v22, v11

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v12, v22

    .line 146
    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 147
    move/from16 v22, v13

    move/from16 v14, v22

    .line 150
    :cond_5
    move/from16 v22, v10

    move/from16 v23, v19

    move/from16 v24, v20

    add-int v23, v23, v24

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v10, v22

    goto/16 :goto_2

    .line 153
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "leftMargin":I
    .end local v20    # "rightMargin":I
    :cond_6
    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v14

    invoke-static/range {v22 .. v24}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v22

    move/from16 v16, v22

    .line 154
    .local v16, "finalWidth":I
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v12

    invoke-static/range {v22 .. v24}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v22

    move/from16 v17, v22

    .line 155
    .local v17, "finalHeight":I
    move-object/from16 v22, v2

    move/from16 v23, v16

    move/from16 v24, v17

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method protected setItemSpacing(I)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move v1, p1

    .local v1, "itemSpacing":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 89
    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move v1, p1

    .local v1, "lineSpacing":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 81
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/FlowLayout;
    move v1, p1

    .local v1, "singleLine":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 98
    return-void
.end method
