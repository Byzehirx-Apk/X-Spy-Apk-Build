.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Lcom/google/android/material/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    .prologue
    .line 108
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object/from16 v2, p1

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p2

    .local v3, "attrs":Landroid/util/AttributeSet;
    move/from16 v4, p3

    .local v4, "defStyleAttr":I
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    invoke-direct {v12, v13, v14, v15}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    move-object v12, v1

    new-instance v13, Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;-><init>()V

    iput-object v13, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 111
    move-object v12, v1

    new-instance v13, Lcom/google/android/material/internal/NavigationMenu;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v2

    invoke-direct {v14, v15}, Lcom/google/android/material/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v13, v12, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    .line 114
    move-object v12, v2

    move-object v13, v3

    sget-object v14, Lcom/google/android/material/R$styleable;->NavigationView:[I

    move v15, v4

    sget v16, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 115
    invoke-static/range {v12 .. v17}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    move-object v5, v12

    .line 122
    .local v5, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v12, v1

    move-object v13, v5

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 123
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 124
    move-object v12, v1

    move-object v13, v5

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    const/4 v15, 0x0

    .line 125
    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    int-to-float v13, v13

    .line 124
    invoke-static {v12, v13}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 127
    :cond_0
    move-object v12, v1

    move-object v13, v5

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    const/4 v15, 0x0

    .line 128
    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 127
    invoke-static {v12, v13}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 130
    move-object v12, v1

    move-object v13, v5

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    .line 133
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 134
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v6, v12

    .line 139
    .local v6, "itemIconTint":Landroid/content/res/ColorStateList;
    :goto_0
    const/4 v12, 0x0

    move v7, v12

    .line 140
    .local v7, "textAppearanceSet":Z
    const/4 v12, 0x0

    move v8, v12

    .line 141
    .local v8, "textAppearance":I
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 142
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    move v8, v12

    .line 143
    const/4 v12, 0x1

    move v7, v12

    .line 146
    :cond_1
    const/4 v12, 0x0

    move-object v9, v12

    .line 147
    .local v9, "itemTextColor":Landroid/content/res/ColorStateList;
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 148
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v9, v12

    .line 151
    :cond_2
    move v12, v7

    if-nez v12, :cond_3

    move-object v12, v9

    if-nez v12, :cond_3

    .line 153
    move-object v12, v1

    const v13, 0x1010036

    invoke-direct {v12, v13}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v9, v12

    .line 156
    :cond_3
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v10, v12

    .line 158
    .local v10, "itemBackground":Landroid/graphics/drawable/Drawable;
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 159
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    const/4 v14, 0x0

    .line 160
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move v11, v12

    .line 161
    .local v11, "itemHorizontalPadding":I
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v13, v11

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 163
    .end local v11    # "itemHorizontalPadding":I
    :cond_4
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    const/4 v14, 0x0

    .line 164
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move v11, v12

    .line 166
    .local v11, "itemIconPadding":I
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    new-instance v13, Lcom/google/android/material/navigation/NavigationView$1;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v1

    invoke-direct {v14, v15}, Lcom/google/android/material/navigation/NavigationView$1;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenu;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 176
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setId(I)V

    .line 177
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v13, v2

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 178
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    move v12, v7

    if-eqz v12, :cond_5

    .line 180
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v13, v8

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 182
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v13, v9

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v13, v11

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 185
    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v12, v13}, Lcom/google/android/material/internal/NavigationMenu;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 186
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v12, v13}, Lcom/google/android/material/navigation/NavigationView;->addView(Landroid/view/View;)V

    .line 188
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 189
    move-object v12, v1

    move-object v13, v5

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    .line 192
    :cond_6
    move-object v12, v5

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 193
    move-object v12, v1

    move-object v13, v5

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v12

    .line 196
    :cond_7
    move-object v12, v5

    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 197
    return-void

    .line 136
    .end local v6    # "itemIconTint":Landroid/content/res/ColorStateList;
    .end local v7    # "textAppearanceSet":Z
    .end local v8    # "textAppearance":I
    .end local v9    # "itemTextColor":Landroid/content/res/ColorStateList;
    .end local v10    # "itemBackground":Landroid/graphics/drawable/Drawable;
    .end local v11    # "itemIconPadding":I
    :cond_8
    move-object v12, v1

    const v13, 0x1010038

    invoke-direct {v12, v13}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v6, v12

    .restart local v6    # "itemIconTint":Landroid/content/res/ColorStateList;
    goto/16 :goto_0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 16

    .prologue
    .line 509
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move/from16 v1, p1

    .local v1, "baseColorThemeAttr":I
    new-instance v6, Landroid/util/TypedValue;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v6

    .line 510
    .local v2, "value":Landroid/util/TypedValue;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 511
    const/4 v6, 0x0

    move-object v0, v6

    .line 521
    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    :goto_0
    return-object v0

    .line 513
    .restart local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v3, v6

    .line 514
    .local v3, "baseColor":Landroid/content/res/ColorStateList;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 515
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroidx/appcompat/R$attr;->colorPrimary:I

    move-object v8, v2

    const/4 v9, 0x1

    .line 516
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 517
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 519
    :cond_1
    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->data:I

    move v4, v6

    .line 520
    .local v4, "colorPrimary":I
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    move v5, v6

    .line 521
    .local v5, "defaultColor":I
    new-instance v6, Landroid/content/res/ColorStateList;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x3

    new-array v8, v8, [[I

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    sget-object v11, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    sget-object v11, Lcom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    aput-object v11, v9, v10

    const/4 v9, 0x3

    new-array v9, v9, [I

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v3

    sget-object v13, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    move v14, v5

    .line 524
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    aput v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move v12, v4

    aput v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x2

    move v12, v5

    aput v12, v10, v11

    invoke-direct {v7, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 521
    move-object v0, v6

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 6

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 503
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 505
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public getHeaderCount()I
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return v0
.end method

.method public getItemIconPadding()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "res":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 5

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 264
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 265
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 266
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 267
    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 253
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "widthSpec":I
    move v2, p2

    .local v2, "heightSpec":I
    move v3, v1

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 245
    :goto_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 246
    return-void

    .line 234
    :sswitch_0
    goto :goto_0

    .line 236
    :sswitch_1
    move v3, v1

    .line 238
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 237
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    .line 239
    goto :goto_0

    .line 241
    :sswitch_2
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "savedState":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v3, :cond_0

    .line 211
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/navigation/NavigationView$SavedState;

    move-object v2, v3

    .line 215
    .local v2, "state":Lcom/google/android/material/navigation/NavigationView$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 217
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v3, v0

    invoke-super {v3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 202
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/google/android/material/navigation/NavigationView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 203
    .local v2, "state":Lcom/google/android/material/navigation/NavigationView$SavedState;
    move-object v3, v2

    new-instance v4, Landroid/os/Bundle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 205
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/navigation/NavigationView;
    return-object v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    .line 300
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "id":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object v2, v3

    .line 464
    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 465
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v4, v2

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 467
    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 7
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "checkedItem":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    move-object v4, v1

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object v2, v3

    .line 476
    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 477
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v4, v2

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 482
    return-void

    .line 479
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "itemBackground":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "padding":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 414
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "paddingResource":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 424
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "padding":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 445
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 5

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "paddingResource":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 455
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 341
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 499
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 362
    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/navigation/NavigationView;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    .line 227
    return-void
.end method
