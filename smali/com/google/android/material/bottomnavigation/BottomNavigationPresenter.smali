.class public Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

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
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->id:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 49
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v2, :cond_0

    .line 113
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    new-instance v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    move-object v1, v2

    .line 106
    .local v1, "savedState":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v3

    iput v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 107
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    return v0
.end method

.method public setBottomNavigationMenuView(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v1, p1

    .local v1, "menuView":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 43
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .prologue
    .line 69
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->id:I

    .line 96
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move v1, p1

    .local v1, "updateSuspended":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    .line 119
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move v1, p1

    .local v1, "cleared":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    if-eqz v2, :cond_0

    .line 59
    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    .line 66
    :goto_1
    goto :goto_0

    .line 64
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->updateMenuView()V

    goto :goto_1
.end method
