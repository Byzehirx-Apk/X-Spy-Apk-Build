.class Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroidx/appcompat/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 5

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    move-object v1, p1

    move-object v2, p2

    .local v2, "wrapped":Landroid/view/Window$Callback;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    .line 517
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 518
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 6

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move v2, v1

    if-nez v2, :cond_0

    .line 536
    new-instance v2, Landroid/view/View;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v4}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .line 538
    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 9

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "menu":Landroid/view/Menu;
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroidx/appcompat/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v4, v5

    .line 523
    .local v4, "result":Z
    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-boolean v5, v5, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez v5, :cond_0

    .line 524
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v5}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 525
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    .line 527
    :cond_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    return v0
.end method
