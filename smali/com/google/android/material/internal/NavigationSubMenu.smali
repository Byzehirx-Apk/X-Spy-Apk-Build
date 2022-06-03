.class public Lcom/google/android/material/internal/NavigationSubMenu;
.super Landroidx/appcompat/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationSubMenu;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Lcom/google/android/material/internal/NavigationMenu;
    move-object v3, p3

    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationSubMenu;
    move v1, p1

    .local v1, "structureChanged":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 43
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationSubMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 44
    return-void
.end method
