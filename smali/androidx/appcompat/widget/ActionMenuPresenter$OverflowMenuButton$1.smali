.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 6

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    move-object v1, p1

    .local v1, "this$1":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
    move-object v2, p2

    .local v2, "src":Landroid/view/View;
    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    if-nez v1, :cond_0

    .line 656
    const/4 v1, 0x0

    move-object v0, v1

    .line 659
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 2

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    .line 665
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    return v0
.end method

.method public onForwardingStopped()Z
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    .line 674
    const/4 v1, 0x0

    move v0, v1

    .line 678
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    :goto_0
    return v0

    .line 677
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    .line 678
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
