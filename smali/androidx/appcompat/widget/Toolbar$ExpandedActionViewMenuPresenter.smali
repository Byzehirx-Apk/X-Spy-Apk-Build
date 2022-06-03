.class Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 2309
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2310
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5

    .prologue
    .line 2407
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v3, v3, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz v3, :cond_0

    .line 2408
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v3, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {v3}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2411
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2412
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2413
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2415
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2416
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2417
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2418
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2420
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 2370
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 2371
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v3, v6

    .line 2372
    .local v3, "collapseButtonParent":Landroid/view/ViewParent;
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    if-eq v6, v7, :cond_1

    .line 2373
    move-object v6, v3

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 2374
    move-object v6, v3

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2376
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2378
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2379
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2380
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 2381
    .local v4, "expandedActionParent":Landroid/view/ViewParent;
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    if-eq v6, v7, :cond_3

    .line 2382
    move-object v6, v4

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 2383
    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2385
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v6

    move-object v5, v6

    .line 2386
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v6, v5

    const v7, 0x800003

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget v8, v8, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    const/16 v9, 0x70

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v7, v8

    iput v7, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2387
    move-object v6, v5

    const/4 v7, 0x2

    iput v7, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2388
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2389
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2392
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2393
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2394
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2396
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v6, v6, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz v6, :cond_4

    .line 2397
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v6, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {v6}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2400
    :cond_4
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 2365
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 2425
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move-object v1, p1

    .local v1, "root":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 2315
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    .line 2316
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v3

    .line 2318
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2319
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 2361
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2435
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 3

    .prologue
    .line 2356
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    return v0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .prologue
    .line 2352
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 9

    .prologue
    .line 2329
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
    move v1, p1

    .local v1, "cleared":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v6, :cond_1

    .line 2330
    const/4 v6, 0x0

    move v2, v6

    .line 2332
    .local v2, "found":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v6, :cond_0

    .line 2333
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    move v3, v6

    .line 2334
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 2335
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 2336
    .local v5, "item":Landroid/view/MenuItem;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v6, v7, :cond_2

    .line 2337
    const/4 v6, 0x1

    move v2, v6

    .line 2343
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    .line 2345
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v6

    .line 2348
    .end local v2    # "found":Z
    :cond_1
    return-void

    .line 2334
    .restart local v2    # "found":Z
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
