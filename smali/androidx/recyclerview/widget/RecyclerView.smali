.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/core/view/ScrollingView;
.implements Landroidx/core/view/NestedScrollingChild2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;,
        Landroidx/recyclerview/widget/RecyclerView$State;,
        Landroidx/recyclerview/widget/RecyclerView$SavedState;,
        Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;,
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;,
        Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutParams;,
        Landroidx/recyclerview/widget/RecyclerView$ViewHolder;,
        Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;,
        Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager;,
        Landroidx/recyclerview/widget/RecyclerView$Adapter;,
        Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;,
        Landroidx/recyclerview/widget/RecyclerView$Recycler;,
        Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;,
        Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;,
        Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;,
        Landroidx/recyclerview/widget/RecyclerView$Orientation;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Landroidx/recyclerview/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field mIsAttached:Z

.field mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field final mScrollConsumed:[I

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field final mScrollStepConsumed:[I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field final mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 215
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_4
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_5
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 355
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 595
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 236
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 242
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 248
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 258
    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 644
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 648
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 651
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p1

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p2

    .local v4, "attrs":Landroid/util/AttributeSet;
    move/from16 v5, p3

    .local v5, "defStyle":I
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v16 .. v19}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 358
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 360
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 377
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/ViewInfoStore;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroidx/recyclerview/widget/ViewInfoStore;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 391
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$1;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 411
    move-object/from16 v16, v2

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 412
    move-object/from16 v16, v2

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 413
    move-object/from16 v16, v2

    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 417
    move-object/from16 v16, v2

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 418
    move-object/from16 v16, v2

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 433
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 463
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 472
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 482
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 491
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 493
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 497
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 524
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 525
    move-object/from16 v16, v2

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 537
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 538
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 540
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 542
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    .line 545
    move-object/from16 v16, v2

    sget-boolean v17, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v17, :cond_4

    new-instance v17, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 548
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$State;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 554
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 555
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 556
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 558
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 564
    move-object/from16 v16, v2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 567
    move-object/from16 v16, v2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 568
    move-object/from16 v16, v2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    .line 569
    move-object/from16 v16, v2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 575
    move-object/from16 v16, v2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    .line 582
    move-object/from16 v16, v2

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 585
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$2;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$2;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 606
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerView$4;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerView$4;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    .line 652
    move-object/from16 v16, v4

    if-eqz v16, :cond_5

    .line 653
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    sget-object v18, Landroidx/recyclerview/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    move/from16 v19, v5

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    move-object/from16 v6, v16

    .line 654
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 655
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 656
    .line 659
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :goto_1
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setScrollContainer(Z)V

    .line 660
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 662
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    move-object/from16 v6, v16

    .line 663
    .local v6, "vc":Landroid/view/ViewConfiguration;
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 664
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v3

    .line 665
    invoke-static/range {v17 .. v18}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 666
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v3

    .line 667
    invoke-static/range {v17 .. v18}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 668
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 669
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 670
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_2
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 672
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 673
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 674
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 675
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->initAutofill()V

    .line 677
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v16

    if-nez v16, :cond_0

    .line 679
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 682
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "accessibility"

    .line 683
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 684
    move-object/from16 v16, v2

    new-instance v17, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 687
    const/16 v16, 0x1

    move/from16 v7, v16

    .line 689
    .local v7, "nestedScrollingEnabled":Z
    move-object/from16 v16, v4

    if-eqz v16, :cond_7

    .line 690
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 691
    .local v8, "defStyleRes":I
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    sget-object v18, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    move/from16 v19, v5

    move/from16 v20, v8

    invoke-virtual/range {v16 .. v20}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 693
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object/from16 v16, v9

    sget v17, Landroidx/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    .line 694
    .local v10, "layoutManagerName":Ljava/lang/String;
    move-object/from16 v16, v9

    sget v17, Landroidx/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v11, v16

    .line 696
    .local v11, "descendantFocusability":I
    move/from16 v16, v11

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 697
    move-object/from16 v16, v2

    const/high16 v17, 0x40000

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 699
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    sget v18, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    .line 700
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 701
    move-object/from16 v16, v9

    sget v17, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 702
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v12, v16

    .line 703
    .local v12, "verticalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v16, v9

    sget v17, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 704
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v13, v16

    .line 705
    .local v13, "verticalTrackDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v16, v9

    sget v17, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 706
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v14, v16

    .line 707
    .local v14, "horizontalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v16, v9

    sget v17, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 708
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v15, v16

    .line 709
    .local v15, "horizontalTrackDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v16, v2

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-virtual/range {v16 .. v20}, Landroidx/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 712
    .end local v12    # "verticalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v13    # "verticalTrackDrawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "horizontalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "horizontalTrackDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 713
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 715
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 716
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    sget-object v18, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    move/from16 v19, v5

    move/from16 v20, v8

    invoke-virtual/range {v16 .. v20}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 718
    move-object/from16 v16, v9

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v7, v16

    .line 719
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    .line 726
    .end local v8    # "defStyleRes":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "layoutManagerName":Ljava/lang/String;
    .end local v11    # "descendantFocusability":I
    :cond_3
    :goto_3
    move-object/from16 v16, v2

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 727
    return-void

    .line 545
    .end local v6    # "vc":Landroid/view/ViewConfiguration;
    .end local v7    # "nestedScrollingEnabled":Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 657
    :cond_5
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    goto/16 :goto_1

    .line 670
    .restart local v6    # "vc":Landroid/view/ViewConfiguration;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 722
    .restart local v7    # "nestedScrollingEnabled":Z
    :cond_7
    move-object/from16 v16, v2

    const/high16 v17, 0x40000

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    goto :goto_3
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "x0":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "x1":Landroid/view/View;
    move v2, p2

    .local v2, "x2":I
    move-object v3, p3

    .local v3, "x3":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "x0":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "x0":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "x0":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 1427
    .local v2, "view":Landroid/view/View;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1428
    .local v3, "alreadyParented":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1429
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1431
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v2

    const/4 v6, -0x1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1437
    :goto_1
    return-void

    .line 1427
    .end local v3    # "alreadyParented":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1432
    .restart local v3    # "alreadyParented":Z
    :cond_1
    move v4, v3

    if-nez v4, :cond_2

    .line 1433
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1435
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4171
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "oldHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, p3

    .local v3, "preInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object/from16 v4, p4

    .local v4, "postInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move/from16 v5, p5

    .local v5, "oldHolderDisappearing":Z
    move/from16 v6, p6

    .local v6, "newHolderDisappearing":Z
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4172
    move v7, v5

    if-eqz v7, :cond_0

    .line 4173
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4175
    :cond_0
    move-object v7, v1

    move-object v8, v2

    if-eq v7, v8, :cond_2

    .line 4176
    move v7, v6

    if-eqz v7, :cond_1

    .line 4177
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4179
    :cond_1
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4181
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4182
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4183
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4184
    move-object v7, v2

    move-object v8, v1

    iput-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4186
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4187
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 4189
    :cond_3
    return-void
.end method

.method private cancelTouch()V
    .locals 3

    .prologue
    .line 3239
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->resetTouch()V

    .line 3240
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3241
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p0    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5592
    move-object v0, p0

    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    .line 5593
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 5594
    .local v1, "item":Landroid/view/View;
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 5595
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    .line 5596
    .line 5608
    .end local v1    # "item":Landroid/view/View;
    :goto_1
    return-void

    .line 5599
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 5600
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 5601
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 5605
    :goto_2
    goto :goto_0

    .line 5603
    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_2

    .line 5606
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5608
    .end local v1    # "item":Landroid/view/View;
    :cond_3
    goto :goto_1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 17

    .prologue
    .line 778
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move/from16 v4, p4

    .local v4, "defStyleAttr":I
    move/from16 v5, p5

    .local v5, "defStyleRes":I
    move-object v12, v2

    if-eqz v12, :cond_0

    .line 779
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 780
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 781
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-direct {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 784
    move-object v12, v0

    :try_start_0
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 786
    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v6, v12

    .line 790
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    move-object v12, v6

    move-object v13, v2

    .line 791
    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-class v13, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v12

    move-object v7, v12

    .line 793
    .local v7, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    const/4 v12, 0x0

    move-object v9, v12

    .line 795
    .local v9, "constructorArgs":[Ljava/lang/Object;
    move-object v12, v7

    :try_start_1
    sget-object v13, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 796
    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    move-object v8, v12

    .line 797
    .local v8, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v1

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move-object v15, v3

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move v15, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    move v15, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v9, v12

    .line 806
    .line 807
    :goto_1
    move-object v12, v8

    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 808
    move-object v12, v0

    move-object v13, v8

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 824
    .line 827
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .end local v9    # "constructorArgs":[Ljava/lang/Object;
    :cond_0
    return-void

    .line 788
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v12

    move-object v6, v12

    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 798
    .restart local v7    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .restart local v9    # "constructorArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 800
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    move-object v12, v7

    const/4 v13, 0x0

    :try_start_3
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v12

    move-object v8, v12

    .line 805
    .restart local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 801
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 802
    .local v11, "e1":Ljava/lang/NoSuchMethodException;
    move-object v12, v11

    move-object v13, v10

    :try_start_4
    invoke-virtual {v12, v13}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    .line 803
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Error creating LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 809
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .end local v9    # "constructorArgs":[Ljava/lang/Object;
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v12

    move-object v6, v12

    .line 810
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Unable to find LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 812
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v12

    move-object v6, v12

    .line 813
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 815
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v12

    move-object v6, v12

    .line 816
    .local v6, "e":Ljava/lang/InstantiationException;
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 818
    .end local v6    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v12

    move-object v6, v12

    .line 819
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Cannot access non-public constructor "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 821
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v12

    move-object v6, v12

    .line 822
    .local v6, "e":Ljava/lang/ClassCastException;
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Class is not a LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method private didChildRangeChange(II)Z
    .locals 5

    .prologue
    .line 4117
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "minPositionPreLayout":I
    move v2, p2

    .local v2, "maxPositionPreLayout":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4118
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move v4, v2

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 5

    .prologue
    .line 3471
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    move v1, v3

    .line 3472
    .local v1, "flags":I
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3473
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3474
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v2, v3

    .line 3475
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v2

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3476
    move-object v3, v2

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3477
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3479
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 16

    .prologue
    .line 3823
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3824
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3825
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3826
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3827
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/ViewInfoStore;->clear()V

    .line 3828
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3829
    move-object v9, v1

    invoke-direct {v9}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3830
    move-object v9, v1

    invoke-direct {v9}, Landroidx/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    .line 3831
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v10, v10, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v10, :cond_1

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3832
    move-object v9, v1

    move-object v10, v1

    const/4 v11, 0x0

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    iput-boolean v12, v11, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3833
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v10, v10, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3834
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 3835
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3837
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v9, :cond_3

    .line 3839
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v9

    move v2, v9

    .line 3840
    .local v2, "count":I
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    :goto_1
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_3

    .line 3841
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v4, v9

    .line 3842
    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v9

    if-nez v9, :cond_2

    .line 3843
    .line 3840
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3831
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 3845
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v11, v4

    move-object v12, v4

    .line 3847
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v12

    move-object v13, v4

    .line 3848
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    .line 3846
    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v9

    move-object v5, v9

    .line 3849
    .local v5, "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3850
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v4

    .line 3851
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3852
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v9

    move-wide v6, v9

    .line 3860
    .local v6, "key":J
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-wide v10, v6

    move-object v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 3864
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v5    # "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v6    # "key":J
    :cond_3
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v9, :cond_9

    .line 3871
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 3872
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    move v2, v9

    .line 3873
    .local v2, "didStructureChange":Z
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3875
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3876
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move v10, v2

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3878
    const/4 v9, 0x0

    move v3, v9

    .restart local v3    # "i":I
    :goto_3
    move v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 3879
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v4, v9

    .line 3880
    .local v4, "child":Landroid/view/View;
    move-object v9, v4

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v5, v9

    .line 3881
    .local v5, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3882
    .line 3878
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3884
    :cond_5
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ViewInfoStore;->isInPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3885
    move-object v9, v5

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v9

    move v6, v9

    .line 3886
    .local v6, "flags":I
    move-object v9, v5

    const/16 v10, 0x2000

    .line 3887
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v9

    move v7, v9

    .line 3888
    .local v7, "wasHidden":Z
    move v9, v7

    if-nez v9, :cond_6

    .line 3889
    move v9, v6

    const/16 v10, 0x1000

    or-int/lit16 v9, v9, 0x1000

    move v6, v9

    .line 3891
    :cond_6
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v11, v5

    move v12, v6

    move-object v13, v5

    .line 3892
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    .line 3891
    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v9

    move-object v8, v9

    .line 3893
    .local v8, "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move v9, v7

    if-eqz v9, :cond_7

    .line 3894
    move-object v9, v1

    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3896
    :cond_7
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3901
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v6    # "flags":I
    .end local v7    # "wasHidden":Z
    .end local v8    # "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_8
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 3902
    .line 3905
    .end local v2    # "didStructureChange":Z
    .end local v3    # "i":I
    :goto_5
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3906
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3907
    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v10, 0x2

    iput v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 3908
    return-void

    .line 3903
    :cond_9
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .prologue
    .line 3915
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3916
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3917
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3918
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3919
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 3920
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3923
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3924
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3926
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3927
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 3930
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3931
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 3932
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3933
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3934
    return-void

    .line 3930
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 19

    .prologue
    .line 3941
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3942
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3943
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3944
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v13, 0x1

    iput v13, v12, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 3945
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v12, v12, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v12, :cond_5

    .line 3949
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v2, v12

    .local v2, "i":I
    :goto_0
    move v12, v2

    if-ltz v12, :cond_4

    .line 3950
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v13, v2

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    move-object v3, v12

    .line 3951
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3952
    .line 3949
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3954
    :cond_0
    move-object v12, v1

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v12

    move-wide v4, v12

    .line 3955
    .local v4, "key":J
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v14, v3

    .line 3956
    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v12

    move-object v6, v12

    .line 3957
    .local v6, "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-wide v13, v4

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    move-object v7, v12

    .line 3958
    .local v7, "oldChangeViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v12, v7

    if-eqz v12, :cond_3

    move-object v12, v7

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3969
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v12

    move v8, v12

    .line 3971
    .local v8, "oldDisappearing":Z
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v12

    move v9, v12

    .line 3972
    .local v9, "newDisappearing":Z
    move v12, v8

    if-eqz v12, :cond_1

    move-object v12, v7

    move-object v13, v3

    if-ne v12, v13, :cond_1

    .line 3974
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3988
    :goto_2
    goto :goto_1

    .line 3976
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v12

    move-object v10, v12

    .line 3979
    .local v10, "preInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3980
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v12

    move-object v11, v12

    .line 3981
    .local v11, "postInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v12, v10

    if-nez v12, :cond_2

    .line 3982
    move-object v12, v1

    move-wide v13, v4

    move-object v15, v3

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 3984
    :cond_2
    move-object v12, v1

    move-object v13, v7

    move-object v14, v3

    move-object v15, v10

    move-object/from16 v16, v11

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_2

    .line 3989
    .end local v8    # "oldDisappearing":Z
    .end local v9    # "newDisappearing":Z
    .end local v10    # "preInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v11    # "postInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto/16 :goto_1

    .line 3994
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "key":J
    .end local v6    # "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v7    # "oldChangeViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ViewInfoStore;->process(Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V

    .line 3997
    .end local v2    # "i":I
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 3998
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v13, v13, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput v13, v12, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 3999
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4000
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 4001
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 4003
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 4004
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 4005
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    .line 4006
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 4008
    :cond_6
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v12, :cond_7

    .line 4011
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v13, 0x0

    iput v13, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 4012
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 4013
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 4016
    :cond_7
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4017
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4018
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4019
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/ViewInfoStore;->clear()V

    .line 4020
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-direct {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4021
    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4023
    :cond_8
    move-object v12, v1

    invoke-direct {v12}, Landroidx/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    .line 4024
    move-object v12, v1

    invoke-direct {v12}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    .line 4025
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2941
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "e":Landroid/view/MotionEvent;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v2, v6

    .line 2942
    .local v2, "action":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-eqz v6, :cond_0

    .line 2943
    move v6, v2

    if-nez v6, :cond_1

    .line 2945
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 2958
    :cond_0
    move v6, v2

    if-eqz v6, :cond_5

    .line 2959
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2960
    .local v3, "listenerCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_5

    .line 2961
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    move-object v5, v6

    .line 2962
    .local v5, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2963
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 2964
    const/4 v6, 0x1

    move v0, v6

    .line 2968
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    .end local v5    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :goto_1
    return v0

    .line 2947
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2948
    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2950
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 2952
    :cond_3
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 2960
    .restart local v3    # "listenerCount":I
    .restart local v4    # "i":I
    .restart local v5    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2968
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    .end local v5    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2924
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "e":Landroid/view/MotionEvent;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v2, v6

    .line 2925
    .local v2, "action":I
    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move v6, v2

    if-nez v6, :cond_1

    .line 2926
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 2929
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2930
    .local v3, "listenerCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 2931
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    move-object v5, v6

    .line 2932
    .local v5, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 2933
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 2934
    const/4 v6, 0x1

    move v0, v6

    .line 2937
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v5    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :goto_1
    return v0

    .line 2930
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v5    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2937
    .end local v5    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 11

    .prologue
    .line 4091
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "into":[I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v2, v8

    .line 4092
    .local v2, "count":I
    move v8, v2

    if-nez v8, :cond_0

    .line 4093
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 4094
    move-object v8, v1

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 4095
    .line 4114
    :goto_0
    return-void

    .line 4097
    :cond_0
    const v8, 0x7fffffff

    move v3, v8

    .line 4098
    .local v3, "minPositionPreLayout":I
    const/high16 v8, -0x80000000

    move v4, v8

    .line 4099
    .local v4, "maxPositionPreLayout":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_4

    .line 4100
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v6, v8

    .line 4101
    .local v6, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4102
    .line 4099
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4104
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v7, v8

    .line 4105
    .local v7, "pos":I
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 4106
    move v8, v7

    move v3, v8

    .line 4108
    :cond_3
    move v8, v7

    move v9, v4

    if-le v8, v9, :cond_1

    .line 4109
    move v8, v7

    move v4, v8

    goto :goto_2

    .line 4112
    .end local v6    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "pos":I
    :cond_4
    move-object v8, v1

    const/4 v9, 0x0

    move v10, v3

    aput v10, v8, v9

    .line 4113
    move-object v8, v1

    const/4 v9, 0x1

    move v10, v4

    aput v10, v8, v9

    .line 4114
    goto :goto_0
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 5570
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v6, v0

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    .line 5571
    const/4 v6, 0x0

    move-object v0, v6

    .line 5585
    .end local v0    # "view":Landroid/view/View;
    .local v1, "parent":Landroid/view/ViewGroup;
    .local v2, "count":I
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 5573
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v6, v0

    instance-of v6, v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_1

    .line 5574
    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    move-object v0, v6

    goto :goto_0

    .line 5576
    :cond_1
    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    move-object v1, v6

    .line 5577
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v2, v6

    .line 5578
    .restart local v2    # "count":I
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "i":I
    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 5579
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 5580
    .local v4, "child":Landroid/view/View;
    move-object v6, v4

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    move-object v5, v6

    .line 5581
    .local v5, "descendant":Landroidx/recyclerview/widget/RecyclerView;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 5582
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 5578
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5585
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "descendant":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3692
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    :goto_0
    move v1, v6

    .line 3695
    .local v1, "startFocusSearchIndex":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    move v3, v6

    .line 3696
    .local v3, "itemCount":I
    move v6, v1

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 3697
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v2, v6

    .line 3698
    .local v2, "nextFocus":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v2

    if-nez v6, :cond_2

    .line 3699
    .line 3705
    .end local v2    # "nextFocus":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move v6, v3

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v4, v6

    .line 3706
    .local v4, "limit":I
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    if-ltz v6, :cond_6

    .line 3707
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v2, v6

    .line 3708
    .restart local v2    # "nextFocus":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v2

    if-nez v6, :cond_4

    .line 3709
    const/4 v6, 0x0

    move-object v0, v6

    .line 3715
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v2    # "nextFocus":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "limit":I
    .end local v5    # "i":I
    :goto_3
    return-object v0

    .line 3692
    .end local v1    # "startFocusSearchIndex":I
    .end local v3    # "itemCount":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3701
    .restart local v1    # "startFocusSearchIndex":I
    .restart local v2    # "nextFocus":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .restart local v3    # "itemCount":I
    .local v4, "i":I
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3702
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v6

    goto :goto_3

    .line 3696
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3711
    .local v4, "limit":I
    .restart local v5    # "i":I
    :cond_4
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3712
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v6

    goto :goto_3

    .line 3706
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3715
    .end local v2    # "nextFocus":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_6
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_3
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 4606
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 4607
    const/4 v1, 0x0

    move-object v0, v1

    .line 4609
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    .line 4886
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/Rect;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v4

    .line 4887
    .local v2, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v3, v4

    .line 4888
    .local v3, "insets":Landroid/graphics/Rect;
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v3

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    move-object v6, v0

    .line 4889
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    move-object v7, v0

    .line 4890
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object v8, v0

    .line 4891
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 4888
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4892
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 3793
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v2, v4

    .line 3794
    .local v2, "lastKnownId":I
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3795
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 3796
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v3, v4

    .line 3797
    .local v3, "id":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 3798
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v2, v4

    .line 3800
    :cond_0
    goto :goto_0

    .line 3801
    .end local v3    # "id":I
    :cond_1
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 836
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v0

    .line 833
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v3, v2

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 834
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 836
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 6

    .prologue
    .line 13250
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v1, :cond_0

    .line 13251
    move-object v1, v0

    new-instance v2, Landroidx/core/view/NestedScrollingChildHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 13253
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 17

    .prologue
    .line 4045
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-wide/from16 v2, p1

    .local v2, "key":J
    move-object/from16 v4, p3

    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v5, p4

    .local v5, "oldChangeViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v12

    move v6, v12

    .line 4046
    .local v6, "childCount":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    move v13, v6

    if-ge v12, v13, :cond_3

    .line 4047
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v13, v7

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v8, v12

    .line 4048
    .local v8, "view":Landroid/view/View;
    move-object v12, v8

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    move-object v9, v12

    .line 4049
    .local v9, "other":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v12, v9

    move-object v13, v4

    if-ne v12, v13, :cond_1

    .line 4050
    .line 4046
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4052
    :cond_1
    move-object v12, v1

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v12

    move-wide v10, v12

    .line 4053
    .local v10, "otherKey":J
    move-wide v12, v10

    move-wide v14, v2

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 4054
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v12, :cond_2

    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 4055
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " \n View Holder 2:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    .line 4058
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4060
    :cond_2
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " \n View Holder 2:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    .line 4064
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4069
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "other":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v10    # "otherKey":J
    :cond_3
    const-string/jumbo v12, "RecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " cannot be found but it is necessary for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    .line 4071
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4069
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 4072
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 6

    .prologue
    .line 1897
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1898
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1899
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 1900
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1901
    .line 1898
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1903
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1904
    const/4 v4, 0x1

    move v0, v4

    .line 1907
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private initAutofill()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 749
    move-object v1, v0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    .line 752
    :cond_0
    return-void
.end method

.method private initChildrenHelper()V
    .locals 8

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/ChildHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$5;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$5;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;-><init>(Landroidx/recyclerview/widget/ChildHelper$Callback;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 960
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 13

    .prologue
    .line 2663
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "focused":Landroid/view/View;
    move-object v2, p2

    .local v2, "next":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "direction":I
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    move-object v8, v0

    if-ne v7, v8, :cond_1

    .line 2664
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2715
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .line 2667
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2668
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2670
    :cond_2
    move-object v7, v1

    if-nez v7, :cond_3

    .line 2671
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2674
    :cond_3
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2675
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2678
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2679
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2680
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2681
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2682
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    const/4 v7, -0x1

    :goto_1
    move v4, v7

    .line 2683
    .local v4, "rtl":I
    const/4 v7, 0x0

    move v5, v7

    .line 2684
    .local v5, "rightness":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-lt v7, v8, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_a

    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ge v7, v8, :cond_a

    .line 2687
    const/4 v7, 0x1

    move v5, v7

    .line 2693
    :cond_6
    :goto_2
    const/4 v7, 0x0

    move v6, v7

    .line 2694
    .local v6, "downness":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_7

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_c

    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v8, :cond_c

    .line 2697
    const/4 v7, 0x1

    move v6, v7

    .line 2703
    :cond_8
    :goto_3
    move v7, v3

    sparse-switch v7, :sswitch_data_0

    .line 2717
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid direction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2682
    .end local v4    # "rtl":I
    .end local v5    # "rightness":I
    .end local v6    # "downness":I
    :cond_9
    const/4 v7, 0x1

    goto :goto_1

    .line 2688
    .restart local v4    # "rtl":I
    .restart local v5    # "rightness":I
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-gt v7, v8, :cond_b

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_6

    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_6

    .line 2691
    const/4 v7, -0x1

    move v5, v7

    goto :goto_2

    .line 2698
    .restart local v6    # "downness":I
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_d

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_8

    :cond_d
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_8

    .line 2701
    const/4 v7, -0x1

    move v6, v7

    goto :goto_3

    .line 2705
    :sswitch_0
    move v7, v5

    if-gez v7, :cond_e

    const/4 v7, 0x1

    :goto_4
    move v0, v7

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    .line 2707
    :sswitch_1
    move v7, v5

    if-lez v7, :cond_f

    const/4 v7, 0x1

    :goto_5
    move v0, v7

    goto/16 :goto_0

    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    .line 2709
    :sswitch_2
    move v7, v6

    if-gez v7, :cond_10

    const/4 v7, 0x1

    :goto_6
    move v0, v7

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x0

    goto :goto_6

    .line 2711
    :sswitch_3
    move v7, v6

    if-lez v7, :cond_11

    const/4 v7, 0x1

    :goto_7
    move v0, v7

    goto/16 :goto_0

    :cond_11
    const/4 v7, 0x0

    goto :goto_7

    .line 2713
    :sswitch_4
    move v7, v6

    if-gtz v7, :cond_12

    move v7, v6

    if-nez v7, :cond_13

    move v7, v5

    move v8, v4

    mul-int/2addr v7, v8

    if-ltz v7, :cond_13

    :cond_12
    const/4 v7, 0x1

    :goto_8
    move v0, v7

    goto/16 :goto_0

    :cond_13
    const/4 v7, 0x0

    goto :goto_8

    .line 2715
    :sswitch_5
    move v7, v6

    if-ltz v7, :cond_14

    move v7, v6

    if-nez v7, :cond_15

    move v7, v5

    move v8, v4

    mul-int/2addr v7, v8

    if-gtz v7, :cond_15

    :cond_14
    const/4 v7, 0x1

    :goto_9
    move v0, v7

    goto/16 :goto_0

    :cond_15
    const/4 v7, 0x0

    goto :goto_9

    .line 2703
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    .line 3244
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "e":Landroid/view/MotionEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    move v2, v4

    .line 3245
    .local v2, "actionIndex":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v4, v5, :cond_0

    .line 3247
    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 3248
    .local v3, "newIndex":I
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3249
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3250
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3252
    .end local v3    # "newIndex":I
    :cond_0
    return-void

    .line 3247
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 2

    .prologue
    .line 3561
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 4

    .prologue
    .line 3571
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_0

    .line 3574
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AdapterHelper;->reset()V

    .line 3575
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v2, :cond_0

    .line 3576
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3582
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3583
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    .line 3587
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v1, v2

    .line 3588
    .local v1, "animationTypeSupported":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    move v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v3, :cond_6

    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3594
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3595
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_7

    move v3, v1

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_7

    move-object v3, v0

    .line 3598
    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3599
    return-void

    .line 3585
    .end local v1    # "animationTypeSupported":Z
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    .line 3587
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 3594
    .restart local v1    # "animationTypeSupported":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 3598
    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 11

    .prologue
    .line 2367
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "overscrollX":F
    move v3, p3

    .local v3, "y":F
    move v4, p4

    .local v4, "overscrollY":F
    const/4 v6, 0x0

    move v5, v6

    .line 2368
    .local v5, "invalidate":Z
    move v6, v2

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 2369
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2370
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    move v7, v2

    neg-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2371
    const/4 v6, 0x1

    move v5, v6

    .line 2378
    :cond_0
    :goto_0
    move v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 2379
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2380
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    move v7, v4

    neg-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2381
    const/4 v6, 0x1

    move v5, v6

    .line 2388
    :cond_1
    :goto_1
    move v6, v5

    if-nez v6, :cond_2

    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 2389
    :cond_2
    move-object v6, v0

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2391
    :cond_3
    return-void

    .line 2372
    :cond_4
    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2373
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 2374
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2375
    const/4 v6, 0x1

    move v5, v6

    goto :goto_0

    .line 2382
    :cond_5
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 2383
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 2384
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2385
    const/4 v6, 0x1

    move v5, v6

    goto :goto_1
.end method

.method private recoverFocusFromState()V
    .locals 8

    .prologue
    .line 3719
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 3720
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_0

    move-object v4, v0

    .line 3721
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3726
    .line 3790
    :cond_0
    :goto_0
    return-void

    .line 3729
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3730
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 3731
    .local v1, "focusedChild":Landroid/view/View;
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    .line 3732
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3744
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 3747
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    move-result v4

    .line 3748
    goto :goto_0

    .line 3750
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3753
    goto :goto_0

    .line 3756
    .end local v1    # "focusedChild":Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    move-object v1, v4

    .line 3760
    .local v1, "focusTarget":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-wide v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3761
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-wide v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v1, v4

    .line 3763
    :cond_5
    const/4 v4, 0x0

    move-object v2, v4

    .line 3764
    .local v2, "viewToFocus":Landroid/view/View;
    move-object v4, v1

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3765
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3766
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 3773
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 3781
    :cond_7
    :goto_1
    move-object v4, v2

    if-eqz v4, :cond_9

    .line 3782
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 3783
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 3784
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    if-eqz v4, :cond_8

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3785
    move-object v4, v3

    move-object v2, v4

    .line 3788
    .end local v3    # "child":Landroid/view/View;
    :cond_8
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 3790
    :cond_9
    goto/16 :goto_0

    .line 3778
    :cond_a
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    goto :goto_1
.end method

.method private releaseGlows()V
    .locals 4

    .prologue
    .line 2394
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v2, 0x0

    move v1, v2

    .line 2395
    .local v1, "needsInvalidate":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 2396
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2397
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    move v1, v2

    .line 2399
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 2400
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2401
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2403
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_2

    .line 2404
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2405
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2407
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_3

    .line 2408
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2409
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2411
    :cond_3
    move v2, v1

    if-eqz v2, :cond_4

    .line 2412
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2414
    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2738
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "focused":Landroid/view/View;
    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    :goto_0
    move-object v3, v7

    .line 2739
    .local v3, "rectView":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2744
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v4, v7

    .line 2745
    .local v4, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v7, v4

    instance-of v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v7, :cond_0

    .line 2747
    move-object v7, v4

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 2748
    .local v5, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v7, :cond_0

    .line 2749
    move-object v7, v5

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v6, v7

    .line 2750
    .local v6, "insets":Landroid/graphics/Rect;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 2751
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 2752
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 2753
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2757
    .end local v5    # "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v6    # "insets":Landroid/graphics/Rect;
    :cond_0
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 2758
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2759
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2761
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move-object v12, v2

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v7

    .line 2763
    return-void

    .line 2738
    .end local v3    # "rectView":Landroid/view/View;
    .end local v4    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object v7, v1

    goto/16 :goto_0

    .line 2761
    .restart local v3    # "rectView":Landroid/view/View;
    .restart local v4    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    .line 3677
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3678
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3679
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3680
    return-void
.end method

.method private resetTouch()V
    .locals 3

    .prologue
    .line 3231
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 3232
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 3234
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3235
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->releaseGlows()V

    .line 3236
    return-void
.end method

.method private saveFocusInfo()V
    .locals 6

    .prologue
    .line 3656
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v3, 0x0

    move-object v1, v3

    .line 3657
    .local v1, "child":Landroid/view/View;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    .line 3658
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    .line 3661
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 3662
    .local v2, "focusedVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-nez v3, :cond_2

    .line 3663
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    .line 3674
    :goto_1
    return-void

    .line 3661
    .end local v2    # "focusedVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_0

    .line 3665
    .restart local v2    # "focusedVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    :goto_2
    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3669
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    .line 3671
    :goto_3
    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3672
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    goto :goto_1

    .line 3665
    :cond_3
    const-wide/16 v4, -0x1

    goto :goto_2

    .line 3669
    :cond_4
    move-object v4, v2

    .line 3670
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_3

    :cond_5
    move-object v4, v2

    .line 3671
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    goto :goto_3
.end method

.method private setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1192
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move v2, p2

    .local v2, "compatibleWithPrevious":Z
    move v3, p3

    .local v3, "removeAndRecycleViews":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    .line 1193
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1194
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1196
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_2

    .line 1197
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1199
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/AdapterHelper;->reset()V

    .line 1200
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v4, v5

    .line 1201
    .local v4, "oldAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1202
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 1203
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1204
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1206
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_4

    .line 1207
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1209
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 1210
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1211
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 2

    .prologue
    .line 2338
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2339
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 2340
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2342
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 5

    .prologue
    .line 2440
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "velocityX":I
    move v2, p2

    .local v2, "velocityY":I
    move v3, v1

    if-gez v3, :cond_4

    .line 2441
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2442
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    move v4, v1

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2448
    :cond_0
    :goto_0
    move v3, v2

    if-gez v3, :cond_5

    .line 2449
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2450
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    move v4, v2

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2456
    :cond_1
    :goto_1
    move v3, v1

    if-nez v3, :cond_2

    move v3, v2

    if-eqz v3, :cond_3

    .line 2457
    :cond_2
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2459
    :cond_3
    return-void

    .line 2443
    :cond_4
    move v3, v1

    if-lez v3, :cond_0

    .line 2444
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 2445
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2451
    :cond_5
    move v3, v2

    if-lez v3, :cond_1

    .line 2452
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 2453
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 9
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
    .line 2772
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v2, p2

    .local v2, "direction":I
    move v3, p3

    .local v3, "focusableMode":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2773
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2775
    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1592
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "decor":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    .line 1593
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1563
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "decor":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 1564
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string/jumbo v4, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1567
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1568
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1570
    :cond_1
    move v3, v2

    if-gez v3, :cond_2

    .line 1571
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1575
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1576
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1577
    return-void

    .line 1573
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1268
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1269
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1271
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1272
    return-void
.end method

.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2908
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2909
    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1701
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1702
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1704
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1705
    return-void
.end method

.method animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4153
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "itemHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "preLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v3, p3

    .local v3, "postLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4154
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4155
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 4157
    :cond_0
    return-void
.end method

.method animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4161
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, p2

    .local v2, "preLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v3, p3

    .local v3, "postLayoutInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4162
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4163
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4164
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 4166
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 2859
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2860
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2861
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 2862
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2864
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2867
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 2877
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2878
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2879
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 2880
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2882
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2884
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v2, :cond_2

    .line 2885
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    .line 2890
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2885
    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 2892
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 4464
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v3, v1

    move-object v4, v1

    .line 4465
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 4464
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 4290
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 4344
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 4345
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 4346
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 4347
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4348
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 4345
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4351
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 4352
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 2

    .prologue
    .line 1292
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1293
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1295
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 2

    .prologue
    .line 1722
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1723
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1725
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 3

    .prologue
    .line 2007
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 2008
    const/4 v1, 0x0

    move v0, v1

    .line 2010
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 3

    .prologue
    .line 1982
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1983
    const/4 v1, 0x0

    move v0, v1

    .line 1985
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2030
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 2031
    const/4 v1, 0x0

    move v0, v1

    .line 2033
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 3

    .prologue
    .line 2079
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 2080
    const/4 v1, 0x0

    move v0, v1

    .line 2082
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 2055
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 2056
    const/4 v1, 0x0

    move v0, v1

    .line 2058
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2102
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 2103
    const/4 v1, 0x0

    move v0, v1

    .line 2105
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 6

    .prologue
    .line 2417
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    const/4 v4, 0x0

    move v3, v4

    .line 2418
    .local v3, "needsInvalidate":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    if-lez v4, :cond_0

    .line 2419
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2420
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    move v3, v4

    .line 2422
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    if-gez v4, :cond_1

    .line 2423
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2424
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2426
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    if-lez v4, :cond_2

    .line 2427
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2428
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2430
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    if-gez v4, :cond_3

    .line 2431
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2432
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2434
    :cond_3
    move v4, v3

    if-eqz v4, :cond_4

    .line 2435
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2437
    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 3

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_1

    .line 1857
    :cond_0
    const-string/jumbo v1, "RV FullInvalidate"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1858
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 1859
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1860
    .line 1891
    :goto_0
    return-void

    .line 1862
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1863
    goto :goto_0

    .line 1868
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 1869
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1871
    const-string/jumbo v1, "RV PartialInvalidate"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1872
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1873
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1874
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    .line 1875
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v1, :cond_3

    .line 1876
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1877
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 1883
    :cond_3
    :goto_1
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1884
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1885
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1891
    :cond_4
    :goto_2
    goto :goto_0

    .line 1880
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    .line 1886
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1887
    const-string/jumbo v1, "RV FullInvalidate"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1888
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 1889
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_2
.end method

.method defaultOnMeasure(II)V
    .locals 8

    .prologue
    .line 3402
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "widthSpec":I
    move v2, p2

    .local v2, "heightSpec":I
    move v5, v1

    move-object v6, v0

    .line 3403
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v0

    .line 3404
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v7

    .line 3402
    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v5

    move v3, v5

    .line 3405
    .local v3, "width":I
    move v5, v2

    move-object v6, v0

    .line 3406
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v0

    .line 3407
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    .line 3405
    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v5

    move v4, v5

    .line 3409
    .local v4, "height":I
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3410
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 7267
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v5, v1

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v2, v5

    .line 7268
    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 7269
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 7270
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7272
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 7273
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 7274
    .local v3, "cnt":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 7275
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 7274
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 7278
    .end local v3    # "cnt":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 7253
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v5, v1

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v2, v5

    .line 7254
    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 7255
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 7256
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7258
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 7259
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 7260
    .local v3, "cnt":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 7261
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 7260
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 7264
    .end local v3    # "cnt":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method dispatchLayout()V
    .locals 3

    .prologue
    .line 3627
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v1, :cond_0

    .line 3628
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "No adapter attached; skipping layout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3630
    .line 3653
    :goto_0
    return-void

    .line 3632
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 3633
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "No layout manager attached; skipping layout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3635
    goto :goto_0

    .line 3637
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3638
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3639
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3640
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3641
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3652
    :goto_1
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3653
    goto :goto_0

    .line 3642
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasUpdates()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3643
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 3646
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3647
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 3650
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 11332
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move v3, p3

    .local v3, "consumed":Z
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v4

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 11337
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 10

    .prologue
    .line 11320
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "consumed":[I
    move-object v4, p4

    .local v4, "offsetInWindow":[I
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v5

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 12

    .prologue
    .line 11326
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "consumed":[I
    move-object/from16 v4, p4

    .local v4, "offsetInWindow":[I
    move/from16 v5, p5

    .local v5, "type":I
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v6

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 12

    .prologue
    .line 11307
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dxConsumed":I
    move v2, p2

    .local v2, "dyConsumed":I
    move v3, p3

    .local v3, "dxUnconsumed":I
    move/from16 v4, p4

    .local v4, "dyUnconsumed":I
    move-object/from16 v5, p5

    .local v5, "offsetInWindow":[I
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v6

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 14

    .prologue
    .line 11314
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dxConsumed":I
    move/from16 v2, p2

    .local v2, "dyConsumed":I
    move/from16 v3, p3

    .local v3, "dxUnconsumed":I
    move/from16 v4, p4

    .local v4, "dyUnconsumed":I
    move-object/from16 v5, p5

    .local v5, "offsetInWindow":[I
    move/from16 v6, p6

    .local v6, "type":I
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v7

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 6

    .prologue
    .line 4984
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "state":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 4985
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4990
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4993
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_1

    .line 4994
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4996
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 4997
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_2

    .line 4998
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4997
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5001
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 12

    .prologue
    .line 4944
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "hresult":I
    move v2, p2

    .local v2, "vresult":I
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4947
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getScrollX()I

    move-result v6

    move v3, v6

    .line 4948
    .local v3, "scrollX":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result v6

    move v4, v6

    .line 4949
    .local v4, "scrollY":I
    move-object v6, v0

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4952
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 4956
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v6, :cond_0

    .line 4957
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4959
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 4960
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    if-ltz v6, :cond_1

    .line 4961
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4960
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4964
    .end local v5    # "i":I
    :cond_1
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4965
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 6

    .prologue
    .line 11219
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    .local v1, "i":I
    :goto_0
    move v4, v1

    if-ltz v4, :cond_2

    .line 11220
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v2, v4

    .line 11221
    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11222
    .line 11219
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11224
    :cond_1
    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    move v3, v4

    .line 11225
    .local v3, "state":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 11227
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v5, v3

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 11228
    move-object v4, v2

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    goto :goto_1

    .line 11232
    .end local v2    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v3    # "state":I
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 11233
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1414
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1415
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1406
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1407
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 4219
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 4221
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 4222
    .local v2, "count":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 4223
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4227
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 4228
    .local v3, "needsInvalidate":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4229
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 4230
    .local v4, "restore":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_8

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    :goto_1
    move v5, v7

    .line 4231
    .local v5, "padding":I
    move-object v7, v1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4232
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    move v9, v5

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4233
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    move v3, v7

    .line 4234
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4236
    .end local v4    # "restore":I
    .end local v5    # "padding":I
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4237
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 4238
    .restart local v4    # "restore":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_2

    .line 4239
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4241
    :cond_2
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    or-int/2addr v7, v8

    move v3, v7

    .line 4242
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4244
    .end local v4    # "restore":I
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 4245
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 4246
    .restart local v4    # "restore":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v7

    move v5, v7

    .line 4247
    .local v5, "width":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_b

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    :goto_4
    move v6, v7

    .line 4248
    .local v6, "padding":I
    move-object v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4249
    move-object v7, v1

    move v8, v6

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v5

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4250
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    or-int/2addr v7, v8

    move v3, v7

    .line 4251
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4253
    .end local v4    # "restore":I
    .end local v5    # "width":I
    .end local v6    # "padding":I
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4254
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 4255
    .restart local v4    # "restore":I
    move-object v7, v1

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4256
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_d

    .line 4257
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v8

    neg-int v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4261
    :goto_6
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_e

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_7
    or-int/2addr v7, v8

    move v3, v7

    .line 4262
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4268
    .end local v4    # "restore":I
    :cond_5
    move v7, v3

    if-nez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 4269
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4270
    const/4 v7, 0x1

    move v3, v7

    .line 4273
    :cond_6
    move v7, v3

    if-eqz v7, :cond_7

    .line 4274
    move-object v7, v0

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 4276
    :cond_7
    return-void

    .line 4230
    .restart local v4    # "restore":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 4233
    .local v5, "padding":I
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 4241
    .end local v5    # "padding":I
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 4247
    .local v5, "width":I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 4250
    .restart local v6    # "padding":I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 4259
    .end local v5    # "width":I
    .end local v6    # "padding":I
    :cond_d
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 4261
    :cond_e
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .prologue
    .line 4820
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-wide v3, p3

    .local v3, "drawingTime":J
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method ensureBottomGlow()V
    .locals 5

    .prologue
    .line 2502
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2503
    .line 2512
    :goto_0
    return-void

    .line 2505
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2506
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2507
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2508
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2507
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2512
    :goto_1
    goto :goto_0

    .line 2510
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_1
.end method

.method ensureLeftGlow()V
    .locals 5

    .prologue
    .line 2462
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2463
    .line 2472
    :goto_0
    return-void

    .line 2465
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2466
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2467
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2468
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2467
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2472
    :goto_1
    goto :goto_0

    .line 2470
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_1
.end method

.method ensureRightGlow()V
    .locals 5

    .prologue
    .line 2475
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2476
    .line 2485
    :goto_0
    return-void

    .line 2478
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2479
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2480
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2481
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2480
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2485
    :goto_1
    goto :goto_0

    .line 2483
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_1
.end method

.method ensureTopGlow()V
    .locals 5

    .prologue
    .line 2488
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2489
    .line 2499
    :goto_0
    return-void

    .line 2491
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2492
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2493
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2494
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2493
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2499
    :goto_1
    goto :goto_0

    .line 2496
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_1
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", adapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", layout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 737
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method final fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 3805
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3806
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v3

    .line 3807
    .local v2, "scroller":Landroid/widget/OverScroller;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 3808
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    .line 3809
    .line 3813
    .end local v2    # "scroller":Landroid/widget/OverScroller;
    :goto_0
    return-void

    .line 3810
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 3811
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 4803
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v3, v8

    .line 4804
    .local v3, "count":I
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    if-ltz v8, :cond_1

    .line 4805
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 4806
    .local v5, "child":Landroid/view/View;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    move v6, v8

    .line 4807
    .local v6, "translationX":F
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    move v7, v8

    .line 4808
    .local v7, "translationY":F
    move v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    move v10, v6

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v1

    move-object v9, v5

    .line 4809
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    move v10, v6

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    move v8, v2

    move-object v9, v5

    .line 4810
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move v10, v7

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v2

    move-object v9, v5

    .line 4811
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    move v10, v7

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 4812
    move-object v8, v5

    move-object v0, v8

    .line 4815
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "translationX":F
    .end local v7    # "translationY":F
    :goto_1
    return-object v0

    .line 4804
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "translationX":F
    .restart local v7    # "translationY":F
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4815
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "translationX":F
    .end local v7    # "translationY":F
    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 4582
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 4583
    .local v2, "parent":Landroid/view/ViewParent;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_0

    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 4584
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 4585
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 4587
    :cond_0
    move-object v3, v2

    move-object v4, v0

    if-ne v3, v4, :cond_1

    move-object v3, v1

    :goto_1
    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 4600
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 4601
    .local v2, "itemView":Landroid/view/View;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_0
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 4714
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v6, :cond_0

    .line 4715
    const/4 v6, 0x0

    move-object v0, v6

    .line 4731
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v0

    .line 4717
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v2, v6

    .line 4719
    .local v2, "childCount":I
    const/4 v6, 0x0

    move-object v3, v6

    .line 4720
    .local v3, "hidden":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 4721
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 4722
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v5

    .line 4723
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 4724
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v7, v5

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4725
    move-object v6, v5

    move-object v3, v6

    .line 4720
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4727
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 4731
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 4776
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-wide v2, p1

    .local v2, "id":J
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4777
    :cond_0
    const/4 v8, 0x0

    move-object v1, v8

    .line 4791
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v1

    .line 4779
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v8

    move v4, v8

    .line 4780
    .local v4, "childCount":I
    const/4 v8, 0x0

    move-object v5, v8

    .line 4781
    .local v5, "hidden":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 4782
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v7, v8

    .line 4783
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v7

    if-eqz v8, :cond_2

    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 4784
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v9, v7

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4785
    move-object v8, v7

    move-object v5, v8

    .line 4781
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4787
    :cond_3
    move-object v8, v7

    move-object v1, v8

    goto :goto_0

    .line 4791
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_4
    move-object v8, v5

    move-object v1, v8

    goto :goto_0
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 4692
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4668
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 4736
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "checkNewPosition":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v7

    move v3, v7

    .line 4737
    .local v3, "childCount":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 4738
    .local v4, "hidden":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    .line 4739
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v6, v7

    .line 4740
    .local v6, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4741
    move v7, v2

    if-eqz v7, :cond_1

    .line 4742
    move-object v7, v6

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v8, v1

    if-eq v7, v8, :cond_2

    .line 4743
    .line 4738
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4745
    :cond_1
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    move v8, v1

    if-eq v7, v8, :cond_2

    .line 4746
    goto :goto_1

    .line 4748
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4749
    move-object v7, v6

    move-object v4, v7

    goto :goto_1

    .line 4751
    :cond_3
    move-object v7, v6

    move-object v0, v7

    .line 4758
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v6    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_2
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_4
    move-object v7, v4

    move-object v0, v7

    goto :goto_2
.end method

.method public fling(II)Z
    .locals 11

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "velocityX":I
    move v2, p2

    .local v2, "velocityY":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v7, :cond_0

    .line 2276
    const-string/jumbo v7, "RecyclerView"

    const-string/jumbo v8, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2278
    const/4 v7, 0x0

    move v0, v7

    .line 2322
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .line 2280
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v7, :cond_1

    .line 2281
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2284
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    move v3, v7

    .line 2285
    .local v3, "canScrollHorizontal":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    move v4, v7

    .line 2287
    .local v4, "canScrollVertical":Z
    move v7, v3

    if-eqz v7, :cond_2

    move v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v7, v8, :cond_3

    .line 2288
    :cond_2
    const/4 v7, 0x0

    move v1, v7

    .line 2290
    :cond_3
    move v7, v4

    if-eqz v7, :cond_4

    move v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v7, v8, :cond_5

    .line 2291
    :cond_4
    const/4 v7, 0x0

    move v2, v7

    .line 2293
    :cond_5
    move v7, v1

    if-nez v7, :cond_6

    move v7, v2

    if-nez v7, :cond_6

    .line 2295
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2298
    :cond_6
    move-object v7, v0

    move v8, v1

    int-to-float v8, v8

    move v9, v2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2299
    move v7, v3

    if-nez v7, :cond_7

    move v7, v4

    if-eqz v7, :cond_8

    :cond_7
    const/4 v7, 0x1

    :goto_1
    move v5, v7

    .line 2300
    .local v5, "canScroll":Z
    move-object v7, v0

    move v8, v1

    int-to-float v8, v8

    move v9, v2

    int-to-float v9, v9

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    move-result v7

    .line 2302
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2303
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2299
    .end local v5    # "canScroll":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 2306
    .restart local v5    # "canScroll":Z
    :cond_9
    move v7, v5

    if-eqz v7, :cond_c

    .line 2307
    const/4 v7, 0x0

    move v6, v7

    .line 2308
    .local v6, "nestedScrollAxis":I
    move v7, v3

    if-eqz v7, :cond_a

    .line 2309
    move v7, v6

    const/4 v8, 0x1

    or-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 2311
    :cond_a
    move v7, v4

    if-eqz v7, :cond_b

    .line 2312
    move v7, v6

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 2314
    :cond_b
    move-object v7, v0

    move v8, v6

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    move-result v7

    .line 2316
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v7, v7

    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v1, v7

    .line 2317
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v7, v7

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v2, v7

    .line 2318
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    move v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 2319
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 2322
    .end local v5    # "canScroll":Z
    .end local v6    # "nestedScrollAxis":I
    :cond_c
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 15

    .prologue
    .line 2577
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v1, p1

    .local v1, "focused":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "direction":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v11, v1

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2578
    .local v3, "result":Landroid/view/View;
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 2579
    move-object v10, v3

    move-object v0, v10

    .line 2651
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v0

    .line 2581
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v10, :cond_4

    move-object v10, v0

    .line 2582
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    move v4, v10

    .line 2584
    .local v4, "canRunFocusFailure":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v10

    move-object v5, v10

    .line 2585
    .local v5, "ff":Landroid/view/FocusFinder;
    move v10, v4

    if-eqz v10, :cond_e

    move v10, v2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 2589
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 2590
    .local v6, "needsFocusFailureLayout":Z
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2591
    move v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const/16 v10, 0x82

    :goto_2
    move v7, v10

    .line 2593
    .local v7, "absDir":I
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 2594
    .local v8, "found":Landroid/view/View;
    move-object v10, v8

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    move v6, v10

    .line 2595
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_2

    .line 2597
    move v10, v7

    move v2, v10

    .line 2600
    .end local v7    # "absDir":I
    .end local v8    # "found":Landroid/view/View;
    :cond_2
    move v10, v6

    if-nez v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2601
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_4
    move v7, v10

    .line 2602
    .local v7, "rtl":Z
    move v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_5
    move v11, v7

    xor-int/2addr v10, v11

    if-eqz v10, :cond_9

    const/16 v10, 0x42

    :goto_6
    move v8, v10

    .line 2604
    .local v8, "absDir":I
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v8

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v9, v10

    .line 2605
    .local v9, "found":Landroid/view/View;
    move-object v10, v9

    if-nez v10, :cond_a

    const/4 v10, 0x1

    :goto_7
    move v6, v10

    .line 2606
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_3

    .line 2608
    move v10, v8

    move v2, v10

    .line 2611
    .end local v7    # "rtl":Z
    .end local v8    # "absDir":I
    .end local v9    # "found":Landroid/view/View;
    :cond_3
    move v10, v6

    if-eqz v10, :cond_c

    .line 2612
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2613
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 2614
    .local v7, "focusedItemView":Landroid/view/View;
    move-object v10, v7

    if-nez v10, :cond_b

    .line 2616
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0

    .line 2582
    .end local v4    # "canRunFocusFailure":Z
    .end local v5    # "ff":Landroid/view/FocusFinder;
    .end local v6    # "needsFocusFailureLayout":Z
    .end local v7    # "focusedItemView":Landroid/view/View;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2591
    .restart local v4    # "canRunFocusFailure":Z
    .restart local v5    # "ff":Landroid/view/FocusFinder;
    .restart local v6    # "needsFocusFailureLayout":Z
    :cond_5
    const/16 v10, 0x21

    goto :goto_2

    .line 2594
    .local v7, "absDir":I
    .local v8, "found":Landroid/view/View;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 2601
    .end local v7    # "absDir":I
    .end local v8    # "found":Landroid/view/View;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 2602
    .local v7, "rtl":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    const/16 v10, 0x11

    goto :goto_6

    .line 2605
    .local v8, "absDir":I
    .restart local v9    # "found":Landroid/view/View;
    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 2618
    .end local v8    # "absDir":I
    .end local v9    # "found":Landroid/view/View;
    .local v7, "focusedItemView":Landroid/view/View;
    :cond_b
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2619
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v11, v1

    move v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v10

    .line 2620
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2622
    .end local v7    # "focusedItemView":Landroid/view/View;
    :cond_c
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2637
    .end local v6    # "needsFocusFailureLayout":Z
    :cond_d
    :goto_8
    move-object v10, v3

    if-eqz v10, :cond_11

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-nez v10, :cond_11

    .line 2638
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_10

    .line 2641
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    invoke-super {v10, v11, v12}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 2624
    :cond_e
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2625
    move-object v10, v3

    if-nez v10, :cond_d

    move v10, v4

    if-eqz v10, :cond_d

    .line 2626
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2627
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 2628
    .local v6, "focusedItemView":Landroid/view/View;
    move-object v10, v6

    if-nez v10, :cond_f

    .line 2630
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0

    .line 2632
    :cond_f
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2633
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v11, v1

    move v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2634
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    .line 2647
    .end local v6    # "focusedItemView":Landroid/view/View;
    :cond_10
    move-object v10, v0

    move-object v11, v3

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2648
    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_0

    .line 2650
    :cond_11
    move-object v10, v0

    move-object v11, v1

    move-object v12, v3

    move v13, v2

    invoke-direct {v10, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object v10, v3

    .line 2651
    :goto_9
    move-object v0, v10

    goto/16 :goto_0

    .line 2650
    :cond_12
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    .line 2651
    invoke-super {v10, v11, v12}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    goto :goto_9
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 4295
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 4296
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RecyclerView has no LayoutManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4298
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 4303
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 4304
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RecyclerView has no LayoutManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4306
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 4311
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 4312
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RecyclerView has no LayoutManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4314
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 11236
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v1

    const/16 v3, 0x20c

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 11238
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11239
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    .line 11241
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 1248
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 1249
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v1

    move v0, v1

    .line 1251
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J
    .locals 4

    .prologue
    .line 4148
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-wide v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4628
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4629
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 13220
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "childCount":I
    move v2, p2

    .local v2, "i":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v3, :cond_0

    .line 13221
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v3

    move v0, v3

    .line 13223
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4654
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p1

    .local v2, "child":Landroid/view/View;
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4655
    :cond_0
    const-wide/16 v4, -0x1

    move-wide v1, v4

    .line 4658
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-wide v1

    .line 4657
    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object v4, v2

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 4658
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    :goto_1
    move-wide v1, v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4643
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4644
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4618
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4559
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 4560
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 4561
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a direct child of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4564
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getClipToPadding()Z
    .locals 2

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4882
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/Rect;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4883
    return-void
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2542
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3546
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 12

    .prologue
    .line 4895
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v6

    .line 4896
    .local v2, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v6, v2

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v6, :cond_0

    .line 4897
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v0, v6

    .line 4916
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v0

    .line 4900
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4902
    :cond_1
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v0, v6

    goto :goto_0

    .line 4904
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v3, v6

    .line 4905
    .local v3, "insets":Landroid/graphics/Rect;
    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4906
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 4907
    .local v4, "decorCount":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 4908
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4909
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4910
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 4911
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 4912
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 4913
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 4907
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4915
    :cond_3
    move-object v6, v2

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4916
    move-object v6, v3

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    move v2, v3

    .line 1605
    .local v2, "size":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move v4, v2

    if-lt v3, v4, :cond_1

    .line 1606
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is an invalid index for size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1609
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 2

    .prologue
    .line 1618
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1469
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 2

    .prologue
    .line 2360
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 2

    .prologue
    .line 2350
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method getNanoTime()J
    .locals 4

    .prologue
    .line 5617
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_0

    .line 5618
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v1, v2

    .line 5620
    .end local v1    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    goto :goto_0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1370
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 2

    .prologue
    .line 4531
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1482
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0
.end method

.method public getScrollState()I
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public hasFixedSize()Z
    .locals 2

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 11296
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 4

    .prologue
    .line 11301
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 2

    .prologue
    .line 5017
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 5018
    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 8

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/AdapterHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$6;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$6;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 1043
    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 18
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 11248
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v1, p1

    .local v1, "verticalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v2, p2

    .local v2, "verticalTrackDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v3, p3

    .local v3, "horizontalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v4, p4

    .local v4, "horizontalTrackDrawable":Landroid/graphics/drawable/Drawable;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    if-nez v6, :cond_1

    .line 11250
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    .line 11251
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 11254
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v5, v6

    .line 11255
    .local v5, "resources":Landroid/content/res/Resources;
    new-instance v6, Landroidx/recyclerview/widget/FastScroller;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    sget v14, Landroidx/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 11257
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object v14, v5

    sget v15, Landroidx/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 11258
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object v15, v5

    sget v16, Landroidx/recyclerview/R$dimen;->fastscroll_margin:I

    .line 11259
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    invoke-direct/range {v7 .. v15}, Landroidx/recyclerview/widget/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 11260
    return-void
.end method

.method invalidateGlows()V
    .locals 9

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    move-object v7, v2

    move-object v8, v3

    move-object v2, v8

    move-object v3, v7

    move-object v4, v8

    iput-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2516
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 3

    .prologue
    .line 4508
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4509
    .line 4517
    :goto_0
    return-void

    .line 4511
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 4512
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string/jumbo v2, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4515
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4516
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4517
    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 2

    .prologue
    .line 3467
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 4326
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .prologue
    .line 2848
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public isComputingLayout()Z
    .locals 2

    .prologue
    .line 3501
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 2

    .prologue
    .line 2220
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 11271
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 4

    .prologue
    .line 1750
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 1751
    .line 1755
    :goto_0
    return-void

    .line 1753
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1754
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v2

    .line 1755
    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 6

    .prologue
    .line 4209
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 4210
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 4211
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 4212
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4214
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 4215
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .prologue
    .line 4492
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 4493
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 4494
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 4495
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4496
    move-object v4, v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4493
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4499
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4500
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4501
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 4868
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v2, v4

    .line 4869
    .local v2, "childCount":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 4870
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4869
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4872
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 4830
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dy":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v2, v4

    .line 4831
    .local v2, "childCount":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 4832
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4831
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4834
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 9

    .prologue
    .line 4389
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v3, v6

    .line 4390
    .local v3, "childCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 4391
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 4392
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 4397
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4398
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4390
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4401
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4402
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4403
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 12

    .prologue
    .line 4355
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v9

    move v3, v9

    .line 4357
    .local v3, "childCount":I
    move v9, v1

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 4358
    move v9, v1

    move v4, v9

    .line 4359
    .local v4, "start":I
    move v9, v2

    move v5, v9

    .line 4360
    .local v5, "end":I
    const/4 v9, -0x1

    move v6, v9

    .line 4367
    .local v6, "inBetweenOffset":I
    :goto_0
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_4

    .line 4368
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v8, v9

    .line 4369
    .local v8, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v4

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v5

    if-le v9, v10, :cond_2

    .line 4370
    .line 4367
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4362
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "inBetweenOffset":I
    .end local v7    # "i":I
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    move v9, v2

    move v4, v9

    .line 4363
    .restart local v4    # "start":I
    move v9, v1

    move v5, v9

    .line 4364
    .restart local v5    # "end":I
    const/4 v9, 0x1

    move v6, v9

    .restart local v6    # "inBetweenOffset":I
    goto :goto_0

    .line 4376
    .restart local v7    # "i":I
    .restart local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-ne v9, v10, :cond_3

    .line 4377
    move-object v9, v8

    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4382
    :goto_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_2

    .line 4379
    :cond_3
    move-object v9, v8

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 4384
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4385
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4386
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 12

    .prologue
    .line 4407
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move v3, p3

    .local v3, "applyToPreLayout":Z
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v4, v8

    .line 4408
    .local v4, "positionEnd":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v8

    move v5, v8

    .line 4409
    .local v5, "childCount":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 4410
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v7, v8

    .line 4411
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4412
    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 4418
    move-object v8, v7

    move v9, v2

    neg-int v9, v9

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4419
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4409
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4420
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 4425
    move-object v8, v7

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v2

    neg-int v10, v10

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4427
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 4431
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4432
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4433
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    .line 2789
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v5, v1

    invoke-super {v5}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2790
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2791
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 2792
    move-object v5, v1

    move-object v6, v1

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2793
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_0

    .line 2794
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2796
    :cond_0
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2798
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v5, :cond_3

    .line 2800
    move-object v5, v1

    sget-object v6, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/GapWorker;

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 2801
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-nez v5, :cond_2

    .line 2802
    move-object v5, v1

    new-instance v6, Landroidx/recyclerview/widget/GapWorker;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroidx/recyclerview/widget/GapWorker;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 2806
    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v5

    move-object v2, v5

    .line 2807
    .local v2, "display":Landroid/view/Display;
    const/high16 v5, 0x42700000    # 60.0f

    move v3, v5

    .line 2808
    .local v3, "refreshRate":F
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    if-eqz v5, :cond_1

    .line 2809
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/Display;->getRefreshRate()F

    move-result v5

    move v4, v5

    .line 2810
    .local v4, "displayRefreshRate":F
    move v5, v4

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 2811
    move v5, v4

    move v3, v5

    .line 2814
    .end local v4    # "displayRefreshRate":F
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    const v6, 0x4e6e6b28    # 1.0E9f

    move v7, v3

    div-float/2addr v6, v7

    float-to-long v6, v6

    iput-wide v6, v5, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    .line 2815
    sget-object v5, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2817
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "refreshRate":F
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GapWorker;->add(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2819
    :cond_3
    return-void

    .line 2792
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4847
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4859
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 2823
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2824
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    .line 2825
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2827
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 2828
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 2829
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2830
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2832
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2833
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 2834
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ViewInfoStore;->onDetach()V

    .line 2836
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v1, :cond_2

    .line 2838
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GapWorker;->remove(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2839
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 2841
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 4280
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4282
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 4283
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 4284
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-object v5, v1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4286
    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 5

    .prologue
    .line 3444
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3445
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 3

    .prologue
    .line 3448
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 3449
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 6

    .prologue
    .line 3452
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "enableChangeEvents":Z
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3453
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 3458
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3459
    move v2, v1

    if-eqz v2, :cond_0

    .line 3460
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3461
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3464
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 3256
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_0

    .line 3257
    const/4 v5, 0x0

    move v0, v5

    .line 3301
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .line 3259
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v5, :cond_1

    .line 3260
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 3262
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 3264
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 3265
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3268
    move-object v5, v1

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v5, v5

    move v2, v5

    .line 3272
    .local v2, "vScroll":F
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3273
    move-object v5, v1

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    move v3, v5

    .line 3296
    .local v3, "hScroll":F
    :goto_2
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 3297
    :cond_2
    move-object v5, v0

    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    .line 3301
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 3270
    :cond_4
    const/4 v5, 0x0

    move v2, v5

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 3275
    :cond_5
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "hScroll":F
    goto :goto_2

    .line 3277
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    :cond_6
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_9

    .line 3278
    move-object v5, v1

    const/16 v6, 0x1a

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    move v4, v5

    .line 3279
    .local v4, "axisScroll":F
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3282
    move v5, v4

    neg-float v5, v5

    move v2, v5

    .line 3283
    .restart local v2    # "vScroll":F
    const/4 v5, 0x0

    move v3, v5

    .line 3291
    .restart local v3    # "hScroll":F
    :goto_3
    goto :goto_2

    .line 3284
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3285
    const/4 v5, 0x0

    move v2, v5

    .line 3286
    .restart local v2    # "vScroll":F
    move v5, v4

    move v3, v5

    .restart local v3    # "hScroll":F
    goto :goto_3

    .line 3288
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    :cond_8
    const/4 v5, 0x0

    move v2, v5

    .line 3289
    .restart local v2    # "vScroll":F
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "hScroll":F
    goto :goto_3

    .line 3292
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    .end local v4    # "axisScroll":F
    :cond_9
    const/4 v5, 0x0

    move v2, v5

    .line 3293
    .restart local v2    # "vScroll":F
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .prologue
    .line 2973
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p1

    .local v3, "e":Landroid/view/MotionEvent;
    move-object v15, v2

    iget-boolean v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v15, :cond_0

    .line 2976
    const/4 v15, 0x0

    move v2, v15

    .line 3072
    .end local v2    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v2

    .line 2978
    .restart local v2    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2979
    move-object v15, v2

    invoke-direct {v15}, Landroidx/recyclerview/widget/RecyclerView;->cancelTouch()V

    .line 2980
    const/4 v15, 0x1

    move v2, v15

    goto :goto_0

    .line 2983
    :cond_1
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v15, :cond_2

    .line 2984
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 2987
    :cond_2
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v15

    move v4, v15

    .line 2988
    .local v4, "canScrollHorizontally":Z
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v15

    move v5, v15

    .line 2990
    .local v5, "canScrollVertically":Z
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_3

    .line 2991
    move-object v15, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2993
    :cond_3
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2995
    move-object v15, v3

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    move v6, v15

    .line 2996
    .local v6, "action":I
    move-object v15, v3

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    move v7, v15

    .line 2998
    .local v7, "actionIndex":I
    move v15, v6

    packed-switch v15, :pswitch_data_0

    .line 3072
    :goto_1
    :pswitch_0
    move-object v15, v2

    iget v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v15, 0x1

    :goto_2
    move v2, v15

    goto :goto_0

    .line 3000
    :pswitch_1
    move-object v15, v2

    iget-boolean v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v15, :cond_4

    .line 3001
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 3003
    :cond_4
    move-object v15, v2

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3004
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3005
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3007
    move-object v15, v2

    iget v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 3008
    move-object v15, v2

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3009
    move-object v15, v2

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3013
    :cond_5
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v21, v17

    move/from16 v22, v18

    move/from16 v23, v19

    move/from16 v17, v23

    move-object/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    aput v20, v18, v19

    aput v17, v15, v16

    .line 3015
    const/4 v15, 0x0

    move v8, v15

    .line 3016
    .local v8, "nestedScrollAxis":I
    move v15, v4

    if-eqz v15, :cond_6

    .line 3017
    move v15, v8

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    move v8, v15

    .line 3019
    :cond_6
    move v15, v5

    if-eqz v15, :cond_7

    .line 3020
    move v15, v8

    const/16 v16, 0x2

    or-int/lit8 v15, v15, 0x2

    move v8, v15

    .line 3022
    :cond_7
    move-object v15, v2

    move/from16 v16, v8

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    move-result v15

    .line 3023
    goto/16 :goto_1

    .line 3026
    .end local v8    # "nestedScrollAxis":I
    :pswitch_2
    move-object v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3027
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3028
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3029
    goto/16 :goto_1

    .line 3032
    :pswitch_3
    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    move v9, v15

    .line 3033
    .local v9, "index":I
    move v15, v9

    if-gez v15, :cond_8

    .line 3034
    const-string/jumbo v15, "RecyclerView"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 3036
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 3039
    :cond_8
    move-object v15, v3

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move v10, v15

    .line 3040
    .local v10, "x":I
    move-object v15, v3

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move v11, v15

    .line 3041
    .local v11, "y":I
    move-object v15, v2

    iget v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 3042
    move v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v12, v15

    .line 3043
    .local v12, "dx":I
    move v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v13, v15

    .line 3044
    .local v13, "dy":I
    const/4 v15, 0x0

    move v14, v15

    .line 3045
    .local v14, "startScroll":Z
    move v15, v4

    if-eqz v15, :cond_9

    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    .line 3046
    move-object v15, v2

    move/from16 v16, v10

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 3047
    const/4 v15, 0x1

    move v14, v15

    .line 3049
    :cond_9
    move v15, v5

    if-eqz v15, :cond_a

    move v15, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 3050
    move-object v15, v2

    move/from16 v16, v11

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 3051
    const/4 v15, 0x1

    move v14, v15

    .line 3053
    :cond_a
    move v15, v14

    if-eqz v15, :cond_b

    .line 3054
    move-object v15, v2

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3057
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v14    # "startScroll":Z
    :cond_b
    goto/16 :goto_1

    .line 3060
    .end local v9    # "index":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :pswitch_4
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 3061
    goto/16 :goto_1

    .line 3064
    :pswitch_5
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    .line 3065
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3066
    goto/16 :goto_1

    .line 3069
    :pswitch_6
    move-object v15, v2

    invoke-direct {v15}, Landroidx/recyclerview/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 3072
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 4193
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "l":I
    move v3, p3

    .local v3, "t":I
    move v4, p4

    .local v4, "r":I
    move v5, p5

    .local v5, "b":I
    const-string/jumbo v6, "RV OnLayout"

    invoke-static {v6}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4194
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 4195
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 4196
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 4197
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 3306
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "widthSpec":I
    move v2, p2

    .local v2, "heightSpec":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v6, :cond_0

    .line 3307
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3308
    .line 3393
    :goto_0
    return-void

    .line 3310
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3311
    move v6, v1

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v3, v6

    .line 3312
    .local v3, "widthMode":I
    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v4, v6

    .line 3321
    .local v4, "heightMode":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move v9, v1

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 3323
    move v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_2

    move v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 3325
    .local v5, "measureSpecModeIsExactly":Z
    move v6, v5

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v6, :cond_3

    .line 3326
    :cond_1
    goto :goto_0

    .line 3323
    .end local v5    # "measureSpecModeIsExactly":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3329
    .restart local v5    # "measureSpecModeIsExactly":Z
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 3330
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3334
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3335
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3336
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3339
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3343
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3344
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    .line 3345
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object v8, v0

    .line 3346
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 3344
    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3347
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3348
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3350
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3352
    .line 3393
    .end local v3    # "widthMode":I
    .end local v4    # "heightMode":I
    .end local v5    # "measureSpecModeIsExactly":Z
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 3353
    :cond_6
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v6, :cond_7

    .line 3354
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move v9, v1

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 3355
    goto/16 :goto_0

    .line 3358
    :cond_7
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v6, :cond_a

    .line 3359
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3360
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3361
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3362
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3364
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v6, :cond_9

    .line 3365
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3371
    :goto_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3372
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3383
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_b

    .line 3384
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 3388
    :goto_4
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3389
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move v9, v1

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 3390
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3391
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_2

    .line 3368
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3369
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_3

    .line 3373
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v6, :cond_8

    .line 3379
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3380
    goto/16 :goto_0

    .line 3386
    :cond_b
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 6

    .prologue
    .line 2779
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "direction":I
    move-object v2, p2

    .local v2, "previouslyFocusedRect":Landroid/graphics/Rect;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2782
    const/4 v3, 0x0

    move v0, v3

    .line 2784
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v2, :cond_0

    .line 1390
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1391
    .line 1399
    :goto_0
    return-void

    .line 1394
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 1395
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1396
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 1397
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1399
    :cond_1
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1375
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1376
    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$SavedState;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v2, :cond_0

    .line 1377
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$SavedState;->copyFrom(Landroidx/recyclerview/widget/RecyclerView$SavedState;)V

    .line 1384
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return-object v0

    .line 1378
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    .line 1379
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1381
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 4979
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 4941
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 3414
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
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

    .line 3415
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_0

    move v5, v2

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 3416
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 3419
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .prologue
    .line 3087
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p1

    .local v3, "e":Landroid/view/MotionEvent;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 3088
    :cond_0
    const/16 v16, 0x0

    move/from16 v2, v16

    .line 3227
    .end local v2    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v2

    .line 3090
    .restart local v2    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 3091
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->cancelTouch()V

    .line 3092
    const/16 v16, 0x1

    move/from16 v2, v16

    goto :goto_0

    .line 3095
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 3096
    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_0

    .line 3099
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v16

    move/from16 v4, v16

    .line 3100
    .local v4, "canScrollHorizontally":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v16

    move/from16 v5, v16

    .line 3102
    .local v5, "canScrollVertically":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 3103
    move-object/from16 v16, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3105
    :cond_4
    const/16 v16, 0x0

    move/from16 v6, v16

    .line 3107
    .local v6, "eventAddedToVelocityTracker":Z
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v7, v16

    .line 3108
    .local v7, "vtev":Landroid/view/MotionEvent;
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    move/from16 v8, v16

    .line 3109
    .local v8, "action":I
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move/from16 v9, v16

    .line 3111
    .local v9, "actionIndex":I
    move/from16 v16, v8

    if-nez v16, :cond_5

    .line 3112
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v22, v18

    move/from16 v23, v19

    move/from16 v24, v20

    move/from16 v18, v24

    move-object/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    aput v21, v19, v20

    aput v18, v16, v17

    .line 3114
    :cond_5
    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3116
    move/from16 v16, v8

    packed-switch v16, :pswitch_data_0

    .line 3222
    :goto_1
    :pswitch_0
    move/from16 v16, v6

    if-nez v16, :cond_6

    .line 3223
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3225
    :cond_6
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 3227
    const/16 v16, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    .line 3118
    :pswitch_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3119
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3120
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3122
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 3123
    .local v10, "nestedScrollAxis":I
    move/from16 v16, v4

    if-eqz v16, :cond_7

    .line 3124
    move/from16 v16, v10

    const/16 v17, 0x1

    or-int/lit8 v16, v16, 0x1

    move/from16 v10, v16

    .line 3126
    :cond_7
    move/from16 v16, v5

    if-eqz v16, :cond_8

    .line 3127
    move/from16 v16, v10

    const/16 v17, 0x2

    or-int/lit8 v16, v16, 0x2

    move/from16 v10, v16

    .line 3129
    :cond_8
    move-object/from16 v16, v2

    move/from16 v17, v10

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    move-result v16

    .line 3130
    goto/16 :goto_1

    .line 3133
    .end local v10    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3134
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3135
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3136
    goto/16 :goto_1

    .line 3139
    :pswitch_3
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    move/from16 v10, v16

    .line 3140
    .local v10, "index":I
    move/from16 v16, v10

    if-gez v16, :cond_9

    .line 3141
    const-string/jumbo v16, "RecyclerView"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 3143
    const/16 v16, 0x0

    move/from16 v2, v16

    goto/16 :goto_0

    .line 3146
    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 3147
    .local v11, "x":I
    move-object/from16 v16, v3

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    .line 3148
    .local v12, "y":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move/from16 v16, v0

    move/from16 v17, v11

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 3149
    .local v13, "dx":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move/from16 v16, v0

    move/from16 v17, v12

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 3151
    .local v14, "dy":I
    move-object/from16 v16, v2

    move/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3152
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 3153
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 3154
    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3156
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v22, v16

    move/from16 v23, v17

    move-object/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 3157
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v22, v16

    move/from16 v23, v17

    move-object/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 3160
    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 3161
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 3162
    .local v15, "startScroll":Z
    move/from16 v16, v4

    if-eqz v16, :cond_b

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 3163
    move/from16 v16, v13

    if-lez v16, :cond_11

    .line 3164
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 3168
    :goto_2
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 3170
    :cond_b
    move/from16 v16, v5

    if-eqz v16, :cond_c

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 3171
    move/from16 v16, v14

    if-lez v16, :cond_12

    .line 3172
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 3176
    :goto_3
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 3178
    :cond_c
    move/from16 v16, v15

    if-eqz v16, :cond_d

    .line 3179
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3183
    .end local v15    # "startScroll":Z
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 3184
    move-object/from16 v16, v2

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 3185
    move-object/from16 v16, v2

    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 3187
    move-object/from16 v16, v2

    move/from16 v17, v4

    if-eqz v17, :cond_13

    move/from16 v17, v13

    :goto_4
    move/from16 v18, v5

    if-eqz v18, :cond_14

    move/from16 v18, v14

    :goto_5
    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3191
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3193
    :cond_e
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    move/from16 v16, v13

    if-nez v16, :cond_f

    move/from16 v16, v14

    if-eqz v16, :cond_10

    .line 3194
    :cond_f
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v16 .. v19}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 3197
    :cond_10
    goto/16 :goto_1

    .line 3166
    .restart local v15    # "startScroll":Z
    :cond_11
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v13, v16

    goto/16 :goto_2

    .line 3174
    :cond_12
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v14, v16

    goto/16 :goto_3

    .line 3187
    .end local v15    # "startScroll":Z
    :cond_13
    const/16 v17, 0x0

    goto :goto_4

    :cond_14
    const/16 v18, 0x0

    goto :goto_5

    .line 3200
    .end local v10    # "index":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 3201
    goto/16 :goto_1

    .line 3204
    :pswitch_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3205
    const/16 v16, 0x1

    move/from16 v6, v16

    .line 3206
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x3e8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3207
    move/from16 v16, v4

    if-eqz v16, :cond_18

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    .line 3208
    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    :goto_6
    move/from16 v10, v16

    .line 3209
    .local v10, "xvel":F
    move/from16 v16, v5

    if-eqz v16, :cond_19

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    .line 3210
    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    :goto_7
    move/from16 v11, v16

    .line 3211
    .local v11, "yvel":F
    move/from16 v16, v10

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_15

    move/from16 v16, v11

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_16

    :cond_15
    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v16

    if-nez v16, :cond_17

    .line 3212
    :cond_16
    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3214
    :cond_17
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->resetTouch()V

    .line 3215
    goto/16 :goto_1

    .line 3208
    .end local v10    # "xvel":F
    .end local v11    # "yvel":F
    :cond_18
    const/16 v16, 0x0

    goto :goto_6

    .line 3210
    .restart local v10    # "xvel":F
    :cond_19
    const/16 v16, 0x0

    goto :goto_7

    .line 3218
    .end local v10    # "xvel":F
    :pswitch_6
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 3116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 3

    .prologue
    .line 3554
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 3555
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3556
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3558
    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 6

    .prologue
    .line 4482
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dispatchItemsChanged":Z
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    move v4, v1

    or-int/2addr v3, v4

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 4483
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4484
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4485
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 10

    .prologue
    .line 4081
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p1

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, p2

    .local v3, "animationInfo":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x2000

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4082
    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    .line 4083
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4084
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v6

    move-wide v4, v6

    .line 4085
    .local v4, "key":J
    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-wide v7, v4

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4087
    .end local v4    # "key":J
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4088
    return-void
.end method

.method removeAndRecycleViews()V
    .locals 3

    .prologue
    .line 1166
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    .line 1167
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1173
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1174
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1175
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1178
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1179
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1446
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1447
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v4

    move v2, v4

    .line 1448
    .local v2, "removed":Z
    move v4, v2

    if-eqz v4, :cond_0

    .line 1449
    move-object v4, v1

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 1450
    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1451
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1457
    .end local v3    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    move-object v4, v0

    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1458
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .line 1457
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 9

    .prologue
    .line 4124
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "animate":Z
    move-object v4, v1

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 4125
    .local v3, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 4126
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4127
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 4137
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 4139
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 4140
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 4141
    return-void

    .line 4128
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4129
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    .line 4130
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1645
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "decor":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    .line 1646
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string/jumbo v3, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1649
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1650
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1653
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1654
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1655
    return-void

    .line 1651
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeItemDecorationAt(I)V
    .locals 8

    .prologue
    .line 1627
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    move v2, v3

    .line 1628
    .local v2, "size":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move v4, v2

    if-lt v3, v4, :cond_1

    .line 1629
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is an invalid index for size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1632
    :cond_1
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1633
    return-void
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1282
    .line 1285
    :goto_0
    return-void

    .line 1284
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1285
    goto :goto_0
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2917
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2918
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 2919
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 2921
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1713
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1714
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1716
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 14

    .prologue
    .line 5258
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v1, v8

    .line 5259
    .local v1, "count":I
    const/4 v8, 0x0

    move v2, v8

    .local v2, "i":I
    :goto_0
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 5260
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v9, v2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 5261
    .local v3, "view":Landroid/view/View;
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 5262
    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v8, :cond_1

    .line 5263
    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, v8

    .line 5264
    .local v5, "shadowingView":Landroid/view/View;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move v6, v8

    .line 5265
    .local v6, "left":I
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move v7, v8

    .line 5266
    .local v7, "top":I
    move v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v8, v9, :cond_0

    move v8, v7

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 5267
    :cond_0
    move-object v8, v5

    move v9, v6

    move v10, v7

    move v11, v6

    move-object v12, v5

    .line 5268
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    move v12, v7

    move-object v13, v5

    .line 5269
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 5267
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 5259
    .end local v5    # "shadowingView":Landroid/view/View;
    .end local v6    # "left":I
    .end local v7    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5273
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2722
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "focused":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2723
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2725
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2726
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 9

    .prologue
    .line 2767
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "rect":Landroid/graphics/Rect;
    move v3, p3

    .local v3, "immediate":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 7

    .prologue
    .line 3077
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "disallowIntercept":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 3078
    .local v2, "listenerCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 3079
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    move-object v4, v5

    .line 3080
    .local v4, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 3078
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3082
    .end local v4    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 3083
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 4201
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_0

    .line 4202
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4206
    :goto_0
    return-void

    .line 4204
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0
.end method

.method saveOldPositions()V
    .locals 6

    .prologue
    .line 4330
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 4331
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 4332
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 4337
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4338
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 4331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4341
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 9

    .prologue
    .line 1792
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_0

    .line 1793
    const-string/jumbo v5, "RecyclerView"

    const-string/jumbo v6, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1795
    .line 1805
    :goto_0
    return-void

    .line 1797
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v5, :cond_1

    .line 1798
    goto :goto_0

    .line 1800
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    move v3, v5

    .line 1801
    .local v3, "canScrollHorizontal":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    move v4, v5

    .line 1802
    .local v4, "canScrollVertical":Z
    move v5, v3

    if-nez v5, :cond_2

    move v5, v4

    if-eqz v5, :cond_3

    .line 1803
    :cond_2
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_4

    move v6, v1

    :goto_1
    move v7, v4

    if-eqz v7, :cond_5

    move v7, v2

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    .line 1805
    :cond_3
    goto :goto_0

    .line 1803
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 17

    .prologue
    .line 1922
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move-object/from16 v3, p3

    .local v3, "ev":Landroid/view/MotionEvent;
    const/4 v8, 0x0

    move v4, v8

    .local v4, "unconsumedX":I
    const/4 v8, 0x0

    move v5, v8

    .line 1923
    .local v5, "unconsumedY":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "consumedX":I
    const/4 v8, 0x0

    move v7, v8

    .line 1925
    .local v7, "consumedY":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1926
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_0

    .line 1927
    move-object v8, v0

    move v9, v1

    move v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    invoke-virtual {v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 1928
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move v6, v8

    .line 1929
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move v7, v8

    .line 1930
    move v8, v1

    move v9, v6

    sub-int/2addr v8, v9

    move v4, v8

    .line 1931
    move v8, v2

    move v9, v7

    sub-int/2addr v8, v9

    move v5, v8

    .line 1933
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1934
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 1937
    :cond_1
    move-object v8, v0

    move v9, v6

    move v10, v7

    move v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1940
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 1941
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 1942
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 1943
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1945
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v9, 0x0

    move-object v15, v8

    move/from16 v16, v9

    move-object v8, v15

    move/from16 v9, v16

    move-object v10, v15

    move/from16 v11, v16

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1946
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v9, 0x1

    move-object v15, v8

    move/from16 v16, v9

    move-object v8, v15

    move/from16 v9, v16

    move-object v10, v15

    move/from16 v11, v16

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1953
    :cond_3
    :goto_0
    move v8, v6

    if-nez v8, :cond_4

    move v8, v7

    if-eqz v8, :cond_5

    .line 1954
    :cond_4
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1956
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1957
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 1959
    :cond_6
    move v8, v6

    if-nez v8, :cond_7

    move v8, v7

    if-eqz v8, :cond_a

    :cond_7
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0

    .line 1947
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_8
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 1948
    move-object v8, v3

    if-eqz v8, :cond_9

    move-object v8, v3

    const/16 v9, 0x2002

    invoke-static {v8, v9}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1949
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v10, v4

    int-to-float v10, v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move v12, v5

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1951
    :cond_9
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    .line 1959
    :cond_a
    const/4 v8, 0x0

    goto :goto_1
.end method

.method scrollStep(II[I)V
    .locals 10
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "consumed":[I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1821
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1823
    const-string/jumbo v6, "RV Scroll"

    invoke-static {v6}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1824
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1826
    const/4 v6, 0x0

    move v4, v6

    .line 1827
    .local v4, "consumedX":I
    const/4 v6, 0x0

    move v5, v6

    .line 1828
    .local v5, "consumedY":I
    move v6, v1

    if-eqz v6, :cond_0

    .line 1829
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v6

    move v4, v6

    .line 1831
    :cond_0
    move v6, v2

    if-eqz v6, :cond_1

    .line 1832
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v6

    move v5, v6

    .line 1835
    :cond_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1836
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 1838
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1839
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1841
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 1842
    move-object v6, v3

    const/4 v7, 0x0

    move v8, v4

    aput v8, v6, v7

    .line 1843
    move-object v6, v3

    const/4 v7, 0x1

    move v8, v5

    aput v8, v6, v7

    .line 1845
    :cond_2
    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    .prologue
    .line 1786
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    const-string/jumbo v3, "RecyclerView"

    const-string/jumbo v4, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1788
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 1736
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 1737
    .line 1747
    :goto_0
    return-void

    .line 1739
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1740
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 1741
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1743
    goto :goto_0

    .line 1745
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1746
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v2

    .line 1747
    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 3529
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3530
    .line 3533
    :goto_0
    return-void

    .line 3532
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3533
    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "accessibilityDelegate":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 770
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 771
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1156
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1157
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1158
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1159
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1671
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "childDrawingOrderCallback":Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne v2, v3, :cond_0

    .line 1672
    .line 1676
    :goto_0
    return-void

    .line 1674
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1675
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1676
    goto :goto_0

    .line 1675
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 11209
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "importantForAccessibility":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11210
    move-object v3, v1

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11211
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 11212
    const/4 v3, 0x0

    move v0, v3

    .line 11215
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return v0

    .line 11214
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 11215
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 4

    .prologue
    .line 1070
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "clipToPadding":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq v2, v3, :cond_0

    .line 1071
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 1073
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 1074
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1075
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_1

    .line 1076
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1078
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2528
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "edgeEffectFactory":Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2529
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 2530
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 2531
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 4

    .prologue
    .line 1057
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "hasFixedSize":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 1058
    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3433
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "animator":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 3434
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3435
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3437
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 3438
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_1

    .line 3439
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3441
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 4

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1521
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 14

    .prologue
    .line 2193
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p1

    .local v2, "frozen":Z
    move v6, v2

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq v6, v7, :cond_1

    .line 2194
    move-object v6, v1

    const-string/jumbo v7, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2195
    move v6, v2

    if-nez v6, :cond_2

    .line 2196
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2197
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_0

    .line 2198
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 2200
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2211
    :cond_1
    :goto_0
    return-void

    .line 2202
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v3, v6

    .line 2203
    .local v3, "now":J
    move-wide v6, v3

    move-wide v8, v3

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v5, v6

    .line 2205
    .local v5, "cancelEvent":Landroid/view/MotionEvent;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 2206
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2207
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2208
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1310
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "layout":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-ne v2, v3, :cond_0

    .line 1311
    .line 1349
    :goto_0
    return-void

    .line 1313
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1316
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_3

    .line 1318
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_1

    .line 1319
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1321
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1322
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1323
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1325
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v2, :cond_2

    .line 1326
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1328
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1329
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1334
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1335
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1336
    move-object v2, v1

    if-eqz v2, :cond_5

    .line 1337
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    .line 1338
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is already attached to a RecyclerView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1340
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1331
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    goto :goto_1

    .line 1342
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1343
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v2, :cond_5

    .line 1344
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1347
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1348
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1349
    goto/16 :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 11266
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 11267
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1360
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "onFlingListener":Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    .line 1361
    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1688
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 1689
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 4

    .prologue
    .line 4549
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "preserveFocusAfterLayout":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4550
    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1494
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "pool":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 1495
    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1235
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "listener":Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 1236
    return-void
.end method

.method setScrollState(I)V
    .locals 4

    .prologue
    .line 1534
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "state":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v2, v3, :cond_0

    .line 1535
    .line 1546
    :goto_0
    return-void

    .line 1541
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 1542
    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1543
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 1545
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1546
    goto :goto_0
.end method

.method public setScrollingTouchSlop(I)V
    .locals 7

    .prologue
    .line 1107
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "slopConstant":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    move-object v2, v3

    .line 1108
    .local v2, "vc":Landroid/view/ViewConfiguration;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1110
    const-string/jumbo v3, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; using default value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1114
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 1115
    .line 1121
    :goto_0
    return-void

    .line 1118
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 1108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1505
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "extension":Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V

    .line 1506
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    .prologue
    .line 3513
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3514
    const/4 v3, 0x0

    move v2, v3

    .line 3515
    .local v2, "type":I
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 3516
    move-object v3, v1

    invoke-static {v3}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v3

    move v2, v3

    .line 3518
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    .line 3519
    const/4 v3, 0x0

    move v2, v3

    .line 3521
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3522
    const/4 v3, 0x1

    move v0, v3

    .line 3524
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    .end local v2    # "type":I
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 2230
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2231
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2242
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_0

    .line 2243
    const-string/jumbo v4, "RecyclerView"

    const-string/jumbo v5, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2245
    .line 2259
    :goto_0
    return-void

    .line 2247
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v4, :cond_1

    .line 2248
    goto :goto_0

    .line 2250
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2251
    const/4 v4, 0x0

    move v1, v4

    .line 2253
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2254
    const/4 v4, 0x0

    move v2, v4

    .line 2256
    :cond_3
    move v4, v1

    if-nez v4, :cond_4

    move v4, v2

    if-eqz v4, :cond_5

    .line 2257
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2259
    :cond_5
    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 6

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 1774
    .line 1782
    :goto_0
    return-void

    .line 1776
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 1777
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1779
    goto :goto_0

    .line 1781
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 1782
    goto :goto_0
.end method

.method startInterceptRequestLayout()V
    .locals 5

    .prologue
    .line 2120
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2121
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_0

    .line 2122
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2124
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 11276
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "axes":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 6

    .prologue
    .line 11281
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "axes":I
    move v2, p2

    .local v2, "type":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 6

    .prologue
    .line 2137
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "performLayoutChildren":Z
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 2144
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2146
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 2155
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2157
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2159
    move v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_2

    .line 2161
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2163
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_3

    .line 2164
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2167
    :cond_3
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2168
    return-void
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 11286
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 11287
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 4

    .prologue
    .line 11291
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 11292
    return-void
.end method

.method public stopScroll()V
    .locals 3

    .prologue
    .line 2330
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 2331
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 2332
    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move v2, p2

    .local v2, "removeAndRecycleExistingViews":Z
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1140
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1141
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1142
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1143
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 12

    .prologue
    .line 4442
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v9

    move v4, v9

    .line 4443
    .local v4, "childCount":I
    move v9, v1

    move v10, v2

    add-int/2addr v9, v10

    move v5, v9

    .line 4445
    .local v5, "positionEnd":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 4446
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 4447
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v8, v9

    .line 4448
    .local v8, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4449
    .line 4445
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4451
    :cond_1
    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 4454
    move-object v9, v8

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4455
    move-object v9, v8

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4457
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 4460
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 4461
    return-void
.end method
