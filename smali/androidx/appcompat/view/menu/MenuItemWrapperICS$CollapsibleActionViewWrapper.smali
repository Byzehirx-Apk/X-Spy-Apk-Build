.class Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
.super Landroid/widget/FrameLayout;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollapsibleActionViewWrapper"
.end annotation


# instance fields
.field final mWrappedView:Landroid/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
    move-object v1, p1

    .local v1, "actionView":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 459
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/CollapsibleActionView;

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/view/CollapsibleActionView;

    .line 460
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->addView(Landroid/view/View;)V

    .line 461
    return-void
.end method


# virtual methods
.method getWrappedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/view/CollapsibleActionView;

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 471
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 466
    return-void
.end method
