.class public Landroidx/appcompat/view/menu/SubMenuBuilder;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "parentMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, p3

    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 44
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 45
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 46
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return v0
.end method

.method dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v1

    move-object v5, v2

    .line 90
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    :goto_0
    move v1, v2

    .line 143
    .local v1, "itemId":I
    move v2, v1

    if-nez v2, :cond_1

    .line 144
    const/4 v2, 0x0

    move-object v0, v2

    .line 146
    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :goto_1
    return-object v0

    .line 142
    .end local v1    # "itemId":I
    .restart local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    .restart local v1    # "itemId":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-super {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return v0
.end method

.method public isQwertyMode()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return v0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 80
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move v1, p1

    .local v1, "groupDividerEnabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    .line 152
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move v1, p1

    .local v1, "iconRes":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    check-cast v2, Landroid/view/SubMenu;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    check-cast v2, Landroid/view/SubMenu;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move v1, p1

    .local v1, "titleRes":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    check-cast v2, Landroid/view/SubMenu;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    check-cast v2, Landroid/view/SubMenu;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    check-cast v2, Landroid/view/SubMenu;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move v1, p1

    .local v1, "iconRes":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 102
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    .line 96
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    return-object v0
.end method

.method public setQwertyMode(Z)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move v1, p1

    .local v1, "isQwerty":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 51
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move v1, p1

    .local v1, "shortcutsVisible":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 61
    return-void
.end method
