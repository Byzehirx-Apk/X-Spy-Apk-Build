.class public Landroidx/legacy/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;,
        Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;,
        Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;,
        Landroidx/legacy/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ID_HOME:I = 0x102002c

.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggle"

.field private static final THEME_ATTRS:[I

.field private static final TOGGLE_DRAWABLE_OFFSET:F = 0.33333334f


# instance fields
.field final mActivity:Landroid/app/Activity;

.field private final mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerImage:Landroid/graphics/drawable/Drawable;

.field private final mDrawerImageResource:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

.field private mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101030b

    aput v3, v1, v2

    sput-object v0, Landroidx/legacy/app/ActionBarDrawerToggle;->THEME_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;III)V
    .locals 13
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move/from16 v3, p3

    .local v3, "drawerImageRes":I
    move/from16 v4, p4

    .local v4, "openDrawerContentDescRes":I
    move/from16 v5, p5

    .local v5, "closeDrawerContentDescRes":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v1

    invoke-static {v9}, Landroidx/legacy/app/ActionBarDrawerToggle;->assumeMaterial(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Landroidx/legacy/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;ZIII)V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;ZIII)V
    .locals 13
    .param p4    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move/from16 v3, p3

    .local v3, "animate":Z
    move/from16 v4, p4

    .local v4, "drawerImageRes":I
    move/from16 v5, p5

    .local v5, "openDrawerContentDescRes":I
    move/from16 v6, p6

    .local v6, "closeDrawerContentDescRes":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 200
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 203
    move-object v7, v1

    instance-of v7, v7, Landroidx/legacy/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v7, :cond_0

    .line 204
    move-object v7, v0

    move-object v8, v1

    check-cast v8, Landroidx/legacy/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v8}, Landroidx/legacy/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    move-result-object v8

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    .line 209
    :goto_0
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 210
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    .line 211
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 212
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 214
    move-object v7, v0

    move-object v8, v0

    invoke-direct {v8}, Landroidx/legacy/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 215
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object v7, v0

    new-instance v8, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v9, v10, v11}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroidx/legacy/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    .line 217
    move-object v7, v0

    iget-object v7, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    move v8, v3

    if-eqz v8, :cond_1

    const v8, 0x3eaaaaab

    :goto_1
    invoke-virtual {v7, v8}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 218
    return-void

    .line 206
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 217
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static assumeMaterial(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    if-eqz v5, :cond_0

    .line 416
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v5}, Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 436
    .end local v0    # "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    :goto_0
    return-object v0

    .line 418
    .restart local v0    # "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_2

    .line 419
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    move-object v1, v5

    .line 421
    .local v1, "actionBar":Landroid/app/ActionBar;
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 422
    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    move-object v2, v5

    .line 427
    .local v2, "context":Landroid/content/Context;
    :goto_1
    move-object v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroidx/legacy/app/ActionBarDrawerToggle;->THEME_ATTRS:[I

    const v8, 0x10102ce

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 429
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 430
    .local v4, "result":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 424
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    move-object v2, v5

    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_1

    .line 433
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    sget-object v6, Landroidx/legacy/app/ActionBarDrawerToggle;->THEME_ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v1, v5

    .line 434
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 435
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method private setActionBarDescription(I)V
    .locals 10

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "contentDescRes":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    if-eqz v3, :cond_0

    .line 474
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    move v4, v1

    invoke-interface {v3, v4}, Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 475
    .line 499
    :goto_0
    return-void

    .line 477
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    .line 478
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 479
    .local v2, "actionBar":Landroid/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 480
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 482
    .line 499
    .end local v2    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    :goto_1
    goto :goto_0

    .line 483
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    if-nez v3, :cond_3

    .line 484
    move-object v3, v0

    new-instance v4, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    .line 486
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 488
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 489
    .restart local v2    # "actionBar":Landroid/app/ActionBar;
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeActionContentDescription:Ljava/lang/reflect/Method;

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    .line 490
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 489
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 493
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_1

    .line 494
    .end local v2    # "actionBar":Landroid/app/ActionBar;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 495
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ActionBarDrawerToggle"

    const-string/jumbo v4, "Couldn\'t set content description via JB-MR2 API"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 11

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "upDrawable":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "contentDescRes":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    if-eqz v4, :cond_0

    .line 442
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroidx/legacy/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 443
    .line 470
    :goto_0
    return-void

    .line 445
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_2

    .line 446
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 447
    .local v3, "actionBar":Landroid/app/ActionBar;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 448
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 449
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 451
    .line 470
    .end local v3    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    :goto_1
    goto :goto_0

    .line 452
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    if-nez v4, :cond_3

    .line 453
    move-object v4, v0

    new-instance v5, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    iput-object v5, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    .line 455
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    .line 457
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 458
    .restart local v3    # "actionBar":Landroid/app/ActionBar;
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    move-object v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 459
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeActionContentDescription:Ljava/lang/reflect/Method;

    move-object v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    .line 460
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 459
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 463
    goto :goto_1

    .line 461
    .end local v3    # "actionBar":Landroid/app/ActionBar;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 462
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActionBarDrawerToggle"

    const-string/jumbo v5, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 463
    goto :goto_1

    .line 464
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 465
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 467
    :cond_5
    const-string/jumbo v4, "ActionBarDrawerToggle"

    const-string/jumbo v5, "Couldn\'t set home-as-up indicator"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public isDrawerIndicatorEnabled()Z
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v2, :cond_0

    .line 327
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/legacy/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    move-object v4, v0

    iget v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 330
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/legacy/app/ActionBarDrawerToggle;->syncState()V

    .line 331
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 398
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 399
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-direct {v2, v3}, Landroidx/legacy/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 401
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 383
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 384
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-direct {v2, v3}, Landroidx/legacy/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 8

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "slideOffset":F
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v4}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F

    move-result v4

    move v3, v4

    .line 365
    .local v3, "glyphOffset":F
    move v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 366
    move v4, v3

    const/4 v5, 0x0

    move v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v3, v4

    .line 370
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 371
    return-void

    .line 368
    :cond_0
    move v4, v3

    move v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v3, v4

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 412
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_1

    .line 344
    move-object v2, v0

    iget-object v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    move-object v2, v0

    iget-object v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 349
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .line 351
    .end local v0    # "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    :goto_1
    return v0

    .line 347
    .restart local v0    # "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 351
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 6

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "enable":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq v2, v3, :cond_0

    .line 299
    move v2, v1

    if-eqz v2, :cond_2

    .line 300
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    move-object v4, v0

    iget-object v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x800003

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_0
    invoke-direct {v2, v3, v4}, Landroidx/legacy/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    :goto_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 307
    :cond_0
    return-void

    .line 300
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/legacy/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 303
    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/legacy/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move v1, p1

    .local v1, "resId":I
    const/4 v3, 0x0

    move-object v2, v3

    .line 280
    .local v2, "indicator":Landroid/graphics/drawable/Drawable;
    move v3, v1

    if-eqz v3, :cond_0

    .line 281
    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 284
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/legacy/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, p1

    .local v1, "indicator":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 255
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/legacy/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 256
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 262
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v2, :cond_0

    .line 263
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/legacy/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 265
    :cond_0
    return-void

    .line 258
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 259
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public syncState()V
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    move-object v1, v0

    iget-object v1, v1, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 236
    :goto_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    .line 237
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    move-object v3, v0

    iget-object v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v4, 0x800003

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_1
    invoke-direct {v1, v2, v3}, Landroidx/legacy/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 240
    :cond_0
    return-void

    .line 233
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/legacy/app/ActionBarDrawerToggle;->mSlider:Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    goto :goto_0

    .line 237
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroidx/legacy/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
