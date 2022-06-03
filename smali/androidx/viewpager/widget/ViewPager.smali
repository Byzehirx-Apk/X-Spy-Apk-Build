.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/ViewPager$LayoutParams;,
        Landroidx/viewpager/widget/ViewPager$PagerObserver;,
        Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/ViewPager$SavedState;,
        Landroidx/viewpager/widget/ViewPager$DecorView;,
        Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/ViewPager$PageTransformer;,
        Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/viewpager/widget/ViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    move-object v2, v0

    new-instance v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 158
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 163
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    move-object v2, v0

    const v3, -0x800001

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 180
    move-object v2, v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 189
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 207
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 234
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 235
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    move-object v2, v0

    new-instance v3, Landroidx/viewpager/widget/ViewPager$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 392
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    move-object v3, v0

    new-instance v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 158
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 163
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    move-object v3, v0

    const v4, -0x800001

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 180
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 189
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 207
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 234
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 235
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    move-object v3, v0

    new-instance v4, Landroidx/viewpager/widget/ViewPager$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 397
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    .line 398
    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V
    .locals 16

    .prologue
    .line 1298
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object/from16 v1, p1

    .local v1, "curItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move/from16 v2, p2

    .local v2, "curIndex":I
    move-object/from16 v3, p3

    .local v3, "oldCurInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v12}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v12

    move v4, v12

    .line 1299
    .local v4, "N":I
    move-object v12, v0

    invoke-direct {v12}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v12

    move v5, v12

    .line 1300
    .local v5, "width":I
    move v12, v5

    if-lez v12, :cond_0

    move-object v12, v0

    iget v12, v12, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    move v13, v5

    int-to-float v13, v13

    div-float/2addr v12, v13

    :goto_0
    move v6, v12

    .line 1302
    .local v6, "marginOffset":F
    move-object v12, v3

    if-eqz v12, :cond_3

    .line 1303
    move-object v12, v3

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v7, v12

    .line 1305
    .local v7, "oldCurPosition":I
    move v12, v7

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_4

    .line 1306
    const/4 v12, 0x0

    move v8, v12

    .line 1307
    .local v8, "itemIndex":I
    const/4 v12, 0x0

    move-object v9, v12

    .line 1308
    .local v9, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v12, v3

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object v13, v3

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    move v13, v6

    add-float/2addr v12, v13

    move v10, v12

    .line 1309
    .local v10, "offset":F
    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v11, v12

    .line 1310
    .local v11, "pos":I
    :goto_1
    move v12, v11

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-gt v12, v13, :cond_3

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 1311
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v12

    .line 1312
    :goto_2
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_1

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_1

    .line 1313
    add-int/lit8 v8, v8, 0x1

    .line 1314
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v12

    goto :goto_2

    .line 1300
    .end local v6    # "marginOffset":F
    .end local v7    # "oldCurPosition":I
    .end local v8    # "itemIndex":I
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "pos":I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1316
    .restart local v6    # "marginOffset":F
    .restart local v7    # "oldCurPosition":I
    .restart local v8    # "itemIndex":I
    .restart local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v10    # "offset":F
    .restart local v11    # "pos":I
    :cond_1
    :goto_3
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_2

    .line 1319
    move v12, v10

    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move v14, v11

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v10, v12

    .line 1320
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1322
    :cond_2
    move-object v12, v9

    move v13, v10

    iput v13, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1323
    move v12, v10

    move-object v13, v9

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v10, v12

    .line 1310
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1325
    .line 1349
    .end local v7    # "oldCurPosition":I
    .end local v8    # "itemIndex":I
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "pos":I
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v7, v12

    .line 1350
    .local v7, "itemCount":I
    move-object v12, v1

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move v8, v12

    .line 1351
    .local v8, "offset":F
    move-object v12, v1

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v9, v12

    .line 1352
    .local v9, "pos":I
    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v13, :cond_7

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    :goto_4
    iput v13, v12, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 1353
    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_8

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object v14, v1

    iget v14, v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    :goto_5
    iput v13, v12, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 1356
    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    .local v10, "i":I
    :goto_6
    move v12, v10

    if-ltz v12, :cond_b

    .line 1357
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v11, v12

    .line 1358
    .local v11, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_7
    move v12, v9

    move-object v13, v11

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_9

    .line 1359
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move v14, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    goto :goto_7

    .line 1325
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "i":I
    .end local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v7, "oldCurPosition":I
    :cond_4
    move v12, v7

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_3

    .line 1326
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v8, v12

    .line 1327
    .local v8, "itemIndex":I
    const/4 v12, 0x0

    move-object v9, v12

    .line 1328
    .local v9, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v12, v3

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move v10, v12

    .line 1329
    .local v10, "offset":F
    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 1330
    .local v11, "pos":I
    :goto_8
    move v12, v11

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-lt v12, v13, :cond_3

    move v12, v8

    if-ltz v12, :cond_3

    .line 1331
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v12

    .line 1332
    :goto_9
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_5

    move v12, v8

    if-lez v12, :cond_5

    .line 1333
    add-int/lit8 v8, v8, -0x1

    .line 1334
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v12

    goto :goto_9

    .line 1336
    :cond_5
    :goto_a
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_6

    .line 1339
    move v12, v10

    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move v14, v11

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1340
    add-int/lit8 v11, v11, -0x1

    goto :goto_a

    .line 1342
    :cond_6
    move v12, v10

    move-object v13, v9

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1343
    move-object v12, v9

    move v13, v10

    iput v13, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1330
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1352
    .end local v10    # "offset":F
    .end local v11    # "pos":I
    .local v7, "itemCount":I
    .local v8, "offset":F
    .local v9, "pos":I
    :cond_7
    const v13, -0x800001

    goto/16 :goto_4

    .line 1353
    :cond_8
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    goto/16 :goto_5

    .line 1361
    .local v10, "i":I
    .local v11, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_9
    move v12, v8

    move-object v13, v11

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    .line 1362
    move-object v12, v11

    move v13, v8

    iput v13, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1363
    move-object v12, v11

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    move-object v12, v0

    move v13, v8

    iput v13, v12, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 1356
    :cond_a
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_6

    .line 1365
    .end local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_b
    move-object v12, v1

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object v13, v1

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    move v13, v6

    add-float/2addr v12, v13

    move v8, v12

    .line 1366
    move-object v12, v1

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v9, v12

    .line 1368
    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v10, v12

    :goto_b
    move v12, v10

    move v13, v7

    if-ge v12, v13, :cond_e

    .line 1369
    move-object v12, v0

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v11, v12

    .line 1370
    .restart local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_c
    move v12, v9

    move-object v13, v11

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_c

    .line 1371
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move v14, v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v8, v12

    goto :goto_c

    .line 1373
    :cond_c
    move-object v12, v11

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_d

    .line 1374
    move-object v12, v0

    move v13, v8

    move-object v14, v11

    iget v14, v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    iput v13, v12, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 1376
    :cond_d
    move-object v12, v11

    move v13, v8

    iput v13, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1377
    move v12, v8

    move-object v13, v11

    iget v13, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v8, v12

    .line 1368
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1380
    .end local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_e
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1381
    return-void
.end method

.method private completeScroll(Z)V
    .locals 11

    .prologue
    .line 1974
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "postEvents":Z
    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v2, v8

    .line 1975
    .local v2, "needPopulate":Z
    move v8, v2

    if-eqz v8, :cond_1

    .line 1977
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1978
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    move v3, v8

    .line 1979
    .local v3, "wasScrolling":Z
    move v8, v3

    if-eqz v8, :cond_1

    .line 1980
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v8

    move v4, v8

    .line 1982
    .local v4, "oldX":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v8

    move v5, v8

    .line 1983
    .local v5, "oldY":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    move v6, v8

    .line 1984
    .local v6, "x":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    move v7, v8

    .line 1985
    .local v7, "y":I
    move v8, v4

    move v9, v6

    if-ne v8, v9, :cond_0

    move v8, v5

    move v9, v7

    if-eq v8, v9, :cond_1

    .line 1986
    :cond_0
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1987
    move v8, v6

    move v9, v4

    if-eq v8, v9, :cond_1

    .line 1988
    move-object v8, v0

    move v9, v6

    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v8

    .line 1993
    .end local v3    # "wasScrolling":Z
    .end local v4    # "oldX":I
    .end local v5    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 1994
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_2
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 1995
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v4, v8

    .line 1996
    .local v4, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1997
    const/4 v8, 0x1

    move v2, v8

    .line 1998
    move-object v8, v4

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1994
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1974
    .end local v2    # "needPopulate":Z
    .end local v3    # "i":I
    .end local v4    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1978
    .restart local v2    # "needPopulate":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2001
    .restart local v3    # "i":I
    :cond_5
    move v8, v2

    if-eqz v8, :cond_6

    .line 2002
    move v8, v1

    if-eqz v8, :cond_7

    .line 2003
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2008
    :cond_6
    :goto_3
    return-void

    .line 2005
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method private determineTargetPage(IFII)I
    .locals 11

    .prologue
    .line 2406
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "currentPage":I
    move v2, p2

    .local v2, "pageOffset":F
    move v3, p3

    .local v3, "velocity":I
    move v4, p4

    .local v4, "deltaX":I
    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    if-le v8, v9, :cond_2

    move v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    if-le v8, v9, :cond_2

    .line 2407
    move v8, v3

    if-lez v8, :cond_1

    move v8, v1

    :goto_0
    move v5, v8

    .line 2413
    .local v5, "targetPage":I
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2414
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v6, v8

    .line 2415
    .local v6, "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v7, v8

    .line 2418
    .local v7, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v8, v6

    iget v8, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 2421
    .end local v6    # "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    move v8, v5

    move v0, v8

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .line 2407
    .end local v5    # "targetPage":I
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2409
    :cond_2
    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt v8, v9, :cond_3

    const v8, 0x3ecccccd    # 0.4f

    :goto_2
    move v6, v8

    .line 2410
    .local v6, "truncator":F
    move v8, v1

    move v9, v2

    move v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    move v5, v8

    .restart local v5    # "targetPage":I
    goto :goto_1

    .line 2409
    .end local v5    # "targetPage":I
    .end local v6    # "truncator":F
    :cond_3
    const v8, 0x3f19999a    # 0.6f

    goto :goto_2
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 11

    .prologue
    .line 1923
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "offset":F
    move v3, p3

    .local v3, "offsetPixels":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v7, :cond_0

    .line 1924
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1926
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 1927
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    .local v5, "z":I
    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 1928
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-object v6, v7

    .line 1929
    .local v6, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 1930
    move-object v7, v6

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1927
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1934
    .end local v4    # "i":I
    .end local v5    # "z":I
    .end local v6    # "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v7, :cond_3

    .line 1935
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1937
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 7

    .prologue
    .line 1940
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "position":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_0

    .line 1941
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1943
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1944
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "z":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 1945
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-object v4, v5

    .line 1946
    .local v4, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1947
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1944
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1951
    .end local v2    # "i":I
    .end local v3    # "z":I
    .end local v4    # "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_3

    .line 1952
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1954
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 7

    .prologue
    .line 1957
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "state":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_0

    .line 1958
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1960
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1961
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "z":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 1962
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-object v4, v5

    .line 1963
    .local v4, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1964
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1961
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1968
    .end local v2    # "i":I
    .end local v3    # "z":I
    .end local v4    # "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_3

    .line 1969
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1971
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 8

    .prologue
    .line 2015
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "enable":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v5

    move v2, v5

    .line 2016
    .local v2, "childCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 2017
    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    :goto_1
    move v4, v5

    .line 2019
    .local v4, "layerType":I
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2016
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2017
    .end local v4    # "layerType":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 2021
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    .line 2659
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2660
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2662
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 2663
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 2664
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2666
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 11

    .prologue
    .line 2859
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "outRect":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 2860
    new-instance v5, Landroid/graphics/Rect;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v5

    .line 2862
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 2863
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2864
    move-object v5, v1

    move-object v0, v5

    .line 2881
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return-object v0

    .line 2866
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2867
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2868
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2869
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2871
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 2872
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_1
    move-object v5, v3

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 2873
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    move-object v4, v5

    .line 2874
    .local v4, "group":Landroid/view/ViewGroup;
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2875
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2876
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2877
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2879
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 2880
    goto :goto_1

    .line 2881
    .end local v4    # "group":Landroid/view/ViewGroup;
    :cond_2
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 3

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 18

    .prologue
    .line 2363
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v15, v1

    invoke-direct {v15}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v15

    move v2, v15

    .line 2364
    .local v2, "width":I
    move v15, v2

    if-lez v15, :cond_3

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    :goto_0
    move v3, v15

    .line 2365
    .local v3, "scrollOffset":F
    move v15, v2

    if-lez v15, :cond_4

    move-object v15, v1

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    move/from16 v16, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    :goto_1
    move v4, v15

    .line 2366
    .local v4, "marginOffset":F
    const/4 v15, -0x1

    move v5, v15

    .line 2367
    .local v5, "lastPos":I
    const/4 v15, 0x0

    move v6, v15

    .line 2368
    .local v6, "lastOffset":F
    const/4 v15, 0x0

    move v7, v15

    .line 2369
    .local v7, "lastWidth":F
    const/4 v15, 0x1

    move v8, v15

    .line 2371
    .local v8, "first":Z
    const/4 v15, 0x0

    move-object v9, v15

    .line 2372
    .local v9, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    const/4 v15, 0x0

    move v10, v15

    .local v10, "i":I
    :goto_2
    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 2373
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v11, v15

    .line 2375
    .local v11, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move v15, v8

    if-nez v15, :cond_0

    move-object v15, v11

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 2377
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v11, v15

    .line 2378
    move-object v15, v11

    move/from16 v16, v6

    move/from16 v17, v7

    add-float v16, v16, v17

    move/from16 v17, v4

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2379
    move-object v15, v11

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2380
    move-object v15, v11

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2381
    add-int/lit8 v10, v10, -0x1

    .line 2383
    :cond_0
    move-object v15, v11

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move v12, v15

    .line 2385
    .local v12, "offset":F
    move v15, v12

    move v13, v15

    .line 2386
    .local v13, "leftBound":F
    move v15, v12

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v4

    add-float v15, v15, v16

    move v14, v15

    .line 2387
    .local v14, "rightBound":F
    move v15, v8

    if-nez v15, :cond_1

    move v15, v3

    move/from16 v16, v13

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_5

    .line 2388
    :cond_1
    move v15, v3

    move/from16 v16, v14

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_2

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 2389
    :cond_2
    move-object v15, v11

    move-object v1, v15

    .line 2401
    .end local v1    # "this":Landroidx/viewpager/widget/ViewPager;
    .end local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v12    # "offset":F
    .end local v13    # "leftBound":F
    .end local v14    # "rightBound":F
    :goto_3
    return-object v1

    .line 2364
    .end local v3    # "scrollOffset":F
    .end local v4    # "marginOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastOffset":F
    .end local v7    # "lastWidth":F
    .end local v8    # "first":Z
    .end local v9    # "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "i":I
    .restart local v1    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2365
    .restart local v3    # "scrollOffset":F
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 2392
    .restart local v4    # "marginOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastOffset":F
    .restart local v7    # "lastWidth":F
    .restart local v8    # "first":Z
    .restart local v9    # "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v10    # "i":I
    .restart local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v12    # "offset":F
    .restart local v13    # "leftBound":F
    .restart local v14    # "rightBound":F
    :cond_5
    move-object v15, v9

    move-object v1, v15

    goto :goto_3

    .line 2394
    :cond_6
    const/4 v15, 0x0

    move v8, v15

    .line 2395
    move-object v15, v11

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v5, v15

    .line 2396
    move v15, v12

    move v6, v15

    .line 2397
    move-object v15, v11

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move v7, v15

    .line 2398
    move-object v15, v11

    move-object v9, v15

    .line 2372
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2401
    .end local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v12    # "offset":F
    .end local v13    # "leftBound":F
    .end local v14    # "rightBound":F
    :cond_7
    move-object v15, v9

    move-object v1, v15

    goto :goto_3
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1498
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1499
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v1

    const-class v3, Landroidx/viewpager/widget/ViewPager$DecorView;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "view":Landroid/view/View;
    return v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isGutterDrag(FF)Z
    .locals 6

    .prologue
    .line 2011
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "dx":F
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    :cond_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 2644
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v2, v5

    .line 2645
    .local v2, "pointerIndex":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 2646
    .local v3, "pointerId":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 2649
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 2650
    .local v4, "newPointerIndex":I
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v5, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2651
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2652
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 2653
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 2656
    .end local v4    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2649
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 14

    .prologue
    .line 1818
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "xpos":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1819
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v9, :cond_0

    .line 1822
    const/4 v9, 0x0

    move v0, v9

    .line 1847
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v0

    .line 1824
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1825
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1826
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-nez v9, :cond_1

    .line 1827
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "onPageScrolled did not call superclass implementation"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1830
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1832
    :cond_2
    move-object v9, v0

    invoke-direct {v9}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v9

    move-object v2, v9

    .line 1833
    .local v2, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v9, v0

    invoke-direct {v9}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v9

    move v3, v9

    .line 1834
    .local v3, "width":I
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    add-int/2addr v9, v10

    move v4, v9

    .line 1835
    .local v4, "widthWithMargin":I
    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v9, v9

    move v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v5, v9

    .line 1836
    .local v5, "marginOffset":F
    move-object v9, v2

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v6, v9

    .line 1837
    .local v6, "currentPage":I
    move v9, v1

    int-to-float v9, v9

    move v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move v11, v5

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    move v7, v9

    .line 1839
    .local v7, "pageOffset":F
    move v9, v7

    move v10, v4

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v8, v9

    .line 1841
    .local v8, "offsetPixels":I
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1842
    move-object v9, v0

    move v10, v6

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1843
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-nez v9, :cond_3

    .line 1844
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "onPageScrolled did not call superclass implementation"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1847
    :cond_3
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method private performDrag(F)Z
    .locals 20

    .prologue
    .line 2310
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v2, p1

    .local v2, "x":F
    const/4 v15, 0x0

    move v3, v15

    .line 2312
    .local v3, "needsInvalidate":Z
    move-object v15, v1

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v2

    sub-float v15, v15, v16

    move v4, v15

    .line 2313
    .local v4, "deltaX":F
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v0, v16

    iput v0, v15, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2315
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v15

    int-to-float v15, v15

    move v5, v15

    .line 2316
    .local v5, "oldScrollX":F
    move v15, v5

    move/from16 v16, v4

    add-float v15, v15, v16

    move v6, v15

    .line 2317
    .local v6, "scrollX":F
    move-object v15, v1

    invoke-direct {v15}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v15

    move v7, v15

    .line 2319
    .local v7, "width":I
    move v15, v7

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v8, v15

    .line 2320
    .local v8, "leftBound":F
    move v15, v7

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v9, v15

    .line 2321
    .local v9, "rightBound":F
    const/4 v15, 0x1

    move v10, v15

    .line 2322
    .local v10, "leftAbsolute":Z
    const/4 v15, 0x1

    move v11, v15

    .line 2324
    .local v11, "rightAbsolute":Z
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v12, v15

    .line 2325
    .local v12, "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v13, v15

    .line 2326
    .local v13, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v15, v12

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v15, :cond_0

    .line 2327
    const/4 v15, 0x0

    move v10, v15

    .line 2328
    move-object v15, v12

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v16, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v8, v15

    .line 2330
    :cond_0
    move-object v15, v13

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 2331
    const/4 v15, 0x0

    move v11, v15

    .line 2332
    move-object v15, v13

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v16, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v9, v15

    .line 2335
    :cond_1
    move v15, v6

    move/from16 v16, v8

    cmpg-float v15, v15, v16

    if-gez v15, :cond_4

    .line 2336
    move v15, v10

    if-eqz v15, :cond_2

    .line 2337
    move v15, v8

    move/from16 v16, v6

    sub-float v15, v15, v16

    move v14, v15

    .line 2338
    .local v14, "over":F
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2339
    const/4 v15, 0x1

    move v3, v15

    .line 2341
    .end local v14    # "over":F
    :cond_2
    move v15, v8

    move v6, v15

    .line 2351
    :cond_3
    :goto_0
    move-object v15, v1

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v6

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2352
    move-object v15, v1

    move/from16 v16, v6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2353
    move-object v15, v1

    move/from16 v16, v6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v15

    .line 2355
    move v15, v3

    move v1, v15

    .end local v1    # "this":Landroidx/viewpager/widget/ViewPager;
    return v1

    .line 2342
    .restart local v1    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_4
    move v15, v6

    move/from16 v16, v9

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 2343
    move v15, v11

    if-eqz v15, :cond_5

    .line 2344
    move v15, v6

    move/from16 v16, v9

    sub-float v15, v15, v16

    move v14, v15

    .line 2345
    .restart local v14    # "over":F
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2346
    const/4 v15, 0x1

    move v3, v15

    .line 2348
    .end local v14    # "over":F
    :cond_5
    move v15, v9

    move v6, v15

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 13

    .prologue
    .line 1655
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "oldWidth":I
    move/from16 v3, p3

    .local v3, "margin":I
    move/from16 v4, p4

    .local v4, "oldMargin":I
    move v10, v2

    if-lez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1656
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1657
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v11

    move-object v12, v0

    invoke-direct {v12}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1678
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    move v10, v1

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move v5, v10

    .line 1660
    .local v5, "widthWithMargin":I
    move v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v4

    add-int/2addr v10, v11

    move v6, v10

    .line 1662
    .local v6, "oldWidthWithMargin":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v10

    move v7, v10

    .line 1663
    .local v7, "xpos":I
    move v10, v7

    int-to-float v10, v10

    move v11, v6

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v8, v10

    .line 1664
    .local v8, "pageOffset":F
    move v10, v8

    move v11, v5

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v9, v10

    .line 1666
    .local v9, "newOffsetPixels":I
    move-object v10, v0

    move v11, v9

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1667
    goto :goto_0

    .line 1669
    .end local v5    # "widthWithMargin":I
    .end local v6    # "oldWidthWithMargin":I
    .end local v7    # "xpos":I
    .end local v8    # "pageOffset":F
    .end local v9    # "newOffsetPixels":I
    :cond_2
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    move-object v5, v10

    .line 1670
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v10, v5

    if-eqz v10, :cond_3

    move-object v10, v5

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    :goto_1
    move v6, v10

    .line 1671
    .local v6, "scrollOffset":F
    move v10, v6

    move v11, v1

    move-object v12, v0

    .line 1672
    invoke-virtual {v12}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    .line 1673
    .local v7, "scrollPos":I
    move v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 1674
    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 1675
    move-object v10, v0

    move v11, v7

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1670
    .end local v6    # "scrollOffset":F
    .end local v7    # "scrollPos":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 6

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 556
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 557
    .local v2, "child":Landroid/view/View;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v3, v4

    .line 558
    .local v3, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_0

    .line 559
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->removeViewAt(I)V

    .line 560
    add-int/lit8 v1, v1, -0x1

    .line 555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 5

    .prologue
    .line 2303
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "disallowIntercept":Z
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 2304
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2305
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2307
    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 4

    .prologue
    .line 2294
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2295
    move-object v2, v0

    invoke-direct {v2}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    .line 2296
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2298
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 2299
    .local v1, "needsInvalidate":Z
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .line 2298
    .end local v1    # "needsInvalidate":Z
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private scrollToItem(IZIZ)V
    .locals 12

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "item":I
    move v2, p2

    .local v2, "smoothScroll":Z
    move v3, p3

    .local v3, "velocity":I
    move/from16 v4, p4

    .local v4, "dispatchSelected":Z
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v8

    move-object v5, v8

    .line 677
    .local v5, "curInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    move v6, v8

    .line 678
    .local v6, "destX":I
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 679
    move-object v8, v0

    invoke-direct {v8}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v8

    move v7, v8

    .line 680
    .local v7, "width":I
    move v8, v7

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    move-object v10, v5

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 681
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 680
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 683
    .end local v7    # "width":I
    :cond_0
    move v8, v2

    if-eqz v8, :cond_2

    .line 684
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x0

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    .line 685
    move v8, v4

    if-eqz v8, :cond_1

    .line 686
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 689
    :cond_2
    move v8, v4

    if-eqz v8, :cond_3

    .line 690
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 692
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 693
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 694
    move-object v8, v0

    move v9, v6

    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v8

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 2669
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2670
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2681
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 8

    .prologue
    .line 1282
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v4, v0

    iget v4, v4, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    if-eqz v4, :cond_2

    .line 1283
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1284
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1288
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1289
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1290
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1291
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1286
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1293
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v5, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1295
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2905
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v2, p2

    .local v2, "direction":I
    move/from16 v3, p3

    .local v3, "focusableMode":I
    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v4, v9

    .line 2907
    .local v4, "focusableCount":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->getDescendantFocusability()I

    move-result v9

    move v5, v9

    .line 2909
    .local v5, "descendantFocusability":I
    move v9, v5

    const/high16 v10, 0x60000

    if-eq v9, v10, :cond_1

    .line 2910
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 2911
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2912
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 2913
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v9

    move-object v8, v9

    .line 2914
    .local v8, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_0

    .line 2915
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2910
    .end local v8    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2925
    .end local v6    # "i":I
    .end local v7    # "child":Landroid/view/View;
    :cond_1
    move v9, v5

    const/high16 v10, 0x40000

    if-ne v9, v10, :cond_2

    move v9, v4

    move-object v10, v1

    .line 2926
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 2929
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2930
    .line 2940
    :goto_1
    return-void

    .line 2932
    :cond_3
    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move-object v9, v0

    .line 2933
    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->isInTouchMode()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2934
    goto :goto_1

    .line 2936
    :cond_4
    move-object v9, v1

    if-eqz v9, :cond_5

    .line 2937
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2940
    :cond_5
    goto :goto_1
.end method

.method addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 9

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "index":I
    new-instance v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    move-object v3, v4

    .line 1009
    .local v3, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v4, v3

    move v5, v1

    iput v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1010
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v6, v0

    move v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1011
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1012
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 1013
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1017
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0

    .line 1015
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 6
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "listener":Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 582
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 584
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 6
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 724
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 726
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 727
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2950
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2951
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2952
    .local v3, "child":Landroid/view/View;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2953
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    move-object v4, v5

    .line 2954
    .local v4, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2955
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2950
    .end local v4    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2959
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 10

    .prologue
    .line 1472
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1473
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 1475
    :cond_0
    move-object v5, v3

    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v4, v5

    .line 1477
    .local v4, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v5, v4

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget-boolean v6, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move-object v7, v1

    invoke-static {v7}, Landroidx/viewpager/widget/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1478
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v5, :cond_2

    .line 1479
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_1

    .line 1480
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Cannot add pager decor view during layout"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1482
    :cond_1
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1483
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    .line 1495
    :goto_0
    return-void

    .line 1485
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 12

    .prologue
    .line 2793
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "direction":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v2, v7

    .line 2794
    .local v2, "currentFocused":Landroid/view/View;
    move-object v7, v2

    move-object v8, v0

    if-ne v7, v8, :cond_3

    .line 2795
    const/4 v7, 0x0

    move-object v2, v7

    .line 2819
    :cond_0
    :goto_0
    const/4 v7, 0x0

    move v3, v7

    .line 2821
    .local v3, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    move-object v8, v0

    move-object v9, v2

    move v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2823
    .local v4, "nextFocused":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_a

    move-object v7, v4

    move-object v8, v2

    if-eq v7, v8, :cond_a

    .line 2824
    move v7, v1

    const/16 v8, 0x11

    if-ne v7, v8, :cond_8

    .line 2827
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v5, v7

    .line 2828
    .local v5, "nextLeft":I
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v6, v7

    .line 2829
    .local v6, "currLeft":I
    move-object v7, v2

    if-eqz v7, :cond_7

    move v7, v5

    move v8, v6

    if-lt v7, v8, :cond_7

    .line 2830
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v7

    move v3, v7

    .line 2834
    .line 2852
    .end local v5    # "nextLeft":I
    .end local v6    # "currLeft":I
    :cond_1
    :goto_1
    move v7, v3

    if-eqz v7, :cond_2

    .line 2853
    move-object v7, v0

    move v8, v1

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/ViewPager;->playSoundEffect(I)V

    .line 2855
    :cond_2
    move v7, v3

    move v0, v7

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .line 2796
    .end local v3    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_3
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2797
    const/4 v7, 0x0

    move v3, v7

    .line 2798
    .local v3, "isChild":Z
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v4, v7

    .local v4, "parent":Landroid/view/ViewParent;
    :goto_2
    move-object v7, v4

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    .line 2800
    move-object v7, v4

    move-object v8, v0

    if-ne v7, v8, :cond_5

    .line 2801
    const/4 v7, 0x1

    move v3, v7

    .line 2805
    :cond_4
    move v7, v3

    if-nez v7, :cond_0

    .line 2807
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 2808
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2809
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    .local v5, "parent":Landroid/view/ViewParent;
    :goto_3
    move-object v7, v5

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 2811
    move-object v7, v4

    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2810
    move-object v7, v5

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    goto :goto_3

    .line 2799
    .end local v5    # "parent":Landroid/view/ViewParent;
    .local v4, "parent":Landroid/view/ViewParent;
    :cond_5
    move-object v7, v4

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v4, v7

    goto :goto_2

    .line 2813
    .local v4, "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "parent":Landroid/view/ViewParent;
    :cond_6
    const-string/jumbo v7, "ViewPager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    .line 2814
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2813
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2815
    const/4 v7, 0x0

    move-object v2, v7

    goto/16 :goto_0

    .line 2832
    .local v3, "handled":Z
    .local v4, "nextFocused":Landroid/view/View;
    .local v5, "nextLeft":I
    .restart local v6    # "currLeft":I
    :cond_7
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    move-result v7

    move v3, v7

    goto/16 :goto_1

    .line 2834
    .end local v5    # "nextLeft":I
    .end local v6    # "currLeft":I
    :cond_8
    move v7, v1

    const/16 v8, 0x42

    if-ne v7, v8, :cond_1

    .line 2837
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v5, v7

    .line 2838
    .restart local v5    # "nextLeft":I
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v6, v7

    .line 2839
    .restart local v6    # "currLeft":I
    move-object v7, v2

    if-eqz v7, :cond_9

    move v7, v5

    move v8, v6

    if-gt v7, v8, :cond_9

    .line 2840
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v7

    move v3, v7

    .line 2844
    :goto_4
    goto/16 :goto_1

    .line 2842
    :cond_9
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    move-result v7

    move v3, v7

    goto :goto_4

    .line 2845
    .end local v5    # "nextLeft":I
    .end local v6    # "currLeft":I
    :cond_a
    move v7, v1

    const/16 v8, 0x11

    if-eq v7, v8, :cond_b

    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 2847
    :cond_b
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v7

    move v3, v7

    goto/16 :goto_1

    .line 2848
    :cond_c
    move v7, v1

    const/16 v8, 0x42

    if-eq v7, v8, :cond_d

    move v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2850
    :cond_d
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v7

    move v3, v7

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 14

    .prologue
    .line 2528
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_0

    .line 2529
    const/4 v4, 0x0

    move v0, v4

    .line 2544
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .local v1, "time":J
    .local v3, "ev":Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 2531
    .end local v1    # "time":J
    .end local v3    # "ev":Landroid/view/MotionEvent;
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 2532
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2533
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    move-object v12, v5

    move v13, v6

    move v5, v13

    move-object v6, v12

    move v7, v13

    iput v7, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 2534
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 2535
    move-object v4, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v4, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2539
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v1, v4

    .line 2540
    .restart local v1    # "time":J
    move-wide v4, v1

    move-wide v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v3, v4

    .line 2541
    .restart local v3    # "ev":Landroid/view/MotionEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2542
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 2543
    move-object v4, v0

    move-wide v5, v1

    iput-wide v5, v4, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    .line 2544
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2537
    .end local v1    # "time":J
    .end local v3    # "ev":Landroid/view/MotionEvent;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 19

    .prologue
    .line 2719
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object/from16 v1, p1

    .local v1, "v":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "checkV":Z
    move/from16 v3, p3

    .local v3, "dx":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move-object v12, v1

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_1

    .line 2720
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    move-object v6, v12

    .line 2721
    .local v6, "group":Landroid/view/ViewGroup;
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    move-result v12

    move v7, v12

    .line 2722
    .local v7, "scrollX":I
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    move v8, v12

    .line 2723
    .local v8, "scrollY":I
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v9, v12

    .line 2725
    .local v9, "count":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    .local v10, "i":I
    :goto_0
    move v12, v10

    if-ltz v12, :cond_1

    .line 2728
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 2729
    .local v11, "child":Landroid/view/View;
    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-ge v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    .line 2730
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-ge v12, v13, :cond_0

    move-object v12, v0

    move-object v13, v11

    const/4 v14, 0x1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v7

    add-int v16, v16, v17

    move-object/from16 v17, v11

    .line 2731
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v17, v5

    move/from16 v18, v8

    add-int v17, v17, v18

    move-object/from16 v18, v11

    .line 2732
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    .line 2731
    invoke-virtual/range {v12 .. v17}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2733
    const/4 v12, 0x1

    move v0, v12

    .line 2738
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v11    # "child":Landroid/view/View;
    :goto_1
    return v0

    .line 2725
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .restart local v6    # "group":Landroid/view/ViewGroup;
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    .restart local v9    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 2738
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v11    # "child":Landroid/view/View;
    :cond_1
    move v12, v2

    if-eqz v12, :cond_2

    move-object v12, v1

    move v13, v3

    neg-int v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    move v0, v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public canScrollHorizontally(I)Z
    .locals 7

    .prologue
    .line 2692
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "direction":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v4, :cond_0

    .line 2693
    const/4 v4, 0x0

    move v0, v4

    .line 2703
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v0

    .line 2696
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v4

    move v2, v4

    .line 2697
    .local v2, "width":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    move v3, v4

    .line 2698
    .local v3, "scrollX":I
    move v4, v1

    if-gez v4, :cond_2

    .line 2699
    move v4, v3

    move v5, v2

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2700
    :cond_2
    move v4, v1

    if-lez v4, :cond_4

    .line 2701
    move v4, v3

    move v5, v2

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2703
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 3029
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearOnPageChangeListeners()V
    .locals 2

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 746
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 748
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 1793
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 1794
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1795
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v5

    move v1, v5

    .line 1796
    .local v1, "oldX":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v5

    move v2, v5

    .line 1797
    .local v2, "oldY":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    move v3, v5

    .line 1798
    .local v3, "x":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    move v4, v5

    .line 1800
    .local v4, "y":I
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_0

    move v5, v2

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 1801
    :cond_0
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1802
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1803
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1804
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1809
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1810
    .line 1815
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_0
    return-void

    .line 1814
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 1815
    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 13

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v9}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v9

    move v1, v9

    .line 1024
    .local v1, "adapterCount":I
    move-object v9, v0

    move v10, v1

    iput v10, v9, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 1025
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v1

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v2, v9

    .line 1027
    .local v2, "needPopulate":Z
    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v3, v9

    .line 1029
    .local v3, "newCurrItem":I
    const/4 v9, 0x0

    move v4, v9

    .line 1030
    .local v4, "isUpdating":Z
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 1031
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v6, v9

    .line 1032
    .local v6, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v10, v6

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    move v7, v9

    .line 1034
    .local v7, "newPos":I
    move v9, v7

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1035
    .line 1030
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1026
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    .end local v4    # "isUpdating":Z
    .end local v5    # "i":I
    .end local v6    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v7    # "newPos":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1038
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    .restart local v4    # "isUpdating":Z
    .restart local v5    # "i":I
    .restart local v6    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v7    # "newPos":I
    :cond_2
    move v9, v7

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    .line 1039
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 1040
    add-int/lit8 v5, v5, -0x1

    .line 1042
    move v9, v4

    if-nez v9, :cond_3

    .line 1043
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1044
    const/4 v9, 0x1

    move v4, v9

    .line 1047
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v10, v0

    move-object v11, v6

    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v12, v6

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1048
    const/4 v9, 0x1

    move v2, v9

    .line 1050
    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move-object v10, v6

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_0

    .line 1052
    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v3, v9

    .line 1053
    const/4 v9, 0x1

    move v2, v9

    goto :goto_2

    .line 1058
    :cond_4
    move-object v9, v6

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v10, v7

    if-eq v9, v10, :cond_0

    .line 1059
    move-object v9, v6

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_5

    .line 1061
    move v9, v7

    move v3, v9

    .line 1064
    :cond_5
    move-object v9, v6

    move v10, v7

    iput v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1065
    const/4 v9, 0x1

    move v2, v9

    goto :goto_2

    .line 1069
    .end local v6    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v7    # "newPos":I
    :cond_6
    move v9, v4

    if-eqz v9, :cond_7

    .line 1070
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v10, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1075
    move v9, v2

    if-eqz v9, :cond_a

    .line 1077
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v9

    move v5, v9

    .line 1078
    .local v5, "childCount":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_3
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_9

    .line 1079
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1080
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v8, v9

    .line 1081
    .local v8, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object v9, v8

    iget-boolean v9, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_8

    .line 1082
    move-object v9, v8

    const/4 v10, 0x0

    iput v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1078
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1086
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    :cond_9
    move-object v9, v0

    move v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1087
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 1089
    .end local v5    # "childCount":I
    .end local v6    # "i":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 2744
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .prologue
    .line 2997
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_0

    .line 2998
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6

    move v0, v6

    .line 3014
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v0

    .line 3002
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 3003
    .local v2, "childCount":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 3004
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 3005
    .local v4, "child":Landroid/view/View;
    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 3006
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v6

    move-object v5, v6

    .line 3007
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    iget v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v1

    .line 3008
    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3009
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 3003
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3014
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "f":F
    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move v1, v2

    .line 928
    move v2, v1

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    move v1, v2

    .line 929
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 2426
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2427
    const/4 v7, 0x0

    move v2, v7

    .line 2429
    .local v2, "needsInvalidate":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getOverScrollMode()I

    move-result v7

    move v3, v7

    .line 2430
    .local v3, "overScrollMode":I
    move v7, v3

    if-eqz v7, :cond_0

    move v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2432
    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 2433
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2434
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 2435
    .local v4, "restoreCount":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 2436
    .local v5, "height":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v7

    move v6, v7

    .line 2438
    .local v6, "width":I
    move-object v7, v1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    move-object v7, v1

    move v8, v5

    neg-int v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    move v10, v6

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2441
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    or-int/2addr v7, v8

    move v2, v7

    .line 2442
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2444
    .end local v4    # "restoreCount":I
    .end local v5    # "height":I
    .end local v6    # "width":I
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2445
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 2446
    .restart local v4    # "restoreCount":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v7

    move v5, v7

    .line 2447
    .local v5, "width":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 2449
    .local v6, "height":I
    move-object v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2450
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    neg-float v9, v9

    move v10, v5

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2451
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move v8, v6

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2452
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    or-int/2addr v7, v8

    move v2, v7

    .line 2453
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2454
    .line 2460
    .end local v4    # "restoreCount":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_2
    :goto_0
    move v7, v2

    if-eqz v7, :cond_3

    .line 2462
    move-object v7, v0

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2464
    :cond_3
    return-void

    .line 2456
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 2457
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    .line 917
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 918
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 920
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 16

    .prologue
    .line 2554
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-nez v10, :cond_0

    .line 2555
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2558
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v10, :cond_1

    .line 2559
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v1, v10

    .line 2560
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    move-object v10, v1

    const/16 v11, 0x3e8

    move-object v12, v0

    iget v12, v12, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2561
    move-object v10, v1

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    float-to-int v10, v10

    move v2, v10

    .line 2562
    .local v2, "initialVelocity":I
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2563
    move-object v10, v0

    invoke-direct {v10}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v10

    move v3, v10

    .line 2564
    .local v3, "width":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v10

    move v4, v10

    .line 2565
    .local v4, "scrollX":I
    move-object v10, v0

    invoke-direct {v10}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    move-object v5, v10

    .line 2566
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v10, v5

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v6, v10

    .line 2567
    .local v6, "currentPage":I
    move v10, v4

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v10, v11

    move v7, v10

    .line 2568
    .local v7, "pageOffset":F
    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 2569
    .local v8, "totalDelta":I
    move-object v10, v0

    move v11, v6

    move v12, v7

    move v13, v2

    move v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v10

    move v9, v10

    .line 2571
    .local v9, "nextPage":I
    move-object v10, v0

    move v11, v9

    const/4 v12, 0x1

    const/4 v13, 0x1

    move v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2573
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v2    # "initialVelocity":I
    .end local v3    # "width":I
    .end local v4    # "scrollX":I
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "currentPage":I
    .end local v7    # "pageOffset":F
    .end local v8    # "totalDelta":I
    .end local v9    # "nextPage":I
    :cond_1
    move-object v10, v0

    invoke-direct {v10}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    .line 2575
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 2576
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2756
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    move v2, v3

    .line 2757
    .local v2, "handled":Z
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 2758
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2782
    :cond_0
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .line 2760
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :sswitch_0
    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2761
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 2763
    :cond_1
    move-object v3, v0

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    .line 2765
    goto :goto_0

    .line 2767
    :sswitch_1
    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2768
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 2770
    :cond_2
    move-object v3, v0

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    .line 2772
    goto :goto_0

    .line 2774
    :sswitch_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2775
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 2776
    :cond_3
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2777
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 2758
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 23

    .prologue
    .line 2586
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v3, p1

    .local v3, "xOffset":F
    move-object v14, v2

    iget-boolean v14, v14, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-nez v14, :cond_0

    .line 2587
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string/jumbo v16, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2590
    :cond_0
    move-object v14, v2

    iget-object v14, v14, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v14, :cond_1

    .line 2591
    .line 2628
    :goto_0
    return-void

    .line 2594
    :cond_1
    move-object v14, v2

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v3

    add-float v15, v15, v16

    iput v15, v14, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2596
    move-object v14, v2

    invoke-virtual {v14}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v14, v14

    move v4, v14

    .line 2597
    .local v4, "oldScrollX":F
    move v14, v4

    move v15, v3

    sub-float/2addr v14, v15

    move v5, v14

    .line 2598
    .local v5, "scrollX":F
    move-object v14, v2

    invoke-direct {v14}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v14

    move v6, v14

    .line 2600
    .local v6, "width":I
    move v14, v6

    int-to-float v14, v14

    move-object v15, v2

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v14, v15

    move v7, v14

    .line 2601
    .local v7, "leftBound":F
    move v14, v6

    int-to-float v14, v14

    move-object v15, v2

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v14, v15

    move v8, v14

    .line 2603
    .local v8, "rightBound":F
    move-object v14, v2

    iget-object v14, v14, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v14

    .line 2604
    .local v9, "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v14, v2

    iget-object v14, v14, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object v15, v2

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v10, v14

    .line 2605
    .local v10, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v14, v9

    iget v14, v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_2

    .line 2606
    move-object v14, v9

    iget v14, v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move v15, v6

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move v7, v14

    .line 2608
    :cond_2
    move-object v14, v10

    iget v14, v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v15, v2

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v15}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_3

    .line 2609
    move-object v14, v10

    iget v14, v14, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move v15, v6

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move v8, v14

    .line 2612
    :cond_3
    move v14, v5

    move v15, v7

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    .line 2613
    move v14, v7

    move v5, v14

    .line 2618
    :cond_4
    :goto_1
    move-object v14, v2

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v5

    move/from16 v17, v5

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v14, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2619
    move-object v14, v2

    move v15, v5

    float-to-int v15, v15

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2620
    move-object v14, v2

    move v15, v5

    float-to-int v15, v15

    invoke-direct {v14, v15}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v14

    .line 2623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-wide v11, v14

    .line 2624
    .local v11, "time":J
    move-object v14, v2

    iget-wide v14, v14, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    move-wide/from16 v16, v11

    const/16 v18, 0x2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    move-object v13, v14

    .line 2626
    .local v13, "ev":Landroid/view/MotionEvent;
    move-object v14, v2

    iget-object v14, v14, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v13

    invoke-virtual {v14, v15}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2627
    move-object v14, v13

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2628
    goto/16 :goto_0

    .line 2614
    .end local v11    # "time":J
    .end local v13    # "ev":Landroid/view/MotionEvent;
    :cond_5
    move v14, v5

    move v15, v8

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 2615
    move v14, v8

    move v5, v14

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 3019
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    new-instance v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 3034
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 3024
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 7

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "childCount":I
    move v2, p2

    .local v2, "i":I
    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v6, v2

    sub-int/2addr v5, v6

    :goto_0
    move v3, v5

    .line 803
    .local v3, "index":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move v6, v3

    .line 804
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    move v4, v5

    .line 805
    .local v4, "result":I
    move v5, v4

    move v0, v5

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .line 802
    .end local v3    # "index":I
    .end local v4    # "result":I
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move v5, v2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 2

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0
.end method

.method public getPageMargin()I
    .locals 2

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 6

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, v0

    if-eq v3, v4, :cond_2

    .line 1524
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_1

    .line 1525
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 1529
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_1
    return-object v0

    .line 1527
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    goto :goto_0

    .line 1529
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 7

    .prologue
    .line 1512
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1513
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v3, v4

    .line 1514
    .local v3, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1515
    move-object v4, v3

    move-object v0, v4

    .line 1518
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_1
    return-object v0

    .line 1512
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .restart local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1518
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 6

    .prologue
    .line 1533
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "position":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1534
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v3, v4

    .line 1535
    .local v3, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v4, v3

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 1536
    move-object v4, v3

    move-object v0, v4

    .line 1539
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_1
    return-object v0

    .line 1533
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .restart local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1539
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method initViewPager()V
    .locals 10

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 402
    move-object v4, v0

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    .line 403
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setFocusable(Z)V

    .line 404
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v1, v4

    .line 405
    .local v1, "context":Landroid/content/Context;
    move-object v4, v0

    new-instance v5, Landroid/widget/Scroller;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    sget-object v8, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v6, v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, v4, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 406
    move-object v4, v1

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    move-object v2, v4

    .line 407
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 409
    .local v3, "density":F
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    .line 410
    move-object v4, v0

    const/high16 v5, 0x43c80000    # 400.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    .line 411
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    .line 412
    move-object v4, v0

    new-instance v5, Landroid/widget/EdgeEffect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 413
    move-object v4, v0

    new-instance v5, Landroid/widget/EdgeEffect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 415
    move-object v4, v0

    const/high16 v5, 0x41c80000    # 25.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    .line 416
    move-object v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    .line 417
    move-object v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    .line 419
    move-object v4, v0

    new-instance v5, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 421
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 423
    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 427
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/viewpager/widget/ViewPager$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/viewpager/widget/ViewPager$4;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 475
    return-void
.end method

.method public isFakeDragging()Z
    .locals 2

    .prologue
    .line 2640
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1544
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1545
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 1546
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 481
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 2468
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/viewpager/widget/ViewPager;
    move-object/from16 v2, p1

    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object v15, v1

    move-object/from16 v16, v2

    invoke-super/range {v15 .. v16}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2471
    move-object v15, v1

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    if-lez v15, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v15, :cond_2

    .line 2472
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v15

    move v3, v15

    .line 2473
    .local v3, "scrollX":I
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v15

    move v4, v15

    .line 2475
    .local v4, "width":I
    move-object v15, v1

    iget v15, v15, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v5, v15

    .line 2476
    .local v5, "marginOffset":F
    const/4 v15, 0x0

    move v6, v15

    .line 2477
    .local v6, "itemIndex":I
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v7, v15

    .line 2478
    .local v7, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v15, v7

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move v8, v15

    .line 2479
    .local v8, "offset":F
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v9, v15

    .line 2480
    .local v9, "itemCount":I
    move-object v15, v7

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v10, v15

    .line 2481
    .local v10, "firstPos":I
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v11, v15

    .line 2482
    .local v11, "lastPos":I
    move v15, v10

    move v12, v15

    .local v12, "pos":I
    :goto_0
    move v15, v12

    move/from16 v16, v11

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 2483
    :goto_1
    move v15, v12

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move v15, v6

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 2484
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v7, v15

    goto :goto_1

    .line 2488
    :cond_0
    move v15, v12

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2489
    move-object v15, v7

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v13, v15

    .line 2490
    .local v13, "drawAt":F
    move-object v15, v7

    iget v15, v15, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v5

    add-float v15, v15, v16

    move v8, v15

    .line 2497
    :goto_2
    move v15, v13

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1

    .line 2498
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    move/from16 v17, v0

    move/from16 v18, v13

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    .line 2499
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    move/from16 v19, v0

    .line 2498
    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2500
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2503
    :cond_1
    move v15, v13

    move/from16 v16, v3

    move/from16 v17, v4

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    .line 2504
    .line 2508
    .end local v3    # "scrollX":I
    .end local v4    # "width":I
    .end local v5    # "marginOffset":F
    .end local v6    # "itemIndex":I
    .end local v7    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v8    # "offset":F
    .end local v9    # "itemCount":I
    .end local v10    # "firstPos":I
    .end local v11    # "lastPos":I
    .end local v12    # "pos":I
    .end local v13    # "drawAt":F
    :cond_2
    return-void

    .line 2492
    .restart local v3    # "scrollX":I
    .restart local v4    # "width":I
    .restart local v5    # "marginOffset":F
    .restart local v6    # "itemIndex":I
    .restart local v7    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v8    # "offset":F
    .restart local v9    # "itemCount":I
    .restart local v10    # "firstPos":I
    .restart local v11    # "lastPos":I
    .restart local v12    # "pos":I
    :cond_3
    move-object v15, v1

    iget-object v15, v15, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v15

    move v14, v15

    .line 2493
    .local v14, "widthFactor":F
    move v15, v8

    move/from16 v16, v14

    add-float v15, v15, v16

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v13, v15

    .line 2494
    .restart local v13    # "drawAt":F
    move v15, v8

    move/from16 v16, v14

    move/from16 v17, v5

    add-float v16, v16, v17

    add-float v15, v15, v16

    move v8, v15

    goto/16 :goto_2

    .line 2482
    .end local v14    # "widthFactor":F
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .prologue
    .line 2031
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object/from16 v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v2, v10

    .line 2034
    .local v2, "action":I
    move v10, v2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2037
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v10

    .line 2038
    const/4 v10, 0x0

    move v0, v10

    .line 2161
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v0

    .line 2043
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    move v10, v2

    if-eqz v10, :cond_3

    .line 2044
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v10, :cond_2

    .line 2046
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 2048
    :cond_2
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v10, :cond_3

    .line 2050
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 2054
    :cond_3
    move v10, v2

    sparse-switch v10, :sswitch_data_0

    .line 2152
    :cond_4
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_5

    .line 2153
    move-object v10, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, v10, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2155
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2161
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    move v0, v10

    goto :goto_0

    .line 2065
    :sswitch_0
    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    move v3, v10

    .line 2066
    .local v3, "activePointerId":I
    move v10, v3

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 2068
    goto :goto_1

    .line 2071
    :cond_6
    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    move v4, v10

    .line 2072
    .local v4, "pointerIndex":I
    move-object v10, v1

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    move v5, v10

    .line 2073
    .local v5, "x":F
    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v10, v11

    move v6, v10

    .line 2074
    .local v6, "dx":F
    move v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move v7, v10

    .line 2075
    .local v7, "xDiff":F
    move-object v10, v1

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move v8, v10

    .line 2076
    .local v8, "y":F
    move v10, v8

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move v9, v10

    .line 2079
    .local v9, "yDiff":F
    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_7

    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move v12, v6

    invoke-direct {v10, v11, v12}, Landroidx/viewpager/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v0

    move-object v11, v0

    const/4 v12, 0x0

    move v13, v6

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    move v15, v8

    float-to-int v15, v15

    .line 2080
    invoke-virtual/range {v10 .. v15}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2082
    move-object v10, v0

    move v11, v5

    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2083
    move-object v10, v0

    move v11, v8

    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2084
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2085
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 2087
    :cond_7
    move v10, v7

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    move v10, v7

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v11, v9

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 2089
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2090
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2091
    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2092
    move-object v10, v0

    move v11, v6

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move-object v12, v0

    iget v12, v12, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    :goto_2
    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2094
    move-object v10, v0

    move v11, v8

    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2095
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2104
    :cond_8
    :goto_3
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v10, :cond_4

    .line 2106
    move-object v10, v0

    move v11, v5

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2107
    move-object v10, v0

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2092
    :cond_9
    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move-object v12, v0

    iget v12, v12, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    goto :goto_2

    .line 2096
    :cond_a
    move v10, v9

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 2102
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 2118
    .end local v3    # "activePointerId":I
    .end local v4    # "pointerIndex":I
    .end local v5    # "x":F
    .end local v6    # "dx":F
    .end local v7    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    :sswitch_1
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2119
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2120
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, v10, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2121
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2123
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 2124
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v10

    .line 2125
    move-object v10, v0

    iget v10, v10, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2126
    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    if-le v10, v11, :cond_b

    .line 2128
    move-object v10, v0

    iget-object v10, v10, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2129
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2130
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 2131
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2132
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2133
    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 2135
    :cond_b
    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 2136
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2144
    goto/16 :goto_1

    .line 2148
    :sswitch_2
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 34

    .prologue
    .line 1682
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v3, p1

    .local v3, "changed":Z
    move/from16 v4, p2

    .local v4, "l":I
    move/from16 v5, p3

    .local v5, "t":I
    move/from16 v6, p4

    .local v6, "r":I
    move/from16 v7, p5

    .local v7, "b":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v8, v27

    .line 1683
    .local v8, "count":I
    move/from16 v27, v6

    move/from16 v28, v4

    sub-int v27, v27, v28

    move/from16 v9, v27

    .line 1684
    .local v9, "width":I
    move/from16 v27, v7

    move/from16 v28, v5

    sub-int v27, v27, v28

    move/from16 v10, v27

    .line 1685
    .local v10, "height":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v27

    move/from16 v11, v27

    .line 1686
    .local v11, "paddingLeft":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v27

    move/from16 v12, v27

    .line 1687
    .local v12, "paddingTop":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v13, v27

    .line 1688
    .local v13, "paddingRight":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v27

    move/from16 v14, v27

    .line 1689
    .local v14, "paddingBottom":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v27

    move/from16 v15, v27

    .line 1691
    .local v15, "scrollX":I
    const/16 v27, 0x0

    move/from16 v16, v27

    .line 1695
    .local v16, "decorCount":I
    const/16 v27, 0x0

    move/from16 v17, v27

    .local v17, "i":I
    :goto_0
    move/from16 v27, v17

    move/from16 v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 1696
    move-object/from16 v27, v2

    move/from16 v28, v17

    invoke-virtual/range {v27 .. v28}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v18, v27

    .line 1697
    .local v18, "child":Landroid/view/View;
    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 1698
    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v19, v27

    .line 1699
    .local v19, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 1700
    .local v20, "childLeft":I
    const/16 v27, 0x0

    move/from16 v21, v27

    .line 1701
    .local v21, "childTop":I
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1702
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    const/16 v28, 0x7

    and-int/lit8 v27, v27, 0x7

    move/from16 v22, v27

    .line 1703
    .local v22, "hgrav":I
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    const/16 v28, 0x70

    and-int/lit8 v27, v27, 0x70

    move/from16 v23, v27

    .line 1704
    .local v23, "vgrav":I
    move/from16 v27, v22

    packed-switch v27, :pswitch_data_0

    .line 1706
    :pswitch_0
    move/from16 v27, v11

    move/from16 v20, v27

    .line 1721
    :goto_1
    move/from16 v27, v23

    sparse-switch v27, :sswitch_data_0

    .line 1723
    move/from16 v27, v12

    move/from16 v21, v27

    .line 1738
    :goto_2
    move/from16 v27, v20

    move/from16 v28, v15

    add-int v27, v27, v28

    move/from16 v20, v27

    .line 1739
    move-object/from16 v27, v18

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v30, v20

    move-object/from16 v31, v18

    .line 1740
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v31, v21

    move-object/from16 v32, v18

    .line 1741
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    .line 1739
    invoke-virtual/range {v27 .. v31}, Landroid/view/View;->layout(IIII)V

    .line 1742
    add-int/lit8 v16, v16, 0x1

    .line 1695
    .end local v19    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v20    # "childLeft":I
    .end local v21    # "childTop":I
    .end local v22    # "hgrav":I
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1709
    .restart local v19    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .restart local v20    # "childLeft":I
    .restart local v21    # "childTop":I
    .restart local v22    # "hgrav":I
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v27, v11

    move/from16 v20, v27

    .line 1710
    move/from16 v27, v11

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v11, v27

    .line 1711
    goto :goto_1

    .line 1713
    :pswitch_2
    move/from16 v27, v9

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    move/from16 v28, v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v20, v27

    .line 1715
    goto :goto_1

    .line 1717
    :pswitch_3
    move/from16 v27, v9

    move/from16 v28, v13

    sub-int v27, v27, v28

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v20, v27

    .line 1718
    move/from16 v27, v13

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v13, v27

    goto :goto_1

    .line 1726
    :sswitch_0
    move/from16 v27, v12

    move/from16 v21, v27

    .line 1727
    move/from16 v27, v12

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v12, v27

    .line 1728
    goto :goto_2

    .line 1730
    :sswitch_1
    move/from16 v27, v10

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    move/from16 v28, v12

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v21, v27

    .line 1732
    goto/16 :goto_2

    .line 1734
    :sswitch_2
    move/from16 v27, v10

    move/from16 v28, v14

    sub-int v27, v27, v28

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v21, v27

    .line 1735
    move/from16 v27, v14

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v14, v27

    goto/16 :goto_2

    .line 1747
    .end local v18    # "child":Landroid/view/View;
    .end local v19    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v20    # "childLeft":I
    .end local v21    # "childTop":I
    .end local v22    # "hgrav":I
    .end local v23    # "vgrav":I
    :cond_1
    move/from16 v27, v9

    move/from16 v28, v11

    sub-int v27, v27, v28

    move/from16 v28, v13

    sub-int v27, v27, v28

    move/from16 v17, v27

    .line 1749
    .local v17, "childWidth":I
    const/16 v27, 0x0

    move/from16 v18, v27

    .local v18, "i":I
    :goto_3
    move/from16 v27, v18

    move/from16 v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 1750
    move-object/from16 v27, v2

    move/from16 v28, v18

    invoke-virtual/range {v27 .. v28}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v19, v27

    .line 1751
    .local v19, "child":Landroid/view/View;
    move-object/from16 v27, v19

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    .line 1752
    move-object/from16 v27, v19

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v20, v27

    .line 1754
    .local v20, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object/from16 v27, v20

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_3

    move-object/from16 v27, v2

    move-object/from16 v28, v19

    invoke-virtual/range {v27 .. v28}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v27

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    move-object/from16 v21, v28

    .local v21, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v27, :cond_3

    .line 1755
    move/from16 v27, v17

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v28, v21

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v22, v27

    .line 1756
    .local v22, "loff":I
    move/from16 v27, v11

    move/from16 v28, v22

    add-int v27, v27, v28

    move/from16 v23, v27

    .line 1757
    .local v23, "childLeft":I
    move/from16 v27, v12

    move/from16 v24, v27

    .line 1758
    .local v24, "childTop":I
    move-object/from16 v27, v20

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1761
    move-object/from16 v27, v20

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1762
    move/from16 v27, v17

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move/from16 v25, v27

    .line 1765
    .local v25, "widthSpec":I
    move/from16 v27, v10

    move/from16 v28, v12

    sub-int v27, v27, v28

    move/from16 v28, v14

    sub-int v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move/from16 v26, v27

    .line 1768
    .local v26, "heightSpec":I
    move-object/from16 v27, v19

    move/from16 v28, v25

    move/from16 v29, v26

    invoke-virtual/range {v27 .. v29}, Landroid/view/View;->measure(II)V

    .line 1775
    .end local v25    # "widthSpec":I
    .end local v26    # "heightSpec":I
    :cond_2
    move-object/from16 v27, v19

    move/from16 v28, v23

    move/from16 v29, v24

    move/from16 v30, v23

    move-object/from16 v31, v19

    .line 1776
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v31, v24

    move-object/from16 v32, v19

    .line 1777
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    .line 1775
    invoke-virtual/range {v27 .. v31}, Landroid/view/View;->layout(IIII)V

    .line 1749
    .end local v20    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v21    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v22    # "loff":I
    .end local v23    # "childLeft":I
    .end local v24    # "childTop":I
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1781
    .end local v19    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v27, v2

    move/from16 v28, v12

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    .line 1782
    move-object/from16 v27, v2

    move/from16 v28, v10

    move/from16 v29, v14

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 1783
    move-object/from16 v27, v2

    move/from16 v28, v16

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    .line 1785
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1786
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v27 .. v31}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 1788
    :cond_5
    move-object/from16 v27, v2

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 1789
    return-void

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1721
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 27

    .prologue
    .line 1555
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v25, v3

    invoke-static/range {v24 .. v25}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v26, v4

    .line 1556
    invoke-static/range {v25 .. v26}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v25

    .line 1555
    invoke-virtual/range {v23 .. v25}, Landroidx/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1558
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v23

    move/from16 v5, v23

    .line 1559
    .local v5, "measuredWidth":I
    move/from16 v23, v5

    const/16 v24, 0xa

    div-int/lit8 v23, v23, 0xa

    move/from16 v6, v23

    .line 1560
    .local v6, "maxGutterSize":I
    move-object/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    .line 1563
    move/from16 v23, v5

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v7, v23

    .line 1564
    .local v7, "childWidthSize":I
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v8, v23

    .line 1571
    .local v8, "childHeightSize":I
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v23

    move/from16 v9, v23

    .line 1572
    .local v9, "size":I
    const/16 v23, 0x0

    move/from16 v10, v23

    .local v10, "i":I
    :goto_0
    move/from16 v23, v10

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 1573
    move-object/from16 v23, v2

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1574
    .local v11, "child":Landroid/view/View;
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 1575
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v12, v23

    .line 1576
    .local v12, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object/from16 v23, v12

    if-eqz v23, :cond_5

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1577
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v23, v0

    const/16 v24, 0x7

    and-int/lit8 v23, v23, 0x7

    move/from16 v13, v23

    .line 1578
    .local v13, "hgrav":I
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v23, v0

    const/16 v24, 0x70

    and-int/lit8 v23, v23, 0x70

    move/from16 v14, v23

    .line 1579
    .local v14, "vgrav":I
    const/high16 v23, -0x80000000

    move/from16 v15, v23

    .line 1580
    .local v15, "widthMode":I
    const/high16 v23, -0x80000000

    move/from16 v16, v23

    .line 1581
    .local v16, "heightMode":I
    move/from16 v23, v14

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move/from16 v23, v14

    const/16 v24, 0x50

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_0
    const/16 v23, 0x1

    :goto_1
    move/from16 v17, v23

    .line 1582
    .local v17, "consumeVertical":Z
    move/from16 v23, v13

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    move/from16 v23, v13

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    :cond_1
    const/16 v23, 0x1

    :goto_2
    move/from16 v18, v23

    .line 1584
    .local v18, "consumeHorizontal":Z
    move/from16 v23, v17

    if-eqz v23, :cond_8

    .line 1585
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v15, v23

    .line 1590
    :cond_2
    :goto_3
    move/from16 v23, v7

    move/from16 v19, v23

    .line 1591
    .local v19, "widthSize":I
    move/from16 v23, v8

    move/from16 v20, v23

    .line 1592
    .local v20, "heightSize":I
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    move/from16 v23, v0

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 1593
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v15, v23

    .line 1594
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 1595
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v19, v23

    .line 1598
    :cond_3
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    move/from16 v23, v0

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1599
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v16, v23

    .line 1600
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1601
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 1604
    :cond_4
    move/from16 v23, v19

    move/from16 v24, v15

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v21, v23

    .line 1605
    .local v21, "widthSpec":I
    move/from16 v23, v20

    move/from16 v24, v16

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v22, v23

    .line 1606
    .local v22, "heightSpec":I
    move-object/from16 v23, v11

    move/from16 v24, v21

    move/from16 v25, v22

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    .line 1608
    move/from16 v23, v17

    if-eqz v23, :cond_9

    .line 1609
    move/from16 v23, v8

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v8, v23

    .line 1572
    .end local v12    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "heightMode":I
    .end local v17    # "consumeVertical":Z
    .end local v18    # "consumeHorizontal":Z
    .end local v19    # "widthSize":I
    .end local v20    # "heightSize":I
    .end local v21    # "widthSpec":I
    .end local v22    # "heightSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1581
    .restart local v12    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .restart local v13    # "hgrav":I
    .restart local v14    # "vgrav":I
    .restart local v15    # "widthMode":I
    .restart local v16    # "heightMode":I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 1582
    .restart local v17    # "consumeVertical":Z
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 1586
    .restart local v18    # "consumeHorizontal":Z
    :cond_8
    move/from16 v23, v18

    if-eqz v23, :cond_2

    .line 1587
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v16, v23

    goto/16 :goto_3

    .line 1610
    .restart local v19    # "widthSize":I
    .restart local v20    # "heightSize":I
    .restart local v21    # "widthSpec":I
    .restart local v22    # "heightSpec":I
    :cond_9
    move/from16 v23, v18

    if-eqz v23, :cond_5

    .line 1611
    move/from16 v23, v7

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v7, v23

    goto :goto_4

    .line 1617
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "heightMode":I
    .end local v17    # "consumeVertical":Z
    .end local v18    # "consumeHorizontal":Z
    .end local v19    # "widthSize":I
    .end local v20    # "heightSize":I
    .end local v21    # "widthSpec":I
    .end local v22    # "heightSpec":I
    :cond_a
    move-object/from16 v23, v2

    move/from16 v24, v7

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1618
    move-object/from16 v23, v2

    move/from16 v24, v8

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1621
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    .line 1622
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 1623
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    .line 1626
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v23

    move/from16 v9, v23

    .line 1627
    const/16 v23, 0x0

    move/from16 v10, v23

    :goto_5
    move/from16 v23, v10

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 1628
    move-object/from16 v23, v2

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1629
    .restart local v11    # "child":Landroid/view/View;
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1634
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v12, v23

    .line 1635
    .restart local v12    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object/from16 v23, v12

    if-eqz v23, :cond_b

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 1636
    :cond_b
    move/from16 v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v13, v23

    .line 1638
    .local v13, "widthSpec":I
    move-object/from16 v23, v11

    move/from16 v24, v13

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    .line 1627
    .end local v12    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v13    # "widthSpec":I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1642
    .end local v11    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 21
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1865
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v3, p1

    .local v3, "position":I
    move/from16 v4, p2

    .local v4, "offset":F
    move/from16 v5, p3

    .local v5, "offsetPixels":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 1866
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v17

    move/from16 v6, v17

    .line 1867
    .local v6, "scrollX":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v17

    move/from16 v7, v17

    .line 1868
    .local v7, "paddingLeft":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v17

    move/from16 v8, v17

    .line 1869
    .local v8, "paddingRight":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v17

    move/from16 v9, v17

    .line 1870
    .local v9, "width":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v17

    move/from16 v10, v17

    .line 1871
    .local v10, "childCount":I
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "i":I
    :goto_0
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1872
    move-object/from16 v17, v2

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v12, v17

    .line 1873
    .local v12, "child":Landroid/view/View;
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v13, v17

    .line 1874
    .local v13, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 1871
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1876
    :cond_1
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v17, v0

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v14, v17

    .line 1877
    .local v14, "hgrav":I
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 1878
    .local v15, "childLeft":I
    move/from16 v17, v14

    packed-switch v17, :pswitch_data_0

    .line 1880
    :pswitch_0
    move/from16 v17, v7

    move/from16 v15, v17

    .line 1895
    :goto_2
    move/from16 v17, v15

    move/from16 v18, v6

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 1897
    move/from16 v17, v15

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 1898
    .local v16, "childOffset":I
    move/from16 v17, v16

    if-eqz v17, :cond_0

    .line 1899
    move-object/from16 v17, v12

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1883
    .end local v16    # "childOffset":I
    :pswitch_1
    move/from16 v17, v7

    move/from16 v15, v17

    .line 1884
    move/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v7, v17

    .line 1885
    goto :goto_2

    .line 1887
    :pswitch_2
    move/from16 v17, v9

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v15, v17

    .line 1889
    goto :goto_2

    .line 1891
    :pswitch_3
    move/from16 v17, v9

    move/from16 v18, v8

    sub-int v17, v17, v18

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 1892
    move/from16 v17, v8

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v8, v17

    goto :goto_2

    .line 1904
    .end local v6    # "scrollX":I
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    .end local v9    # "width":I
    .end local v10    # "childCount":I
    .end local v11    # "i":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v14    # "hgrav":I
    .end local v15    # "childLeft":I
    :cond_2
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-direct/range {v17 .. v20}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1906
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1907
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v17

    move/from16 v6, v17

    .line 1908
    .restart local v6    # "scrollX":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v17

    move/from16 v7, v17

    .line 1909
    .local v7, "childCount":I
    const/16 v17, 0x0

    move/from16 v8, v17

    .local v8, "i":I
    :goto_3
    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1910
    move-object/from16 v17, v2

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v9, v17

    .line 1911
    .local v9, "child":Landroid/view/View;
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v10, v17

    .line 1913
    .local v10, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1909
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1914
    :cond_3
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v11, v17

    .line 1915
    .local v11, "transformPos":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move/from16 v19, v11

    invoke-interface/range {v17 .. v19}, Landroidx/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1919
    .end local v6    # "scrollX":I
    .end local v7    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v11    # "transformPos":F
    :cond_4
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1920
    return-void

    .line 1878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 13

    .prologue
    .line 2970
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "direction":I
    move-object v2, p2

    .local v2, "previouslyFocusedRect":Landroid/graphics/Rect;
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v10

    move v6, v10

    .line 2971
    .local v6, "count":I
    move v10, v1

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_0

    .line 2972
    const/4 v10, 0x0

    move v3, v10

    .line 2973
    .local v3, "index":I
    const/4 v10, 0x1

    move v4, v10

    .line 2974
    .local v4, "increment":I
    move v10, v6

    move v5, v10

    .line 2980
    .local v5, "end":I
    :goto_0
    move v10, v3

    move v7, v10

    .local v7, "i":I
    :goto_1
    move v10, v7

    move v11, v5

    if-eq v10, v11, :cond_2

    .line 2981
    move-object v10, v0

    move v11, v7

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 2982
    .local v8, "child":Landroid/view/View;
    move-object v10, v8

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 2983
    move-object v10, v0

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    move-object v9, v10

    .line 2984
    .local v9, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v10, v9

    if-eqz v10, :cond_1

    move-object v10, v9

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v11, v0

    iget v11, v11, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_1

    .line 2985
    move-object v10, v8

    move v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2986
    const/4 v10, 0x1

    move v0, v10

    .line 2991
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_2
    return v0

    .line 2976
    .end local v3    # "index":I
    .end local v4    # "increment":I
    .end local v5    # "end":I
    .end local v7    # "i":I
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v3, v10

    .line 2977
    .restart local v3    # "index":I
    const/4 v10, -0x1

    move v4, v10

    .line 2978
    .restart local v4    # "increment":I
    const/4 v10, -0x1

    move v5, v10

    .restart local v5    # "end":I
    goto :goto_0

    .line 2980
    .restart local v7    # "i":I
    .restart local v8    # "child":Landroid/view/View;
    :cond_1
    move v10, v7

    move v11, v4

    add-int/2addr v10, v11

    move v7, v10

    goto :goto_1

    .line 2991
    .end local v8    # "child":Landroid/view/View;
    :cond_2
    const/4 v10, 0x0

    move v0, v10

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1452
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v3, :cond_0

    .line 1453
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1454
    .line 1468
    :goto_0
    return-void

    .line 1457
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/viewpager/widget/ViewPager$SavedState;

    move-object v2, v3

    .line 1458
    .local v2, "ss":Landroidx/viewpager/widget/ViewPager$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_1

    .line 1461
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v4, v2

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    move-object v5, v2

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v5}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1462
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1468
    :goto_1
    goto :goto_0

    .line 1464
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    iput v4, v3, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 1465
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1466
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1441
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1442
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Landroidx/viewpager/widget/ViewPager$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1443
    .local v2, "ss":Landroidx/viewpager/widget/ViewPager$SavedState;
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iput v4, v3, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    .line 1444
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_0

    .line 1445
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1447
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move v3, p3

    .local v3, "oldw":I
    move v4, p4

    .local v4, "oldh":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1649
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 1650
    move-object v5, v0

    move v6, v1

    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move-object v9, v0

    iget v9, v9, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1652
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .prologue
    .line 2166
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move-object/from16 v3, p1

    .local v3, "ev":Landroid/view/MotionEvent;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2170
    const/16 v18, 0x1

    move/from16 v2, v18

    .line 2289
    .end local v2    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v2

    .line 2173
    .restart local v2    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    if-eqz v18, :cond_1

    .line 2176
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_0

    .line 2179
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v18

    if-nez v18, :cond_3

    .line 2181
    :cond_2
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_0

    .line 2184
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2185
    move-object/from16 v18, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2187
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2189
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    move/from16 v4, v18

    .line 2190
    .local v4, "action":I
    const/16 v18, 0x0

    move/from16 v5, v18

    .line 2192
    .local v5, "needsInvalidate":Z
    move/from16 v18, v4

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 2286
    :cond_5
    :goto_1
    :pswitch_0
    move/from16 v18, v5

    if-eqz v18, :cond_6

    .line 2287
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2289
    :cond_6
    const/16 v18, 0x1

    move/from16 v2, v18

    goto :goto_0

    .line 2194
    :pswitch_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2196
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 2199
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move-object/from16 v23, v19

    move/from16 v24, v20

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2200
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v23, v19

    move/from16 v24, v20

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2201
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2202
    goto :goto_1

    .line 2205
    :pswitch_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 2206
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    move/from16 v6, v18

    .line 2207
    .local v6, "pointerIndex":I
    move/from16 v18, v6

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2210
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v18

    move/from16 v5, v18

    .line 2211
    goto/16 :goto_1

    .line 2213
    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v7, v18

    .line 2214
    .local v7, "x":F
    move/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v8, v18

    .line 2215
    .local v8, "xDiff":F
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move/from16 v9, v18

    .line 2216
    .local v9, "y":F
    move/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v10, v18

    .line 2220
    .local v10, "yDiff":F
    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    move/from16 v18, v8

    move/from16 v19, v10

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    .line 2222
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2223
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2224
    move-object/from16 v18, v2

    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2226
    move-object/from16 v18, v2

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2227
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2228
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2231
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v11, v18

    .line 2232
    .local v11, "parent":Landroid/view/ViewParent;
    move-object/from16 v18, v11

    if-eqz v18, :cond_8

    .line 2233
    move-object/from16 v18, v11

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    .end local v6    # "pointerIndex":I
    .end local v7    # "x":F
    .end local v8    # "xDiff":F
    .end local v9    # "y":F
    .end local v10    # "yDiff":F
    .end local v11    # "parent":Landroid/view/ViewParent;
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2240
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    move/from16 v6, v18

    .line 2241
    .local v6, "activePointerIndex":I
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v7, v18

    .line 2242
    .restart local v7    # "x":F
    move/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v19

    or-int v18, v18, v19

    move/from16 v5, v18

    .line 2243
    goto/16 :goto_1

    .line 2224
    .local v6, "pointerIndex":I
    .restart local v8    # "xDiff":F
    .restart local v9    # "y":F
    .restart local v10    # "yDiff":F
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    goto :goto_2

    .line 2246
    .end local v6    # "pointerIndex":I
    .end local v7    # "x":F
    .end local v8    # "xDiff":F
    .end local v9    # "y":F
    .end local v10    # "yDiff":F
    :pswitch_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2247
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 2248
    .local v6, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v18, v6

    const/16 v19, 0x3e8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2249
    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v7, v18

    .line 2250
    .local v7, "initialVelocity":I
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2251
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v18

    move/from16 v8, v18

    .line 2252
    .local v8, "width":I
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v18

    move/from16 v9, v18

    .line 2253
    .local v9, "scrollX":I
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v18

    move-object/from16 v10, v18

    .line 2254
    .local v10, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v11, v18

    .line 2255
    .local v11, "marginOffset":F
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v18, v0

    move/from16 v12, v18

    .line 2256
    .local v12, "currentPage":I
    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v19, v0

    move/from16 v20, v11

    add-float v19, v19, v20

    div-float v18, v18, v19

    move/from16 v13, v18

    .line 2258
    .local v13, "pageOffset":F
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    move/from16 v14, v18

    .line 2259
    .local v14, "activePointerIndex":I
    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v15, v18

    .line 2260
    .local v15, "x":F
    move/from16 v18, v15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 2261
    .local v16, "totalDelta":I
    move-object/from16 v18, v2

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v7

    move/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v18

    move/from16 v17, v18

    .line 2263
    .local v17, "nextPage":I
    move-object/from16 v18, v2

    move/from16 v19, v17

    const/16 v20, 0x1

    const/16 v21, 0x1

    move/from16 v22, v7

    invoke-virtual/range {v18 .. v22}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2265
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v18

    move/from16 v5, v18

    .line 2266
    goto/16 :goto_1

    .line 2269
    .end local v6    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v7    # "initialVelocity":I
    .end local v8    # "width":I
    .end local v9    # "scrollX":I
    .end local v10    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v11    # "marginOffset":F
    .end local v12    # "currentPage":I
    .end local v13    # "pageOffset":F
    .end local v14    # "activePointerIndex":I
    .end local v15    # "x":F
    .end local v16    # "totalDelta":I
    .end local v17    # "nextPage":I
    :pswitch_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2270
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2271
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v18

    move/from16 v5, v18

    goto/16 :goto_1

    .line 2275
    :pswitch_5
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move/from16 v6, v18

    .line 2276
    .local v6, "index":I
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v7, v18

    .line 2277
    .local v7, "x":F
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2278
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2279
    goto/16 :goto_1

    .line 2282
    .end local v6    # "index":I
    .end local v7    # "x":F
    :pswitch_6
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2283
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 4

    .prologue
    .line 2885
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2886
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2887
    const/4 v1, 0x1

    move v0, v1

    .line 2889
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method pageRight()Z
    .locals 4

    .prologue
    .line 2893
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2894
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2895
    const/4 v1, 0x1

    move v0, v1

    .line 2897
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method populate()V
    .locals 3

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    .line 1093
    return-void
.end method

.method populate(I)V
    .locals 24

    .prologue
    .line 1096
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v3, p1

    .local v3, "newCurrentItem":I
    const/16 v19, 0x0

    move-object/from16 v4, v19

    .line 1097
    .local v4, "oldCurInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 1098
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v4, v19

    .line 1099
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 1102
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1103
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1104
    .line 1279
    :goto_0
    return-void

    .line 1111
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1113
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1114
    goto :goto_0

    .line 1120
    :cond_2
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v19

    if-nez v19, :cond_3

    .line 1121
    goto :goto_0

    .line 1124
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1126
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    move/from16 v19, v0

    move/from16 v5, v19

    .line 1127
    .local v5, "pageLimit":I
    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v21, v5

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v6, v19

    .line 1128
    .local v6, "startPos":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v19

    move/from16 v7, v19

    .line 1129
    .local v7, "N":I
    move/from16 v19, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v21, v5

    add-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v8, v19

    .line 1131
    .local v8, "endPos":I
    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1134
    move-object/from16 v19, v2

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    move-object/from16 v9, v19

    .line 1137
    .line 1138
    .local v9, "resName":Ljava/lang/String;
    :goto_1
    new-instance v19, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", found: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " Pager id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " Pager class: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    .line 1142
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " Problematic adapter: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v22, v0

    .line 1143
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1135
    .end local v9    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 1136
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .restart local v9    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 1147
    .end local v9    # "resName":Ljava/lang/String;
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const/16 v19, -0x1

    move/from16 v9, v19

    .line 1148
    .local v9, "curIndex":I
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 1149
    .local v10, "curItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    const/16 v19, 0x0

    move/from16 v9, v19

    :goto_2
    move/from16 v19, v9

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1150
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object/from16 v11, v19

    .line 1151
    .local v11, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 1152
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v11

    move-object/from16 v10, v19

    .line 1157
    .end local v11    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_5
    move-object/from16 v19, v10

    if-nez v19, :cond_6

    move/from16 v19, v7

    if-lez v19, :cond_6

    .line 1158
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1164
    :cond_6
    move-object/from16 v19, v10

    if-eqz v19, :cond_9

    .line 1165
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 1166
    .local v11, "extraWidthLeft":F
    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v12, v19

    .line 1167
    .local v12, "itemIndex":I
    move/from16 v19, v12

    if-ltz v19, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_3
    move-object/from16 v13, v19

    .line 1168
    .local v13, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v19

    move/from16 v14, v19

    .line 1169
    .local v14, "clientWidth":I
    move/from16 v19, v14

    if-gtz v19, :cond_d

    const/16 v19, 0x0

    .line 1170
    :goto_4
    move/from16 v15, v19

    .line 1171
    .local v15, "leftWidthNeeded":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v16, v19

    .local v16, "pos":I
    :goto_5
    move/from16 v19, v16

    if-ltz v19, :cond_7

    .line 1172
    move/from16 v19, v11

    move/from16 v20, v15

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_11

    move/from16 v19, v16

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 1173
    move-object/from16 v19, v13

    if-nez v19, :cond_e

    .line 1174
    .line 1199
    :cond_7
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v19, v0

    move/from16 v16, v19

    .line 1200
    .local v16, "extraWidthRight":F
    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 1201
    move/from16 v19, v16

    const/high16 v20, 0x40000000    # 2.0f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_8

    .line 1202
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_6
    move-object/from16 v13, v19

    .line 1203
    move/from16 v19, v14

    if-gtz v19, :cond_16

    const/16 v19, 0x0

    .line 1204
    :goto_7
    move/from16 v17, v19

    .line 1205
    .local v17, "rightWidthNeeded":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v18, v19

    .local v18, "pos":I
    :goto_8
    move/from16 v19, v18

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 1206
    move/from16 v19, v16

    move/from16 v20, v17

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1a

    move/from16 v19, v18

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a

    .line 1207
    move-object/from16 v19, v13

    if-nez v19, :cond_17

    .line 1208
    .line 1232
    .end local v17    # "rightWidthNeeded":F
    .end local v18    # "pos":I
    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v9

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v22}, Landroidx/viewpager/widget/ViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V

    .line 1234
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v21, v0

    move-object/from16 v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1244
    .end local v11    # "extraWidthLeft":F
    .end local v12    # "itemIndex":I
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v14    # "clientWidth":I
    .end local v15    # "leftWidthNeeded":F
    .end local v16    # "extraWidthRight":F
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1248
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v19

    move/from16 v11, v19

    .line 1249
    .local v11, "childCount":I
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "i":I
    :goto_9
    move/from16 v19, v12

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e

    .line 1250
    move-object/from16 v19, v2

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1251
    .local v13, "child":Landroid/view/View;
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object/from16 v14, v19

    .line 1252
    .local v14, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move-object/from16 v19, v14

    move/from16 v20, v12

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1253
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_a

    .line 1255
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1256
    .local v15, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object/from16 v19, v15

    if-eqz v19, :cond_a

    .line 1257
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1258
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    .line 1249
    .end local v15    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1149
    .end local v12    # "i":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .local v11, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1167
    .local v11, "extraWidthLeft":F
    .local v12, "itemIndex":I
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1169
    .local v13, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v14, "clientWidth":I
    :cond_d
    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v20, v10

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v20, v2

    .line 1170
    invoke-virtual/range {v20 .. v20}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v19, v19, v20

    goto/16 :goto_4

    .line 1176
    .local v15, "leftWidthNeeded":F
    .local v16, "pos":I
    :cond_e
    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1177
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    .line 1178
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v16

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1183
    add-int/lit8 v12, v12, -0x1

    .line 1184
    add-int/lit8 v9, v9, -0x1

    .line 1185
    move/from16 v19, v12

    if-ltz v19, :cond_10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_a
    move-object/from16 v13, v19

    .line 1171
    :cond_f
    :goto_b
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_5

    .line 1185
    :cond_10
    const/16 v19, 0x0

    goto :goto_a

    .line 1187
    :cond_11
    move-object/from16 v19, v13

    if-eqz v19, :cond_13

    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1188
    move/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v11, v19

    .line 1189
    add-int/lit8 v12, v12, -0x1

    .line 1190
    move/from16 v19, v12

    if-ltz v19, :cond_12

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_c
    move-object/from16 v13, v19

    goto :goto_b

    :cond_12
    const/16 v19, 0x0

    goto :goto_c

    .line 1192
    :cond_13
    move-object/from16 v19, v2

    move/from16 v20, v16

    move/from16 v21, v12

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1193
    move/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v11, v19

    .line 1194
    add-int/lit8 v9, v9, 0x1

    .line 1195
    move/from16 v19, v12

    if-ltz v19, :cond_14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_d
    move-object/from16 v13, v19

    goto :goto_b

    :cond_14
    const/16 v19, 0x0

    goto :goto_d

    .line 1202
    .local v16, "extraWidthRight":F
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1203
    :cond_16
    move-object/from16 v19, v2

    .line 1204
    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    goto/16 :goto_7

    .line 1210
    .restart local v17    # "rightWidthNeeded":F
    .restart local v18    # "pos":I
    :cond_17
    move/from16 v19, v18

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 1211
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    .line 1212
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v18

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1217
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_e
    move-object/from16 v13, v19

    .line 1205
    :cond_18
    :goto_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    .line 1217
    :cond_19
    const/16 v19, 0x0

    goto :goto_e

    .line 1219
    :cond_1a
    move-object/from16 v19, v13

    if-eqz v19, :cond_1c

    move/from16 v19, v18

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1220
    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 1221
    add-int/lit8 v12, v12, 0x1

    .line 1222
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_10
    move-object/from16 v13, v19

    goto :goto_f

    :cond_1b
    const/16 v19, 0x0

    goto :goto_10

    .line 1224
    :cond_1c
    move-object/from16 v19, v2

    move/from16 v20, v18

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1225
    add-int/lit8 v12, v12, 0x1

    .line 1226
    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 1227
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_11
    move-object/from16 v13, v19

    goto/16 :goto_f

    :cond_1d
    const/16 v19, 0x0

    goto :goto_11

    .line 1262
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v14    # "clientWidth":I
    .end local v15    # "leftWidthNeeded":F
    .end local v16    # "extraWidthRight":F
    .end local v17    # "rightWidthNeeded":F
    .end local v18    # "pos":I
    .local v11, "childCount":I
    .local v12, "i":I
    :cond_1e
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1264
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1265
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1266
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v19, v12

    if-eqz v19, :cond_21

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    :goto_12
    move-object/from16 v13, v19

    .line 1267
    .restart local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object/from16 v19, v13

    if-eqz v19, :cond_1f

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_20

    .line 1268
    :cond_1f
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_13
    move/from16 v19, v14

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_20

    .line 1269
    move-object/from16 v19, v2

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1270
    .local v15, "child":Landroid/view/View;
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1271
    move-object/from16 v19, v13

    if-eqz v19, :cond_22

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 1272
    move-object/from16 v19, v15

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->requestFocus(I)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1273
    .line 1279
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v14    # "i":I
    .end local v15    # "child":Landroid/view/View;
    :cond_20
    goto/16 :goto_0

    .line 1266
    .restart local v12    # "currentFocused":Landroid/view/View;
    :cond_21
    const/16 v19, 0x0

    goto :goto_12

    .line 1268
    .restart local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v14    # "i":I
    .restart local v15    # "child":Landroid/view/View;
    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_13
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 4
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "listener":Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 595
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 597
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 4
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 737
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 739
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1504
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_0

    .line 1505
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1509
    :goto_0
    return-void

    .line 1507
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 10
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v5, :cond_1

    .line 507
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 508
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 509
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 510
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v3, v5

    .line 511
    .local v3, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v6, v0

    move-object v7, v3

    iget v7, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v8, v3

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 514
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 515
    move-object v5, v0

    invoke-direct {v5}, Landroidx/viewpager/widget/ViewPager;->removeNonDecorViews()V

    .line 516
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 517
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 520
    .end local v2    # "i":I
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v2, v5

    .line 521
    .local v2, "oldAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 522
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 524
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v5, :cond_3

    .line 525
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    if-nez v5, :cond_2

    .line 526
    move-object v5, v0

    new-instance v6, Landroidx/viewpager/widget/ViewPager$PagerObserver;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/viewpager/widget/ViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v6, v5, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    .line 528
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 529
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 530
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    move v3, v5

    .line 531
    .local v3, "wasFirstLayout":Z
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 532
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    iput v6, v5, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 533
    move-object v5, v0

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_4

    .line 534
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object v6, v0

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 535
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 536
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 537
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 538
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 547
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 548
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .local v4, "count":I
    :goto_2
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_6

    .line 549
    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-interface {v5, v6, v7, v8}, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 539
    .end local v4    # "count":I
    .local v3, "wasFirstLayout":Z
    :cond_4
    move v5, v3

    if-nez v5, :cond_5

    .line 540
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->populate()V

    goto :goto_1

    .line 542
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_1

    .line 552
    .end local v3    # "wasFirstLayout":Z
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "item":I
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 612
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 613
    return-void

    .line 612
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 7

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "item":I
    move v2, p2

    .local v2, "smoothScroll":Z
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 623
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 624
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 9

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "item":I
    move v2, p2

    .local v2, "smoothScroll":Z
    move v3, p3

    .local v3, "always":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 632
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 12

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "item":I
    move v2, p2

    .local v2, "smoothScroll":Z
    move v3, p3

    .local v3, "always":Z
    move/from16 v4, p4

    .local v4, "velocity":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 636
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 637
    .line 672
    :goto_0
    return-void

    .line 639
    :cond_1
    move v7, v3

    if-nez v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v8, v1

    if-ne v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 640
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 641
    goto :goto_0

    .line 644
    :cond_2
    move v7, v1

    if-gez v7, :cond_5

    .line 645
    const/4 v7, 0x0

    move v1, v7

    .line 649
    :cond_3
    :goto_1
    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    move v5, v7

    .line 650
    .local v5, "pageLimit":I
    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v9, v5

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_4

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v9, v5

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_6

    .line 654
    :cond_4
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 655
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 654
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 646
    .end local v5    # "pageLimit":I
    .end local v6    # "i":I
    :cond_5
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 647
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v1, v7

    goto :goto_1

    .line 658
    .restart local v5    # "pageLimit":I
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v8, v1

    if-eq v7, v8, :cond_8

    const/4 v7, 0x1

    :goto_3
    move v6, v7

    .line 660
    .local v6, "dispatchSelected":Z
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v7, :cond_9

    .line 663
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 664
    move v7, v6

    if-eqz v7, :cond_7

    .line 665
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 667
    :cond_7
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 672
    :goto_4
    goto/16 :goto_0

    .line 658
    .end local v6    # "dispatchSelected":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 669
    .restart local v6    # "dispatchSelected":Z
    :cond_9
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    .line 670
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v4

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_4
.end method

.method setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 5

    .prologue
    .line 815
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-object v2, v3

    .line 816
    .local v2, "oldListener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 817
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 6

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "limit":I
    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 850
    const-string/jumbo v2, "ViewPager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested offscreen page limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " too small; defaulting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 852
    const/4 v2, 0x1

    move v1, v2

    .line 854
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq v2, v3, :cond_1

    .line 855
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 856
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 858
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 710
    return-void
.end method

.method public setPageMargin(I)V
    .locals 9

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "marginPixels":I
    move-object v4, v0

    iget v4, v4, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move v2, v4

    .line 870
    .local v2, "oldMargin":I
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 872
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v4

    move v3, v4

    .line 873
    .local v3, "width":I
    move-object v4, v0

    move v5, v3

    move v6, v3

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 875
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 876
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 894
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->refreshDrawableState()V

    .line 895
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 896
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->invalidate()V

    .line 897
    return-void

    .line 895
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 7
    .param p2    # Landroidx/viewpager/widget/ViewPager$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "reverseDrawingOrder":Z
    move-object v2, p2

    .local v2, "transformer":Landroidx/viewpager/widget/ViewPager$PageTransformer;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V

    .line 770
    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V
    .locals 8
    .param p2    # Landroidx/viewpager/widget/ViewPager$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "reverseDrawingOrder":Z
    move-object v2, p2

    .local v2, "transformer":Landroidx/viewpager/widget/ViewPager$PageTransformer;
    move v3, p3

    .local v3, "pageLayerType":I
    move-object v6, v2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 788
    .local v4, "hasTransformer":Z
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 789
    .local v5, "needsPopulate":Z
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 790
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/viewpager/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 791
    move v6, v4

    if-eqz v6, :cond_5

    .line 792
    move-object v6, v0

    move v7, v1

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    :goto_3
    iput v7, v6, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    .line 793
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    .line 797
    :goto_4
    move v6, v5

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 798
    :cond_0
    return-void

    .line 787
    .end local v4    # "hasTransformer":Z
    .end local v5    # "needsPopulate":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 788
    .restart local v4    # "hasTransformer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 792
    .restart local v5    # "needsPopulate":Z
    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    .line 795
    :cond_5
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    goto :goto_4
.end method

.method setScrollState(I)V
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "newState":I
    move-object v2, v0

    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 489
    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 493
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v2, :cond_1

    .line 495
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, v3}, Landroidx/viewpager/widget/ViewPager;->enableLayers(Z)V

    .line 497
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/viewpager/widget/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 498
    goto :goto_0

    .line 495
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method smoothScrollTo(II)V
    .locals 7

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    .line 940
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 24

    .prologue
    .line 950
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/ViewPager;
    move/from16 v3, p1

    .local v3, "x":I
    move/from16 v4, p2

    .local v4, "y":I
    move/from16 v5, p3

    .local v5, "velocity":I
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v18

    if-nez v18, :cond_0

    .line 952
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 953
    .line 1005
    :goto_0
    return-void

    .line 957
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v18, 0x1

    :goto_1
    move/from16 v7, v18

    .line 958
    .local v7, "wasScrolling":Z
    move/from16 v18, v7

    if-eqz v18, :cond_3

    .line 963
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getCurrX()I

    move-result v18

    :goto_2
    move/from16 v6, v18

    .line 965
    .local v6, "sx":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 966
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 970
    :goto_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v18

    move/from16 v8, v18

    .line 971
    .local v8, "sy":I
    move/from16 v18, v3

    move/from16 v19, v6

    sub-int v18, v18, v19

    move/from16 v9, v18

    .line 972
    .local v9, "dx":I
    move/from16 v18, v4

    move/from16 v19, v8

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 973
    .local v10, "dy":I
    move/from16 v18, v9

    if-nez v18, :cond_4

    move/from16 v18, v10

    if-nez v18, :cond_4

    .line 974
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 975
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 976
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 977
    goto :goto_0

    .line 957
    .end local v6    # "sx":I
    .end local v7    # "wasScrolling":Z
    .end local v8    # "sy":I
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 963
    .restart local v7    # "wasScrolling":Z
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getStartX()I

    move-result v18

    goto :goto_2

    .line 968
    :cond_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v18

    move/from16 v6, v18

    .restart local v6    # "sx":I
    goto :goto_3

    .line 980
    .restart local v8    # "sy":I
    .restart local v9    # "dx":I
    .restart local v10    # "dy":I
    :cond_4
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 981
    move-object/from16 v18, v2

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 983
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v18

    move/from16 v11, v18

    .line 984
    .local v11, "width":I
    move/from16 v18, v11

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v12, v18

    .line 985
    .local v12, "halfWidth":I
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v13, v18

    .line 986
    .local v13, "distanceRatio":F
    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v13

    .line 987
    invoke-virtual/range {v20 .. v21}, Landroidx/viewpager/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v14, v18

    .line 990
    .local v14, "distance":F
    move/from16 v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v5, v18

    .line 991
    move/from16 v18, v5

    if-lez v18, :cond_5

    .line 992
    const/16 v18, 0x4

    const/high16 v19, 0x447a0000    # 1000.0f

    move/from16 v20, v14

    move/from16 v21, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v15, v18

    .line 998
    .local v15, "duration":I
    :goto_4
    move/from16 v18, v15

    const/16 v19, 0x258

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v15, v18

    .line 1002
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 1003
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v15

    invoke-virtual/range {v18 .. v23}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1004
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1005
    goto/16 :goto_0

    .line 994
    .end local v15    # "duration":I
    :cond_5
    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v16, v18

    .line 995
    .local v16, "pageWidth":F
    move/from16 v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    div-float v18, v18, v19

    move/from16 v17, v18

    .line 996
    .local v17, "pageDelta":F
    move/from16 v18, v17

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .restart local v15    # "duration":I
    goto :goto_4
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
