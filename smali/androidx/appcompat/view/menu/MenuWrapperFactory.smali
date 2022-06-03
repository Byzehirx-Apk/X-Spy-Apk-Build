.class public final Landroidx/appcompat/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuWrapperFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "supportMenu":Landroidx/core/internal/view/SupportMenu;
    new-instance v2, Landroidx/appcompat/view/menu/MenuWrapperICS;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "supportMenuItem":Landroidx/core/internal/view/SupportMenuItem;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 46
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    move-object v0, v2

    .line 48
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "supportSubMenu":Landroidx/core/internal/view/SupportSubMenu;
    new-instance v2, Landroidx/appcompat/view/menu/SubMenuWrapperICS;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method
