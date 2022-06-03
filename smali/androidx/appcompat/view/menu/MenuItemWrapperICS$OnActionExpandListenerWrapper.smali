.class Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
.super Landroidx/appcompat/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnActionExpandListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/view/menu/BaseWrapper",
        "<",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        ">;",
        "Landroid/view/MenuItem$OnActionExpandListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 5

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
    move-object v1, p1

    move-object v2, p2

    .local v2, "object":Landroid/view/MenuItem$OnActionExpandListener;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 405
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 406
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroid/view/MenuItem$OnActionExpandListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroid/view/MenuItem$OnActionExpandListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
    return v0
.end method
