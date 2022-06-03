.class public Lcom/google/android/material/internal/NavigationMenuItemView;
.super Lcom/google/android/material/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private actionArea:Landroid/widget/FrameLayout;

.field checkable:Z

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private hasIconTintList:Z

.field private final iconSize:I

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private needsEmptyIcon:Z

.field private final textView:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/internal/NavigationMenuItemView$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/internal/NavigationMenuItemView$1;-><init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V

    iput-object v5, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 92
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 93
    move-object v4, v1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$layout;->design_navigation_menu_item:I

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 94
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    .line 95
    move-object v4, v0

    move-object v5, v0

    sget v6, Lcom/google/android/material/R$id;->design_menu_item_text:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 96
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 97
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 98
    return-void
.end method

.method private adjustAppearance()V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v1, v2

    .line 133
    .local v1, "params":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 144
    .end local v1    # "params":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v1, v2

    .line 140
    .restart local v1    # "params":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object v2, v1

    const/4 v3, -0x2

    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 9

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    new-instance v3, Landroid/util/TypedValue;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v3

    .line 167
    .local v1, "value":Landroid/util/TypedValue;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    move-object v5, v1

    const/4 v6, 0x1

    .line 169
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object v2, v3

    .line 171
    .local v2, "drawable":Landroid/graphics/drawable/StateListDrawable;
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    iget v7, v7, Landroid/util/TypedValue;->data:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 172
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 173
    move-object v3, v2

    move-object v0, v3

    .line 175
    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    .end local v2    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "actionView":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 156
    move-object v2, v0

    move-object v3, v0

    sget v4, Lcom/google/android/material/R$id;->design_menu_item_action_area_stub:I

    .line 158
    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 160
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 161
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    :cond_1
    return-void
.end method

.method private shouldExpandActionArea()Z
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 123
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 124
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 122
    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    return v0

    .line 124
    .restart local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v2, p2

    .local v2, "menuType":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 104
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 106
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 107
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 111
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 112
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 113
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 116
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 118
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->adjustAppearance()V

    .line 119
    return-void

    .line 104
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "extraSpace":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Lcom/google/android/material/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 243
    .local v2, "drawableState":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {v3, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 246
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    return v0
.end method

.method public recycle()V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 148
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 150
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method

.method public setCheckable(Z)V
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "checkable":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 191
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 192
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    .line 193
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/16 v4, 0x800

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 201
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 202
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "padding":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setPadding(IIII)V

    .line 272
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 210
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    if-eqz v3, :cond_0

    .line 211
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    move-object v2, v3

    .line 212
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 213
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 215
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    :cond_1
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void

    .line 212
    .restart local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 216
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    if-eqz v3, :cond_1

    .line 217
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 218
    move-object v3, v0

    move-object v4, v0

    .line 220
    invoke-virtual {v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$drawable;->navigation_empty_icon:I

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 219
    invoke-static {v4, v5, v6}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 222
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v3

    goto :goto_1
.end method

.method public setIconPadding(I)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "padding":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 276
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    .line 251
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    .line 252
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "needsEmptyIcon":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    .line 268
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 205
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move v1, p1

    .local v1, "textAppearance":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 260
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "colors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuItemView;
    return v0
.end method
