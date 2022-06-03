.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 47
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 51
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 52
    .local v3, "ta":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 53
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move v1, p1

    .local v1, "index":I
    move v4, v1

    move v2, v4

    .local v2, "i":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v4

    move v3, v4

    .local v3, "count":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 141
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 142
    move v4, v2

    move v0, v4

    .line 145
    .end local v0    # "this":Landroidx/appcompat/widget/ButtonBarLayout;
    :goto_1
    return v0

    .line 140
    .restart local v0    # "this":Landroidx/appcompat/widget/ButtonBarLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private isStacked()Z
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ButtonBarLayout;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ButtonBarLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move v1, p1

    .local v1, "stacked":Z
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ButtonBarLayout;->setOrientation(I)V

    .line 155
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ButtonBarLayout;->setGravity(I)V

    .line 157
    move-object v5, v0

    sget v6, Landroidx/appcompat/R$id;->spacer:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 158
    .local v2, "spacer":Landroid/view/View;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 159
    move-object v5, v2

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 165
    .local v3, "childCount":I
    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v4, v5

    .local v4, "i":I
    :goto_3
    move v5, v4

    if-ltz v5, :cond_4

    .line 166
    move-object v5, v0

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 165
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 154
    .end local v2    # "spacer":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 155
    :cond_2
    const/16 v6, 0x50

    goto :goto_1

    .line 159
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    .line 168
    .restart local v3    # "childCount":I
    .restart local v4    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ButtonBarLayout;->mMinimumHeight:I

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ButtonBarLayout;
    return v0
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move v11, v1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    move v3, v11

    .line 70
    .local v3, "widthSize":I
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_1

    .line 71
    move v11, v3

    move-object v12, v0

    iget v12, v12, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v11, v12, :cond_0

    move-object v11, v0

    invoke-direct {v11}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 73
    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 76
    :cond_0
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 79
    :cond_1
    const/4 v11, 0x0

    move v4, v11

    .line 85
    .local v4, "needsRemeasure":Z
    move-object v11, v0

    invoke-direct {v11}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-nez v11, :cond_6

    move v11, v1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_6

    .line 86
    move v11, v3

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v5, v11

    .line 89
    .local v5, "initialWidthMeasureSpec":I
    const/4 v11, 0x1

    move v4, v11

    .line 94
    :goto_0
    move-object v11, v0

    move v12, v5

    move v13, v2

    invoke-super {v11, v12, v13}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_2

    move-object v11, v0

    invoke-direct {v11}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-nez v11, :cond_2

    .line 99
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/appcompat/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v11

    move v7, v11

    .line 100
    .local v7, "measuredWidth":I
    move v11, v7

    const/high16 v12, -0x1000000

    and-int/2addr v11, v12

    move v8, v11

    .line 101
    .local v8, "measuredWidthState":I
    move v11, v8

    const/high16 v12, 0x1000000

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_1
    move v6, v11

    .line 103
    .local v6, "stack":Z
    move v11, v6

    if-eqz v11, :cond_2

    .line 104
    move-object v11, v0

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 106
    const/4 v11, 0x1

    move v4, v11

    .line 110
    .end local v6    # "stack":Z
    .end local v7    # "measuredWidth":I
    .end local v8    # "measuredWidthState":I
    :cond_2
    move v11, v4

    if-eqz v11, :cond_3

    .line 111
    move-object v11, v0

    move v12, v1

    move v13, v2

    invoke-super {v11, v12, v13}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 116
    :cond_3
    const/4 v11, 0x0

    move v6, v11

    .line 117
    .local v6, "minHeight":I
    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v11

    move v7, v11

    .line 118
    .local v7, "firstVisible":I
    move v11, v7

    if-ltz v11, :cond_4

    .line 119
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 120
    .local v8, "firstButton":Landroid/view/View;
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v11

    .line 121
    .local v9, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v12

    move-object v13, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v9

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    move-object v13, v9

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v6, v11

    .line 123
    move-object v11, v0

    invoke-direct {v11}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 124
    move-object v11, v0

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v11

    move v10, v11

    .line 125
    .local v10, "secondVisible":I
    move v11, v10

    if-ltz v11, :cond_4

    .line 126
    move v11, v6

    move-object v12, v0

    move v13, v10

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    const/high16 v13, 0x41800000    # 16.0f

    move-object v14, v0

    .line 127
    invoke-virtual {v14}, Landroidx/appcompat/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v6, v11

    .line 129
    .line 134
    .end local v8    # "firstButton":Landroid/view/View;
    .end local v9    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "secondVisible":I
    :cond_4
    :goto_2
    move-object v11, v0

    invoke-static {v11}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v11

    move v12, v6

    if-eq v11, v12, :cond_5

    .line 135
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 137
    :cond_5
    return-void

    .line 91
    .end local v5    # "initialWidthMeasureSpec":I
    .end local v6    # "minHeight":I
    .end local v7    # "firstVisible":I
    :cond_6
    move v11, v1

    move v5, v11

    .restart local v5    # "initialWidthMeasureSpec":I
    goto/16 :goto_0

    .line 101
    .local v7, "measuredWidth":I
    .local v8, "measuredWidthState":I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 130
    .restart local v6    # "minHeight":I
    .local v7, "firstVisible":I
    .local v8, "firstButton":Landroid/view/View;
    .restart local v9    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    goto :goto_2
.end method

.method public setAllowStacking(Z)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ButtonBarLayout;
    move v1, p1

    .local v1, "allowStacking":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 58
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 59
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 62
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ButtonBarLayout;->requestLayout()V

    .line 64
    :cond_1
    return-void
.end method
