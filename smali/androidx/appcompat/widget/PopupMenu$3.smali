.class Landroidx/appcompat/widget/PopupMenu$3;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/PopupMenu;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/PopupMenu;
    move-object v2, p2

    .local v2, "src":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/PopupMenu$3;->this$0:Landroidx/appcompat/widget/PopupMenu;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu$3;->this$0:Landroidx/appcompat/widget/PopupMenu;

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu$3;
    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu$3;->this$0:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 179
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu$3;
    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu$3;->this$0:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V

    .line 185
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu$3;
    return v0
.end method
