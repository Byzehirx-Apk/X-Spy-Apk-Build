.class Landroidx/appcompat/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;,
        Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 9

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "hijackFocus":Z
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    sget v7, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 51
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 52
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    .line 53
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    .line 54
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 119
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    .line 120
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/DropDownListView;->setCacheColorHint(I)V

    .line 123
    move-object v4, v0

    :try_start_0
    const-class v5, Landroid/widget/AbsListView;

    const-string/jumbo v6, "mIsChildViewEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 124
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 126
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearPressedItem()V
    .locals 5

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 630
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    .line 632
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 634
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 635
    .local v1, "motionView":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 636
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 639
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v2, :cond_1

    .line 640
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 641
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 643
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 542
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v2, p1

    .local v2, "child":Landroid/view/View;
    move v3, p2

    .local v3, "position":I
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    move-wide v4, v6

    .line 543
    .local v4, "id":J
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v6

    .line 544
    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 567
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 568
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 569
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 572
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .locals 11

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "sel":Landroid/view/View;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v3, v5

    .line 605
    .local v3, "selectorRect":Landroid/graphics/Rect;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 609
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 610
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 611
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 616
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 617
    .local v4, "isChildViewEnabled":Z
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 618
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    move-object v6, v0

    move v7, v4

    if-nez v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 620
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .line 626
    .end local v4    # "isChildViewEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 618
    .restart local v4    # "isChildViewEnabled":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 623
    .end local v4    # "isChildViewEnabled":Z
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 624
    .local v4, "e":Ljava/lang/IllegalAccessException;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 11

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "sel":Landroid/view/View;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 587
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    move-object v8, v3

    if-eqz v8, :cond_2

    move v8, v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 588
    .local v4, "manageState":Z
    move v8, v4

    if-eqz v8, :cond_0

    .line 589
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v8

    .line 592
    :cond_0
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorCompat(ILandroid/view/View;)V

    .line 594
    move v8, v4

    if-eqz v8, :cond_1

    .line 595
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v5, v8

    .line 596
    .local v5, "bounds":Landroid/graphics/Rect;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    move v6, v8

    .line 597
    .local v6, "x":F
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move v7, v8

    .line 598
    .local v7, "y":F
    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/DropDownListView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v8

    .line 599
    move-object v8, v3

    move v9, v6

    move v10, v7

    invoke-static {v8, v9, v10}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 601
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    return-void

    .line 587
    .end local v4    # "manageState":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 598
    .restart local v4    # "manageState":Z
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 9

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "sel":Landroid/view/View;
    move v3, p3

    .local v3, "x":F
    move v4, p4

    .local v4, "y":F
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 577
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 578
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    move-object v6, v5

    if-eqz v6, :cond_0

    move v6, v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 579
    move-object v6, v5

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 581
    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 12

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "position":I
    move v3, p3

    .local v3, "x":F
    move/from16 v4, p4

    .local v4, "y":F
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 649
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 650
    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 652
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/DropDownListView;->isPressed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 653
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    .line 657
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/DropDownListView;->layoutChildren()V

    .line 661
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 662
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 663
    .local v5, "motionView":Landroid/view/View;
    move-object v7, v5

    if-eqz v7, :cond_2

    move-object v7, v5

    move-object v8, v1

    if-eq v7, v8, :cond_2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 664
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 667
    .end local v5    # "motionView":Landroid/view/View;
    :cond_2
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    .line 670
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 671
    .local v5, "childX":F
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 672
    .local v6, "childY":F
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    .line 673
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 675
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 676
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 680
    :cond_4
    move-object v7, v0

    move v8, v2

    move-object v9, v1

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 685
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 689
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V

    .line 690
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .locals 4

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    if-eqz v2, :cond_0

    .line 374
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    .line 376
    :cond_0
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .locals 2

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0
.end method

.method private updateSelectorStateCompat()V
    .locals 4

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 559
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/DropDownListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 562
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    move v2, v3

    .line 200
    .local v2, "drawSelectorOnTop":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/DropDownListView;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 203
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 204
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v1, :cond_0

    .line 187
    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 192
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 193
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    .line 194
    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 8

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "lookDown":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move-object v3, v5

    .line 230
    .local v3, "adapter":Landroid/widget/ListAdapter;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    :cond_0
    const/4 v5, -0x1

    move v0, v5

    .line 256
    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :goto_0
    return v0

    .line 234
    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    move v4, v5

    .line 235
    .local v4, "count":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 236
    move v5, v2

    if-eqz v5, :cond_2

    .line 237
    const/4 v5, 0x0

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    .line 238
    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_3

    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    move v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v5

    .line 243
    :goto_2
    move v5, v1

    if-ltz v5, :cond_3

    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 244
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 248
    :cond_3
    move v5, v1

    if-ltz v5, :cond_4

    move v5, v1

    move v6, v4

    if-lt v5, v6, :cond_5

    .line 249
    :cond_4
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 251
    :cond_5
    move v5, v1

    move v0, v5

    goto :goto_0

    .line 253
    :cond_6
    move v5, v1

    if-ltz v5, :cond_7

    move v5, v1

    move v6, v4

    if-lt v5, v6, :cond_8

    .line 254
    :cond_7
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 256
    :cond_8
    move v5, v1

    move v0, v5

    goto :goto_0
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 29

    .prologue
    .line 290
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/DropDownListView;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "startPosition":I
    move/from16 v5, p3

    .local v5, "endPosition":I
    move/from16 v6, p4

    .local v6, "maxHeight":I
    move/from16 v7, p5

    .local v7, "disallowPartialChildPosition":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingTop()I

    move-result v25

    move/from16 v8, v25

    .line 291
    .local v8, "paddingTop":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingBottom()I

    move-result v25

    move/from16 v9, v25

    .line 292
    .local v9, "paddingBottom":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingLeft()I

    move-result v25

    move/from16 v10, v25

    .line 293
    .local v10, "paddingLeft":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingRight()I

    move-result v25

    move/from16 v11, v25

    .line 294
    .local v11, "paddingRight":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getDividerHeight()I

    move-result v25

    move/from16 v12, v25

    .line 295
    .local v12, "reportedDividerHeight":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v13, v25

    .line 297
    .local v13, "divider":Landroid/graphics/drawable/Drawable;
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v25

    move-object/from16 v14, v25

    .line 299
    .local v14, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v25, v14

    if-nez v25, :cond_0

    .line 300
    move/from16 v25, v8

    move/from16 v26, v9

    add-int v25, v25, v26

    move/from16 v2, v25

    .line 369
    .end local v2    # "this":Landroidx/appcompat/widget/DropDownListView;
    :goto_0
    return v2

    .line 304
    .restart local v2    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_0
    move/from16 v25, v8

    move/from16 v26, v9

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 305
    .local v15, "returnedHeight":I
    move/from16 v25, v12

    if-lez v25, :cond_4

    move-object/from16 v25, v13

    if-eqz v25, :cond_4

    move/from16 v25, v12

    :goto_1
    move/from16 v16, v25

    .line 310
    .local v16, "dividerHeight":I
    const/16 v25, 0x0

    move/from16 v17, v25

    .line 312
    .local v17, "prevHeightWithoutPartialChild":I
    const/16 v25, 0x0

    move-object/from16 v18, v25

    .line 313
    .local v18, "child":Landroid/view/View;
    const/16 v25, 0x0

    move/from16 v19, v25

    .line 314
    .local v19, "viewType":I
    move-object/from16 v25, v14

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v20, v25

    .line 315
    .local v20, "count":I
    const/16 v25, 0x0

    move/from16 v21, v25

    .local v21, "i":I
    :goto_2
    move/from16 v25, v21

    move/from16 v26, v20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 316
    move-object/from16 v25, v14

    move/from16 v26, v21

    invoke-interface/range {v25 .. v26}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v25

    move/from16 v22, v25

    .line 317
    .local v22, "newType":I
    move/from16 v25, v22

    move/from16 v26, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 318
    const/16 v25, 0x0

    move-object/from16 v18, v25

    .line 319
    move/from16 v25, v22

    move/from16 v19, v25

    .line 321
    :cond_1
    move-object/from16 v25, v14

    move/from16 v26, v21

    move-object/from16 v27, v18

    move-object/from16 v28, v2

    invoke-interface/range {v25 .. v28}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v18, v25

    .line 325
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v24, v25

    .line 327
    .local v24, "childLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v25, v24

    if-nez v25, :cond_2

    .line 328
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/widget/DropDownListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v24, v25

    .line 329
    move-object/from16 v25, v18

    move-object/from16 v26, v24

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_2
    move-object/from16 v25, v24

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    if-lez v25, :cond_5

    .line 333
    move-object/from16 v25, v24

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v23, v25

    .line 338
    .local v23, "heightMeasureSpec":I
    :goto_3
    move-object/from16 v25, v18

    move/from16 v26, v3

    move/from16 v27, v23

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    .line 342
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->forceLayout()V

    .line 344
    move/from16 v25, v21

    if-lez v25, :cond_3

    .line 346
    move/from16 v25, v15

    move/from16 v26, v16

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 349
    :cond_3
    move/from16 v25, v15

    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 351
    move/from16 v25, v15

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 354
    move/from16 v25, v7

    if-ltz v25, :cond_6

    move/from16 v25, v21

    move/from16 v26, v7

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    move/from16 v25, v17

    if-lez v25, :cond_6

    move/from16 v25, v15

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    move/from16 v25, v17

    :goto_4
    move/from16 v2, v25

    goto/16 :goto_0

    .line 305
    .end local v16    # "dividerHeight":I
    .end local v17    # "prevHeightWithoutPartialChild":I
    .end local v18    # "child":Landroid/view/View;
    .end local v19    # "viewType":I
    .end local v20    # "count":I
    .end local v21    # "i":I
    .end local v22    # "newType":I
    .end local v23    # "heightMeasureSpec":I
    .end local v24    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 336
    .restart local v16    # "dividerHeight":I
    .restart local v17    # "prevHeightWithoutPartialChild":I
    .restart local v18    # "child":Landroid/view/View;
    .restart local v19    # "viewType":I
    .restart local v20    # "count":I
    .restart local v21    # "i":I
    .restart local v22    # "newType":I
    .restart local v24    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v23, v25

    .restart local v23    # "heightMeasureSpec":I
    goto :goto_3

    .line 354
    :cond_6
    move/from16 v25, v6

    goto :goto_4

    .line 362
    :cond_7
    move/from16 v25, v7

    if-ltz v25, :cond_8

    move/from16 v25, v21

    move/from16 v26, v7

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    .line 363
    move/from16 v25, v15

    move/from16 v17, v25

    .line 315
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 369
    .end local v22    # "newType":I
    .end local v23    # "heightMeasureSpec":I
    .end local v24    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    move/from16 v25, v15

    move/from16 v2, v25

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 472
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 473
    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 17

    .prologue
    .line 482
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object/from16 v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move/from16 v2, p2

    .local v2, "activePointerId":I
    const/4 v11, 0x1

    move v3, v11

    .line 483
    .local v3, "handledEvent":Z
    const/4 v11, 0x0

    move v4, v11

    .line 485
    .local v4, "clearPressedItem":Z
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    move v5, v11

    .line 486
    .local v5, "actionMasked":I
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    move v11, v3

    if-eqz v11, :cond_1

    move v11, v4

    if-eqz v11, :cond_2

    .line 520
    :cond_1
    move-object v11, v0

    invoke-direct {v11}, Landroidx/appcompat/widget/DropDownListView;->clearPressedItem()V

    .line 524
    :cond_2
    move v11, v3

    if-eqz v11, :cond_7

    .line 525
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-nez v11, :cond_3

    .line 526
    move-object v11, v0

    new-instance v12, Landroidx/core/widget/ListViewAutoScrollHelper;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 528
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v11

    .line 529
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Landroidx/core/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v11

    .line 534
    :cond_4
    :goto_1
    move v11, v3

    move v0, v11

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0

    .line 488
    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :pswitch_0
    const/4 v11, 0x0

    move v3, v11

    .line 489
    goto :goto_0

    .line 491
    :pswitch_1
    const/4 v11, 0x0

    move v3, v11

    .line 494
    :pswitch_2
    move-object v11, v1

    move v12, v2

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    move v6, v11

    .line 495
    .local v6, "activeIndex":I
    move v11, v6

    if-gez v11, :cond_5

    .line 496
    const/4 v11, 0x0

    move v3, v11

    .line 497
    goto :goto_0

    .line 500
    :cond_5
    move-object v11, v1

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    move v7, v11

    .line 501
    .local v7, "x":I
    move-object v11, v1

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    move v8, v11

    .line 502
    .local v8, "y":I
    move-object v11, v0

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v11

    move v9, v11

    .line 503
    .local v9, "position":I
    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 504
    const/4 v11, 0x1

    move v4, v11

    .line 505
    goto :goto_0

    .line 508
    :cond_6
    move-object v11, v0

    move v12, v9

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    .line 509
    .local v10, "child":Landroid/view/View;
    move-object v11, v0

    move-object v12, v10

    move v13, v9

    move v14, v7

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/appcompat/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 510
    const/4 v11, 0x1

    move v3, v11

    .line 512
    move v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 513
    move-object v11, v0

    move-object v12, v10

    move v13, v9

    invoke-direct {v11, v12, v13}, Landroidx/appcompat/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 530
    .end local v6    # "activeIndex":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "position":I
    .end local v10    # "child":Landroid/view/View;
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz v11, :cond_4

    .line 531
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v11

    goto :goto_1

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_0

    .line 434
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v0, v6

    .line 466
    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :goto_0
    return v0

    .line 437
    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    move v2, v6

    .line 438
    .local v2, "action":I
    move v6, v2

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v6, :cond_1

    .line 441
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroidx/appcompat/widget/DropDownListView;)V

    iput-object v7, v6, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 442
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v6}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 446
    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v3, v6

    .line 447
    .local v3, "handled":Z
    move v6, v2

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    move v6, v2

    const/4 v7, 0x7

    if-ne v6, v7, :cond_5

    .line 449
    :cond_2
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v6

    move v4, v6

    .line 451
    .local v4, "position":I
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 452
    move-object v6, v0

    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 453
    .local v5, "hoveredItem":Landroid/view/View;
    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    move-object v6, v0

    move v7, v4

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/DropDownListView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setSelectionFromTop(II)V

    .line 458
    :cond_3
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    .line 460
    .line 466
    .end local v4    # "position":I
    .end local v5    # "hoveredItem":Landroid/view/View;
    :cond_4
    :goto_1
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 463
    :cond_5
    move-object v6, v0

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 213
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v2, :cond_0

    .line 215
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 217
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    return v0

    .line 210
    .restart local v0    # "this":Landroidx/appcompat/widget/DropDownListView;
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 4

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move v1, p1

    .local v1, "hideListSelection":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    .line 555
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DropDownListView;
    move-object v1, p1

    .local v1, "sel":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_1

    new-instance v4, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v4, v3, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 170
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    invoke-super {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v3, Landroid/graphics/Rect;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 173
    .local v2, "padding":Landroid/graphics/Rect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 174
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 177
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 178
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    .line 179
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    .line 180
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 181
    return-void

    .line 169
    .end local v2    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
