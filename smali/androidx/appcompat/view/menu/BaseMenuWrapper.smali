.class abstract Landroidx/appcompat/view/menu/BaseMenuWrapper;
.super Landroidx/appcompat/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/view/menu/BaseWrapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroidx/core/internal/view/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroidx/core/internal/view/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "object":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 39
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    move-object v1, p1

    .local v1, "menuItem":Landroid/view/MenuItem;
    move-object v4, v1

    instance-of v4, v4, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v4, :cond_2

    .line 44
    move-object v4, v1

    check-cast v4, Landroidx/core/internal/view/SupportMenuItem;

    move-object v2, v4

    .line 47
    .local v2, "supportMenuItem":Landroidx/core/internal/view/SupportMenuItem;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 48
    move-object v4, v0

    new-instance v5, Landroidx/collection/ArrayMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    .line 52
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    .line 54
    .local v3, "wrappedItem":Landroid/view/MenuItem;
    const/4 v4, 0x0

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 56
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v4

    move-object v3, v4

    .line 57
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 60
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .line 62
    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    .end local v2    # "supportMenuItem":Landroidx/core/internal/view/SupportMenuItem;
    .end local v3    # "wrappedItem":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    move-object v1, p1

    .local v1, "subMenu":Landroid/view/SubMenu;
    move-object v4, v1

    instance-of v4, v4, Landroidx/core/internal/view/SupportSubMenu;

    if-eqz v4, :cond_2

    .line 67
    move-object v4, v1

    check-cast v4, Landroidx/core/internal/view/SupportSubMenu;

    move-object v2, v4

    .line 70
    .local v2, "supportSubMenu":Landroidx/core/internal/view/SupportSubMenu;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 71
    move-object v4, v0

    new-instance v5, Landroidx/collection/ArrayMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    .line 74
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SubMenu;

    move-object v3, v4

    .line 76
    .local v3, "wrappedMenu":Landroid/view/SubMenu;
    const/4 v4, 0x0

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 77
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/MenuWrapperFactory;->wrapSupportSubMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)Landroid/view/SubMenu;

    move-result-object v4

    move-object v3, v4

    .line 78
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .line 82
    .end local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    .end local v2    # "supportSubMenu":Landroidx/core/internal/view/SupportSubMenu;
    .end local v3    # "wrappedMenu":Landroid/view/SubMenu;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method final internalClear()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 88
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 90
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 91
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 93
    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    move v1, p1

    .local v1, "groupId":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 97
    .line 109
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 103
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/core/internal/view/SupportMenuItem;>;"
    :cond_1
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    .line 105
    .local v3, "menuItem":Landroid/view/MenuItem;
    move v4, v1

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 106
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 109
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    goto :goto_0
.end method

.method final internalRemoveItem(I)V
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/BaseMenuWrapper;, "Landroidx/appcompat/view/menu/BaseMenuWrapper<TT;>;"
    move v1, p1

    .local v1, "id":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 113
    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 119
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/core/internal/view/SupportMenuItem;>;"
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    .line 121
    .local v3, "menuItem":Landroid/view/MenuItem;
    move v4, v1

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 122
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 123
    .line 126
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    goto :goto_0
.end method
