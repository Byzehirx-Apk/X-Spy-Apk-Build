.class abstract Landroidx/appcompat/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 18

    .prologue
    .line 143
    move-object/from16 v0, p0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "context":Landroid/content/Context;
    move/from16 v3, p3

    .local v3, "maxAllowedWidth":I
    const/4 v13, 0x0

    move v4, v13

    .line 144
    .local v4, "maxWidth":I
    const/4 v13, 0x0

    move-object v5, v13

    .line 145
    .local v5, "itemView":Landroid/view/View;
    const/4 v13, 0x0

    move v6, v13

    .line 147
    .local v6, "itemType":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v7, v13

    .line 148
    .local v7, "widthMeasureSpec":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v8, v13

    .line 149
    .local v8, "heightMeasureSpec":I
    move-object v13, v0

    invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    move v9, v13

    .line 150
    .local v9, "count":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_0
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_4

    .line 151
    move-object v13, v0

    move v14, v10

    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v13

    move v11, v13

    .line 152
    .local v11, "positionType":I
    move v13, v11

    move v14, v6

    if-eq v13, v14, :cond_0

    .line 153
    move v13, v11

    move v6, v13

    .line 154
    const/4 v13, 0x0

    move-object v5, v13

    .line 157
    :cond_0
    move-object v13, v1

    if-nez v13, :cond_1

    .line 158
    new-instance v13, Landroid/widget/FrameLayout;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v2

    invoke-direct {v14, v15}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v13

    .line 161
    :cond_1
    move-object v13, v0

    move v14, v10

    move-object v15, v5

    move-object/from16 v16, v1

    invoke-interface/range {v13 .. v16}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object v5, v13

    .line 162
    move-object v13, v5

    move v14, v7

    move v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 164
    move-object v13, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move v12, v13

    .line 165
    .local v12, "itemWidth":I
    move v13, v12

    move v14, v3

    if-lt v13, v14, :cond_2

    .line 166
    move v13, v3

    move v0, v13

    .line 172
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v11    # "positionType":I
    .end local v12    # "itemWidth":I
    :goto_1
    return v0

    .line 167
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v11    # "positionType":I
    .restart local v12    # "itemWidth":I
    :cond_2
    move v13, v12

    move v14, v4

    if-le v13, v14, :cond_3

    .line 168
    move v13, v12

    move v4, v13

    .line 150
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 172
    .end local v11    # "positionType":I
    .end local v12    # "itemWidth":I
    :cond_4
    move v13, v4

    move v0, v13

    goto :goto_1
.end method

.method protected static shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    const/4 v5, 0x0

    move v1, v5

    .line 203
    .local v1, "preserveIconSpacing":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v5

    move v2, v5

    .line 205
    .local v2, "count":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 206
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 207
    .local v4, "childItem":Landroid/view/MenuItem;
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 208
    const/4 v5, 0x1

    move v1, v5

    .line 213
    .end local v4    # "childItem":Landroid/view/MenuItem;
    :cond_0
    move v5, v1

    move v0, v5

    .end local v0    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    return v0

    .line 205
    .restart local v0    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v4    # "childItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 185
    move-object v1, v0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v0, v1

    .line 187
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopup;
    return v0
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopup;
    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopup;
    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopup;
    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopup;
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "MenuPopups manage their own views"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide/from16 v4, p4

    .local v4, "id":J
    move-object v8, v1

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    check-cast v8, Landroid/widget/ListAdapter;

    move-object v6, v8

    .line 124
    .local v6, "outerAdapter":Landroid/widget/ListAdapter;
    move-object v8, v6

    invoke-static {v8}, Landroidx/appcompat/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    move-result-object v8

    move-object v7, v8

    .line 128
    .local v7, "wrappedAdapter":Landroidx/appcompat/view/menu/MenuAdapter;
    move-object v8, v7

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v9, v6

    move v10, v3

    .line 129
    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/MenuItem;

    move-object v10, v0

    move-object v11, v0

    .line 131
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    .line 128
    :goto_0
    invoke-virtual {v8, v9, v10, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v8

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v11, 0x4

    goto :goto_0
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
