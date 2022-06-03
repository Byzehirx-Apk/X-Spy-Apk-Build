.class Landroidx/appcompat/widget/ListPopupWindow$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v2, p2

    .local v2, "src":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ListPopupWindow$1;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$1;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow$1;->getPopup()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow$1;
    return-object v0
.end method

.method public getPopup()Landroidx/appcompat/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow$1;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow$1;
    return-object v0
.end method
