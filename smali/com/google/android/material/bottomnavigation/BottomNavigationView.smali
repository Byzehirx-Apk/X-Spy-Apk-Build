.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private final menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->bottomNavigationStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 118
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 121
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 123
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 124
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v7

    .line 127
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object v7, v4

    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    .line 131
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setId(I)V

    .line 132
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 133
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 134
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 137
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Lcom/google/android/material/R$styleable;->BottomNavigationView:[I

    move v10, v3

    sget v11, Lcom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    sget v15, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    aput v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    sget v15, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v15, v13, v14

    .line 138
    invoke-static/range {v7 .. v12}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v7

    move-object v5, v7

    .line 147
    .local v5, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 148
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    :goto_0
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconSize:I

    move-object v10, v0

    .line 157
    invoke-virtual {v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/android/material/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 155
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 154
    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 158
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v10, 0x0

    .line 160
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 159
    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 162
    :cond_0
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 163
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    const/4 v10, 0x0

    .line 164
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 163
    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 167
    :cond_1
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 168
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    :cond_2
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    const/4 v10, 0x0

    .line 173
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    .line 172
    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 176
    :cond_3
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v10, -0x1

    .line 177
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v8

    .line 176
    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 180
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    const/4 v10, 0x1

    .line 181
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 180
    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 183
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemBackground:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    move v6, v7

    .line 184
    .local v6, "itemBackground":I
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v8, v6

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 186
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    move-object v7, v0

    move-object v8, v5

    sget v9, Lcom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    .line 189
    :cond_4
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 191
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_5

    .line 193
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 196
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 210
    return-void

    .line 150
    .end local v6    # "itemBackground":I
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const v9, 0x1010038

    .line 151
    invoke-virtual {v8, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 150
    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/view/View;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 533
    .local v2, "divider":Landroid/view/View;
    move-object v4, v2

    move-object v5, v1

    sget v6, Lcom/google/android/material/R$color;->design_bottom_navigation_shadow_color:I

    .line 534
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 533
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 535
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    move-object v7, v0

    .line 538
    invoke-virtual {v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v3, v4

    .line 539
    .local v3, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 541
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 6

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 545
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 547
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method


# virtual methods
.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public getItemIconSize()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemIconSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public getMaxItemCount()I
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    const/4 v1, 0x5

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 2
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method public inflateMenu(I)V
    .locals 5

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 252
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 254
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 255
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    if-nez v3, :cond_0

    .line 562
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 563
    .line 568
    :goto_0
    return-void

    .line 565
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    move-object v2, v3

    .line 566
    .local v2, "savedState":Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 567
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 568
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 553
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 554
    .local v2, "savedState":Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    move-object v3, v2

    new-instance v4, Landroid/os/Bundle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 555
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 556
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    return-object v0
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 363
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 4

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "itemHorizontalTranslationEnabled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 490
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 491
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 493
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "iconSize":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemIconSize(I)V

    .line 293
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "iconSizeRes":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 305
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "textAppearanceRes":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    .line 469
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "textAppearanceRes":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    .line 450
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 340
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "labelVisibilityMode":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 427
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 428
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 235
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 223
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move v1, p1

    .local v1, "itemId":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object v2, v3

    .line 404
    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 405
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    move-object v3, v2

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    .line 409
    :cond_0
    return-void
.end method
