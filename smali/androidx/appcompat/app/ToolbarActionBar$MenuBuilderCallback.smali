.class final Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 4

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 584
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v2, :cond_0

    .line 594
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v3, 0x6c

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v2, v3, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v3, 0x6c

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method
