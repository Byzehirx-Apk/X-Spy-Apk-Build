.class public final Landroidx/appcompat/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenuItem;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"


# instance fields
.field private mActionProvider:Landroidx/core/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 10

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "group":I
    move v3, p3

    .local v3, "id":I
    move v4, p4

    .local v4, "categoryOrder":I
    move v5, p5

    .local v5, "ordering":I
    move-object/from16 v6, p6

    .local v6, "title":Ljava/lang/CharSequence;
    move/from16 v7, p7

    .local v7, "showAsAction":I
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v8, v0

    const/16 v9, 0x1000

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 70
    move-object v8, v0

    const/16 v9, 0x1000

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 80
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 93
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 94
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 95
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 96
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 97
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 99
    move-object v8, v0

    const/16 v9, 0x10

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 107
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 112
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 139
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 140
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 141
    move-object v8, v0

    move v9, v2

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 142
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 143
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mOrdering:I

    .line 144
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 145
    move-object v8, v0

    move v9, v7

    iput v9, v8, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 146
    return-void
.end method

.method private static appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "modifiers":I
    move v2, p2

    .local v2, "flag":I
    move-object v3, p3

    .local v3, "label":Ljava/lang/String;
    move v4, v1

    move v5, v2

    and-int/2addr v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 403
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 405
    :cond_0
    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v2, :cond_3

    .line 571
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 572
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 574
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v2, :cond_1

    .line 575
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v2, :cond_2

    .line 579
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 582
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 585
    :cond_3
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 3

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 692
    return-void
.end method

.method public collapseActionView()Z
    .locals 3

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 833
    const/4 v1, 0x0

    move v0, v1

    .line 845
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return v0

    .line 835
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 837
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 840
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    move-object v2, v0

    .line 841
    invoke-interface {v1, v2}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 842
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 845
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 3

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    const/4 v1, 0x0

    move v0, v1

    .line 827
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return v0

    .line 822
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    move-object v2, v0

    .line 823
    invoke-interface {v1, v2}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 827
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 5

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActionView()Landroid/view/View;
    .locals 4

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 765
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    move-object v0, v1

    .line 770
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return-object v0

    .line 766
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v1, :cond_1

    .line 767
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/core/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 768
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    move-object v0, v1

    goto :goto_0

    .line 770
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getAlphabeticModifiers()I
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-char v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 501
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .line 511
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 504
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v2, :cond_1

    .line 505
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 506
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 507
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 511
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getItemId()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-char v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public getOrdering()I
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mOrdering:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method getShortcut()C
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-char v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v1, v0

    iget-char v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 11

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    move-result v5

    move v1, v5

    .line 353
    .local v1, "shortcut":C
    move v5, v1

    if-nez v5, :cond_0

    .line 354
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 398
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return-object v0

    .line 357
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, v5

    .line 359
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v5

    .line 360
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    move-object v5, v3

    move-object v6, v2

    sget v7, Landroidx/appcompat/R$string;->abc_prepend_shortcut_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 365
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    :goto_1
    move v4, v5

    .line 366
    .local v4, "modifiers":I
    move-object v5, v3

    move v6, v4

    const/high16 v7, 0x10000

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$string;->abc_menu_meta_shortcut_label:I

    .line 367
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 366
    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 368
    move-object v5, v3

    move v6, v4

    const/16 v7, 0x1000

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$string;->abc_menu_ctrl_shortcut_label:I

    .line 369
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 370
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x2

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$string;->abc_menu_alt_shortcut_label:I

    .line 371
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 370
    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 372
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$string;->abc_menu_shift_shortcut_label:I

    .line 373
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 372
    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 374
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x4

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$string;->abc_menu_sym_shortcut_label:I

    .line 375
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 374
    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 376
    move-object v5, v3

    move v6, v4

    const/16 v7, 0x8

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$string;->abc_menu_function_shortcut_label:I

    .line 377
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-static {v5, v6, v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 379
    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 394
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    :goto_2
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 365
    .end local v4    # "modifiers":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    goto :goto_1

    .line 382
    .restart local v4    # "modifiers":I
    :sswitch_0
    move-object v5, v3

    move-object v6, v2

    sget v7, Landroidx/appcompat/R$string;->abc_menu_enter_shortcut_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 383
    goto :goto_2

    .line 386
    :sswitch_1
    move-object v5, v3

    move-object v6, v2

    sget v7, Landroidx/appcompat/R$string;->abc_menu_delete_shortcut_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 387
    goto :goto_2

    .line 390
    :sswitch_2
    move-object v5, v3

    move-object v6, v2

    sget v7, Landroidx/appcompat/R$string;->abc_menu_space_shortcut_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    goto :goto_2

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getSupportActionProvider()Landroidx/core/view/ActionProvider;
    .locals 2

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    move-object v1, v2

    .line 473
    .local v1, "ctitle":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 477
    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 480
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_1
    return-object v0

    .line 471
    .end local v1    # "ctitle":Ljava/lang/CharSequence;
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 480
    .restart local v1    # "ctitle":Ljava/lang/CharSequence;
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_1
.end method

.method getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroidx/appcompat/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 447
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v2

    .line 448
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0

    .line 447
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    .line 448
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .locals 4

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 850
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 851
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/core/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 853
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 855
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 853
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 855
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x1

    move v0, v2

    .line 180
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return v0

    .line 158
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 162
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 163
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 164
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 167
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 169
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 172
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "MenuItemImpl"

    const-string/jumbo v3, "Can\'t find activity to handle intent; ignoring"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 176
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 180
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method public isCheckable()Z
    .locals 3

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 3

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    invoke-virtual {v1}, Landroidx/core/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    invoke-virtual {v1}, Landroidx/core/view/ActionProvider;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 643
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 641
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 643
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public requestsActionButton()Z
    .locals 3

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 3

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "actionProvider":Landroid/view/ActionProvider;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionView(I)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setActionView(I)Landroidx/core/internal/view/SupportMenuItem;
    .locals 11

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v4

    .line 757
    .local v2, "context":Landroid/content/Context;
    move-object v4, v2

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v3, v4

    .line 758
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object v4, v0

    move-object v5, v3

    move v6, v1

    new-instance v7, Landroid/widget/LinearLayout;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v4

    .line 759
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 746
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    .line 747
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    if-lez v2, :cond_0

    .line 748
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 750
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 751
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setActionViewExpanded(Z)V
    .locals 4

    .prologue
    .line 859
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "isExpanded":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 860
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 861
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "alphaChar":C
    move-object v2, v0

    iget-char v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 249
    move-object v2, v0

    move-object v0, v2

    .line 256
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return-object v0

    .line 252
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    iput-char v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 254
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 256
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "alphaChar":C
    move v2, p2

    .local v2, "alphaModifiers":I
    move-object v3, v0

    iget-char v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 263
    move-object v3, v0

    move-object v0, v3

    .line 270
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return-object v0

    .line 266
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    iput-char v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 267
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 269
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 270
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "callback":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 238
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "checkable":Z
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    move v2, v3

    .line 596
    .local v2, "oldFlags":I
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v5, -0x2

    and-int/lit8 v4, v4, -0x2

    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 597
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    if-eq v3, v4, :cond_0

    .line 598
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 601
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0

    .line 596
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 622
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 627
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0

    .line 624
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 6

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "checked":Z
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    move v2, v3

    .line 632
    .local v2, "oldFlags":I
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v5, -0x3

    and-int/lit8 v4, v4, -0x3

    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 633
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    if-eq v3, v4, :cond_0

    .line 634
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 636
    :cond_0
    return-void

    .line 632
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "contentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 878
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 880
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "enabled":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 191
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 196
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 198
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0

    .line 193
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 5

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "exclusive":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 606
    return-void

    .line 605
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "iconResId":I
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 527
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 528
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 531
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 533
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 517
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 518
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 519
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 521
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "iconTintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 540
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 541
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 543
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 545
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "iconTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 556
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 557
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 559
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 561
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 229
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setIsActionButton(Z)V
    .locals 6

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "isActionButton":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 715
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, -0x21

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 683
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "numericChar":C
    move-object v2, v0

    iget-char v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 291
    move-object v2, v0

    move-object v0, v2

    .line 298
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return-object v0

    .line 294
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 296
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 298
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "numericModifiers":I
    move-object v3, v0

    iget-char v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 304
    move-object v3, v0

    move-object v0, v3

    .line 312
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    return-object v0

    .line 307
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 308
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 310
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 312
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "listener":Landroid/view/MenuItem$OnActionExpandListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 871
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "clickListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 673
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "alphaChar":C
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 318
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    iput-char v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 320
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 322
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "alphaChar":C
    move v3, p3

    .local v3, "numericModifiers":I
    move v4, p4

    .local v4, "alphaModifiers":I
    move-object v5, v0

    move v6, v1

    iput-char v6, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 329
    move-object v5, v0

    move v6, v3

    invoke-static {v6}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 330
    move-object v5, v0

    move v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    iput-char v6, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 331
    move-object v5, v0

    move v6, v4

    invoke-static {v6}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 333
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 335
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 6

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "actionEnum":I
    move v2, v1

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    .line 736
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    .line 739
    :pswitch_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 740
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 741
    return-void

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "actionEnum":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 813
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 4

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 430
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 431
    return-void
.end method

.method public setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 7

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "actionProvider":Landroidx/core/view/ActionProvider;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v2, :cond_0

    .line 794
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->reset()V

    .line 796
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 797
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    .line 798
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 799
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v2, :cond_1

    .line 800
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    new-instance v3, Landroidx/appcompat/view/menu/MenuItemImpl$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/MenuItemImpl$1;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v2, v3}, Landroidx/core/view/ActionProvider;->setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V

    .line 807
    :cond_1
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "title":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 455
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 457
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v2, :cond_0

    .line 458
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 461
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 489
    move-object v2, v1

    if-nez v2, :cond_0

    .line 490
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    move-object v1, v2

    .line 493
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 495
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, p1

    .local v1, "tooltipText":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 892
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 894
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "shown":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 667
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0
.end method

.method setVisibleInt(Z)Z
    .locals 6

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v1, p1

    .local v1, "shown":Z
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    move v2, v3

    .line 656
    .local v2, "oldFlags":I
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    const/16 v5, -0x9

    and-int/lit8 v4, v4, -0x9

    move v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 657
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .line 656
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/16 v5, 0x8

    goto :goto_0

    .line 657
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public shouldShowIcon()Z
    .locals 2

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0
.end method

.method shouldShowShortcut()Z
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 3

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
