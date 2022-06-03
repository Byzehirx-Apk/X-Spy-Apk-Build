.class public Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.super Landroidx/appcompat/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/view/menu/BaseMenuWrapper",
        "<",
        "Landroidx/core/internal/view/SupportMenuItem;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MenuItemWrapper"


# instance fields
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "object":Landroidx/core/internal/view/SupportMenuItem;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->collapseActionView()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method createActionProviderWrapper(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 8

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "provider":Landroid/view/ActionProvider;
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mContext:Landroid/content/Context;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v2}, Landroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v2

    move-object v1, v2

    .line 300
    .local v1, "provider":Landroidx/core/view/ActionProvider;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    if-eqz v2, :cond_0

    .line 301
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    move-object v0, v2

    .line 303
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getActionView()Landroid/view/View;
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v2}, Landroidx/core/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 284
    .local v1, "actionView":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v2, :cond_0

    .line 285
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 287
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getAlphabeticModifiers()I
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticShortcut()C

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getGroupId()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getItemId()I
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getItemId()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getNumericShortcut()C

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getOrder()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 3

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v2}, Landroidx/core/internal/view/SupportMenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->hasSubMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->isCheckable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->isChecked()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->isEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->isVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "provider":Landroid/view/ActionProvider;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    .line 293
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->createActionProviderWrapper(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-result-object v3

    .line 292
    :goto_0
    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    .line 294
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0

    .line 293
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "resId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    move v4, v1

    invoke-interface {v3, v4}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v3}, Landroidx/core/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 274
    .local v2, "actionView":Landroid/view/View;
    move-object v3, v2

    instance-of v3, v3, Landroid/view/CollapsibleActionView;

    if-eqz v3, :cond_0

    .line 276
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    new-instance v4, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v3, v4}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v3

    .line 278
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/CollapsibleActionView;

    if-eqz v2, :cond_0

    .line 262
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 264
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v2

    .line 265
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "alphaChar":C
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 164
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "alphaChar":C
    move v2, p2

    .local v2, "alphaModifiers":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    .line 170
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "checkable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 186
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 197
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "contentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    .line 331
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 218
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 11

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "checkable":Z
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 375
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v4, Landroidx/core/internal/view/SupportMenuItem;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setExclusiveCheckable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 376
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 378
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 381
    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MenuItemWrapper"

    const-string/jumbo v4, "Error while calling setExclusiveCheckable"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "iconRes":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 107
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    .line 101
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    move-result-object v2

    .line 353
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    move-result-object v2

    .line 364
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    .line 118
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "numericChar":C
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 142
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "numericModifiers":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    .line 148
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "listener":Landroid/view/MenuItem$OnActionExpandListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 325
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0

    .line 323
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "menuItemClickListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 240
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0

    .line 238
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "alphaChar":C
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v3

    .line 129
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 10

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "alphaChar":C
    move v3, p3

    .local v3, "numericModifiers":I
    move v4, p4

    .local v4, "alphaModifiers":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v5, Landroidx/core/internal/view/SupportMenuItem;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    move-result-object v5

    .line 136
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "actionEnum":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setShowAsAction(I)V

    .line 251
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "actionEnum":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 256
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "title":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 90
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move-object v1, p1

    .local v1, "tooltipText":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    .line 342
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS;
    return-object v0
.end method
