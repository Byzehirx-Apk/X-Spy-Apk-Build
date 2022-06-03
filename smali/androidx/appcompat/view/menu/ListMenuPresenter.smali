.class public Landroidx/appcompat/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move v1, p1

    .local v1, "itemLayoutRes":I
    move v2, p2

    .local v2, "themeRes":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 83
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "itemLayoutRes":I
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/ListMenuPresenter;-><init>(II)V

    .line 72
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 73
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v1, :cond_0

    .line 126
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroidx/appcompat/view/menu/ListMenuPresenter;)V

    iput-object v2, v1, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 128
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ListMenuPresenter;->mId:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return v0
.end method

.method getItemIndexOffset()I
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v2, :cond_1

    .line 106
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 108
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v2, :cond_0

    .line 109
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroidx/appcompat/view/menu/ListMenuPresenter;)V

    iput-object v3, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 111
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v3, :cond_2

    .line 89
    move-object v3, v0

    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 90
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 98
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v3, :cond_1

    .line 99
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_1
    return-void

    .line 91
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 93
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 94
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v6

    .line 174
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v2, :cond_0

    .line 218
    const/4 v2, 0x0

    move-object v0, v2

    .line 223
    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    .local v1, "state":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 221
    .end local v1    # "state":Landroid/os/Bundle;
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 222
    .restart local v1    # "state":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 223
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 150
    .end local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    :goto_0
    return v0

    .line 146
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/MenuDialogHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/MenuDialogHelper;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 147
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_1

    .line 148
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    .line 150
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "inState":Landroid/os/Bundle;
    move-object v3, v1

    const-string/jumbo v4, "android:menu:list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v2, v3

    .line 201
    .local v2, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 202
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 204
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 193
    .local v2, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v3, :cond_0

    .line 194
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 196
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "android:menu:list"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 197
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 139
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mId:I

    .line 208
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 166
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ListMenuPresenter;
    move v1, p1

    .local v1, "cleared":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    return-void
.end method
