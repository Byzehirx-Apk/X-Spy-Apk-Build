.class Landroidx/appcompat/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/MenuItemImpl;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl$1;
    move v1, p1

    .local v1, "isVisible":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 804
    return-void
.end method
