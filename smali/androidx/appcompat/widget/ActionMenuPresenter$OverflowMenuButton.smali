.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 643
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    sget v6, Landroidx/appcompat/R$attr;->actionOverflowButtonStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 640
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 645
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 646
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 647
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 648
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 650
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 652
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 681
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    return v0
.end method

.method public needsDividerBefore()Z
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    return v0
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatImageView;->performClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    const/4 v1, 0x1

    move v0, v1

    .line 691
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    :goto_0
    return v0

    .line 689
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 690
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    .line 691
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 21

    .prologue
    .line 706
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    move/from16 v1, p1

    .local v1, "l":I
    move/from16 v2, p2

    .local v2, "t":I
    move/from16 v3, p3

    .local v3, "r":I
    move/from16 v4, p4

    .local v4, "b":I
    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-super/range {v15 .. v19}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result v15

    move v5, v15

    .line 709
    .local v5, "changed":Z
    move-object v15, v0

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object v6, v15

    .line 710
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    move-object v15, v0

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object v7, v15

    .line 711
    .local v7, "bg":Landroid/graphics/drawable/Drawable;
    move-object v15, v6

    if-eqz v15, :cond_0

    move-object v15, v7

    if-eqz v15, :cond_0

    .line 712
    move-object v15, v0

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v15

    move v8, v15

    .line 713
    .local v8, "width":I
    move-object v15, v0

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v15

    move v9, v15

    .line 714
    .local v9, "height":I
    move v15, v8

    move/from16 v16, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move v10, v15

    .line 715
    .local v10, "halfEdge":I
    move-object v15, v0

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v15

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    move v11, v15

    .line 716
    .local v11, "offsetX":I
    move-object v15, v0

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v15

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    move v12, v15

    .line 717
    .local v12, "offsetY":I
    move v15, v8

    move/from16 v16, v11

    add-int v15, v15, v16

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move v13, v15

    .line 718
    .local v13, "centerX":I
    move v15, v9

    move/from16 v16, v12

    add-int v15, v15, v16

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move v14, v15

    .line 719
    .local v14, "centerY":I
    move-object v15, v7

    move/from16 v16, v13

    move/from16 v17, v10

    sub-int v16, v16, v17

    move/from16 v17, v14

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v18, v13

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v10

    add-int v19, v19, v20

    invoke-static/range {v15 .. v19}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 723
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "halfEdge":I
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    .end local v13    # "centerX":I
    .end local v14    # "centerY":I
    :cond_0
    move v15, v5

    move v0, v15

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    return v0
.end method
