.class Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 4

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 776
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    move-object v4, v2

    .line 781
    invoke-interface {v3, v4}, Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v2, :cond_0

    .line 787
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 789
    :cond_0
    return-void
.end method
