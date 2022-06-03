.class Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1351
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1352
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1356
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1357
    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1358
    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getChildCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v1, v2, :cond_0

    .line 1359
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1360
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1362
    :cond_0
    return-void
.end method
