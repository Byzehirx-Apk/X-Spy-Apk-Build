.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2324
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    .line 2326
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 2327
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 3

    .prologue
    .line 2429
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2430
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 2431
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2433
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 3

    .prologue
    .line 2340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 2341
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2343
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 2344
    return-void
.end method

.method getListMenuView(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)Landroidx/appcompat/view/menu/MenuView;
    .locals 9

    .prologue
    .line 2391
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 2402
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :goto_0
    return-object v0

    .line 2393
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    if-nez v3, :cond_1

    .line 2394
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/view/menu/ListMenuPresenter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v7, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 2396
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 2397
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2400
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v3

    move-object v2, v3

    .line 2402
    .local v2, "result":Landroidx/appcompat/view/menu/MenuView;
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 2

    .prologue
    .line 2330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 2333
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :goto_0
    return v0

    .line 2331
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 2333
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 2419
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-object v2, v3

    .line 2420
    .local v2, "savedState":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    iput v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    .line 2421
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->wasLastOpen:Z

    .line 2422
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2424
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 2425
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 2426
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 2406
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;-><init>()V

    move-object v1, v2

    .line 2407
    .local v1, "savedState":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iput v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    .line 2408
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    .line 2410
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 2411
    move-object v2, v1

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2412
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 2415
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    return-object v0
.end method

.method setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 2379
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v2, v3, :cond_0

    .line 2388
    :goto_0
    return-void

    .line 2381
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 2382
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2384
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2385
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 2386
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2388
    :cond_2
    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 2347
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/util/TypedValue;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v5

    .line 2348
    .local v2, "outValue":Landroid/util/TypedValue;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move-object v3, v5

    .line 2349
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2352
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$attr;->actionBarPopupTheme:I

    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    .line 2353
    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 2354
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2358
    :cond_0
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$attr;->panelMenuListTheme:I

    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    .line 2359
    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 2360
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2365
    :goto_0
    new-instance v5, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v5

    .line 2366
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2368
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 2370
    move-object v5, v1

    sget-object v6, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 2371
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    .line 2373
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    .line 2375
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2376
    return-void

    .line 2362
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
