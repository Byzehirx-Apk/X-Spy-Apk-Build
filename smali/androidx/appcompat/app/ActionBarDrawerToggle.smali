.class public Landroidx/appcompat/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerSlideAnimationEnabled:Z

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V
    .locals 12
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move-object v3, p3

    .local v3, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object/from16 v4, p4

    .local v4, "slider":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move/from16 v5, p5

    .local v5, "openDrawerContentDescRes":I
    move/from16 v6, p6

    .local v6, "closeDrawerContentDescRes":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 120
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 122
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 130
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 196
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 197
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 198
    move-object v7, v2

    new-instance v8, Landroidx/appcompat/app/ActionBarDrawerToggle$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/app/ActionBarDrawerToggle$1;-><init>(Landroidx/appcompat/app/ActionBarDrawerToggle;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :goto_0
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 215
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 216
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 217
    move-object v7, v4

    if-nez v7, :cond_2

    .line 218
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v10}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 223
    :goto_1
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 224
    return-void

    .line 208
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v7, :cond_1

    .line 209
    move-object v7, v0

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v8}, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 211
    :cond_1
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 220
    :cond_2
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 12
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move v3, p3

    .local v3, "openDrawerContentDescRes":I
    move/from16 v4, p4

    .local v4, "closeDrawerContentDescRes":I
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    const/4 v9, 0x0

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 13
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object/from16 v3, p3

    .local v3, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move/from16 v4, p4

    .local v4, "openDrawerContentDescRes":I
    move/from16 v5, p5

    .local v5, "closeDrawerContentDescRes":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    .line 186
    return-void
.end method

.method private setPosition(F)V
    .locals 4

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "position":F
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 508
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 512
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 513
    return-void

    .line 509
    :cond_1
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 510
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    return-object v0
.end method

.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    return v0
.end method

.method public isDrawerSlideAnimationEnabled()Z
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v2, :cond_0

    .line 259
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 262
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 445
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 446
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 430
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 431
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "slideOffset":F
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    if-eqz v3, :cond_0

    .line 414
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 459
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 275
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->toggle()V

    .line 276
    const/4 v2, 0x1

    move v0, v2

    .line 278
    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method setActionBarDescription(I)V
    .locals 4

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "contentDescRes":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 500
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "upDrawable":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "contentDescRes":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v3}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 490
    const-string/jumbo v3, "ActionBarDrawerToggle"

    const-string/jumbo v4, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 493
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 495
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 496
    return-void
.end method

.method public setDrawerArrowDrawable(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V
    .locals 4
    .param p1    # Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawable":Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 381
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 382
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 6

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "enable":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq v2, v3, :cond_0

    .line 355
    move v2, v1

    if-eqz v2, :cond_2

    .line 356
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x800003

    .line 357
    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 356
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 362
    :goto_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 364
    :cond_0
    return-void

    .line 357
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 360
    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setDrawerSlideAnimationEnabled(Z)V
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 391
    move v2, v1

    if-nez v2, :cond_0

    .line 392
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 394
    :cond_0
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "resId":I
    const/4 v3, 0x0

    move-object v2, v3

    .line 329
    .local v2, "indicator":Landroid/graphics/drawable/Drawable;
    move v3, v1

    if-eqz v3, :cond_0

    .line 330
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 332
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "indicator":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 304
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 305
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 311
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v2, :cond_0

    .line 312
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 314
    :cond_0
    return-void

    .line 307
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 308
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "onToolbarNavigationClickListener":Landroid/view/View$OnClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 486
    return-void
.end method

.method public syncState()V
    .locals 5

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 241
    :goto_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v4, 0x800003

    .line 243
    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 242
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 246
    :cond_0
    return-void

    .line 239
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 243
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method

.method toggle()V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v2

    move v1, v2

    .line 283
    .local v1, "drawerLockMode":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 285
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 287
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method
