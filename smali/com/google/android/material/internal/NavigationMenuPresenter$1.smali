.class Lcom/google/android/material/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/internal/NavigationMenuPresenter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v5, v1

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuItemView;

    move-object v2, v5

    .line 350
    .local v2, "itemView":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 351
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    move-object v3, v5

    .line 352
    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v5

    move v4, v5

    .line 353
    .local v4, "result":Z
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 354
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 356
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 357
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 358
    return-void
.end method
