.class Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1366
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1367
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 1371
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v3, v6

    .line 1372
    .local v3, "action":I
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move v4, v6

    .line 1373
    .local v4, "x":I
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move v5, v6

    .line 1375
    .local v5, "y":I
    move v6, v3

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1376
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    if-ltz v6, :cond_1

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1377
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_1

    move v6, v5

    if-ltz v6, :cond_1

    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1378
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 1382
    :cond_0
    :goto_0
    const/4 v6, 0x0

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
    return v0

    .line 1379
    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
    :cond_1
    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1380
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
