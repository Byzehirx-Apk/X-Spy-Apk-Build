.class Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 4

    .prologue
    .line 2732
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2733
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2746
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 2737
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    move-object v3, v0

    .line 2738
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget v8, Landroidx/appcompat/R$attr;->homeAsUpIndicator:I

    aput v8, v6, v7

    .line 2737
    invoke-static {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    move-object v1, v3

    .line 2739
    .local v1, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 2740
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 2741
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 4

    .prologue
    .line 2751
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 2752
    .local v1, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v2

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 5

    .prologue
    .line 2766
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    move v1, p1

    .local v1, "contentDescRes":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 2767
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2768
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 2770
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    .line 2757
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
    move-object v1, p1

    .local v1, "upDrawable":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "contentDescRes":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 2758
    .local v3, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2759
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2760
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 2762
    :cond_0
    return-void
.end method
