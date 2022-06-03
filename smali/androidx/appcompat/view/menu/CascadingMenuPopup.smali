.class final Landroidx/appcompat/view/menu/CascadingMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Landroidx/appcompat/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field private static final ITEM_LAYOUT:I

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "anchor":Landroid/view/View;
    move v3, p3

    .local v3, "popupStyleAttr":I
    move/from16 v4, p4

    .local v4, "popupStyleRes":I
    move/from16 v5, p5

    .local v5, "overflowOnly":Z
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/view/menu/MenuPopup;-><init>()V

    .line 89
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 95
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 97
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 119
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$2;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/view/menu/CascadingMenuPopup$2;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 137
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 197
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 198
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 223
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 224
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 225
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 226
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 227
    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 229
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 230
    move-object v7, v0

    move-object v8, v0

    invoke-direct {v8}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v8

    iput v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 232
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 233
    .local v6, "res":Landroid/content/res/Resources;
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move-object v9, v6

    sget v10, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 234
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 233
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 236
    move-object v7, v0

    new-instance v8, Landroid/os/Handler;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v8, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method private createPopupWindow()Landroidx/appcompat/widget/MenuPopupWindow;
    .locals 9

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    new-instance v2, Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v2

    .line 247
    .local v1, "popupWindow":Landroidx/appcompat/widget/MenuPopupWindow;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    .line 248
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 251
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 252
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    .line 253
    move-object v2, v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 254
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return-object v0
.end method

.method private findIndexOfAddedMenu(Landroidx/appcompat/view/menu/MenuBuilder;)I
    .locals 7
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 656
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v4, v5

    .line 657
    .local v4, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v5, v6, :cond_0

    .line 658
    move v5, v2

    move v0, v5

    .line 662
    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .end local v4    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_1
    return v0

    .line 655
    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .restart local v4    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v4    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method private findMenuItemForSubmenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 8
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "parent":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "submenu":Landroidx/appcompat/view/menu/MenuBuilder;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    move v4, v6

    .local v4, "count":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 517
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 518
    .local v5, "item":Landroid/view/MenuItem;
    move-object v6, v5

    invoke-interface {v6}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v7, v5

    invoke-interface {v7}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 519
    move-object v6, v5

    move-object v0, v6

    .line 523
    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .end local v5    # "item":Landroid/view/MenuItem;
    :goto_1
    return-object v0

    .line 516
    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .restart local v5    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private findParentViewForSubmenu(Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 14
    .param p1    # Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "parentInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v2, p2

    .local v2, "submenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v11, v0

    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v11

    move-object v3, v11

    .line 538
    .local v3, "owner":Landroid/view/MenuItem;
    move-object v11, v3

    if-nez v11, :cond_0

    .line 540
    const/4 v11, 0x0

    move-object v0, v11

    .line 580
    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :goto_0
    return-object v0

    .line 546
    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v11

    move-object v6, v11

    .line 547
    .local v6, "listView":Landroid/widget/ListView;
    move-object v11, v6

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    move-object v7, v11

    .line 548
    .local v7, "listAdapter":Landroid/widget/ListAdapter;
    move-object v11, v7

    instance-of v11, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_2

    .line 549
    move-object v11, v7

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    move-object v8, v11

    .line 550
    .local v8, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    move-object v11, v8

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v11

    move v4, v11

    .line 551
    .local v4, "headersCount":I
    move-object v11, v8

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v5, v11

    .line 558
    .end local v8    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Landroidx/appcompat/view/menu/MenuAdapter;
    :goto_1
    const/4 v11, -0x1

    move v8, v11

    .line 559
    .local v8, "ownerPosition":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i":I
    move-object v11, v5

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v11

    move v10, v11

    .local v10, "count":I
    :goto_2
    move v11, v9

    move v12, v10

    if-ge v11, v12, :cond_1

    .line 560
    move-object v11, v3

    move-object v12, v5

    move v13, v9

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v12

    if-ne v11, v12, :cond_3

    .line 561
    move v11, v9

    move v8, v11

    .line 565
    :cond_1
    move v11, v8

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 567
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 553
    .end local v4    # "headersCount":I
    .end local v5    # "menuAdapter":Landroidx/appcompat/view/menu/MenuAdapter;
    .end local v8    # "ownerPosition":I
    .end local v9    # "i":I
    .end local v10    # "count":I
    :cond_2
    const/4 v11, 0x0

    move v4, v11

    .line 554
    .restart local v4    # "headersCount":I
    move-object v11, v7

    check-cast v11, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v5, v11

    .restart local v5    # "menuAdapter":Landroidx/appcompat/view/menu/MenuAdapter;
    goto :goto_1

    .line 559
    .restart local v8    # "ownerPosition":I
    .restart local v9    # "i":I
    .restart local v10    # "count":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 571
    :cond_4
    move v11, v8

    move v12, v4

    add-int/2addr v11, v12

    move v8, v11

    .line 574
    move v11, v8

    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 575
    .local v9, "ownerViewPosition":I
    move v11, v9

    if-ltz v11, :cond_5

    move v11, v9

    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    if-lt v11, v12, :cond_6

    .line 577
    :cond_5
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 580
    :cond_6
    move-object v11, v6

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    goto :goto_0
.end method

.method private getInitialMenuPosition()I
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 316
    .local v1, "layoutDirection":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getNextMenuPosition(I)I
    .locals 10

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "nextMenuWidth":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v6

    move-object v2, v6

    .line 331
    .local v2, "lastListView":Landroid/widget/ListView;
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v3, v6

    .line 332
    .local v3, "screenLocation":[I
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 334
    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v6

    .line 335
    .local v4, "displayFrame":Landroid/graphics/Rect;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 337
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 338
    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/widget/ListView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    move v7, v1

    add-int/2addr v6, v7

    move v5, v6

    .line 339
    .local v5, "right":I
    move v6, v5

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_0

    .line 340
    const/4 v6, 0x0

    move v0, v6

    .line 348
    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .end local v5    # "right":I
    :goto_0
    return v0

    .line 342
    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .restart local v5    # "right":I
    :cond_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 344
    .end local v5    # "right":I
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move v7, v1

    sub-int/2addr v6, v7

    move v5, v6

    .line 345
    .local v5, "left":I
    move v6, v5

    if-gez v6, :cond_2

    .line 346
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 348
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 23
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 369
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object/from16 v2, p1

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    move-object v3, v15

    .line 370
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v15, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    move/from16 v19, v0

    sget v20, Landroidx/appcompat/view/menu/CascadingMenuPopup;->ITEM_LAYOUT:I

    invoke-direct/range {v16 .. v20}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    move-object v4, v15

    .line 376
    .local v4, "adapter":Landroidx/appcompat/view/menu/MenuAdapter;
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v15

    if-nez v15, :cond_2

    move-object v15, v1

    iget-boolean v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v15, :cond_2

    .line 378
    move-object v15, v4

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 385
    :cond_0
    :goto_0
    move-object v15, v4

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v15

    move v5, v15

    .line 386
    .local v5, "menuWidth":I
    move-object v15, v1

    invoke-direct {v15}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->createPopupWindow()Landroidx/appcompat/widget/MenuPopupWindow;

    move-result-object v15

    move-object v6, v15

    .line 387
    .local v6, "popupWindow":Landroidx/appcompat/widget/MenuPopupWindow;
    move-object v15, v6

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    move-object v15, v6

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 389
    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 393
    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 394
    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v7, v15

    .line 395
    .local v7, "parentInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v17}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v15

    move-object v8, v15

    .line 401
    .local v8, "parentView":Landroid/view/View;
    :goto_1
    move-object v15, v8

    if-eqz v15, :cond_a

    .line 403
    move-object v15, v6

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 404
    move-object v15, v6

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 406
    move-object v15, v1

    move/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v15

    move v9, v15

    .line 407
    .local v9, "nextMenuPosition":I
    move v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_2
    move v10, v15

    .line 408
    .local v10, "showOnRight":Z
    move-object v15, v1

    move/from16 v16, v9

    move/from16 v0, v16

    iput v0, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 412
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 415
    move-object v15, v6

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 416
    const/4 v15, 0x0

    move v11, v15

    .line 417
    .local v11, "parentOffsetX":I
    const/4 v15, 0x0

    move v12, v15

    .line 454
    .local v12, "parentOffsetY":I
    :goto_3
    move-object v15, v1

    iget v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/16 v16, 0x5

    and-int/lit8 v15, v15, 0x5

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 455
    move v15, v10

    if-eqz v15, :cond_7

    .line 456
    move v15, v11

    move/from16 v16, v5

    add-int v15, v15, v16

    move v13, v15

    .line 467
    .local v13, "x":I
    :goto_4
    move-object v15, v6

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 470
    move-object v15, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 471
    move-object v15, v6

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 472
    .line 483
    .end local v9    # "nextMenuPosition":I
    .end local v10    # "showOnRight":Z
    .end local v11    # "parentOffsetX":I
    .end local v12    # "parentOffsetY":I
    .end local v13    # "x":I
    :goto_5
    new-instance v15, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    move/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V

    move-object v9, v15

    .line 484
    .local v9, "menuInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 486
    move-object v15, v6

    invoke-virtual {v15}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 488
    move-object v15, v6

    invoke-virtual {v15}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v15

    move-object v10, v15

    .line 489
    .local v10, "listView":Landroid/widget/ListView;
    move-object v15, v10

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 492
    move-object v15, v7

    if-nez v15, :cond_1

    move-object v15, v1

    iget-boolean v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v15, :cond_1

    move-object v15, v2

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 493
    move-object v15, v3

    sget v16, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    move-object/from16 v17, v10

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    move-object v11, v15

    .line 495
    .local v11, "titleItemView":Landroid/widget/FrameLayout;
    move-object v15, v11

    const v16, 0x1020016

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object v12, v15

    .line 496
    .local v12, "titleView":Landroid/widget/TextView;
    move-object v15, v11

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 497
    move-object v15, v12

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    move-object v15, v10

    move-object/from16 v16, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 501
    move-object v15, v6

    invoke-virtual {v15}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 503
    .end local v11    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v12    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 379
    .end local v5    # "menuWidth":I
    .end local v6    # "popupWindow":Landroidx/appcompat/widget/MenuPopupWindow;
    .end local v7    # "parentInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v8    # "parentView":Landroid/view/View;
    .end local v9    # "menuInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v10    # "listView":Landroid/widget/ListView;
    :cond_2
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 381
    move-object v15, v4

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto/16 :goto_0

    .line 397
    .restart local v5    # "menuWidth":I
    .restart local v6    # "popupWindow":Landroidx/appcompat/widget/MenuPopupWindow;
    :cond_3
    const/4 v15, 0x0

    move-object v7, v15

    .line 398
    .restart local v7    # "parentInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v15, 0x0

    move-object v8, v15

    .restart local v8    # "parentView":Landroid/view/View;
    goto/16 :goto_1

    .line 407
    .local v9, "nextMenuPosition":I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 428
    .local v10, "showOnRight":Z
    :cond_5
    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object v13, v15

    .line 429
    .local v13, "anchorScreenLocation":[I
    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 431
    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object v14, v15

    .line 432
    .local v14, "parentViewScreenLocation":[I
    move-object v15, v8

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    move-object v15, v1

    iget v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/16 v16, 0x7

    and-int/lit8 v15, v15, 0x7

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 439
    move-object v15, v13

    const/16 v16, 0x0

    move-object/from16 v21, v15

    move/from16 v22, v16

    move-object/from16 v15, v21

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    aget v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    aput v17, v15, v16

    .line 440
    move-object v15, v14

    const/16 v16, 0x0

    move-object/from16 v21, v15

    move/from16 v22, v16

    move-object/from16 v15, v21

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    aget v17, v17, v18

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    aput v17, v15, v16

    .line 445
    :cond_6
    move-object v15, v14

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v16, v13

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-int v15, v15, v16

    move v11, v15

    .line 446
    .local v11, "parentOffsetX":I
    move-object v15, v14

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v16, v13

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-int v15, v15, v16

    move v12, v15

    .local v12, "parentOffsetY":I
    goto/16 :goto_3

    .line 458
    .end local v13    # "anchorScreenLocation":[I
    .end local v14    # "parentViewScreenLocation":[I
    :cond_7
    move v15, v11

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    move v13, v15

    .local v13, "x":I
    goto/16 :goto_4

    .line 461
    .end local v13    # "x":I
    :cond_8
    move v15, v10

    if-eqz v15, :cond_9

    .line 462
    move v15, v11

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    move v13, v15

    .restart local v13    # "x":I
    goto/16 :goto_4

    .line 464
    .end local v13    # "x":I
    :cond_9
    move v15, v11

    move/from16 v16, v5

    sub-int v15, v15, v16

    move v13, v15

    .restart local v13    # "x":I
    goto/16 :goto_4

    .line 473
    .end local v9    # "nextMenuPosition":I
    .end local v10    # "showOnRight":Z
    .end local v11    # "parentOffsetX":I
    .end local v12    # "parentOffsetY":I
    .end local v13    # "x":I
    :cond_a
    move-object v15, v1

    iget-boolean v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v15, :cond_b

    .line 474
    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mXOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 476
    :cond_b
    move-object v15, v1

    iget-boolean v15, v15, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v15, :cond_c

    .line 477
    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mYOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 479
    :cond_c
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v15

    move-object v9, v15

    .line 480
    .local v9, "epicenterBounds":Landroid/graphics/Rect;
    move-object v15, v6

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 356
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 2

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return v0
.end method

.method public dismiss()V
    .locals 7

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    .line 288
    .local v1, "length":I
    move v5, v1

    if-lez v5, :cond_1

    .line 289
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v6, v1

    new-array v6, v6, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 290
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v2, v5

    .line 291
    .local v2, "addedMenus":[Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 292
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 293
    .local v4, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v5, v4

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    move-object v5, v4

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    .line 291
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 298
    .end local v2    # "addedMenus":[Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v3    # "i":I
    .end local v4    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 4

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 767
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return-object v0

    .line 765
    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 767
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 12

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroidx/appcompat/view/menu/MenuBuilder;)I

    move-result v8

    move v3, v8

    .line 668
    .local v3, "menuIndex":I
    move v8, v3

    if-gez v8, :cond_0

    .line 669
    .line 722
    :goto_0
    return-void

    .line 673
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 674
    .local v4, "nextMenuIndex":I
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 675
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v5, v8

    .line 676
    .local v5, "childInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v8, v5

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 680
    .end local v5    # "childInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v5, v8

    .line 681
    .local v5, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v8, v5

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 682
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    if-eqz v8, :cond_2

    .line 684
    move-object v8, v5

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 685
    move-object v8, v5

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 687
    :cond_2
    move-object v8, v5

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v8}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    .line 689
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .line 690
    .local v6, "count":I
    move v8, v6

    if-lez v8, :cond_7

    .line 691
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v9, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 696
    :goto_1
    move v8, v6

    if-nez v8, :cond_8

    .line 698
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 700
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v8, :cond_3

    .line 701
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v9, v1

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 704
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v8, :cond_5

    .line 705
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v8}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 706
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 708
    :cond_4
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 710
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 714
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v8}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 722
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 693
    :cond_7
    move-object v8, v0

    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v9

    iput v9, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_1

    .line 715
    :cond_8
    move v8, v2

    if-eqz v8, :cond_6

    .line 719
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v7, v8

    .line 720
    .local v7, "rootInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v8, v7

    iget-object v8, v8, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2
.end method

.method public onDismiss()V
    .locals 7

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    const/4 v5, 0x0

    move-object v1, v5

    .line 599
    .local v1, "dismissedInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 600
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v4, v5

    .line 601
    .local v4, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v5, v4

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 602
    move-object v5, v4

    move-object v1, v5

    .line 609
    .end local v4    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 610
    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 612
    :cond_1
    return-void

    .line 599
    .restart local v4    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    .line 303
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 304
    const/4 v4, 0x1

    move v0, v4

    .line 306
    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 736
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 6

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v3, v4

    .line 630
    .local v3, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v4, v5, :cond_0

    .line 632
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    move-result v4

    .line 633
    const/4 v4, 0x1

    move v0, v4

    .line 645
    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .end local v3    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_1
    return v0

    .line 635
    .restart local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    .restart local v3    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    goto :goto_0

    .line 637
    .end local v3    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 638
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 640
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v4, :cond_2

    .line 641
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v4

    .line 643
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 645
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 750
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 753
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 754
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 753
    invoke-static {v3, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    iput v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 756
    :cond_0
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 624
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "forceShow":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 242
    return-void
.end method

.method public setGravity(I)V
    .locals 5

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "dropDownGravity":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 741
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 742
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 743
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 742
    invoke-static {v3, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    iput v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 745
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 773
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 774
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/PopupWindow$OnDismissListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 761
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 4

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "showTitle":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 785
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 779
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 780
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    .line 279
    :goto_0
    return-void

    .line 264
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v3

    .line 265
    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 266
    goto :goto_1

    .line 267
    .end local v2    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 269
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v4, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 271
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 272
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move v1, v3

    .line 273
    .local v1, "addGlobalListener":Z
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 274
    move v3, v1

    if-eqz v3, :cond_2

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 279
    .end local v1    # "addGlobalListener":Z
    :cond_3
    goto :goto_0

    .line 272
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateMenuView(Z)V
    .locals 5

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move v1, p1

    .local v1, "cleared":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v3, v4

    .line 617
    .local v3, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 618
    goto :goto_0

    .line 619
    .end local v3    # "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    return-void
.end method
