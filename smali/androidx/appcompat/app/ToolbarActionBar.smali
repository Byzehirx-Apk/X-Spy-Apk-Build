.class Landroidx/appcompat/app/ToolbarActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarMenuPrepared:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 10

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move-object v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "windowCallback":Landroid/view/Window$Callback;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 51
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 53
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/app/ToolbarActionBar$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/app/ToolbarActionBar$1;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v5, v4, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 60
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/app/ToolbarActionBar$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/app/ToolbarActionBar$2;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v5, v4, Landroidx/appcompat/app/ToolbarActionBar;->mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 69
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v5, v4, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 70
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Landroidx/appcompat/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v5, v4, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 71
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 72
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ToolbarActionBar;->mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 73
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v5, v2

    invoke-interface {v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 7

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v1, :cond_0

    .line 544
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v2, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    new-instance v3, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    invoke-interface {v1, v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 546
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 548
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 4

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 495
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tabs are not supported in toolbar action bars"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "position":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Tabs are not supported in toolbar action bars"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 8

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "position":I
    move v3, p3

    .local v3, "setSelected":Z
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Tabs are not supported in toolbar action bars"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 7

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "setSelected":Z
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Tabs are not supported in toolbar action bars"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public closeOptionsMenu()Z
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    .line 442
    const/4 v1, 0x1

    move v0, v1

    .line 444
    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 6

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "isVisible":Z
    move v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne v4, v5, :cond_0

    .line 505
    .line 513
    :goto_0
    return-void

    .line 507
    :cond_0
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 509
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 510
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 511
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    move v5, v1

    invoke-interface {v4, v5}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 513
    :cond_1
    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getElevation()F
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getNavigationMode()I
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Tabs are not supported in toolbar action bars"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 6

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "index":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tabs are not supported in toolbar action bars"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 414
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 3

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 434
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 435
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/app/ActionBar;->isTitleTruncated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Tabs are not supported in toolbar action bars"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "config":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    return-void
.end method

.method onDestroy()V
    .locals 3

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 490
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "ev":Landroid/view/KeyEvent;
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    move-object v3, v5

    .line 477
    .local v3, "menu":Landroid/view/Menu;
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 478
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 479
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    .line 478
    :goto_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    move-object v4, v5

    .line 480
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v5, v6}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 481
    move-object v5, v3

    move v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v5

    move v0, v5

    .line 483
    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :goto_2
    return v0

    .line 479
    .restart local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 480
    .restart local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 483
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 469
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/ToolbarActionBar;->openOptionsMenu()Z

    move-result v2

    .line 471
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method public openOptionsMenu()Z
    .locals 2

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    return v0
.end method

.method populateOptionsMenu()V
    .locals 8

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    move-object v1, v4

    .line 449
    .local v1, "menu":Landroid/view/Menu;
    move-object v4, v1

    instance-of v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/MenuBuilder;

    :goto_0
    move-object v2, v4

    .line 450
    .local v2, "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 451
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 454
    :cond_0
    move-object v4, v1

    :try_start_0
    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    .line 455
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v5, 0x0

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    .line 456
    invoke-interface {v4, v5, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 457
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_2
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 461
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 464
    :cond_3
    return-void

    .line 449
    .end local v2    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 460
    .restart local v2    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    if-eqz v4, :cond_5

    .line 461
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    move-object v4, v3

    throw v4
.end method

.method public removeAllTabs()V
    .locals 5

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Tabs are not supported in toolbar action bars"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 4

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 500
    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 6

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tabs are not supported in toolbar action bars"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeTabAt(I)V
    .locals 6

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "position":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tabs are not supported in toolbar action bars"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public requestFocus()Z
    .locals 3

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v1, v2

    .line 234
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 236
    const/4 v2, 0x1

    move v0, v2

    .line 238
    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 6

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tabs are not supported in toolbar action bars"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method

.method public setCustomView(I)V
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 96
    .local v2, "inflater":Landroid/view/LayoutInflater;
    move-object v3, v0

    move-object v4, v2

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v6}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Landroidx/appcompat/app/ActionBar$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 83
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "layoutParams":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 88
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "showHomeAsUp":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "options":I
    move-object v2, v0

    move v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 255
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 9

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "options":I
    move v2, p2

    .local v2, "mask":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v4}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v4

    move v3, v4

    .line 260
    .local v3, "currentOptions":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v5, v1

    move v6, v2

    and-int/2addr v5, v6

    move v6, v3

    move v7, v2

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 261
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 5

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "showCustom":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    :goto_0
    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 286
    return-void

    .line 285
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "showHome":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 5

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "showTitle":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 281
    return-void

    .line 280
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 5

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "useLogo":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 266
    return-void

    .line 265
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "elevation":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 137
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 177
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "description":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 162
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "indicator":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    .line 102
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 9

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/SpinnerAdapter;
    move-object v2, p2

    .local v2, "callback":Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v1

    new-instance v5, Landroidx/appcompat/app/NavItemSelectedListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/appcompat/app/NavItemSelectedListener;-><init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    return-void
.end method

.method public setLogo(I)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    .line 112
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "logo":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "mode":I
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tabs not supported in this configuration"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationMode(I)V

    .line 319
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 201
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 199
    .line 204
    return-void

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 127
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 122
    return-void
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 249
    return-void

    .line 248
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    return-void

    .line 223
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 407
    return-void
.end method
