.class Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mDefaultContentDescription:Ljava/lang/CharSequence;

.field final mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field final mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    move-object v1, p1

    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 592
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 593
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 594
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    .line 595
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    move v1, p1

    .local v1, "contentDescRes":I
    move v2, v1

    if-nez v2, :cond_0

    .line 606
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    move-object v1, p1

    .local v1, "upDrawable":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "contentDescRes":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 600
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->setActionBarDescription(I)V

    .line 601
    return-void
.end method
