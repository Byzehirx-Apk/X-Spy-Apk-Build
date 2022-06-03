.class public Lcom/google/android/material/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HEADER:Ljava/lang/String; = "android:menu:header"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field headerLayout:Landroid/widget/LinearLayout;

.field iconTintList:Landroid/content/res/ColorStateList;

.field private id:I

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field itemHorizontalPadding:I

.field itemIconPadding:I

.field layoutInflater:Landroid/view/LayoutInflater;

.field menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/internal/NavigationMenuView;

.field final onClickListener:Landroid/view/View$OnClickListener;

.field paddingSeparator:I

.field private paddingTopDefault:I

.field textAppearance:I

.field textAppearanceSet:Z

.field textColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 344
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/internal/NavigationMenuPresenter$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$1;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object v2, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v6}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 216
    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 8

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move v2, v3

    .line 295
    .local v2, "top":I
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 296
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 297
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 298
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v7}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 301
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    .line 302
    return-void
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public getHeaderCount()I
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->id:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public getItemIconPadding()I
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_1

    .line 98
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    move-object v5, v1

    const/4 v6, 0x0

    .line 99
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez v2, :cond_0

    .line 101
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 103
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    const/4 v6, 0x0

    .line 105
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "res":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 208
    .local v2, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 209
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 89
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 90
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, v4

    .line 91
    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    .line 92
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 93
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_0

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "parcelable":Landroid/os/Parcelable;
    move-object v6, v1

    instance-of v6, v6, Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 181
    move-object v6, v1

    check-cast v6, Landroid/os/Bundle;

    move-object v2, v6

    .line 182
    .local v2, "state":Landroid/os/Bundle;
    move-object v6, v2

    const-string/jumbo v7, "android:menu:list"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    move-object v3, v6

    .line 183
    .local v3, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 184
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 186
    :cond_0
    move-object v6, v2

    const-string/jumbo v7, "android:menu:adapter"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v4, v6

    .line 187
    .local v4, "adapterState":Landroid/os/Bundle;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 188
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 190
    :cond_1
    move-object v6, v2

    const-string/jumbo v7, "android:menu:header"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    move-object v5, v6

    .line 191
    .local v5, "header":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 192
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 195
    .end local v2    # "state":Landroid/os/Bundle;
    .end local v3    # "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v4    # "adapterState":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v3

    .line 162
    .local v1, "state":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v3, :cond_0

    .line 163
    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 164
    .local v2, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 165
    move-object v3, v1

    const-string/jumbo v4, "android:menu:list"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 167
    .end local v2    # "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v3, :cond_1

    .line 168
    move-object v3, v1

    const-string/jumbo v4, "android:menu:adapter"

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 171
    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 172
    .local v2, "header":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 173
    move-object v3, v1

    const-string/jumbo v4, "android:menu:header"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 175
    .end local v2    # "header":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_2
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 220
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 221
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v6}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 223
    :cond_0
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 121
    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 4
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 199
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->id:I

    .line 157
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "itemBackground":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 266
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 267
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "itemHorizontalPadding":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    .line 275
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 276
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "itemIconPadding":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    .line 284
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 285
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    .line 240
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 241
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    .line 255
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    .line 256
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 257
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    .line 250
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 251
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "updateSuspended":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_0

    .line 289
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move v1, p1

    .local v1, "cleared":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    .line 116
    :cond_0
    return-void
.end method
