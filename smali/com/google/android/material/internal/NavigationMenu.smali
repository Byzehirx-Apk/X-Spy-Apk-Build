.class public Lcom/google/android/material/internal/NavigationMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenu;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 13

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenu;
    move v1, p1

    .local v1, "group":I
    move v2, p2

    .local v2, "id":I
    move/from16 v3, p3

    .local v3, "categoryOrder":I
    move-object/from16 v4, p4

    .local v4, "title":Ljava/lang/CharSequence;
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/material/internal/NavigationMenu;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v7

    .line 44
    .local v5, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    new-instance v7, Lcom/google/android/material/internal/NavigationSubMenu;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/internal/NavigationMenu;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    move-object v6, v7

    .line 45
    .local v6, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 46
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenu;
    return-object v0
.end method
