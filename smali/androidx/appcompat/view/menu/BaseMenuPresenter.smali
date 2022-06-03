.class public abstract Landroidx/appcompat/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Landroidx/appcompat/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "menuLayoutRes":I
    move v3, p3

    .local v3, "itemLayoutRes":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 63
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 64
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 65
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 66
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "itemView":Landroid/view/View;
    move v2, p2

    .local v2, "childIndex":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 135
    .local v3, "currentParent":Landroid/view/ViewGroup;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 136
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 139
    return-void
.end method

.method public abstract bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView$ItemView;
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return-object v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "childIndex":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 149
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return v0
.end method

.method public getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return v0
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v5, v2

    instance-of v5, v5, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_0

    .line 184
    move-object v5, v2

    check-cast v5, Landroidx/appcompat/view/menu/MenuView$ItemView;

    move-object v4, v5

    .line 188
    .local v4, "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    :goto_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V

    .line 189
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return-object v0

    .line 186
    .end local v4    # "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    .restart local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView$ItemView;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-nez v2, :cond_0

    .line 78
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuView;

    iput-object v3, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 79
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 80
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 83
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 71
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 73
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_0

    .line 214
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 221
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    move v0, v2

    .line 223
    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 155
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    .line 248
    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move v1, p1

    .local v1, "childIndex":I
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    return v0
.end method

.method public updateMenuView(Z)V
    .locals 15

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuPresenter;
    move/from16 v1, p1

    .local v1, "cleared":Z
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v11, Landroid/view/ViewGroup;

    move-object v2, v11

    .line 92
    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v11, v2

    if-nez v11, :cond_0

    .line 125
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v11, 0x0

    move v3, v11

    .line 95
    .local v3, "childIndex":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v11, :cond_5

    .line 96
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 97
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v11

    move-object v4, v11

    .line 98
    .local v4, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    move-object v11, v4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v5, v11

    .line 99
    .local v5, "itemCount":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_1
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_5

    .line 100
    move-object v11, v4

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v7, v11

    .line 101
    .local v7, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v11, v0

    move v12, v3

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 102
    move-object v11, v2

    move v12, v3

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 103
    .local v8, "convertView":Landroid/view/View;
    move-object v11, v8

    instance-of v11, v11, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v11, :cond_4

    move-object v11, v8

    check-cast v11, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 104
    invoke-interface {v11}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v11

    :goto_2
    move-object v9, v11

    .line 105
    .local v9, "oldItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v11, v0

    move-object v12, v7

    move-object v13, v8

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    .line 106
    .local v10, "itemView":Landroid/view/View;
    move-object v11, v7

    move-object v12, v9

    if-eq v11, v12, :cond_1

    .line 108
    move-object v11, v10

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setPressed(Z)V

    .line 109
    move-object v11, v10

    invoke-virtual {v11}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 111
    :cond_1
    move-object v11, v10

    move-object v12, v8

    if-eq v11, v12, :cond_2

    .line 112
    move-object v11, v0

    move-object v12, v10

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 114
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 99
    .end local v8    # "convertView":Landroid/view/View;
    .end local v9    # "oldItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v10    # "itemView":Landroid/view/View;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 104
    .restart local v8    # "convertView":Landroid/view/View;
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 120
    .end local v4    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v5    # "itemCount":I
    .end local v6    # "i":I
    .end local v7    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v8    # "convertView":Landroid/view/View;
    :cond_5
    :goto_3
    move v11, v3

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 121
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 125
    :cond_6
    goto/16 :goto_0
.end method
