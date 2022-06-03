.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;
.implements Landroidx/core/app/TaskStackBuilder$SupportParentable;
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/app/AppCompatActivity;->mThemeId:I

    return-void
.end method

.method private performMenuItemShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "keycode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    .line 553
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    .line 554
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    .line 555
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 556
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v3, v5

    .line 557
    .local v3, "currentWindow":Landroid/view/Window;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 558
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 559
    .local v4, "decorView":Landroid/view/View;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 560
    const/4 v5, 0x1

    move v0, v5

    .line 564
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    .end local v3    # "currentWindow":Landroid/view/Window;
    .end local v4    # "decorView":Landroid/view/View;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 4

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 587
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 588
    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->closeOptionsMenu()Z

    move-result v2

    if-nez v2, :cond_1

    .line 589
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroidx/fragment/app/FragmentActivity;->closeOptionsMenu()V

    .line 591
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    move v2, v4

    .line 530
    .local v2, "keyCode":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 531
    .local v3, "actionBar":Landroidx/appcompat/app/ActionBar;
    move v4, v2

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    .line 532
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    const/4 v4, 0x1

    move v0, v4

    .line 535
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v1, :cond_0

    .line 520
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-static {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 522
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 7

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/widget/VectorEnabledTintResources;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    invoke-super {v5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    .line 543
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 246
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    .line 165
    move-object v3, v0

    invoke-super {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object v2, v3

    .line 166
    .local v2, "newMetrics":Landroid/util/DisplayMetrics;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 168
    .end local v2    # "newMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->onSupportContentChanged()V

    .line 471
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v2, v3

    .line 72
    .local v2, "delegate":Landroidx/appcompat/app/AppCompatDelegate;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 73
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 74
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegate;->applyDayNight()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/AppCompatActivity;->mThemeId:I

    if-eqz v3, :cond_0

    .line 79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 80
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/AppCompatActivity;->mThemeId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/app/AppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 85
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void

    .line 82
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/AppCompatActivity;->mThemeId:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .locals 4
    .param p1    # Landroidx/core/app/TaskStackBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/TaskStackBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    .line 349
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 211
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 212
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->performMenuItemShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    const/4 v3, 0x1

    move v0, v3

    .line 572
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    const/4 v4, 0x1

    move v0, v4

    .line 205
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :goto_0
    return v0

    .line 200
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 201
    .local v3, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v4, v2

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x102002c

    if-ne v4, v5, :cond_1

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 202
    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v4

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 203
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 205
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 506
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 173
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    .line 174
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/core/app/TaskStackBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 367
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 512
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 179
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->onStart()V

    .line 180
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 185
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 186
    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroidx/appcompat/view/ActionMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroidx/appcompat/view/ActionMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 257
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 6

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v1, v4

    .line 395
    .local v1, "upIntent":Landroid/content/Intent;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 396
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    move-object v2, v4

    .line 398
    .local v2, "b":Landroidx/core/app/TaskStackBuilder;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 399
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 400
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 403
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .line 409
    .line 414
    .end local v2    # "b":Landroidx/core/app/TaskStackBuilder;
    :goto_0
    const/4 v4, 0x1

    move v0, v4

    .line 416
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    :goto_1
    return v0

    .line 404
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    .restart local v2    # "b":Landroidx/core/app/TaskStackBuilder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 407
    .local v3, "e":Ljava/lang/IllegalStateException;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 412
    .end local v2    # "b":Landroidx/core/app/TaskStackBuilder;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 416
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "color":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 217
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 3
    .param p1    # Landroidx/appcompat/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public openOptionsMenu()V
    .locals 4

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 578
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 579
    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->openOptionsMenu()Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroidx/fragment/app/FragmentActivity;->openOptionsMenu()V

    .line 582
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "layoutResID":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    .line 141
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 131
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method public setTheme(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "resid":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 92
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AppCompatActivity;->mThemeId:I

    .line 93
    return-void
.end method

.method public startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 4
    .param p1    # Landroidx/appcompat/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 241
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "upIntent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 465
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatActivity;
    move-object v1, p1

    .local v1, "targetIntent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatActivity;
    return v0
.end method
