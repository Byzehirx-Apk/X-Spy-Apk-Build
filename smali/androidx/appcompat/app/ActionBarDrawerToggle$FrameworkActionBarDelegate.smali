.class Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameworkActionBarDelegate"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mSetIndicatorInfo:Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 520
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    .line 521
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 539
    .local v1, "actionBar":Landroid/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 540
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    .line 542
    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    move-object v0, v2

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 526
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const v8, 0x101030b

    aput v8, v6, v7

    const v6, 0x10102ce

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 529
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 530
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 531
    move-object v3, v2

    move-object v0, v3

    .line 533
    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public isNavigationVisible()Z
    .locals 4

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 548
    .local v1, "actionBar":Landroid/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 549
    invoke-virtual {v2}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 7

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    move v1, p1

    .local v1, "contentDescRes":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_1

    .line 571
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 572
    .local v2, "actionBar":Landroid/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 573
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 575
    .line 579
    .end local v2    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    move v6, v1

    invoke-static {v4, v5, v6}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    goto :goto_0
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 9

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    move-object v1, p1

    .local v1, "themeImage":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "contentDescRes":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 555
    .local v3, "actionBar":Landroid/app/ActionBar;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 556
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 557
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 558
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 561
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    move-object v7, v1

    move v8, v2

    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 563
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0
.end method
