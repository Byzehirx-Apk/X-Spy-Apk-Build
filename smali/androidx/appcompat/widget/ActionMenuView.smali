.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 83
    .local v3, "density":F
    move-object v4, v0

    const/high16 v5, 0x42600000    # 56.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 84
    move-object v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 87
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 17

    .prologue
    .line 404
    move-object/from16 v0, p0

    .local v0, "child":Landroid/view/View;
    move/from16 v1, p1

    .local v1, "cellSize":I
    move/from16 v2, p2

    .local v2, "cellsRemaining":I
    move/from16 v3, p3

    .local v3, "parentHeightMeasureSpec":I
    move/from16 v4, p4

    .local v4, "parentHeightPadding":I
    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v5, v14

    .line 406
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move v14, v3

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v15, v4

    sub-int/2addr v14, v15

    move v6, v14

    .line 408
    .local v6, "childHeightSize":I
    move v14, v3

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v7, v14

    .line 409
    .local v7, "childHeightMode":I
    move v14, v6

    move v15, v7

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v8, v14

    .line 411
    .local v8, "childHeightSpec":I
    move-object v14, v0

    instance-of v14, v14, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v14, :cond_3

    move-object v14, v0

    check-cast v14, Landroidx/appcompat/view/menu/ActionMenuItemView;

    :goto_0
    move-object v9, v14

    .line 413
    .local v9, "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v14, v9

    if-eqz v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move v10, v14

    .line 415
    .local v10, "hasText":Z
    const/4 v14, 0x0

    move v11, v14

    .line 416
    .local v11, "cellsUsed":I
    move v14, v2

    if-lez v14, :cond_2

    move v14, v10

    if-eqz v14, :cond_0

    move v14, v2

    const/4 v15, 0x2

    if-lt v14, v15, :cond_2

    .line 417
    :cond_0
    move v14, v1

    move v15, v2

    mul-int/2addr v14, v15

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v12, v14

    .line 419
    .local v12, "childWidthSpec":I
    move-object v14, v0

    move v15, v12

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 421
    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move v13, v14

    .line 422
    .local v13, "measuredWidth":I
    move v14, v13

    move v15, v1

    div-int/2addr v14, v15

    move v11, v14

    .line 423
    move v14, v13

    move v15, v1

    rem-int/2addr v14, v15

    if-eqz v14, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 424
    :cond_1
    move v14, v10

    if-eqz v14, :cond_2

    move v14, v11

    const/4 v15, 0x2

    if-ge v14, v15, :cond_2

    const/4 v14, 0x2

    move v11, v14

    .line 427
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_2
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v14, :cond_5

    move v14, v10

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    move v12, v14

    .line 428
    .local v12, "expandable":Z
    move-object v14, v5

    move v15, v12

    iput-boolean v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    move-object v14, v5

    move v15, v11

    iput v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 431
    move v14, v11

    move v15, v1

    mul-int/2addr v14, v15

    move v13, v14

    .line 432
    .local v13, "targetWidth":I
    move-object v14, v0

    move v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 434
    move v14, v11

    move v0, v14

    .end local v0    # "child":Landroid/view/View;
    return v0

    .line 411
    .end local v9    # "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    .end local v10    # "hasText":Z
    .end local v11    # "cellsUsed":I
    .end local v12    # "expandable":Z
    .end local v13    # "targetWidth":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 413
    .restart local v9    # "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 427
    .restart local v10    # "hasText":Z
    .restart local v11    # "cellsUsed":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 38

    .prologue
    .line 178
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/ActionMenuView;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    move/from16 v5, v32

    .line 179
    .local v5, "heightMode":I
    move/from16 v32, v3

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    move/from16 v6, v32

    .line 180
    .local v6, "widthSize":I
    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    move/from16 v7, v32

    .line 182
    .local v7, "heightSize":I
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v8, v32

    .line 183
    .local v8, "widthPadding":I
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v9, v32

    .line 185
    .local v9, "heightPadding":I
    move/from16 v32, v4

    move/from16 v33, v9

    const/16 v34, -0x2

    invoke-static/range {v32 .. v34}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v32

    move/from16 v10, v32

    .line 188
    .local v10, "itemHeightSpec":I
    move/from16 v32, v6

    move/from16 v33, v8

    sub-int v32, v32, v33

    move/from16 v6, v32

    .line 191
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v33, v0

    div-int v32, v32, v33

    move/from16 v11, v32

    .line 192
    .local v11, "cellCount":I
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v33, v0

    rem-int v32, v32, v33

    move/from16 v12, v32

    .line 194
    .local v12, "cellSizeRemaining":I
    move/from16 v32, v11

    if-nez v32, :cond_0

    .line 196
    move-object/from16 v32, v2

    move/from16 v33, v6

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 197
    .line 387
    :goto_0
    return-void

    .line 200
    :cond_0
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v32, v0

    move/from16 v33, v12

    move/from16 v34, v11

    div-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v13, v32

    .line 202
    .local v13, "cellSize":I
    move/from16 v32, v11

    move/from16 v14, v32

    .line 203
    .local v14, "cellsRemaining":I
    const/16 v32, 0x0

    move/from16 v15, v32

    .line 204
    .local v15, "maxChildHeight":I
    const/16 v32, 0x0

    move/from16 v16, v32

    .line 205
    .local v16, "maxCellsUsed":I
    const/16 v32, 0x0

    move/from16 v17, v32

    .line 206
    .local v17, "expandableItemCount":I
    const/16 v32, 0x0

    move/from16 v18, v32

    .line 207
    .local v18, "visibleItemCount":I
    const/16 v32, 0x0

    move/from16 v19, v32

    .line 210
    .local v19, "hasOverflow":Z
    const-wide/16 v32, 0x0

    move-wide/from16 v20, v32

    .line 212
    .local v20, "smallestItemsAt":J
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v32

    move/from16 v22, v32

    .line 213
    .local v22, "childCount":I
    const/16 v32, 0x0

    move/from16 v23, v32

    .local v23, "i":I
    :goto_1
    move/from16 v32, v23

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 214
    move-object/from16 v32, v2

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v24, v32

    .line 215
    .local v24, "child":Landroid/view/View;
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 213
    :cond_1
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 217
    :cond_2
    move-object/from16 v32, v24

    move-object/from16 v0, v32

    instance-of v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    move/from16 v32, v0

    move/from16 v25, v32

    .line 218
    .local v25, "isGeneratedItem":Z
    add-int/lit8 v18, v18, 0x1

    .line 220
    move/from16 v32, v25

    if-eqz v32, :cond_3

    .line 223
    move-object/from16 v32, v24

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    :cond_3
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v26, v32

    .line 227
    .local v26, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    move-object/from16 v32, v26

    move/from16 v33, v25

    if-eqz v33, :cond_6

    move-object/from16 v33, v24

    check-cast v33, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual/range {v33 .. v33}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v33, 0x1

    :goto_3
    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    const/16 v32, 0x1

    :goto_4
    move/from16 v27, v32

    .line 238
    .local v27, "cellsAvailable":I
    move-object/from16 v32, v24

    move/from16 v33, v13

    move/from16 v34, v27

    move/from16 v35, v10

    move/from16 v36, v9

    invoke-static/range {v32 .. v36}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v32

    move/from16 v28, v32

    .line 241
    .local v28, "cellsUsed":I
    move/from16 v32, v16

    move/from16 v33, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v16, v32

    .line 242
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    add-int/lit8 v17, v17, 0x1

    .line 243
    :cond_4
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    const/16 v32, 0x1

    move/from16 v19, v32

    .line 245
    :cond_5
    move/from16 v32, v14

    move/from16 v33, v28

    sub-int v32, v32, v33

    move/from16 v14, v32

    .line 246
    move/from16 v32, v15

    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v15, v32

    .line 247
    move/from16 v32, v28

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v23

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    goto/16 :goto_2

    .line 233
    .end local v27    # "cellsAvailable":I
    .end local v28    # "cellsUsed":I
    :cond_6
    const/16 v33, 0x0

    goto :goto_3

    .line 236
    :cond_7
    move/from16 v32, v14

    goto :goto_4

    .line 252
    .end local v24    # "child":Landroid/view/View;
    .end local v25    # "isGeneratedItem":Z
    .end local v26    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_8
    move/from16 v32, v19

    if-eqz v32, :cond_a

    move/from16 v32, v18

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/16 v32, 0x1

    :goto_5
    move/from16 v23, v32

    .line 257
    .local v23, "centerSingleExpandedItem":Z
    const/16 v32, 0x0

    move/from16 v24, v32

    .line 258
    .local v24, "needsExpansion":Z
    :goto_6
    move/from16 v32, v17

    if-lez v32, :cond_e

    move/from16 v32, v14

    if-lez v32, :cond_e

    .line 259
    const v32, 0x7fffffff

    move/from16 v25, v32

    .line 260
    .local v25, "minCells":I
    const-wide/16 v32, 0x0

    move-wide/from16 v26, v32

    .line 261
    .local v26, "minCellsAt":J
    const/16 v32, 0x0

    move/from16 v28, v32

    .line 262
    .local v28, "minCellsItemCount":I
    const/16 v32, 0x0

    move/from16 v29, v32

    .local v29, "i":I
    :goto_7
    move/from16 v32, v29

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_d

    .line 263
    move-object/from16 v32, v2

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v30, v32

    .line 264
    .local v30, "child":Landroid/view/View;
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v31, v32

    .line 267
    .local v31, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 262
    :cond_9
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 252
    .end local v24    # "needsExpansion":Z
    .end local v25    # "minCells":I
    .end local v26    # "minCellsAt":J
    .end local v28    # "minCellsItemCount":I
    .end local v29    # "i":I
    .end local v30    # "child":Landroid/view/View;
    .end local v31    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .local v23, "i":I
    :cond_a
    const/16 v32, 0x0

    goto :goto_5

    .line 270
    .local v23, "centerSingleExpandedItem":Z
    .restart local v24    # "needsExpansion":Z
    .restart local v25    # "minCells":I
    .restart local v26    # "minCellsAt":J
    .restart local v28    # "minCellsItemCount":I
    .restart local v29    # "i":I
    .restart local v30    # "child":Landroid/view/View;
    .restart local v31    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_b
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_c

    .line 271
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v25, v32

    .line 272
    const-wide/16 v32, 0x1

    move/from16 v34, v29

    shl-long v32, v32, v34

    move-wide/from16 v26, v32

    .line 273
    const/16 v32, 0x1

    move/from16 v28, v32

    goto :goto_8

    .line 274
    :cond_c
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 275
    move-wide/from16 v32, v26

    const-wide/16 v34, 0x1

    move/from16 v36, v29

    shl-long v34, v34, v36

    or-long v32, v32, v34

    move-wide/from16 v26, v32

    .line 276
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 281
    .end local v30    # "child":Landroid/view/View;
    .end local v31    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_d
    move-wide/from16 v32, v20

    move-wide/from16 v34, v26

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    .line 283
    move/from16 v32, v28

    move/from16 v33, v14

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_13

    .line 312
    .end local v25    # "minCells":I
    .end local v26    # "minCellsAt":J
    .end local v28    # "minCellsItemCount":I
    .end local v29    # "i":I
    :cond_e
    move/from16 v32, v19

    if-nez v32, :cond_18

    move/from16 v32, v18

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    const/16 v32, 0x1

    :goto_9
    move/from16 v25, v32

    .line 313
    .local v25, "singleItem":Z
    move/from16 v32, v14

    if-lez v32, :cond_20

    move-wide/from16 v32, v20

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_20

    move/from16 v32, v14

    move/from16 v33, v18

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    move/from16 v32, v25

    if-nez v32, :cond_f

    move/from16 v32, v16

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_20

    .line 315
    :cond_f
    move-wide/from16 v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v26, v32

    .line 317
    .local v26, "expandCount":F
    move/from16 v32, v25

    if-nez v32, :cond_11

    .line 319
    move-wide/from16 v32, v20

    const-wide/16 v34, 0x1

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_10

    .line 320
    move-object/from16 v32, v2

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v27, v32

    .line 321
    .local v27, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    move/from16 v32, v26

    const/high16 v33, 0x3f000000    # 0.5f

    sub-float v32, v32, v33

    move/from16 v26, v32

    .line 323
    .end local v27    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_10
    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v22

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_11

    .line 324
    move-object/from16 v32, v2

    move/from16 v33, v22

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v27, v32

    .line 325
    .restart local v27    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_11

    move/from16 v32, v26

    const/high16 v33, 0x3f000000    # 0.5f

    sub-float v32, v32, v33

    move/from16 v26, v32

    .line 329
    .end local v27    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_11
    move/from16 v32, v26

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_19

    move/from16 v32, v14

    move/from16 v33, v13

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v26

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    :goto_a
    move/from16 v27, v32

    .line 332
    .local v27, "extraPixels":I
    const/16 v32, 0x0

    move/from16 v28, v32

    .local v28, "i":I
    :goto_b
    move/from16 v32, v28

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    .line 333
    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v28

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_1a

    .line 332
    :cond_12
    :goto_c
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 286
    .end local v27    # "extraPixels":I
    .local v25, "minCells":I
    .local v26, "minCellsAt":J
    .local v28, "minCellsItemCount":I
    .restart local v29    # "i":I
    :cond_13
    add-int/lit8 v25, v25, 0x1

    .line 288
    const/16 v32, 0x0

    move/from16 v29, v32

    :goto_d
    move/from16 v32, v29

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 289
    move-object/from16 v32, v2

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v30, v32

    .line 290
    .restart local v30    # "child":Landroid/view/View;
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v31, v32

    .line 291
    .restart local v31    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-wide/from16 v32, v26

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_15

    .line 293
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    .line 288
    :cond_14
    :goto_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 297
    :cond_15
    move/from16 v32, v23

    if-eqz v32, :cond_16

    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    move/from16 v32, v14

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 299
    move-object/from16 v32, v30

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    move/from16 v34, v13

    add-int v33, v33, v34

    const/16 v34, 0x0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_16
    move-object/from16 v32, v31

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v33, v0

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    move-object/from16 v32, v31

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    add-int/lit8 v14, v14, -0x1

    goto :goto_e

    .line 306
    .end local v30    # "child":Landroid/view/View;
    .end local v31    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v32, 0x1

    move/from16 v24, v32

    .line 307
    goto/16 :goto_6

    .line 312
    .end local v25    # "minCells":I
    .end local v26    # "minCellsAt":J
    .end local v28    # "minCellsItemCount":I
    .end local v29    # "i":I
    :cond_18
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 329
    .local v25, "singleItem":Z
    .local v26, "expandCount":F
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 335
    .restart local v27    # "extraPixels":I
    .local v28, "i":I
    :cond_1a
    move-object/from16 v32, v2

    move/from16 v33, v28

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v29, v32

    .line 336
    .local v29, "child":Landroid/view/View;
    move-object/from16 v32, v29

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v30, v32

    .line 337
    .local v30, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    .line 339
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    move-object/from16 v32, v30

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    move/from16 v32, v28

    if-nez v32, :cond_1b

    move-object/from16 v32, v30

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_1b

    .line 344
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_1b
    const/16 v32, 0x1

    move/from16 v24, v32

    goto/16 :goto_c

    .line 347
    :cond_1c
    move-object/from16 v32, v30

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 348
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    move-object/from16 v32, v30

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    const/16 v32, 0x1

    move/from16 v24, v32

    goto/16 :goto_c

    .line 356
    :cond_1d
    move/from16 v32, v28

    if-eqz v32, :cond_1e

    .line 357
    move-object/from16 v32, v30

    move/from16 v33, v27

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_1e
    move/from16 v32, v28

    move/from16 v33, v22

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 360
    move-object/from16 v32, v30

    move/from16 v33, v27

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 365
    .end local v29    # "child":Landroid/view/View;
    .end local v30    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_1f
    const/16 v32, 0x0

    move/from16 v14, v32

    .line 369
    .end local v26    # "expandCount":F
    .end local v27    # "extraPixels":I
    .end local v28    # "i":I
    :cond_20
    move/from16 v32, v24

    if-eqz v32, :cond_22

    .line 370
    const/16 v32, 0x0

    move/from16 v26, v32

    .local v26, "i":I
    :goto_f
    move/from16 v32, v26

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    .line 371
    move-object/from16 v32, v2

    move/from16 v33, v26

    invoke-virtual/range {v32 .. v33}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v27, v32

    .line 372
    .local v27, "child":Landroid/view/View;
    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v28, v32

    .line 374
    .local v28, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    .line 370
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 376
    :cond_21
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v13

    mul-int v32, v32, v33

    move-object/from16 v33, v28

    move-object/from16 v0, v33

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v29, v32

    .line 377
    .local v29, "width":I
    move-object/from16 v32, v27

    move/from16 v33, v29

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    move/from16 v34, v10

    invoke-virtual/range {v32 .. v34}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 382
    .end local v26    # "i":I
    .end local v27    # "child":Landroid/view/View;
    .end local v28    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v29    # "width":I
    :cond_22
    move/from16 v32, v5

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_23

    .line 383
    move/from16 v32, v15

    move/from16 v7, v32

    .line 386
    :cond_23
    move-object/from16 v32, v2

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-virtual/range {v32 .. v34}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 724
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v1

    .line 726
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 585
    .local v1, "params":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object v2, v1

    const/16 v3, 0x10

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 597
    move-object v3, v1

    instance-of v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    :goto_0
    move-object v2, v3

    .line 600
    .local v2, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object v3, v2

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v3, :cond_0

    .line 601
    move-object v3, v2

    const/16 v4, 0x10

    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 603
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .line 605
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    .end local v2    # "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :goto_1
    return-object v0

    .line 597
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_1
    new-instance v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 605
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 617
    .local v1, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 618
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 7

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v2, :cond_0

    .line 652
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 653
    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 654
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v3, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 655
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 656
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 657
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 659
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 660
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 663
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0

    .line 657
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 566
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0
.end method

.method public getWindowAnimations()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move v1, p1

    .local v1, "childIndex":I
    move v5, v1

    if-nez v5, :cond_0

    .line 734
    const/4 v5, 0x0

    move v0, v5

    .line 745
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :goto_0
    return v0

    .line 736
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 737
    .local v2, "childBefore":Landroid/view/View;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 738
    .local v3, "child":Landroid/view/View;
    const/4 v5, 0x0

    move v4, v5

    .line 739
    .local v4, "result":Z
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    move-object v5, v2

    instance-of v5, v5, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v5, :cond_1

    .line 740
    move v5, v4

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v6}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 742
    :cond_1
    move v5, v1

    if-lez v5, :cond_2

    move-object v5, v3

    instance-of v5, v5, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v5, :cond_2

    .line 743
    move v5, v4

    move-object v6, v3

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v6}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 745
    :cond_2
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 640
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v2, :cond_0

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 133
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v2

    .line 135
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v2

    .line 138
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    .prologue
    .line 439
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/ActionMenuView;
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
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 440
    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    invoke-super/range {v26 .. v31}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 441
    .line 540
    :goto_0
    return-void

    .line 444
    :cond_0
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v26

    move/from16 v8, v26

    .line 445
    .local v8, "childCount":I
    move/from16 v26, v7

    move/from16 v27, v5

    sub-int v26, v26, v27

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move/from16 v9, v26

    .line 446
    .local v9, "midVertical":I
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v26

    move/from16 v10, v26

    .line 447
    .local v10, "dividerWidth":I
    const/16 v26, 0x0

    move/from16 v11, v26

    .line 448
    .local v11, "overflowWidth":I
    const/16 v26, 0x0

    move/from16 v12, v26

    .line 449
    .local v12, "nonOverflowWidth":I
    const/16 v26, 0x0

    move/from16 v13, v26

    .line 450
    .local v13, "nonOverflowCount":I
    move/from16 v26, v6

    move/from16 v27, v4

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 451
    .local v14, "widthRemaining":I
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 452
    .local v15, "hasOverflow":Z
    move-object/from16 v26, v2

    invoke-static/range {v26 .. v26}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v26

    move/from16 v16, v26

    .line 453
    .local v16, "isLayoutRtl":Z
    const/16 v26, 0x0

    move/from16 v17, v26

    .local v17, "i":I
    :goto_1
    move/from16 v26, v17

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 454
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v18, v26

    .line 455
    .local v18, "v":Landroid/view/View;
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 456
    .line 453
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 459
    :cond_1
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v19, v26

    .line 460
    .local v19, "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 461
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v11, v26

    .line 462
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 463
    move/from16 v26, v11

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v11, v26

    .line 465
    :cond_2
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v20, v26

    .line 468
    .local v20, "height":I
    move/from16 v26, v16

    if-eqz v26, :cond_3

    .line 469
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v26

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v22, v26

    .line 470
    .local v22, "l":I
    move/from16 v26, v22

    move/from16 v27, v11

    add-int v26, v26, v27

    move/from16 v21, v26

    .line 475
    .local v21, "r":I
    :goto_3
    move/from16 v26, v9

    move/from16 v27, v20

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v23, v26

    .line 476
    .local v23, "t":I
    move/from16 v26, v23

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v24, v26

    .line 477
    .local v24, "b":I
    move-object/from16 v26, v18

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v21

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 479
    move/from16 v26, v14

    move/from16 v27, v11

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 480
    const/16 v26, 0x1

    move/from16 v15, v26

    .line 481
    goto/16 :goto_2

    .line 472
    .end local v21    # "r":I
    .end local v22    # "l":I
    .end local v23    # "t":I
    .end local v24    # "b":I
    :cond_3
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 473
    .restart local v21    # "r":I
    move/from16 v26, v21

    move/from16 v27, v11

    sub-int v26, v26, v27

    move/from16 v22, v26

    .restart local v22    # "l":I
    goto :goto_3

    .line 482
    .end local v20    # "height":I
    .end local v21    # "r":I
    .end local v22    # "l":I
    :cond_4
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v20, v26

    .line 483
    .local v20, "size":I
    move/from16 v26, v12

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v12, v26

    .line 484
    move/from16 v26, v14

    move/from16 v27, v20

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 485
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 486
    move/from16 v26, v12

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v12, v26

    .line 488
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 492
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v20    # "size":I
    :cond_6
    move/from16 v26, v8

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move/from16 v26, v15

    if-nez v26, :cond_7

    .line 494
    move-object/from16 v26, v2

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v17, v26

    .line 495
    .local v17, "v":Landroid/view/View;
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v18, v26

    .line 496
    .local v18, "width":I
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v19, v26

    .line 497
    .local v19, "height":I
    move/from16 v26, v6

    move/from16 v27, v4

    sub-int v26, v26, v27

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move/from16 v20, v26

    .line 498
    .local v20, "midHorizontal":I
    move/from16 v26, v20

    move/from16 v27, v18

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 499
    .local v21, "l":I
    move/from16 v26, v9

    move/from16 v27, v19

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v22, v26

    .line 500
    .local v22, "t":I
    move-object/from16 v26, v17

    move/from16 v27, v21

    move/from16 v28, v22

    move/from16 v29, v21

    move/from16 v30, v18

    add-int v29, v29, v30

    move/from16 v30, v22

    move/from16 v31, v19

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 501
    goto/16 :goto_0

    .line 504
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v20    # "midHorizontal":I
    .end local v21    # "l":I
    .end local v22    # "t":I
    .local v17, "i":I
    :cond_7
    move/from16 v26, v13

    move/from16 v27, v15

    if-eqz v27, :cond_9

    const/16 v27, 0x0

    :goto_4
    sub-int v26, v26, v27

    move/from16 v17, v26

    .line 505
    .local v17, "spacerCount":I
    const/16 v26, 0x0

    move/from16 v27, v17

    if-lez v27, :cond_a

    move/from16 v27, v14

    move/from16 v28, v17

    div-int v27, v27, v28

    :goto_5
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v18, v26

    .line 507
    .local v18, "spacerSize":I
    move/from16 v26, v16

    if-eqz v26, :cond_d

    .line 508
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v19, v26

    .line 509
    .local v19, "startRight":I
    const/16 v26, 0x0

    move/from16 v20, v26

    .local v20, "i":I
    :goto_6
    move/from16 v26, v20

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 510
    move-object/from16 v26, v2

    move/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v21, v26

    .line 511
    .local v21, "v":Landroid/view/View;
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v22, v26

    .line 512
    .local v22, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 513
    .line 509
    :cond_8
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 504
    .end local v18    # "spacerSize":I
    .end local v19    # "startRight":I
    .end local v20    # "i":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .local v17, "i":I
    :cond_9
    const/16 v27, 0x1

    goto :goto_4

    .line 505
    .local v17, "spacerCount":I
    :cond_a
    const/16 v27, 0x0

    goto :goto_5

    .line 516
    .restart local v18    # "spacerSize":I
    .restart local v19    # "startRight":I
    .restart local v20    # "i":I
    .restart local v21    # "v":Landroid/view/View;
    .restart local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_b
    move/from16 v26, v19

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v19, v26

    .line 517
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v23, v26

    .line 518
    .local v23, "width":I
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v24, v26

    .line 519
    .local v24, "height":I
    move/from16 v26, v9

    move/from16 v27, v24

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v25, v26

    .line 520
    .local v25, "t":I
    move-object/from16 v26, v21

    move/from16 v27, v19

    move/from16 v28, v23

    sub-int v27, v27, v28

    move/from16 v28, v25

    move/from16 v29, v19

    move/from16 v30, v25

    move/from16 v31, v24

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 521
    move/from16 v26, v19

    move/from16 v27, v23

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v18

    add-int v27, v27, v28

    sub-int v26, v26, v27

    move/from16 v19, v26

    goto :goto_7

    .line 523
    .line 540
    .end local v19    # "startRight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v23    # "width":I
    .end local v24    # "height":I
    .end local v25    # "t":I
    :cond_c
    goto/16 :goto_0

    .line 524
    .end local v20    # "i":I
    :cond_d
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v26

    move/from16 v19, v26

    .line 525
    .local v19, "startLeft":I
    const/16 v26, 0x0

    move/from16 v20, v26

    .restart local v20    # "i":I
    :goto_8
    move/from16 v26, v20

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 526
    move-object/from16 v26, v2

    move/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v21, v26

    .line 527
    .restart local v21    # "v":Landroid/view/View;
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object/from16 v22, v26

    .line 528
    .restart local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 529
    .line 525
    :cond_e
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 532
    :cond_f
    move/from16 v26, v19

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v19, v26

    .line 533
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v23, v26

    .line 534
    .restart local v23    # "width":I
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v24, v26

    .line 535
    .restart local v24    # "height":I
    move/from16 v26, v9

    move/from16 v27, v24

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v25, v26

    .line 536
    .restart local v25    # "t":I
    move-object/from16 v26, v21

    move/from16 v27, v19

    move/from16 v28, v25

    move/from16 v29, v19

    move/from16 v30, v23

    add-int v29, v29, v30

    move/from16 v30, v25

    move/from16 v31, v24

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 537
    move/from16 v26, v19

    move/from16 v27, v23

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v18

    add-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v19, v26

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    move v3, v9

    .line 148
    .local v3, "wasFormatted":Z
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    move v9, v3

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v9, v10, :cond_0

    .line 151
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_0
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v4, v9

    .line 157
    .local v4, "widthSize":I
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v9, :cond_1

    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v9, v10, :cond_1

    .line 158
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 162
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v9

    move v5, v9

    .line 163
    .local v5, "childCount":I
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_3

    move v9, v5

    if-lez v9, :cond_3

    .line 164
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 174
    :goto_1
    return-void

    .line 148
    .end local v4    # "widthSize":I
    .end local v5    # "childCount":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 167
    .restart local v4    # "widthSize":I
    .restart local v5    # "childCount":I
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_4

    .line 168
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 169
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v8, v9

    .line 170
    .local v8, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object v9, v8

    move-object v10, v8

    const/4 v11, 0x0

    move-object v13, v10

    move v14, v11

    move v10, v14

    move-object v11, v13

    move v12, v14

    iput v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 172
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_4
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move v1, p1

    .local v1, "exclusive":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 757
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "pcb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, p2

    .local v2, "mcb":Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 673
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 674
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 142
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 555
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move v1, p1

    .local v1, "reserveOverflow":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 98
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 99
    move v2, v1

    if-nez v2, :cond_1

    .line 100
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, p1

    .local v1, "presenter":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 123
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 124
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
