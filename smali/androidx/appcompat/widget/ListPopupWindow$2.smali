.class Landroidx/appcompat/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1151
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$2;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1152
    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1153
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1155
    :cond_0
    return-void
.end method
