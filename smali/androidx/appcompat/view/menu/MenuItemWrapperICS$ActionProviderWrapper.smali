.class Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.super Landroidx/core/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapper"
.end annotation


# instance fields
.field final mInner:Landroid/view/ActionProvider;

.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 6

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "inner":Landroid/view/ActionProvider;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 423
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 424
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    .line 425
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 2

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 5

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    move-object v1, p1

    .local v1, "subMenu":Landroid/view/SubMenu;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 445
    return-void
.end method
