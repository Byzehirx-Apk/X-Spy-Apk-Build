.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;,
        Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;,
        Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;,
        Lcom/google/android/material/tabs/TabLayout$TabView;,
        Lcom/google/android/material/tabs/TabLayout$Tab;,
        Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorGravity;,
        Lcom/google/android/material/tabs/TabLayout$TabGravity;,
        Lcom/google/android/material/tabs/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x30
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final MIN_INDICATOR_WIDTH:I = 0x18
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field private final slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Landroid/content/res/ColorStateList;

.field tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field tabTextAppearance:I

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->tabStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    .prologue
    .line 403
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
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

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 342
    move-object v7, v0

    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    .line 363
    move-object v7, v0

    const v8, 0x7fffffff

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 379
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 392
    move-object v7, v0

    new-instance v8, Landroidx/core/util/Pools$SimplePool;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 406
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 409
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 410
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const/4 v9, 0x0

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {v7, v8, v9, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 416
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Lcom/google/android/material/R$styleable;->TabLayout:[I

    move v10, v3

    sget v11, Lcom/google/android/material/R$style;->Widget_Design_TabLayout:I

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    sget v15, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    aput v15, v13, v14

    .line 417
    invoke-static/range {v7 .. v12}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v4, v7

    .line 425
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorHeight:I

    const/4 v10, -0x1

    .line 426
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 425
    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 427
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorColor:I

    const/4 v10, 0x0

    .line 428
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 427
    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 429
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    sget v10, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicator:I

    .line 430
    invoke-static {v8, v9, v10}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 429
    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 431
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorGravity:I

    const/4 v10, 0x0

    .line 432
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 431
    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 433
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 435
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->TabLayout_tabPadding:I

    const/4 v13, 0x0

    .line 438
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v10, v17

    move-object/from16 v11, v16

    move/from16 v12, v17

    iput v12, v11, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v9, v17

    move-object/from16 v10, v16

    move/from16 v11, v17

    iput v11, v10, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v8, v17

    move-object/from16 v9, v16

    move/from16 v10, v17

    iput v10, v9, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 439
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingStart:I

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 440
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 441
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingTop:I

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    .line 442
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingEnd:I

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    .line 443
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingBottom:I

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 444
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 446
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    sget v10, Lcom/google/android/material/R$style;->TextAppearance_Design_Tab:I

    .line 447
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    .line 450
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    sget-object v9, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 451
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 454
    .local v5, "ta":Landroid/content/res/TypedArray;
    move-object v7, v0

    move-object v8, v5

    :try_start_0
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v10, 0x0

    .line 455
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    .line 457
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 458
    invoke-static {v8, v9, v10}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 464
    .line 466
    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 468
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    sget v10, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    .line 469
    invoke-static {v8, v9, v10}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 472
    :cond_0
    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 476
    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    move v6, v7

    .line 477
    .local v6, "selected":I
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    move v9, v6

    invoke-static {v8, v9}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 480
    .end local v6    # "selected":I
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    sget v10, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTint:I

    .line 481
    invoke-static {v8, v9, v10}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 482
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTintMode:I

    const/4 v10, -0x1

    .line 483
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 485
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    sget v10, Lcom/google/android/material/R$styleable;->TabLayout_tabRippleColor:I

    .line 486
    invoke-static {v8, v9, v10}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 488
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v10, 0x12c

    .line 489
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    .line 491
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabMinWidth:I

    const/4 v10, -0x1

    .line 492
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    .line 493
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabMaxWidth:I

    const/4 v10, -0x1

    .line 494
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    .line 495
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabBackground:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    .line 496
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabContentStart:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    .line 498
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabMode:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 499
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabGravity:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 500
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabInlineLabel:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 501
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->TabLayout_tabUnboundedRipple:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    .line 502
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 505
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 506
    .local v6, "res":Landroid/content/res/Resources;
    move-object v7, v0

    move-object v8, v6

    sget v9, Lcom/google/android/material/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 507
    move-object v7, v0

    move-object v8, v6

    sget v9, Lcom/google/android/material/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    .line 510
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 511
    return-void

    .line 463
    .end local v6    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method static synthetic access$400(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method private addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V
    .locals 5
    .param p1    # Lcom/google/android/material/tabs/TabItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "item":Lcom/google/android/material/tabs/TabItem;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    move-object v2, v3

    .line 629
    .local v2, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 630
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 632
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 633
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 635
    :cond_1
    move-object v3, v1

    iget v3, v3, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    if-eqz v3, :cond_2

    .line 636
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 638
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 639
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 641
    :cond_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 642
    return-void
.end method

.method private addTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 7

    .prologue
    .line 1369
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v2, v3

    .line 1370
    .local v2, "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v5

    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/tabs/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1394
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/tabs/TabItem;

    if-eqz v2, :cond_0

    .line 1395
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/tabs/TabItem;

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V

    .line 1399
    return-void

    .line 1397
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private animateToTab(I)V
    .locals 10

    .prologue
    .line 1510
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "newPosition":I
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1511
    .line 1535
    :goto_0
    return-void

    .line 1514
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 1515
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1516
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1519
    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1520
    goto :goto_0

    .line 1523
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getScrollX()I

    move-result v4

    move v2, v4

    .line 1524
    .local v2, "startScrollX":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v4

    move v3, v4

    .line 1526
    .local v3, "targetScrollX":I
    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_3

    .line 1527
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1529
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v2

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1530
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1534
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 1535
    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 7

    .prologue
    .line 1647
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    const/4 v2, 0x0

    move v1, v2

    .line 1648
    .local v1, "paddingStart":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v2, :cond_0

    .line 1650
    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 1652
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1654
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 1663
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 1664
    return-void

    .line 1656
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 1657
    goto :goto_0

    .line 1659
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_0

    .line 1654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 12

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "positionOffset":F
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v9, :cond_4

    .line 1626
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v10, v1

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 1627
    .local v3, "selectedChild":Landroid/view/View;
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1628
    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1629
    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    :goto_0
    move-object v4, v9

    .line 1631
    .local v4, "nextChild":Landroid/view/View;
    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    :goto_1
    move v5, v9

    .line 1632
    .local v5, "selectedWidth":I
    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    :goto_2
    move v6, v9

    .line 1635
    .local v6, "nextWidth":I
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    move v10, v5

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v10

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    move v7, v9

    .line 1637
    .local v7, "scrollBase":I
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    move v10, v2

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v8, v9

    .line 1639
    .local v8, "scrollOffset":I
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_3

    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    :goto_3
    move v0, v9

    .line 1643
    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    .end local v3    # "selectedChild":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "selectedWidth":I
    .end local v6    # "nextWidth":I
    .end local v7    # "scrollBase":I
    .end local v8    # "scrollOffset":I
    :goto_4
    return v0

    .line 1629
    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    .restart local v3    # "selectedChild":Landroid/view/View;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1631
    .restart local v4    # "nextChild":Landroid/view/View;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 1632
    .restart local v5    # "selectedWidth":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 1639
    .restart local v6    # "nextWidth":I
    .restart local v7    # "scrollBase":I
    .restart local v8    # "scrollOffset":I
    :cond_3
    move v9, v7

    move v10, v8

    sub-int/2addr v9, v10

    goto :goto_3

    .line 1643
    .end local v3    # "selectedChild":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "selectedWidth":I
    .end local v6    # "nextWidth":I
    .end local v7    # "scrollBase":I
    .end local v8    # "scrollOffset":I
    :cond_4
    const/4 v9, 0x0

    move v0, v9

    goto :goto_4
.end method

.method private configureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 8

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v2, p2

    .local v2, "position":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1360
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1362
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 1363
    .local v3, "count":I
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 1364
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1363
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1366
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 2704
    move v0, p0

    .local v0, "defaultColor":I
    move v1, p1

    .local v1, "selectedColor":I
    const/4 v5, 0x2

    new-array v5, v5, [[I

    move-object v2, v5

    .line 2705
    .local v2, "states":[[I
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 2706
    .local v3, "colors":[I
    const/4 v5, 0x0

    move v4, v5

    .line 2708
    .local v4, "i":I
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/tabs/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 2709
    move-object v5, v3

    move v6, v4

    move v7, v1

    aput v7, v5, v6

    .line 2710
    add-int/lit8 v4, v4, 0x1

    .line 2713
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/tabs/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 2714
    move-object v5, v3

    move v6, v4

    move v7, v0

    aput v7, v5, v6

    .line 2715
    add-int/lit8 v4, v4, 0x1

    .line 2717
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    .end local v0    # "defaultColor":I
    return-object v0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1402
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 1404
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1405
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method private createTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)Lcom/google/android/material/tabs/TabLayout$TabView;
    .locals 8
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1343
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v3}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$TabView;

    :goto_0
    move-object v2, v3

    .line 1344
    .local v2, "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1345
    new-instance v3, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout$TabView;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    move-object v2, v3

    .line 1347
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1348
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setFocusable(Z)V

    .line 1349
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setMinimumWidth(I)V

    .line 1350
    move-object v3, v1

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1351
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$200(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_1
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0

    .line 1343
    .end local v2    # "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1353
    .restart local v2    # "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    :cond_2
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private dispatchTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1619
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1620
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1619
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1622
    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1608
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1607
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1610
    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1613
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1614
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1613
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1616
    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 6

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 1539
    move-object v1, v0

    new-instance v2, Landroid/animation/ValueAnimator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1540
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1541
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1542
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/tabs/TabLayout$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/tabs/TabLayout$1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1550
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 7
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    .prologue
    .line 2722
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    const/4 v5, 0x0

    move v1, v5

    .line 2723
    .local v1, "hasIconAndText":Z
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 2724
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v4, v5

    .line 2725
    .local v4, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2726
    const/4 v5, 0x1

    move v1, v5

    .line 2730
    .end local v4    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_0
    move v5, v1

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-nez v5, :cond_2

    const/16 v5, 0x48

    :goto_1
    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0

    .line 2723
    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    .restart local v4    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2730
    .end local v4    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_2
    const/16 v5, 0x30

    goto :goto_1
.end method

.method private getTabMinWidth()I
    .locals 3

    .prologue
    .line 2734
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2736
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    move v0, v1

    .line 2739
    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTabScrollRange()I
    .locals 4

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1294
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1293
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method private removeTabViewAt(I)V
    .locals 5

    .prologue
    .line 1500
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v2, v3

    .line 1501
    .local v2, "view":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    .line 1502
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1503
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->reset()V

    .line 1504
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 1506
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->requestLayout()V

    .line 1507
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 8

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "position":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v5

    move v2, v5

    .line 1559
    .local v2, "tabCount":I
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 1560
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 1561
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1562
    .local v4, "child":Landroid/view/View;
    move-object v5, v4

    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1563
    move-object v5, v4

    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1560
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1562
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1563
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1566
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 10
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1193
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "viewPager":Landroidx/viewpager/widget/ViewPager;
    move v2, p2

    .local v2, "autoRefresh":Z
    move v3, p3

    .local v3, "implicitSetup":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v5, :cond_1

    .line 1195
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v5, :cond_0

    .line 1196
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1198
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    if-eqz v5, :cond_1

    .line 1199
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1203
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    if-eqz v5, :cond_2

    .line 1205
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1206
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1209
    :cond_2
    move-object v5, v1

    if-eqz v5, :cond_6

    .line 1210
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1213
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v5, :cond_3

    .line 1214
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    .line 1216
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1217
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1220
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1221
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1223
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v5

    move-object v4, v5

    .line 1224
    .local v4, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 1227
    move-object v5, v0

    move-object v6, v4

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1231
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    if-nez v5, :cond_5

    .line 1232
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    .line 1234
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1235
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1238
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1239
    .line 1246
    .end local v4    # "adapter":Landroidx/viewpager/widget/PagerAdapter;
    :goto_0
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    .line 1247
    return-void

    .line 1242
    :cond_6
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1243
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    goto :goto_0
.end method

.method private updateAllTabs()V
    .locals 5

    .prologue
    .line 1337
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    .local v2, "z":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 1338
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1340
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 1409
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-nez v2, :cond_0

    .line 1410
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1411
    move-object v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1416
    :goto_0
    return-void

    .line 1413
    :cond_0
    move-object v2, v1

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1414
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 675
    :cond_0
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 585
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 7
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v2, p2

    .local v2, "position":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 596
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V
    .locals 8
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v2, p2

    .local v2, "position":I
    move v3, p3

    .local v3, "setSelected":Z
    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 617
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Tab belongs to a different TabLayout."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->configureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 620
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 622
    move v4, v3

    if-eqz v4, :cond_1

    .line 623
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 625
    :cond_1
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 7
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v2, p2

    .local v2, "setSelected":Z
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 606
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1375
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1376
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1380
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1381
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1391
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    .line 1385
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1386
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 2

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 690
    return-void
.end method

.method protected createTabFromPool()Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 5

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    sget-object v2, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v1, v2

    .line 710
    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 711
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;-><init>()V

    move-object v1, v2

    .line 713
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method dpToPx(I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation

    .prologue
    .line 1420
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "dps":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 2748
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 2

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public getTabGravity()I
    .locals 2

    .prologue
    .line 854
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1062
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 2

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method getTabMaxWidth()I
    .locals 2

    .prologue
    .line 2752
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public getTabMode()I
    .locals 2

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mode:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1073
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .locals 2

    .prologue
    .line 1006
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public isInlineLabel()Z
    .locals 2

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 2

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public newTab()Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->createTabFromPool()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    move-object v1, v2

    .line 702
    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 703
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->createTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)Lcom/google/android/material/tabs/TabLayout$TabView;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 704
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 1267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1269
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v2, :cond_0

    .line 1272
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 1273
    .local v1, "vp":Landroid/view/ViewParent;
    move-object v2, v1

    instance-of v2, v2, Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_0

    .line 1276
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1279
    .end local v1    # "vp":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1283
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1285
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v1, :cond_0

    .line 1287
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 1288
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    .line 1290
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1427
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1428
    .local v3, "tabView":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v4, :cond_0

    .line 1429
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$300(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V

    .line 1426
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1433
    .end local v3    # "tabView":Landroid/view/View;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1434
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1440
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v3, v9

    .line 1441
    .local v3, "idealHeight":I
    move v9, v2

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1454
    :goto_0
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v4, v9

    .line 1455
    .local v4, "specWidth":I
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-eqz v9, :cond_0

    .line 1458
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    if-lez v10, :cond_2

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    .line 1461
    :goto_1
    iput v10, v9, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 1465
    :cond_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1467
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1470
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 1471
    .local v5, "child":Landroid/view/View;
    const/4 v9, 0x0

    move v6, v9

    .line 1473
    .local v6, "remeasure":Z
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->mode:I

    packed-switch v9, :pswitch_data_0

    .line 1485
    :goto_2
    move v9, v6

    if-eqz v9, :cond_1

    .line 1487
    move v9, v2

    move-object v10, v0

    .line 1490
    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v5

    .line 1491
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1488
    invoke-static {v9, v10, v11}, Lcom/google/android/material/tabs/TabLayout;->getChildMeasureSpec(III)I

    move-result v9

    move v7, v9

    .line 1492
    .local v7, "childHeightMeasureSpec":I
    move-object v9, v0

    .line 1493
    invoke-virtual {v9}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v8, v9

    .line 1494
    .local v8, "childWidthMeasureSpec":I
    move-object v9, v5

    move v10, v8

    move v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1497
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "remeasure":Z
    .end local v7    # "childHeightMeasureSpec":I
    .end local v8    # "childWidthMeasureSpec":I
    :cond_1
    return-void

    .line 1443
    .end local v4    # "specWidth":I
    :sswitch_0
    move v9, v3

    move v10, v2

    .line 1445
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    .line 1444
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    .line 1446
    goto :goto_0

    .line 1448
    :sswitch_1
    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    .line 1449
    goto :goto_0

    .line 1458
    .restart local v4    # "specWidth":I
    :cond_2
    move v10, v4

    move-object v11, v0

    const/16 v12, 0x38

    .line 1461
    invoke-virtual {v11, v12}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_1

    .line 1477
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "remeasure":Z
    :pswitch_0
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v10

    if-ge v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 1478
    goto :goto_2

    .line 1477
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 1481
    :pswitch_1
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v10

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_4
    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 1441
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 1473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method populateFromPagerAdapter()V
    .locals 7

    .prologue
    .line 1318
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 1320
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_1

    .line 1321
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    move v1, v3

    .line 1322
    .local v1, "adapterCount":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 1323
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 1322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_1

    move v3, v1

    if-lez v3, :cond_1

    .line 1328
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    move v2, v3

    .line 1329
    .local v2, "curItem":I
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1330
    move-object v3, v0

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1334
    .end local v1    # "adapterCount":I
    .end local v2    # "curItem":I
    :cond_1
    return-void
.end method

.method protected releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z
    .locals 4

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    sget-object v2, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0
.end method

.method public removeAllTabs()V
    .locals 5

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_0

    .line 789
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    .line 788
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 792
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/material/tabs/TabLayout$Tab;>;"
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v2, v3

    .line 794
    .local v2, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 795
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->reset()V

    .line 796
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z

    move-result v3

    .line 797
    goto :goto_1

    .line 799
    .end local v2    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 800
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 685
    return-void
.end method

.method public removeTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 6

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 753
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tab does not belong to this TabLayout."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 756
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->removeTabAt(I)V

    .line 757
    return-void
.end method

.method public removeTabAt(I)V
    .locals 11

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v6

    :goto_0
    move v2, v6

    .line 767
    .local v2, "selectedTabPosition":I
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    .line 769
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v3, v6

    .line 770
    .local v3, "removedTab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 771
    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->reset()V

    .line 772
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z

    move-result v6

    .line 775
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 776
    .local v4, "newTabCount":I
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 777
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/tabs/TabLayout$Tab;

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 776
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 766
    .end local v2    # "selectedTabPosition":I
    .end local v3    # "removedTab":Lcom/google/android/material/tabs/TabLayout$Tab;
    .end local v4    # "newTabCount":I
    .end local v5    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 780
    .restart local v2    # "selectedTabPosition":I
    .restart local v3    # "removedTab":Lcom/google/android/material/tabs/TabLayout$Tab;
    .restart local v4    # "newTabCount":I
    .restart local v5    # "i":I
    :cond_2
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_3

    .line 781
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 783
    :cond_3
    return-void

    .line 781
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5

    .prologue
    .line 1569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 1570
    return-void
.end method

.method selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 9

    .prologue
    .line 1573
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v2, p2

    .local v2, "updateIndicator":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v3, v5

    .line 1575
    .local v3, "currentTab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v5, v3

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 1576
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1577
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1578
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    move-object v5, v1

    if-eqz v5, :cond_5

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v5

    :goto_1
    move v4, v5

    .line 1582
    .local v4, "newPosition":I
    move v5, v2

    if-eqz v5, :cond_3

    .line 1583
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    :cond_2
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 1586
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1590
    :goto_2
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1591
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 1596
    :cond_3
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1597
    move-object v5, v3

    if-eqz v5, :cond_4

    .line 1598
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1600
    :cond_4
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 1601
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 1581
    .end local v4    # "newPosition":I
    :cond_5
    const/4 v5, -0x1

    goto :goto_1

    .line 1588
    .restart local v4    # "newPosition":I
    :cond_6
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setInlineLabel(Z)V
    .locals 6

    .prologue
    .line 930
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "inline":Z
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    move v5, v1

    if-eq v4, v5, :cond_2

    .line 931
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 932
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 933
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 934
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v4, :cond_0

    .line 935
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateOrientation()V

    .line 932
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 940
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "inlineResourceId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    .line 952
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    if-eqz v2, :cond_0

    .line 653
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 657
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 658
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 659
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 661
    :cond_1
    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 8
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move v2, p2

    .local v2, "addObserver":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_0

    .line 1300
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1303
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1305
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 1307
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v3, :cond_1

    .line 1308
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1310
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1314
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 1315
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 1553
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1554
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1555
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 9

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "positionOffset":F
    move v3, p3

    .local v3, "updateSelectedText":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 548
    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 10

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "positionOffset":F
    move v3, p3

    .local v3, "updateSelectedText":Z
    move v4, p4

    .local v4, "updateIndicatorPosition":Z
    move v6, v1

    int-to-float v6, v6

    move v7, v2

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v6

    .line 556
    .local v5, "roundedPosition":I
    move v6, v5

    if-ltz v6, :cond_0

    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 557
    .line 575
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    move v6, v4

    if-eqz v6, :cond_2

    .line 562
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 566
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 567
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 569
    :cond_3
    move-object v6, v0

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    .line 572
    move v6, v3

    if-eqz v6, :cond_4

    .line 573
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 575
    :cond_4
    goto :goto_0
.end method

.method public setSelectedTabIndicator(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "tabSelectedIndicatorResourceId":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 1152
    move-object v2, v0

    move-object v3, v0

    .line 1153
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1152
    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    :goto_0
    return-void

    .line 1155
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1134
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "tabSelectedIndicator":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1135
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1136
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1138
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 521
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 4

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "indicatorGravity":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 873
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    .line 874
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 876
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "height":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 534
    return-void
.end method

.method public setTabGravity(I)V
    .locals 4

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 842
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 843
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 845
    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1043
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "iconTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1044
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 1045
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    .line 1047
    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "iconTintResourceId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 1057
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "tabIndicatorFullWidth":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 907
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 908
    return-void
.end method

.method public setTabMode(I)V
    .locals 4

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "mode":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-eq v2, v3, :cond_0

    .line 819
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 820
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 822
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 6
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1087
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    move-object v5, v1

    if-eq v4, v5, :cond_1

    .line 1088
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1089
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1090
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1091
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v4, :cond_0

    .line 1092
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$000(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    .line 1089
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1096
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1108
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "tabRippleColorResourceId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1109
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 6

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "normalColor":I
    move v2, p2

    .local v2, "selectedColor":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 1035
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1016
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1017
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    .line 1019
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 5
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1256
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1257
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 6

    .prologue
    .line 975
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "unboundedRipple":Z
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    move v5, v1

    if-eq v4, v5, :cond_1

    .line 976
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    .line 977
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 978
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 979
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v4, :cond_0

    .line 980
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$000(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    .line 977
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "unboundedRippleResourceId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    .line 996
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 5
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "viewPager":Landroidx/viewpager/widget/ViewPager;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 1169
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 7
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, p1

    .local v1, "viewPager":Landroidx/viewpager/widget/ViewPager;
    move v2, p2

    .local v2, "autoRefresh":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1189
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 1262
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateTabViews(Z)V
    .locals 6

    .prologue
    .line 1667
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout;
    move v1, p1

    .local v1, "requestLayout":Z
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1668
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1669
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1670
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1671
    move v4, v1

    if-eqz v4, :cond_0

    .line 1672
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 1667
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1675
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
