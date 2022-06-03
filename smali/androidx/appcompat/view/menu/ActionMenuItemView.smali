.class public Landroidx/appcompat/view/menu/ActionMenuItemView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;,
        Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyle":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v4, v7

    .line 74
    .local v4, "res":Landroid/content/res/Resources;
    move-object v7, v0

    move-object v8, v0

    invoke-direct {v8}, Landroidx/appcompat/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v8

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 75
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroidx/appcompat/R$styleable;->ActionMenuItemView:[I

    move v10, v3

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 77
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v7, v0

    move-object v8, v5

    sget v9, Landroidx/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 79
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    move v6, v7

    .line 82
    .local v6, "density":F
    move-object v7, v0

    const/high16 v8, 0x42000000    # 32.0f

    move v9, v6

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 84
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 87
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    .line 88
    return-void
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object v1, v4

    .line 104
    .local v1, "config":Landroid/content/res/Configuration;
    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    move v2, v4

    .line 105
    .local v2, "widthDp":I
    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    move v3, v4

    .line 107
    .local v3, "heightDp":I
    move v4, v2

    const/16 v5, 0x1e0

    if-ge v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x280

    if-lt v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x1e0

    if-ge v4, v5, :cond_1

    :cond_0
    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 189
    .local v1, "visible":Z
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 190
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    and-int/2addr v4, v5

    move v1, v4

    .line 192
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 196
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    move-object v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 199
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :goto_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 205
    .local v3, "tooltipText":Ljava/lang/CharSequence;
    move-object v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 207
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_5
    invoke-static {v4, v5}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 211
    :goto_6
    return-void

    .line 188
    .end local v1    # "visible":Z
    .end local v2    # "contentDescription":Ljava/lang/CharSequence;
    .end local v3    # "tooltipText":Ljava/lang/CharSequence;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 190
    .restart local v1    # "visible":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 192
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 199
    .restart local v2    # "contentDescription":Ljava/lang/CharSequence;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_3

    .line 201
    :cond_5
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 207
    .restart local v3    # "tooltipText":Ljava/lang/CharSequence;
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5

    .line 209
    :cond_7
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_6
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return-object v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v2, p2

    .local v2, "menuType":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 126
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setId(I)V

    .line 130
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 131
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 132
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-nez v3, :cond_0

    .line 134
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V

    iput-object v4, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    .line 137
    :cond_0
    return-void

    .line 130
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return v0
.end method

.method public needsDividerBefore()Z
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v2

    .line 153
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 95
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    move v3, v10

    .line 270
    .local v3, "textVisible":Z
    move v10, v3

    if-eqz v10, :cond_0

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v10, :cond_0

    .line 271
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v12

    move-object v13, v0

    .line 272
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v14

    .line 271
    invoke-super {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 275
    :cond_0
    move-object v10, v0

    move v11, v1

    move v12, v2

    invoke-super {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 277
    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    move v4, v10

    .line 278
    .local v4, "widthMode":I
    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move v5, v10

    .line 279
    .local v5, "widthSize":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v10

    move v6, v10

    .line 280
    .local v6, "oldMeasuredWidth":I
    move v10, v4

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_3

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_0
    move v7, v10

    .line 283
    .local v7, "targetWidth":I
    move v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v10, v11, :cond_1

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v10, :cond_1

    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 285
    move-object v10, v0

    move v11, v7

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v12, v2

    invoke-super {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 289
    :cond_1
    move v10, v3

    if-nez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 292
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v10

    move v8, v10

    .line 293
    .local v8, "w":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    move v9, v10

    .line 294
    .local v9, "dw":I
    move-object v10, v0

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v14

    invoke-super {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 296
    .end local v8    # "w":I
    .end local v9    # "dw":I
    :cond_2
    return-void

    .line 280
    .end local v7    # "targetWidth":I
    :cond_3
    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "e":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    move-object v3, v0

    move-object v4, v1

    .line 142
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x1

    move v0, v2

    .line 145
    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 171
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 176
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move v1, p1

    .local v1, "expandedFormat":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 180
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 181
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 182
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 185
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 217
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move v2, v5

    .line 218
    .local v2, "width":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move v3, v5

    .line 219
    .local v3, "height":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v5, v6, :cond_0

    .line 220
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v5, v5

    move v6, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 221
    .local v4, "scale":F
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    move v2, v5

    .line 222
    move v5, v3

    int-to-float v5, v5

    move v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 224
    .end local v4    # "scale":F
    :cond_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v5, v6, :cond_1

    .line 225
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v5, v5

    move v6, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 226
    .restart local v4    # "scale":F
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mMaxIconSize:I

    move v3, v5

    .line 227
    move v5, v2

    int-to-float v5, v5

    move v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v2, v5

    .line 229
    .end local v4    # "scale":F
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_2
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 234
    return-void
.end method

.method public setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "invoker":Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    .line 157
    return-void
.end method

.method public setPadding(IIII)V
    .locals 10

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move v1, p1

    .local v1, "l":I
    move v2, p2

    .local v2, "t":I
    move v3, p3

    .local v3, "r":I
    move v4, p4

    .local v4, "b":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 114
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 115
    return-void
.end method

.method public setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "popupCallback":Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    .line 161
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 243
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 249
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 250
    return-void
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ActionMenuItemView;
    return v0
.end method
