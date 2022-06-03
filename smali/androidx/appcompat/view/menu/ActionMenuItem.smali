.class public Landroidx/appcompat/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

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

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

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

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 9

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "group":I
    move v3, p3

    .local v3, "id":I
    move v4, p4

    .local v4, "categoryOrder":I
    move v5, p5

    .local v5, "ordering":I
    move-object v6, p6

    .local v6, "title":Ljava/lang/CharSequence;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v7, v0

    const/16 v8, 0x1000

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 56
    move-object v7, v0

    const/16 v8, 0x1000

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 59
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconResId:I

    .line 68
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 69
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 70
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 71
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 75
    move-object v7, v0

    const/16 v8, 0x10

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 84
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 85
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mId:I

    .line 86
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mGroup:I

    .line 87
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mCategoryOrder:I

    .line 88
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mOrdering:I

    .line 89
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method private applyIconTint()V
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v1, :cond_2

    .line 435
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 436
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v1, :cond_1

    .line 439
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 442
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v1, :cond_2

    .line 443
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 446
    :cond_2
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-char v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mGroup:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getItemId()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mId:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-char v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mOrdering:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getSupportActionProvider()Landroidx/core/view/ActionProvider;
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public invoke()Z
    .locals 3

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x1

    move v0, v1

    .line 312
    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :goto_0
    return v0

    .line 307
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 308
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0
.end method

.method public isCheckable()Z
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "actionProvider":Landroid/view/ActionProvider;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ActionMenuItem;->setActionView(I)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setActionView(I)Landroidx/core/internal/view/SupportMenuItem;
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "resId":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 5

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "actionView":Landroid/view/View;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "alphaChar":C
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    iput-char v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 185
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "alphaChar":C
    move v2, p2

    .local v2, "alphaModifiers":I
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    iput-char v4, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 191
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 192
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "checkable":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 198
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0

    .line 197
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 209
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0

    .line 208
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ActionMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "contentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    .line 384
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    move v4, v1

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 215
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0

    .line 214
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Landroidx/appcompat/view/menu/ActionMenuItem;
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "exclusive":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 203
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0

    .line 202
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "iconRes":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconResId:I

    .line 230
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 233
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconResId:I

    .line 223
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 224
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "iconTintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 406
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 408
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 410
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "iconTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 421
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 423
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 425
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 239
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "numericChar":C
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 245
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "numericModifiers":I
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 251
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 252
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "listener":Landroid/view/MenuItem$OnActionExpandListener;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "menuItemClickListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 258
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "alphaChar":C
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 264
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    iput-char v4, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 265
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
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

    iput-char v6, v5, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 272
    move-object v5, v0

    move v6, v3

    invoke-static {v6}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 273
    move-object v5, v0

    move v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    iput-char v6, v5, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 274
    move-object v5, v0

    move v6, v4

    invoke-static {v6}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 275
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 318
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "actionEnum":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 358
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "actionProvider":Landroidx/core/view/ActionProvider;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "title":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 287
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 281
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 293
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ActionMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move-object v1, p1

    .local v1, "tooltipText":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    .line 395
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 299
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    return-object v0

    .line 298
    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItem;
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method
