.class Landroidx/appcompat/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$1;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v5, 0x0

    .line 105
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->isModal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v1, v4

    .line 107
    .local v1, "anchor":Landroid/view/View;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 116
    .end local v1    # "anchor":Landroid/view/View;
    :cond_1
    return-void

    .line 111
    .restart local v1    # "anchor":Landroid/view/View;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v3, v4

    .line 112
    .local v3, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v4, v3

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 113
    goto :goto_0
.end method
