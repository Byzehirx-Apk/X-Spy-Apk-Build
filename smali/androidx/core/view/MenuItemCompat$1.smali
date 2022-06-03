.class final Landroidx/core/view/MenuItemCompat$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)V
    .locals 4

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/MenuItemCompat$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/MenuItemCompat$1;->val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/MenuItemCompat$1;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/MenuItemCompat$1;->val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/MenuItemCompat$1;
    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/MenuItemCompat$1;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/MenuItemCompat$1;->val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/MenuItemCompat$1;
    return v0
.end method
