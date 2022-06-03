.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 12

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object/from16 v4, p4

    .local v4, "anchorView":Landroid/view/View;
    move/from16 v5, p5

    .local v5, "overflowOnly":Z
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 730
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    sget v11, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    invoke-direct/range {v6 .. v11}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 731
    move-object v6, v0

    const v7, 0x800005

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 732
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 733
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 3

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$000(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 738
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$100(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 740
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 742
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 743
    return-void
.end method
