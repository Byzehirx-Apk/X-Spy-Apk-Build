.class Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 300
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 301
    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    if-eqz v1, :cond_0

    .line 306
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v1

    move-object v0, v1

    .line 308
    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v2

    move-object v1, v2

    .line 316
    .local v1, "popup":Landroidx/appcompat/view/menu/ShowableListMenu;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 318
    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    :goto_1
    return v0

    .line 316
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 318
    .end local v1    # "popup":Landroidx/appcompat/view/menu/ShowableListMenu;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
