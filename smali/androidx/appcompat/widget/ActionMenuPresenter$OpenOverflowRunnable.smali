.class Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 5

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;
    move-object v1, p1

    move-object v2, p2

    .local v2, "popup":Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 797
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 798
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 803
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$400(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->changeMenuMode()V

    .line 805
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$500(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v1, v2

    .line 806
    .local v1, "menuView":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 809
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 810
    return-void
.end method
