.class Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapperJB"
.end annotation


# instance fields
.field mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperJB;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/MenuItemWrapperJB;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "inner":Landroid/view/ActionProvider;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperJB;

    .line 52
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 53
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move v1, p1

    .local v1, "isVisible":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move-object v1, p1

    .local v1, "forItem":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    return-object v0
.end method

.method public overridesItemVisibility()Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->refreshVisibility()V

    .line 73
    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ActionProvider$VisibilityListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 78
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
