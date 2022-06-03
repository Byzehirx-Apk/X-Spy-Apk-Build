.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$IconGravity;
    }
.end annotation


# static fields
.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconLeft:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private iconPadding:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private iconSize:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    move v8, v3

    sget v9, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    const/4 v10, 0x0

    new-array v10, v10, [I

    .line 140
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 147
    .local v4, "attributes":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 148
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v8, -0x1

    .line 150
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 149
    invoke-static {v6, v7}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 152
    move-object v5, v0

    move-object v6, v0

    .line 154
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    .line 153
    invoke-static {v6, v7, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 155
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    invoke-static {v6, v7, v8}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 156
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->MaterialButton_iconGravity:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 158
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->MaterialButton_iconSize:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 161
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    iput-object v6, v5, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 162
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 164
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 167
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 168
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUsingOriginalBackground()Z
    .locals 2

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 8

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 540
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 541
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 542
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_0

    .line 543
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 546
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    :goto_0
    move v1, v3

    .line 547
    .local v1, "width":I
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v3, :cond_3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    :goto_1
    move v2, v3

    .line 548
    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    move v7, v1

    add-int/2addr v6, v7

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 552
    return-void

    .line 546
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_0

    .line 547
    .restart local v1    # "width":I
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0
.end method

.method public getCornerRadius()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0
.end method

.method public getIconGravity()I
    .locals 2

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0
.end method

.method public getIconPadding()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0
.end method

.method public getIconSize()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStrokeWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 213
    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 250
    .end local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 323
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v6, :cond_0

    .line 324
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move v7, v5

    move v8, v3

    sub-int/2addr v7, v8

    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/button/MaterialButtonHelper;->updateMaskBounds(II)V

    .line 326
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatButton;->onMeasure(II)V

    .line 331
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 332
    .line 355
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    move-object v3, v7

    .line 336
    .local v3, "textPaint":Landroid/graphics/Paint;
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    move v4, v7

    .line 337
    .local v4, "textWidth":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    :goto_1
    move v5, v7

    .line 338
    .local v5, "localIconSize":I
    move-object v7, v0

    .line 339
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move-object v8, v0

    .line 341
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v8, v5

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr v7, v8

    move-object v8, v0

    .line 344
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 347
    .local v6, "newIconLeft":I
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 348
    move v7, v6

    neg-int v7, v7

    move v6, v7

    .line 351
    :cond_2
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    move v8, v6

    if-eq v7, v8, :cond_3

    .line 352
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 353
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 355
    :cond_3
    goto :goto_0

    .line 337
    .end local v5    # "localIconSize":I
    .end local v6    # "newIconLeft":I
    :cond_4
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 305
    const-string/jumbo v2, "MaterialButton"

    const-string/jumbo v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 306
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 307
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    goto :goto_0

    .line 315
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "backgroundResourceId":I
    const/4 v3, 0x0

    move-object v2, v3

    .line 295
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    move v3, v1

    if-eqz v3, :cond_0

    .line 296
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 298
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 257
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 268
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "cornerRadius":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    .line 691
    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "cornerRadiusResourceId":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 440
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 441
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 443
    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 4

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "iconGravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 741
    return-void
.end method

.method public setIconPadding(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "iconPadding":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 382
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 383
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "iconResourceId":I
    const/4 v3, 0x0

    move-object v2, v3

    .line 455
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    move v3, v1

    if-eqz v3, :cond_0

    .line 456
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 458
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 459
    return-void
.end method

.method public setIconSize(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "iconSize":I
    move v2, v1

    if-gez v2, :cond_0

    .line 408
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "iconSize cannot be less than 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 412
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 413
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 415
    :cond_1
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "iconTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 483
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 484
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 486
    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "iconTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 521
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 522
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 524
    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "iconTintResourceId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 498
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 566
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "rippleColorResourceId":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "strokeColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 607
    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "strokeColorResourceId":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 622
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "strokeWidth":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    .line 649
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move v1, p1

    .local v1, "strokeWidthResourceId":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 664
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v2, :cond_0

    .line 193
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v2, :cond_0

    .line 231
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
