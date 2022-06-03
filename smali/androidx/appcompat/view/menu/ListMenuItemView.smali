.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContent:Landroid/widget/LinearLayout;

.field private mForceShowIcon:Z

.field private mGroupDivider:Landroid/widget/ImageView;

.field private mHasListDivider:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->listMenuViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    sget-object v8, Landroidx/appcompat/R$styleable;->MenuView:[I

    move v9, v3

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    move-object v4, v6

    .line 85
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v6, v0

    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    move-object v6, v0

    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 88
    move-object v6, v0

    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 90
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 91
    move-object v6, v0

    move-object v7, v4

    sget v8, Landroidx/appcompat/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 93
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const v11, 0x1010129

    aput v11, v9, v10

    sget v9, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v10, 0x0

    .line 94
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 96
    .local v5, "b":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 98
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 99
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method private addContentView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 142
    return-void
.end method

.method private addContentView(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 146
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 331
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 333
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    return-object v0
.end method

.method private insertCheckBox()V
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 313
    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    move-object v5, v0

    const/4 v6, 0x0

    .line 314
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 316
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method private insertIconView()V
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 298
    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_icon:I

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 300
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 301
    return-void
.end method

.method private insertRadioButton()V
    .locals 7

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 305
    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_radio:I

    move-object v5, v0

    const/4 v6, 0x0

    .line 306
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 308
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "hasSubmenu":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 239
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :cond_0
    return-void

    .line 239
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 355
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 356
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 358
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v2, p2

    .local v2, "menuType":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 127
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mMenuType:I

    .line 129
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 131
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 133
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 134
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 136
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 137
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    return-void

    .line 129
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 109
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 110
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    :cond_0
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->shortcut:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 115
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->submenuarrow:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 116
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 117
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_1
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->group_divider:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 121
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->content:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 122
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v5, :cond_0

    .line 287
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 288
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, v5

    .line 289
    .local v4, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v5, v3

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v5, :cond_0

    .line 290
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 293
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 294
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    return v0
.end method

.method public setCheckable(Z)V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "checkable":Z
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_0

    .line 175
    .line 216
    :goto_0
    return-void

    .line 183
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    .line 185
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 187
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    move-object v2, v4

    .line 188
    .local v2, "compoundButton":Landroid/widget/CompoundButton;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object v3, v4

    .line 197
    .local v3, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    move v4, v1

    if-eqz v4, :cond_6

    .line 198
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 200
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 205
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 206
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 216
    :cond_3
    :goto_2
    goto :goto_0

    .line 190
    .end local v2    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v3    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 191
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 193
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object v2, v4

    .line 194
    .restart local v2    # "compoundButton":Landroid/widget/CompoundButton;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    move-object v3, v4

    .restart local v3    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    .line 209
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_7

    .line 210
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 212
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_3

    .line 213
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "checked":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_0

    .line 224
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 226
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    move-object v2, v3

    .line 234
    .local v2, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 235
    return-void

    .line 228
    .end local v2    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_2

    .line 229
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 231
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object v2, v3

    .restart local v2    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 8

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "forceShow":Z
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 154
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "groupDividerEnabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 343
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    :cond_0
    return-void

    .line 343
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 260
    .local v2, "showIcon":Z
    move v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_2

    .line 261
    .line 281
    :goto_1
    return-void

    .line 259
    .end local v2    # "showIcon":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 264
    .restart local v2    # "showIcon":Z
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    move-object v3, v1

    if-nez v3, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_3

    .line 265
    goto :goto_1

    .line 268
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_4

    .line 269
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertIconView()V

    .line 272
    :cond_4
    move-object v3, v1

    if-nez v3, :cond_5

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v3, :cond_8

    .line 273
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    move v4, v2

    if-eqz v4, :cond_7

    move-object v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    .line 276
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :cond_6
    :goto_3
    goto :goto_1

    .line 273
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 279
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setShortcut(ZC)V
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move v1, p1

    .local v1, "showShortcut":Z
    move v2, p2

    .local v2, "shortcutKey":C
    move v4, v1

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 248
    .local v3, "newVisibility":I
    move v4, v3

    if-nez v4, :cond_0

    .line 249
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 253
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :cond_1
    return-void

    .line 245
    .end local v3    # "newVisibility":I
    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 159
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuItemView;
    return v0
.end method
