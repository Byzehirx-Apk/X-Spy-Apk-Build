.class public final Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "BottomNavigationMenu.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 12

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
    move v1, p1

    .local v1, "group":I
    move v2, p2

    .local v2, "id":I
    move v3, p3

    .local v3, "categoryOrder":I
    move-object/from16 v4, p4

    .local v4, "title":Ljava/lang/CharSequence;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-le v6, v7, :cond_0

    .line 45
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;->stopDispatchingItemsChanged()V

    .line 51
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 52
    .local v5, "item":Landroid/view/MenuItem;
    move-object v6, v5

    instance-of v6, v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v6, :cond_1

    .line 53
    move-object v6, v5

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 55
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;->startDispatchingItemsChanged()V

    .line 56
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
    move v1, p1

    .local v1, "group":I
    move v2, p2

    .local v2, "id":I
    move v3, p3

    .local v3, "categoryOrder":I
    move-object v4, p4

    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "BottomNavigationView does not support submenus"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
