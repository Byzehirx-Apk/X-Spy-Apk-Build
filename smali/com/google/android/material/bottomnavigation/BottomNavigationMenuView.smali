.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L

.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private itemTextAppearanceInactive:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroidx/transition/TransitionSet;

.field private tempChildWidths:[I


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

    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v2, p1

    .local v2, "context":Landroid/content/Context;
    move-object v3, p2

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    move-object v5, v1

    new-instance v6, Landroidx/core/util/Pools$SynchronizedPool;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    .line 69
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 70
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 91
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v4, v5

    .line 92
    .local v4, "res":Landroid/content/res/Resources;
    move-object v5, v1

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 93
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 94
    move-object v5, v1

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 95
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 96
    move-object v5, v1

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 97
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 98
    move-object v5, v1

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 99
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 100
    move-object v5, v1

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    .line 101
    move-object v5, v1

    move-object v6, v1

    const v7, 0x1010038

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 103
    move-object v5, v1

    new-instance v6, Landroidx/transition/AutoTransition;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Landroidx/transition/TransitionSet;

    .line 104
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Landroidx/transition/TransitionSet;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 105
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Landroidx/transition/TransitionSet;

    const-wide/16 v6, 0x73

    invoke-virtual {v5, v6, v7}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 106
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Landroidx/transition/TransitionSet;

    new-instance v6, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 107
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Landroidx/transition/TransitionSet;

    new-instance v6, Lcom/google/android/material/internal/TextScale;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/android/material/internal/TextScale;-><init>()V

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 109
    move-object v5, v1

    new-instance v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 120
    move-object v5, v1

    const/4 v6, 0x5

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return-object v0
.end method

.method private getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .locals 6

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v1, v2

    .line 570
    .local v1, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 571
    new-instance v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 573
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 5

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "labelVisibilityMode":I
    move v2, p2

    .local v2, "childCount":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 8

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->removeAllViews()V

    .line 488
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v5, :cond_1

    .line 489
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 490
    .local v4, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 491
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    move-object v6, v4

    invoke-interface {v5, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v5

    .line 489
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    .end local v4    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 496
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 497
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 498
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 499
    .line 530
    :goto_1
    return-void

    .line 501
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iput-object v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 502
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v5

    move v1, v5

    .line 503
    .local v1, "shifting":Z
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_2
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 504
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 505
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v5

    .line 506
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 507
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object v5

    move-object v3, v5

    .line 508
    .local v3, "child":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move v6, v2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 509
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 510
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    .line 512
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 514
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 515
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 516
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 517
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :goto_3
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 522
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 523
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 524
    move-object v5, v3

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemPosition(I)V

    .line 525
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 519
    :cond_3
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    goto :goto_3

    .line 528
    .end local v3    # "child":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_4
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 529
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v5

    .line 530
    goto/16 :goto_1
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 16

    .prologue
    .line 463
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move/from16 v1, p1

    .local v1, "baseColorThemeAttr":I
    new-instance v6, Landroid/util/TypedValue;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v6

    .line 464
    .local v2, "value":Landroid/util/TypedValue;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 465
    const/4 v6, 0x0

    move-object v0, v6

    .line 475
    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :goto_0
    return-object v0

    .line 467
    .restart local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v3, v6

    .line 468
    .local v3, "baseColor":Landroid/content/res/ColorStateList;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 469
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroidx/appcompat/R$attr;->colorPrimary:I

    move-object v8, v2

    const/4 v9, 0x1

    .line 470
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 471
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 473
    :cond_1
    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->data:I

    move v4, v6

    .line 474
    .local v4, "colorPrimary":I
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    move v5, v6

    .line 475
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

    sget-object v11, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    sget-object v11, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    sget-object v11, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    aput-object v11, v9, v10

    const/4 v9, 0x3

    new-array v9, v9, [I

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v3

    sget-object v13, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    move v14, v5

    .line 478
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

    .line 475
    move-object v0, v6

    goto :goto_0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 407
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 409
    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_0
.end method

.method public getItemBackgroundRes()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public getItemIconSize()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 2

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public getSelectedItemId()I
    .locals 2

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public getWindowAnimations()I
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 126
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 208
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v12

    move v6, v12

    .line 209
    .local v6, "count":I
    move v12, v4

    move v13, v2

    sub-int/2addr v12, v13

    move v7, v12

    .line 210
    .local v7, "width":I
    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    move v8, v12

    .line 211
    .local v8, "height":I
    const/4 v12, 0x0

    move v9, v12

    .line 212
    .local v9, "used":I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "i":I
    :goto_0
    move v12, v10

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 213
    move-object v12, v0

    move v13, v10

    invoke-virtual {v12, v13}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 214
    .local v11, "child":Landroid/view/View;
    move-object v12, v11

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 215
    .line 212
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 217
    :cond_0
    move-object v12, v0

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 218
    move-object v12, v11

    move v13, v7

    move v14, v9

    sub-int/2addr v13, v14

    move-object v14, v11

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    move v15, v7

    move/from16 v16, v9

    sub-int v15, v15, v16

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 222
    :goto_2
    move v12, v9

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 220
    :cond_1
    move-object v12, v11

    move v13, v9

    const/4 v14, 0x0

    move-object v15, v11

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move/from16 v16, v9

    add-int v15, v15, v16

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 224
    .end local v11    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    .prologue
    .line 130
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    move/from16 v5, v18

    .line 132
    .local v5, "width":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v6, v18

    .line 134
    .local v6, "visibleCount":I
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v18

    move/from16 v7, v18

    .line 136
    .local v7, "totalCount":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v8, v18

    .line 138
    .local v8, "heightSpec":I
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    move/from16 v19, v0

    move/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 139
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v9, v18

    .line 140
    .local v9, "activeChild":Landroid/view/View;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    move/from16 v18, v0

    move/from16 v10, v18

    .line 141
    .local v10, "activeItemWidth":I
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 144
    move-object/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    .line 145
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v20, v8

    .line 144
    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 146
    move/from16 v18, v10

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v10, v18

    .line 148
    :cond_0
    move/from16 v18, v6

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x1

    :goto_0
    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 149
    .local v11, "inactiveCount":I
    move/from16 v18, v5

    move/from16 v19, v11

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v12, v18

    .line 150
    .local v12, "activeMaxAvailable":I
    move/from16 v18, v12

    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v20, v0

    .line 151
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v13, v18

    .line 152
    .local v13, "activeWidth":I
    move/from16 v18, v5

    move/from16 v19, v13

    sub-int v18, v18, v19

    move/from16 v19, v11

    if-nez v19, :cond_3

    const/16 v19, 0x1

    :goto_1
    div-int v18, v18, v19

    move/from16 v14, v18

    .line 154
    .local v14, "inactiveMaxAvailable":I
    move/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v15, v18

    .line 155
    .local v15, "inactiveWidth":I
    move/from16 v18, v5

    move/from16 v19, v13

    sub-int v18, v18, v19

    move/from16 v19, v15

    move/from16 v20, v11

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 157
    .local v16, "extra":I
    const/16 v18, 0x0

    move/from16 v17, v18

    .local v17, "i":I
    :goto_2
    move/from16 v18, v17

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 158
    move-object/from16 v18, v2

    move/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 159
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v18, v0

    move/from16 v19, v17

    move/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move/from16 v20, v13

    :goto_3
    aput v20, v18, v19

    .line 163
    move/from16 v18, v16

    if-lez v18, :cond_1

    .line 164
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v18, v0

    move/from16 v19, v17

    move-object/from16 v23, v18

    move/from16 v24, v19

    move-object/from16 v18, v23

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    aget v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 165
    add-int/lit8 v16, v16, -0x1

    .line 157
    :cond_1
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 148
    .end local v11    # "inactiveCount":I
    .end local v12    # "activeMaxAvailable":I
    .end local v13    # "activeWidth":I
    .end local v14    # "inactiveMaxAvailable":I
    .end local v15    # "inactiveWidth":I
    .end local v16    # "extra":I
    .end local v17    # "i":I
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 152
    .restart local v11    # "inactiveCount":I
    .restart local v12    # "activeMaxAvailable":I
    .restart local v13    # "activeWidth":I
    :cond_3
    move/from16 v19, v11

    goto/16 :goto_1

    .line 159
    .restart local v14    # "inactiveMaxAvailable":I
    .restart local v15    # "inactiveWidth":I
    .restart local v16    # "extra":I
    .restart local v17    # "i":I
    :cond_4
    move/from16 v20, v15

    goto :goto_3

    .line 168
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v18, v0

    move/from16 v19, v17

    const/16 v20, 0x0

    aput v20, v18, v19

    goto :goto_4

    .line 171
    .line 188
    .end local v9    # "activeChild":Landroid/view/View;
    .end local v10    # "activeItemWidth":I
    .end local v11    # "inactiveCount":I
    .end local v12    # "activeMaxAvailable":I
    .end local v13    # "activeWidth":I
    .end local v14    # "inactiveMaxAvailable":I
    .end local v15    # "inactiveWidth":I
    .end local v16    # "extra":I
    .end local v17    # "i":I
    :cond_6
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 189
    .local v9, "totalWidth":I
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "i":I
    :goto_5
    move/from16 v18, v10

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 190
    move-object/from16 v18, v2

    move/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v11, v18

    .line 191
    .local v11, "child":Landroid/view/View;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 192
    .line 189
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 172
    .end local v9    # "totalWidth":I
    .end local v10    # "i":I
    .end local v11    # "child":Landroid/view/View;
    :cond_7
    move/from16 v18, v5

    move/from16 v19, v6

    if-nez v19, :cond_9

    const/16 v19, 0x1

    :goto_7
    div-int v18, v18, v19

    move/from16 v9, v18

    .line 173
    .local v9, "maxAvailable":I
    move/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v10, v18

    .line 174
    .local v10, "childWidth":I
    move/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v6

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 175
    .local v11, "extra":I
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i":I
    :goto_8
    move/from16 v18, v12

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 176
    move-object/from16 v18, v2

    move/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 177
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v10

    aput v20, v18, v19

    .line 178
    move/from16 v18, v11

    if-lez v18, :cond_8

    .line 179
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v18, v0

    move/from16 v19, v12

    move-object/from16 v23, v18

    move/from16 v24, v19

    move-object/from16 v18, v23

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    aget v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 180
    add-int/lit8 v11, v11, -0x1

    .line 175
    :cond_8
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 172
    .end local v9    # "maxAvailable":I
    .end local v10    # "childWidth":I
    .end local v11    # "extra":I
    .end local v12    # "i":I
    :cond_9
    move/from16 v19, v6

    goto :goto_7

    .line 183
    .restart local v9    # "maxAvailable":I
    .restart local v10    # "childWidth":I
    .restart local v11    # "extra":I
    .restart local v12    # "i":I
    :cond_a
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v18, v0

    move/from16 v19, v12

    const/16 v20, 0x0

    aput v20, v18, v19

    goto :goto_9

    .line 194
    .end local v12    # "i":I
    .local v9, "totalWidth":I
    .local v10, "i":I
    .local v11, "child":Landroid/view/View;
    :cond_b
    move-object/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v19, v0

    move/from16 v20, v10

    aget v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    .line 195
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v20, v8

    .line 194
    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 196
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v12, v18

    .line 197
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v18, v12

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    move/from16 v18, v9

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v9, v18

    goto/16 :goto_6

    .line 200
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    move-object/from16 v18, v2

    move/from16 v19, v9

    move/from16 v20, v9

    const/high16 v21, 0x40000000    # 2.0f

    .line 202
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    .line 201
    invoke-static/range {v19 .. v21}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    move/from16 v20, v0

    move/from16 v21, v8

    const/16 v22, 0x0

    .line 203
    invoke-static/range {v20 .. v22}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v20

    .line 200
    invoke-virtual/range {v18 .. v20}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 204
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 238
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_0

    .line 239
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 240
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 390
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_0

    .line 391
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 392
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 8

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "background":I
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 365
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_0

    .line 366
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 367
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "itemHorizontalTranslationEnabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 449
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "iconSize":I
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemIconSize:I

    .line 264
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_0

    .line 265
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 266
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "textAppearanceRes":I
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 336
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_1

    .line 337
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 338
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 341
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_0

    .line 342
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 337
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 346
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "textAppearanceRes":I
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 307
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_1

    .line 308
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 309
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 312
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_0

    .line 313
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 308
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 8

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 284
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v6, :cond_0

    .line 285
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 286
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "labelVisibilityMode":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 428
    return-void
.end method

.method public setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v1, p1

    .local v1, "presenter":Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 484
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move v1, p1

    .local v1, "itemId":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v5

    move v2, v5

    .line 588
    .local v2, "size":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 589
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 590
    .local v4, "item":Landroid/view/MenuItem;
    move v5, v1

    move-object v6, v4

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 591
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 592
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 593
    move-object v5, v4

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v5

    .line 594
    .line 597
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 588
    .restart local v4    # "item":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public updateMenuView()V
    .locals 8

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v5, :cond_1

    .line 534
    .line 566
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v5

    move v1, v5

    .line 538
    .local v1, "menuSize":I
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v6, v6

    if-eq v5, v6, :cond_2

    .line 540
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    .line 541
    goto :goto_0

    .line 544
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    move v2, v5

    .line 546
    .local v2, "previousSelectedId":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_4

    .line 547
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 548
    .local v4, "item":Landroid/view/MenuItem;
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 549
    move-object v5, v0

    move-object v6, v4

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    .line 550
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemPosition:I

    .line 546
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 553
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_4
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->selectedItemId:I

    if-eq v5, v6, :cond_5

    .line 555
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->set:Landroidx/transition/TransitionSet;

    invoke-static {v5, v6}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 558
    :cond_5
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v5

    move v3, v5

    .line 559
    .local v3, "shifting":Z
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_6

    .line 560
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 561
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 562
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move v6, v4

    aget-object v5, v5, v6

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 563
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buttons:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 564
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 559
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 566
    :cond_6
    goto/16 :goto_0
.end method
