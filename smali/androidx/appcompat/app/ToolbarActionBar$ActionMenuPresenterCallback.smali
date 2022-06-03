.class final Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 4

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 555
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v3, :cond_0

    .line 569
    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 573
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->dismissPopupMenus()V

    .line 574
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v3, :cond_1

    .line 575
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v4, 0x6c

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 577
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 578
    goto :goto_0
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 5

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v2, :cond_0

    .line 560
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v3, 0x6c

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    .line 561
    const/4 v2, 0x1

    move v0, v2

    .line 563
    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
