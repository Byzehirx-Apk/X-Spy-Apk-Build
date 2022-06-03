.class Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup$3;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
    move-object v1, p1

    .local v1, "this$1":Landroidx/appcompat/view/menu/CascadingMenuPopup$3;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v1, :cond_0

    .line 181
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 182
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 183
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 187
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v1

    .line 190
    :cond_1
    return-void
.end method
