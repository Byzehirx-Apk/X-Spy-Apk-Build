.class Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 12

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object/from16 v4, p4

    .local v4, "anchorView":Landroid/view/View;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 748
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    sget v11, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    invoke-direct/range {v6 .. v11}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 750
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 751
    .local v5, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-nez v6, :cond_0

    .line 753
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v7, :cond_1

    move-object v7, v1

    invoke-static {v7}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    :goto_0
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 756
    :cond_0
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 757
    return-void

    .line 753
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method


# virtual methods
.method protected onDismiss()V
    .locals 3

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 762
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 764
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 765
    return-void
.end method
