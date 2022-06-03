.class public Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

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

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
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

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 82
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v4, v5

    .line 84
    .local v4, "res":Landroid/content/res/Resources;
    move-object v5, v1

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$layout;->design_bottom_navigation_item:I

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 85
    move-object v5, v0

    sget v6, Lcom/google/android/material/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 86
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 88
    move-object v5, v0

    move-object v6, v0

    sget v7, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 89
    move-object v5, v0

    move-object v6, v0

    sget v7, Lcom/google/android/material/R$id;->smallLabel:I

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 90
    move-object v5, v0

    move-object v6, v0

    sget v7, Lcom/google/android/material/R$id;->largeLabel:I

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 93
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 94
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 95
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setFocusable(Z)V

    .line 96
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 97
    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "smallLabelSize":F
    move v2, p2

    .local v2, "largeLabelSize":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    .line 332
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v1

    div-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    .line 333
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v1

    mul-float/2addr v4, v5

    move v5, v2

    div-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    .line 334
    return-void
.end method

.method private setViewLayoutParams(Landroid/view/View;II)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "topMargin":I
    move v3, p3

    .local v3, "gravity":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v5

    .line 239
    .local v4, "viewParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 240
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "scaleX":F
    move v3, p3

    .local v3, "scaleY":F
    move v4, p4

    .local v4, "visibility":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    .line 246
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    .line 247
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 248
    return-void
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    return-object v0
.end method

.method public getItemPosition()I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    move v2, p2

    .local v2, "menuType":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 102
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setCheckable(Z)V

    .line 103
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 104
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setEnabled(Z)V

    .line 105
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 106
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setId(I)V

    .line 108
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 112
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setVisibility(I)V

    .line 113
    return-void

    .line 112
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "extraSpace":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 268
    .local v2, "drawableState":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 271
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    return v0
.end method

.method public setCheckable(Z)V
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "checkable":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    .line 162
    return-void
.end method

.method public setChecked(Z)V
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 167
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 171
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    packed-switch v2, :pswitch_data_0

    .line 230
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    .line 234
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setSelected(Z)V

    .line 235
    return-void

    .line 173
    :pswitch_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    if-eqz v2, :cond_1

    .line 174
    move v2, v1

    if-eqz v2, :cond_0

    .line 175
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x31

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 176
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 181
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 179
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_1

    .line 183
    :cond_1
    move v2, v1

    if-eqz v2, :cond_2

    .line 184
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x31

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 186
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 187
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_0

    .line 189
    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x31

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 190
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 191
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 194
    goto/16 :goto_0

    .line 197
    :pswitch_1
    move v2, v1

    if-eqz v2, :cond_3

    .line 198
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x31

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 199
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 204
    :goto_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    goto/16 :goto_0

    .line 201
    :cond_3
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 202
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_2

    .line 208
    :pswitch_2
    move v2, v1

    if-eqz v2, :cond_4

    .line 209
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x31

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 211
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 212
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto/16 :goto_0

    .line 214
    :cond_4
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x31

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 215
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 216
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 218
    goto/16 :goto_0

    .line 221
    :pswitch_3
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 222
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 253
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 257
    move v2, v1

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v0

    move-object v3, v0

    .line 259
    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 280
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    move-object v2, v3

    .line 281
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v1

    .line 282
    :goto_0
    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 283
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 285
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void

    .line 281
    .restart local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    move-object v3, v2

    .line 282
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public setIconSize(I)V
    .locals 5

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "iconSize":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v3

    .line 308
    .local v2, "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v3, v2

    move v4, v1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 309
    move-object v3, v2

    move v4, v1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 310
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 300
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 302
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 5

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "background":I
    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 338
    :goto_0
    move-object v2, v3

    .line 339
    .local v2, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void

    .line 337
    .end local v2    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v3, v0

    .line 338
    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 344
    return-void
.end method

.method public setItemPosition(I)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 117
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "mode":I
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 136
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    .line 138
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 139
    .local v2, "initialized":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 140
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 143
    .end local v2    # "initialized":Z
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setShifting(Z)V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "shifting":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 125
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    .line 127
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 128
    .local v2, "initialized":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 132
    .end local v2    # "initialized":Z
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 275
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "activeTextAppearance":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 320
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 321
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move v1, p1

    .local v1, "inactiveTextAppearance":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 315
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 316
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 325
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 326
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 328
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    return-void
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    return v0
.end method
