.class final Landroidx/appcompat/view/menu/StandardMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private final mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget v0, Landroidx/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 17

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object/from16 v3, p3

    .local v3, "anchorView":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "popupStyleAttr":I
    move/from16 v5, p5

    .local v5, "popupStyleRes":I
    move/from16 v6, p6

    .local v6, "overflowOnly":Z
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/view/menu/MenuPopup;-><init>()V

    .line 60
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/view/menu/StandardMenuPopup$1;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/view/menu/StandardMenuPopup$1;-><init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 112
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 118
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 119
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 120
    move-object v9, v0

    move v10, v6

    iput-boolean v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 121
    move-object v9, v1

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    move-object v7, v9

    .line 122
    .local v7, "inflater":Landroid/view/LayoutInflater;
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v2

    move-object v13, v7

    move-object v14, v0

    iget-boolean v14, v14, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    sget v15, Landroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    .line 123
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 124
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 126
    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v8, v9

    .line 127
    .local v8, "res":Landroid/content/res/Resources;
    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move-object v11, v8

    sget v12, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 128
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 127
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 130
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 132
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/widget/MenuPopupWindow;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object v14, v0

    iget v14, v14, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    move-object v15, v0

    iget v15, v15, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v10, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 135
    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method private tryShow()Z
    .locals 11

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    const/4 v6, 0x1

    move v0, v6

    .line 203
    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    .local v1, "anchor":Landroid/view/View;
    .local v2, "addGlobalListener":Z
    .local v3, "listView":Landroid/widget/ListView;
    :goto_0
    return v0

    .line 153
    .end local v1    # "anchor":Landroid/view/View;
    .end local v2    # "addGlobalListener":Z
    .end local v3    # "listView":Landroid/widget/ListView;
    .restart local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 154
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 157
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v7, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 159
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 160
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    .line 163
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v1, v6

    .line 164
    .restart local v1    # "anchor":Landroid/view/View;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    move v2, v6

    .line 165
    .restart local v2    # "addGlobalListener":Z
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 166
    move v6, v2

    if-eqz v6, :cond_3

    .line 167
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :cond_3
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 170
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 171
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 173
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez v6, :cond_4

    .line 174
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v7, v8, v9, v10}, Landroidx/appcompat/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 175
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 178
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 179
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 180
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 181
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 183
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    move-object v3, v6

    .line 184
    .restart local v3    # "listView":Landroid/widget/ListView;
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 187
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 188
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    move-object v4, v6

    .line 190
    .local v4, "titleItemView":Landroid/widget/FrameLayout;
    move-object v6, v4

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v5, v6

    .line 191
    .local v5, "titleView":Landroid/widget/TextView;
    move-object v6, v5

    if-eqz v6, :cond_5

    .line 192
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_5
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 195
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 200
    .end local v4    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v5    # "titleView":Landroid/widget/TextView;
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 203
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 164
    .end local v2    # "addGlobalListener":Z
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .prologue
    .line 223
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    .line 218
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 304
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_1

    .line 305
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 307
    :cond_1
    goto :goto_0
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 233
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 235
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 236
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 237
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 240
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_2

    .line 243
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 245
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
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

    .line 331
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 332
    const/4 v4, 0x1

    move v0, v4

    .line 334
    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 321
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 15

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object/from16 v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    new-instance v6, Landroidx/appcompat/view/menu/MenuPopupHelper;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    move-object v12, v0

    iget v12, v12, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    move-object v2, v6

    .line 266
    .local v2, "subPopup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 267
    move-object v6, v2

    move-object v7, v1

    invoke-static {v7}, Landroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 270
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 271
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 274
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 277
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroidx/appcompat/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v6

    move v3, v6

    .line 278
    .local v3, "horizontalOffset":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroidx/appcompat/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v6

    move v4, v6

    .line 282
    .local v4, "verticalOffset":I
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 283
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 282
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    const/4 v7, 0x7

    and-int/lit8 v6, v6, 0x7

    move v5, v6

    .line 284
    .local v5, "hgrav":I
    move v6, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 285
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 288
    :cond_0
    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 289
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v6, :cond_1

    .line 290
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v7, v1

    invoke-interface {v6, v7}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v6

    .line 292
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    .line 295
    .end local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    .end local v2    # "subPopup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    .end local v3    # "horizontalOffset":I
    .end local v4    # "verticalOffset":I
    .end local v5    # "hgrav":I
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 326
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 259
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move v1, p1

    .local v1, "forceShow":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 141
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 146
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 351
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/PopupWindow$OnDismissListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 340
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move v1, p1

    .local v1, "showTitle":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 361
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 356
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move v1, p1

    .local v1, "cleared":Z
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 251
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    if-eqz v2, :cond_0

    .line 252
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 254
    :cond_0
    return-void
.end method
