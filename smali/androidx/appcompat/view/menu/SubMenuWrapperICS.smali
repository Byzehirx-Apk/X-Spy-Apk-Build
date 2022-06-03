.class Landroidx/appcompat/view/menu/SubMenuWrapperICS;
.super Landroidx/appcompat/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "subMenu":Landroidx/core/internal/view/SupportSubMenu;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    .line 39
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v1

    invoke-interface {v1}, Landroidx/core/internal/view/SupportSubMenu;->clearHeader()V

    .line 79
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    invoke-interface {v2}, Landroidx/core/internal/view/SupportSubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportSubMenu;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public bridge synthetic getWrappedObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move v1, p1

    .local v1, "iconRes":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v2

    .line 67
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move v1, p1

    .local v1, "titleRes":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 49
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 55
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    move-result-object v2

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move v1, p1

    .local v1, "iconRes":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 84
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportSubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v2

    .line 90
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/SubMenuWrapperICS;
    return-object v0
.end method
