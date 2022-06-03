.class Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    sget v5, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 74
    move-object v2, v0

    new-instance v3, Landroid/util/SparseBooleanArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 84
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method static synthetic access$100(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method static synthetic access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    move-object v0, v1

    .end local v0    # "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method static synthetic access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method static synthetic access$400(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method static synthetic access$500(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    move-object v0, v1

    .end local v0    # "x0":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 8

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, v6

    .line 322
    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 332
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :goto_0
    return-object v0

    .line 324
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 325
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 326
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 327
    .local v5, "child":Landroid/view/View;
    move-object v6, v5

    instance-of v6, v6, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 328
    invoke-interface {v6}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 329
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 325
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 332
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
    .locals 10

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, p2

    .local v2, "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 213
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView;

    move-object v3, v5

    .line 214
    .local v3, "menuView":Landroidx/appcompat/widget/ActionMenuView;
    move-object v5, v2

    check-cast v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-object v4, v5

    .line 215
    .local v4, "actionItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V

    .line 217
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v5, :cond_0

    .line 218
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object v6, v5, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 220
    :cond_0
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 221
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v2

    move v1, v2

    .line 382
    .local v1, "result":Z
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 383
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "childIndex":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 280
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 421
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 422
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v3, v23

    .line 423
    .local v3, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v4, v23

    .line 429
    .local v4, "itemsSize":I
    :goto_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v23, v0

    move/from16 v5, v23

    .line 430
    .local v5, "maxActions":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v23, v0

    move/from16 v6, v23

    .line 431
    .local v6, "widthLimit":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v7, v23

    .line 432
    .local v7, "querySpec":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v8, v23

    .line 434
    .local v8, "parent":Landroid/view/ViewGroup;
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 435
    .local v9, "requiredItems":I
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 436
    .local v10, "requestedItems":I
    const/16 v23, 0x0

    move/from16 v11, v23

    .line 437
    .local v11, "firstActionWidth":I
    const/16 v23, 0x0

    move/from16 v12, v23

    .line 438
    .local v12, "hasOverflow":Z
    const/16 v23, 0x0

    move/from16 v13, v23

    .local v13, "i":I
    :goto_1
    move/from16 v23, v13

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 439
    move-object/from16 v23, v3

    move/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object/from16 v14, v23

    .line 440
    .local v14, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 441
    add-int/lit8 v9, v9, 0x1

    .line 447
    :goto_2
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 450
    const/16 v23, 0x0

    move/from16 v5, v23

    .line 438
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 425
    .end local v3    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v4    # "itemsSize":I
    .end local v5    # "maxActions":I
    .end local v6    # "widthLimit":I
    .end local v7    # "querySpec":I
    .end local v8    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "requiredItems":I
    .end local v10    # "requestedItems":I
    .end local v11    # "firstActionWidth":I
    .end local v12    # "hasOverflow":Z
    .end local v13    # "i":I
    .end local v14    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    const/16 v23, 0x0

    move-object/from16 v3, v23

    .line 426
    .restart local v3    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    const/16 v23, 0x0

    move/from16 v4, v23

    .restart local v4    # "itemsSize":I
    goto :goto_0

    .line 442
    .restart local v5    # "maxActions":I
    .restart local v6    # "widthLimit":I
    .restart local v7    # "querySpec":I
    .restart local v8    # "parent":Landroid/view/ViewGroup;
    .restart local v9    # "requiredItems":I
    .restart local v10    # "requestedItems":I
    .restart local v11    # "firstActionWidth":I
    .restart local v12    # "hasOverflow":Z
    .restart local v13    # "i":I
    .restart local v14    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_2
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 443
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 445
    :cond_3
    const/16 v23, 0x1

    move/from16 v12, v23

    goto :goto_2

    .line 455
    .end local v14    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move/from16 v23, v12

    if-nez v23, :cond_5

    move/from16 v23, v9

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v24, v5

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 457
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 459
    :cond_6
    move/from16 v23, v5

    move/from16 v24, v9

    sub-int v23, v23, v24

    move/from16 v5, v23

    .line 461
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v13, v23

    .line 462
    .local v13, "seenGroups":Landroid/util/SparseBooleanArray;
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 464
    const/16 v23, 0x0

    move/from16 v14, v23

    .line 465
    .local v14, "cellSize":I
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 466
    .local v15, "cellsRemaining":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 467
    move/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v24, v0

    div-int v23, v23, v24

    move/from16 v15, v23

    .line 468
    move/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v24, v0

    rem-int v23, v23, v24

    move/from16 v16, v23

    .line 469
    .local v16, "cellSizeRemaining":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v23, v0

    move/from16 v24, v16

    move/from16 v25, v15

    div-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v14, v23

    .line 473
    .end local v16    # "cellSizeRemaining":I
    :cond_7
    const/16 v23, 0x0

    move/from16 v16, v23

    .local v16, "i":I
    :goto_3
    move/from16 v23, v16

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    .line 474
    move-object/from16 v23, v3

    move/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object/from16 v17, v23

    .line 476
    .local v17, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 477
    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v23 .. v26}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v18, v23

    .line 478
    .local v18, "v":Landroid/view/View;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 479
    move-object/from16 v23, v2

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 481
    :cond_8
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 482
    move/from16 v23, v15

    move-object/from16 v24, v18

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v7

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v15, v23

    .line 487
    :goto_4
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    move/from16 v19, v23

    .line 488
    .local v19, "measuredWidth":I
    move/from16 v23, v6

    move/from16 v24, v19

    sub-int v23, v23, v24

    move/from16 v6, v23

    .line 489
    move/from16 v23, v11

    if-nez v23, :cond_9

    .line 490
    move/from16 v23, v19

    move/from16 v11, v23

    .line 492
    :cond_9
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v20, v23

    .line 493
    .local v20, "groupId":I
    move/from16 v23, v20

    if-eqz v23, :cond_a

    .line 494
    move-object/from16 v23, v13

    move/from16 v24, v20

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 496
    :cond_a
    move-object/from16 v23, v17

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 497
    .line 473
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "measuredWidth":I
    .end local v20    # "groupId":I
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 485
    .restart local v18    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v23, v18

    move/from16 v24, v7

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 497
    .end local v18    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 500
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v18, v23

    .line 501
    .local v18, "groupId":I
    move-object/from16 v23, v13

    move/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    move/from16 v19, v23

    .line 502
    .local v19, "inGroup":Z
    move/from16 v23, v5

    if-gtz v23, :cond_d

    move/from16 v23, v19

    if-eqz v23, :cond_15

    :cond_d
    move/from16 v23, v6

    if-lez v23, :cond_15

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move/from16 v23, v15

    if-lez v23, :cond_15

    :cond_e
    const/16 v23, 0x1

    :goto_6
    move/from16 v20, v23

    .line 505
    .local v20, "isAction":Z
    move/from16 v23, v20

    if-eqz v23, :cond_12

    .line 506
    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v23 .. v26}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v21, v23

    .line 507
    .local v21, "v":Landroid/view/View;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v23, :cond_f

    .line 508
    move-object/from16 v23, v2

    move-object/from16 v24, v21

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 510
    :cond_f
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 511
    move-object/from16 v23, v21

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v7

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v23

    move/from16 v22, v23

    .line 513
    .local v22, "cells":I
    move/from16 v23, v15

    move/from16 v24, v22

    sub-int v23, v23, v24

    move/from16 v15, v23

    .line 514
    move/from16 v23, v22

    if-nez v23, :cond_10

    .line 515
    const/16 v23, 0x0

    move/from16 v20, v23

    .line 517
    .line 520
    .end local v22    # "cells":I
    :cond_10
    :goto_7
    move-object/from16 v23, v21

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    move/from16 v22, v23

    .line 521
    .local v22, "measuredWidth":I
    move/from16 v23, v6

    move/from16 v24, v22

    sub-int v23, v23, v24

    move/from16 v6, v23

    .line 522
    move/from16 v23, v11

    if-nez v23, :cond_11

    .line 523
    move/from16 v23, v22

    move/from16 v11, v23

    .line 526
    :cond_11
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 527
    move/from16 v23, v20

    move/from16 v24, v6

    if-ltz v24, :cond_17

    const/16 v24, 0x1

    :goto_8
    and-int v23, v23, v24

    move/from16 v20, v23

    .line 534
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "measuredWidth":I
    :cond_12
    :goto_9
    move/from16 v23, v20

    if-eqz v23, :cond_1a

    move/from16 v23, v18

    if-eqz v23, :cond_1a

    .line 535
    move-object/from16 v23, v13

    move/from16 v24, v18

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 549
    :cond_13
    move/from16 v23, v20

    if-eqz v23, :cond_14

    add-int/lit8 v5, v5, -0x1

    .line 551
    :cond_14
    move-object/from16 v23, v17

    move/from16 v24, v20

    invoke-virtual/range {v23 .. v24}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 552
    goto/16 :goto_5

    .line 502
    .end local v20    # "isAction":Z
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 518
    .restart local v20    # "isAction":Z
    .restart local v21    # "v":Landroid/view/View;
    :cond_16
    move-object/from16 v23, v21

    move/from16 v24, v7

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 527
    .restart local v22    # "measuredWidth":I
    :cond_17
    const/16 v24, 0x0

    goto :goto_8

    .line 530
    :cond_18
    move/from16 v23, v20

    move/from16 v24, v6

    move/from16 v25, v11

    add-int v24, v24, v25

    if-lez v24, :cond_19

    const/16 v24, 0x1

    :goto_a
    and-int v23, v23, v24

    move/from16 v20, v23

    goto :goto_9

    :cond_19
    const/16 v24, 0x0

    goto :goto_a

    .line 536
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "measuredWidth":I
    :cond_1a
    move/from16 v23, v19

    if-eqz v23, :cond_13

    .line 538
    move-object/from16 v23, v13

    move/from16 v24, v18

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 539
    const/16 v23, 0x0

    move/from16 v21, v23

    .local v21, "j":I
    :goto_b
    move/from16 v23, v21

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 540
    move-object/from16 v23, v3

    move/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object/from16 v22, v23

    .line 541
    .local v22, "areYouMyGroupie":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 543
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v23

    if-eqz v23, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 544
    :cond_1b
    move-object/from16 v23, v22

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 539
    :cond_1c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 554
    .end local v18    # "groupId":I
    .end local v19    # "inGroup":Z
    .end local v20    # "isAction":Z
    .end local v21    # "j":I
    .end local v22    # "areYouMyGroupie":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1d
    move-object/from16 v23, v17

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 557
    .end local v17    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1e
    const/16 v23, 0x1

    move/from16 v2, v23

    .end local v2    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return v2
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 196
    .local v4, "actionView":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 199
    :cond_1
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 201
    move-object v7, v3

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView;

    move-object v5, v7

    .line 202
    .local v5, "menuParent":Landroidx/appcompat/widget/ActionMenuView;
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    .line 203
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 204
    move-object v7, v4

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_2
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0

    .line 199
    .end local v5    # "menuParent":Landroidx/appcompat/widget/ActionMenuView;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    move-object v2, v4

    .line 186
    .local v2, "oldMenuView":Landroidx/appcompat/view/menu/MenuView;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v4

    move-object v3, v4

    .line 187
    .local v3, "result":Landroidx/appcompat/view/menu/MenuView;
    move-object v4, v2

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 188
    move-object v4, v3

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 190
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_0

    .line 176
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 180
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :goto_0
    return-object v0

    .line 177
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v1, :cond_1

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v2, :cond_0

    .line 363
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 364
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 365
    const/4 v2, 0x1

    move v0, v2

    .line 373
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    .local v1, "popup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :goto_0
    return v0

    .line 368
    .end local v1    # "popup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    move-object v1, v2

    .line 369
    .restart local v1    # "popup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 370
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    .line 371
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 373
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v1, :cond_0

    .line 393
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 394
    const/4 v1, 0x1

    move v0, v1

    .line 396
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 95
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 97
    .local v3, "res":Landroid/content/res/Resources;
    move-object v7, v1

    invoke-static {v7}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v7

    move-object v4, v7

    .line 98
    .local v4, "abp":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v7, :cond_0

    .line 99
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/appcompat/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v8

    iput-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 102
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v7, :cond_1

    .line 103
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/appcompat/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 107
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v7, :cond_2

    .line 108
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 111
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    move v5, v7

    .line 112
    .local v5, "width":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v7, :cond_5

    .line 113
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v7, :cond_4

    .line 114
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 115
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v7, :cond_3

    .line 116
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 120
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v6, v7

    .line 121
    .local v6, "spec":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move v8, v6

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 123
    .end local v6    # "spec":I
    :cond_4
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 128
    :goto_0
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    move-object v7, v0

    const/high16 v8, 0x42600000    # 56.0f

    move-object v9, v3

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 133
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 134
    return-void

    .line 125
    :cond_5
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v3

    .line 563
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 564
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_0

    .line 138
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 140
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 141
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v5, v1

    instance-of v5, v5, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v5, :cond_0

    .line 576
    .line 587
    :goto_0
    return-void

    .line 579
    :cond_0
    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-object v2, v5

    .line 580
    .local v2, "saved":Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    move-object v5, v2

    iget v5, v5, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v5, :cond_1

    .line 581
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v6, v2

    iget v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v3, v5

    .line 582
    .local v3, "item":Landroid/view/MenuItem;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 583
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v4, v5

    .line 584
    .local v4, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v5

    .line 587
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_1
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    move-object v1, v2

    .line 569
    .local v1, "state":Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 570
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 16

    .prologue
    .line 285
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object/from16 v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    .line 317
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :goto_0
    return v0

    .line 287
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    move-object v8, v1

    move-object v2, v8

    .line 288
    .local v2, "topSubMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :goto_1
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq v8, v9, :cond_1

    .line 289
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v2, v8

    goto :goto_1

    .line 291
    :cond_1
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 292
    .local v3, "anchor":Landroid/view/View;
    move-object v8, v3

    if-nez v8, :cond_2

    .line 297
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 300
    :cond_2
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    iput v9, v8, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 302
    const/4 v8, 0x0

    move v4, v8

    .line 303
    .local v4, "preserveIconSpacing":Z
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/SubMenuBuilder;->size()I

    move-result v8

    move v5, v8

    .line 304
    .local v5, "count":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    .line 305
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v7, v8

    .line 306
    .local v7, "childItem":Landroid/view/MenuItem;
    move-object v8, v7

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v7

    invoke-interface {v8}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 307
    const/4 v8, 0x1

    move v4, v8

    .line 312
    .end local v7    # "childItem":Landroid/view/MenuItem;
    :cond_3
    move-object v8, v0

    new-instance v9, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v9, v8, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 313
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 314
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 316
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v8

    .line 317
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 304
    .restart local v7    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "isVisible":Z
    move v2, v1

    if-eqz v2, :cond_1

    .line 593
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v2

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 595
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "isExclusive":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 163
    return-void
.end method

.method public setItemLimit(I)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "itemCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 158
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 159
    return-void
.end method

.method public setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 4

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "menuView":Landroidx/appcompat/widget/ActionMenuView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 601
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 602
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 170
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "reserveOverflow":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 153
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 154
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "strict":Z
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 148
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 149
    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "childIndex":I
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    return v0
.end method

.method public showOverflowMenu()Z
    .locals 10

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 341
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V

    move-object v1, v2

    .line 343
    .local v1, "popup":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 345
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 349
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v2

    .line 351
    const/4 v2, 0x1

    move v0, v2

    .line 353
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :goto_0
    return v0

    .end local v1    # "popup":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 12

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter;
    move v1, p1

    .local v1, "cleared":Z
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 232
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 234
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    .line 235
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 236
    .local v2, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 237
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 238
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v6

    move-object v5, v6

    .line 239
    .local v5, "provider":Landroidx/core/view/ActionProvider;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 240
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/core/view/ActionProvider;->setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V

    .line 237
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v2    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "provider":Landroidx/core/view/ActionProvider;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 246
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    :goto_1
    move-object v2, v6

    .line 248
    .local v2, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    const/4 v6, 0x0

    move v3, v6

    .line 249
    .local v3, "hasOverflow":Z
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v6, :cond_2

    move-object v6, v2

    if-eqz v6, :cond_2

    .line 250
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 251
    .local v4, "count":I
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 252
    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    move v3, v6

    .line 258
    .end local v4    # "count":I
    :cond_2
    :goto_3
    move v6, v3

    if-eqz v6, :cond_a

    .line 259
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v6, :cond_3

    .line 260
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v7, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 262
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object v4, v6

    .line 263
    .local v4, "parent":Landroid/view/ViewGroup;
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eq v6, v7, :cond_5

    .line 264
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 265
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView;

    move-object v5, v6

    .line 268
    .local v5, "menuView":Landroidx/appcompat/widget/ActionMenuView;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v8, v5

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 274
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .end local v5    # "menuView":Landroidx/appcompat/widget/ActionMenuView;
    :cond_5
    :goto_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView;

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 275
    return-void

    .line 246
    .end local v2    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v3    # "hasOverflow":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 252
    .restart local v2    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    .restart local v3    # "hasOverflow":Z
    .local v4, "count":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 254
    :cond_8
    move v6, v4

    if-lez v6, :cond_9

    const/4 v6, 0x1

    :goto_5
    move v3, v6

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 270
    .end local v4    # "count":I
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-ne v6, v7, :cond_5

    .line 271
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
