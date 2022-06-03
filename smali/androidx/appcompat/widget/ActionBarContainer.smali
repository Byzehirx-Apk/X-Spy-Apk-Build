.class public Landroidx/appcompat/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v5, Landroidx/appcompat/widget/ActionBarBackgroundDrawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ActionBarBackgroundDrawable;-><init>(Landroidx/appcompat/widget/ActionBarContainer;)V

    move-object v3, v5

    .line 62
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    move-object v6, v3

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 64
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 66
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionBar_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ActionBarContainer;->mHeight:I

    .line 71
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContainer;->getId()I

    move-result v5

    sget v6, Landroidx/appcompat/R$id;->split_action_bar:I

    if-ne v5, v6, :cond_0

    .line 72
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    .line 73
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 79
    return-void

    .line 77
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v3

    .line 258
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return v0
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 162
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 165
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 168
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 173
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 174
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 176
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 177
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 179
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 180
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 182
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 85
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 86
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 215
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 18

    .prologue
    .line 293
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move/from16 v2, p1

    .local v2, "changed":Z
    move/from16 v3, p2

    .local v3, "l":I
    move/from16 v4, p3

    .local v4, "t":I
    move/from16 v5, p4

    .local v5, "r":I
    move/from16 v6, p5

    .local v6, "b":I
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-super/range {v12 .. v17}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 295
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    move-object v7, v12

    .line 296
    .local v7, "tabContainer":Landroid/view/View;
    move-object v12, v7

    if-eqz v12, :cond_3

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    move v8, v12

    .line 298
    .local v8, "hasTabs":Z
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 299
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    move v9, v12

    .line 300
    .local v9, "containerHeight":I
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object v10, v12

    .line 301
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move v11, v12

    .line 302
    .local v11, "tabHeight":I
    move-object v12, v7

    move v13, v3

    move v14, v9

    move v15, v11

    sub-int/2addr v14, v15

    move-object v15, v10

    iget v15, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    move v15, v5

    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 306
    .end local v9    # "containerHeight":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_0
    const/4 v12, 0x0

    move v9, v12

    .line 307
    .local v9, "needsInvalidate":Z
    move-object v12, v1

    iget-boolean v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v12, :cond_4

    .line 308
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 309
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    const/4 v12, 0x1

    move v9, v12

    .line 334
    :cond_1
    :goto_1
    move v12, v9

    if-eqz v12, :cond_2

    .line 335
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 337
    :cond_2
    return-void

    .line 296
    .end local v8    # "hasTabs":Z
    .end local v9    # "needsInvalidate":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 313
    .restart local v8    # "hasTabs":Z
    .restart local v9    # "needsInvalidate":Z
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    .line 314
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_6

    .line 315
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v13, v1

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 316
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 315
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    :goto_2
    const/4 v12, 0x1

    move v9, v12

    .line 326
    :cond_5
    move-object v12, v1

    move v13, v8

    iput-boolean v13, v12, Landroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    .line 327
    move v12, v8

    if-eqz v12, :cond_1

    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 328
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move-object v13, v7

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v7

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v7

    .line 329
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 328
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    const/4 v12, 0x1

    move v9, v12

    goto :goto_1

    .line 317
    :cond_6
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v12, :cond_7

    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 318
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 319
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v13, v1

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 320
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 319
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 322
    :cond_7
    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 11

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_0

    move v6, v2

    .line 264
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mHeight:I

    if-ltz v6, :cond_0

    .line 265
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mHeight:I

    move v7, v2

    .line 266
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, -0x80000000

    .line 265
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v2, v6

    .line 268
    :cond_0
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 270
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_1
    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v3, v6

    .line 273
    .local v3, "mode":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    move v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v6, v7, :cond_2

    .line 276
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 277
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    move v4, v6

    .line 283
    .local v4, "topMarginForTabs":I
    :goto_1
    move v6, v3

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_5

    move v6, v2

    .line 284
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    :goto_2
    move v5, v6

    .line 285
    .local v5, "maxHeight":I
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v7

    move v8, v4

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 286
    invoke-direct {v9, v10}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    move v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 285
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 289
    .end local v4    # "topMarginForTabs":I
    .end local v5    # "maxHeight":I
    :cond_2
    goto :goto_0

    .line 278
    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 279
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    move v4, v6

    .restart local v4    # "topMarginForTabs":I
    goto :goto_1

    .line 281
    .end local v4    # "topMarginForTabs":I
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    .restart local v4    # "topMarginForTabs":I
    goto :goto_1

    .line 284
    :cond_5
    const v6, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 207
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 91
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 95
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 97
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 97
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 103
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 104
    return-void

    .line 101
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 127
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 130
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 132
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 133
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 138
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 139
    return-void

    .line 136
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 112
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 113
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 114
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 115
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 121
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 122
    return-void

    .line 119
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 220
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 222
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 223
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 224
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 225
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 226
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 228
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 230
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move v1, p1

    .local v1, "isTransitioning":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 193
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/high16 v3, 0x60000

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 195
    return-void

    .line 193
    :cond_0
    const/high16 v3, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move v1, p1

    .local v1, "visibility":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    move v3, v1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 145
    .local v2, "isVisible":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 146
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 147
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 148
    :cond_2
    return-void

    .line 144
    .end local v2    # "isVisible":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "callback":Landroid/view/ActionMode$Callback;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "callback":Landroid/view/ActionMode$Callback;
    move v3, p3

    .local v3, "type":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 247
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    move-object v0, v4

    .line 249
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContainer;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_3

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v2, :cond_3

    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v0

    move-object v3, v1

    .line 153
    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContainer;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
