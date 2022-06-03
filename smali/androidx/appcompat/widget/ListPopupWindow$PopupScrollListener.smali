.class Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1387
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1388
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1394
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;
    move-object v1, p1

    .local v1, "view":Landroid/widget/AbsListView;
    move v2, p2

    .local v2, "scrollState":I
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 1399
    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1400
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1401
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1403
    :cond_0
    return-void
.end method
