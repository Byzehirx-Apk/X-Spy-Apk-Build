.class Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 4

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 770
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 7

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v4, v1

    instance-of v4, v4, Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_0

    .line 784
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 786
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuPresenter;->getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-result-object v4

    move-object v3, v4

    .line 787
    .local v3, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 788
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 790
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 5

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 778
    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
    :goto_0
    return v0

    .line 776
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 777
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-result-object v3

    move-object v2, v3

    .line 778
    .local v2, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
