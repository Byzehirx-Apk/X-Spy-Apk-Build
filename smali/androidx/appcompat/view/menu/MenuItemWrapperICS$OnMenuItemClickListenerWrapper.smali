.class Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
.super Landroidx/appcompat/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/view/menu/BaseWrapper",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 5

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    move-object v1, p1

    move-object v2, p2

    .local v2, "object":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 392
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 393
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroid/view/MenuItem$OnMenuItemClickListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    return v0
.end method
