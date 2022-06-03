.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;,
        Landroidx/core/widget/NestedScrollView$SavedState;,
        Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 175
    new-instance v0, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101017a

    aput v3, v1, v2

    sput-object v0, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
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
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
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

    .line 101
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 115
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 116
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 123
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 130
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 146
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 156
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 161
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 162
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 199
    move-object v5, v0

    invoke-direct {v5}, Landroidx/core/widget/NestedScrollView;->initScrollView()V

    .line 201
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 204
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 206
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 209
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingChildHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 212
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 214
    move-object v5, v0

    sget-object v6, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 215
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 495
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 496
    .local v1, "child":Landroid/view/View;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v5

    .line 497
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    move v3, v5

    .line 498
    .local v3, "childSize":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 499
    .local v4, "parentSpace":I
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 501
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_1
    return v0

    .line 499
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 501
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "childSize":I
    .end local v4    # "parentSpace":I
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private static clamp(III)I
    .locals 5

    .prologue
    .line 1938
    move v0, p0

    .local v0, "n":I
    move v1, p1

    .local v1, "my":I
    move v2, p2

    .local v2, "child":I
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    move v3, v0

    if-gez v3, :cond_1

    .line 1954
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 1964
    .end local v0    # "n":I
    :goto_0
    return v0

    .line 1956
    .restart local v0    # "n":I
    :cond_1
    move v3, v1

    move v4, v0

    add-int/2addr v3, v4

    move v4, v2

    if-le v3, v4, :cond_2

    .line 1962
    move v3, v2

    move v4, v1

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1964
    :cond_2
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 5

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "delta":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 1362
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v2, :cond_1

    .line 1363
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 3

    .prologue
    .line 1839
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1841
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1842
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1844
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 1845
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1846
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1848
    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 7

    .prologue
    .line 1874
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1875
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v2, :cond_0

    .line 1876
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 1877
    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    new-instance v3, Landroid/widget/EdgeEffect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1878
    move-object v2, v0

    new-instance v3, Landroid/widget/EdgeEffect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1879
    .line 1884
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1882
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 16

    .prologue
    .line 1107
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move/from16 v1, p1

    .local v1, "topFocus":Z
    move/from16 v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "bottom":I
    move-object v14, v0

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroidx/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v14

    move-object v4, v14

    .line 1108
    .local v4, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v14, 0x0

    move-object v5, v14

    .line 1117
    .local v5, "focusCandidate":Landroid/view/View;
    const/4 v14, 0x0

    move v6, v14

    .line 1119
    .local v6, "foundFullyContainedFocusable":Z
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v7, v14

    .line 1120
    .local v7, "count":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "i":I
    :goto_0
    move v14, v8

    move v15, v7

    if-ge v14, v15, :cond_8

    .line 1121
    move-object v14, v4

    move v15, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v9, v14

    .line 1122
    .local v9, "view":Landroid/view/View;
    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move v10, v14

    .line 1123
    .local v10, "viewTop":I
    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    move v11, v14

    .line 1125
    .local v11, "viewBottom":I
    move v14, v2

    move v15, v11

    if-ge v14, v15, :cond_0

    move v14, v10

    move v15, v3

    if-ge v14, v15, :cond_0

    .line 1131
    move v14, v2

    move v15, v10

    if-ge v14, v15, :cond_1

    move v14, v11

    move v15, v3

    if-ge v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_1
    move v12, v14

    .line 1133
    .local v12, "viewIsFullyContained":Z
    move-object v14, v5

    if-nez v14, :cond_2

    .line 1135
    move-object v14, v9

    move-object v5, v14

    .line 1136
    move v14, v12

    move v6, v14

    .line 1120
    .end local v12    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1131
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 1138
    .restart local v12    # "viewIsFullyContained":Z
    :cond_2
    move v14, v1

    if-eqz v14, :cond_3

    move v14, v10

    move-object v15, v5

    .line 1139
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v14, v15, :cond_4

    :cond_3
    move v14, v1

    if-nez v14, :cond_5

    move v14, v11

    move-object v15, v5

    .line 1140
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-le v14, v15, :cond_5

    :cond_4
    const/4 v14, 0x1

    :goto_3
    move v13, v14

    .line 1142
    .local v13, "viewIsCloserToBoundary":Z
    move v14, v6

    if-eqz v14, :cond_6

    .line 1143
    move v14, v12

    if-eqz v14, :cond_0

    move v14, v13

    if-eqz v14, :cond_0

    .line 1149
    move-object v14, v9

    move-object v5, v14

    goto :goto_2

    .line 1140
    .end local v13    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 1152
    .restart local v13    # "viewIsCloserToBoundary":Z
    :cond_6
    move v14, v12

    if-eqz v14, :cond_7

    .line 1154
    move-object v14, v9

    move-object v5, v14

    .line 1155
    const/4 v14, 0x1

    move v6, v14

    goto :goto_2

    .line 1156
    :cond_7
    move v14, v13

    if-eqz v14, :cond_0

    .line 1161
    move-object v14, v9

    move-object v5, v14

    goto :goto_2

    .line 1168
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewTop":I
    .end local v11    # "viewBottom":I
    .end local v12    # "viewIsFullyContained":Z
    .end local v13    # "viewIsCloserToBoundary":Z
    :cond_8
    move-object v14, v5

    move-object v0, v14

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return-object v0
.end method

.method private flingWithNestedDispatch(I)V
    .locals 8

    .prologue
    .line 1829
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "velocityY":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    move v2, v4

    .line 1830
    .local v2, "scrollY":I
    move v4, v2

    if-gtz v4, :cond_0

    move v4, v1

    if-lez v4, :cond_3

    :cond_0
    move v4, v2

    move-object v5, v0

    .line 1831
    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v4, v1

    if-gez v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1832
    .local v3, "canFling":Z
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1833
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    int-to-float v6, v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    move-result v4

    .line 1834
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 1836
    :cond_2
    return-void

    .line 1831
    .end local v3    # "canFling":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 8

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v3, v0

    iget v3, v3, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 1001
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v3

    .line 1002
    .local v1, "outValue":Landroid/util/TypedValue;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 1003
    .local v2, "context":Landroid/content/Context;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101004d

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1005
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1008
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1009
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1008
    invoke-virtual {v4, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, v3, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 1011
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method private inChild(II)Z
    .locals 8

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 647
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v3, v5

    .line 648
    .local v3, "scrollY":I
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 649
    .local v4, "child":Landroid/view/View;
    move v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_0

    move v5, v2

    move-object v6, v4

    .line 650
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    move v5, v1

    move-object v6, v4

    .line 651
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_0

    move v5, v1

    move-object v6, v4

    .line 652
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 654
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    .end local v3    # "scrollY":I
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    return v0

    .line 652
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    .restart local v3    # "scrollY":I
    .restart local v4    # "child":Landroid/view/View;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 654
    .end local v3    # "scrollY":I
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private initOrResetVelocityTracker()V
    .locals 3

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 659
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 7

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v2, v0

    new-instance v3, Landroid/widget/OverScroller;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 432
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 433
    move-object v2, v0

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 434
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 435
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 436
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 437
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 438
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 439
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 3

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 667
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 669
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1340
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "descendant":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1800
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1801
    const/4 v3, 0x1

    move v0, v3

    .line 1805
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return v0

    .line 1804
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 1805
    .local v2, "theParent":Landroid/view/ViewParent;
    move-object v3, v2

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 7

    .prologue
    .line 1348
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "descendant":Landroid/view/View;
    move v2, p2

    .local v2, "delta":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1349
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1351
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v0

    .line 1352
    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v6, v3

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v2, v5

    .line 956
    .local v2, "pointerIndex":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 957
    .local v3, "pointerId":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 961
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 962
    .local v4, "newPointerIndex":I
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 963
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 964
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 965
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 968
    .end local v4    # "newPointerIndex":I
    :cond_0
    return-void

    .line 961
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 3

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 673
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 674
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 676
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 15

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move/from16 v1, p1

    .local v1, "direction":I
    move/from16 v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "bottom":I
    const/4 v11, 0x1

    move v4, v11

    .line 1256
    .local v4, "handled":Z
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v11

    move v5, v11

    .line 1257
    .local v5, "height":I
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v11

    move v6, v11

    .line 1258
    .local v6, "containerTop":I
    move v11, v6

    move v12, v5

    add-int/2addr v11, v12

    move v7, v11

    .line 1259
    .local v7, "containerBottom":I
    move v11, v1

    const/16 v12, 0x21

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_0
    move v8, v11

    .line 1261
    .local v8, "up":Z
    move-object v11, v0

    move v12, v8

    move v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Landroidx/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v11

    move-object v9, v11

    .line 1262
    .local v9, "newFocused":Landroid/view/View;
    move-object v11, v9

    if-nez v11, :cond_0

    .line 1263
    move-object v11, v0

    move-object v9, v11

    .line 1266
    :cond_0
    move v11, v2

    move v12, v6

    if-lt v11, v12, :cond_3

    move v11, v3

    move v12, v7

    if-gt v11, v12, :cond_3

    .line 1267
    const/4 v11, 0x0

    move v4, v11

    .line 1273
    :goto_1
    move-object v11, v9

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    if-eq v11, v12, :cond_1

    move-object v11, v9

    move v12, v1

    invoke-virtual {v11, v12}, Landroid/view/View;->requestFocus(I)Z

    move-result v11

    .line 1275
    :cond_1
    move v11, v4

    move v0, v11

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .line 1259
    .end local v8    # "up":Z
    .end local v9    # "newFocused":Landroid/view/View;
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1269
    .restart local v8    # "up":Z
    .restart local v9    # "newFocused":Landroid/view/View;
    :cond_3
    move v11, v8

    if-eqz v11, :cond_4

    move v11, v2

    move v12, v6

    sub-int/2addr v11, v12

    :goto_2
    move v10, v11

    .line 1270
    .local v10, "delta":I
    move-object v11, v0

    move v12, v10

    invoke-direct {v11, v12}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1269
    .end local v10    # "delta":I
    :cond_4
    move v11, v3

    move v12, v7

    sub-int/2addr v11, v12

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1565
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1567
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    move v2, v3

    .line 1569
    .local v2, "scrollDelta":I
    move v3, v2

    if-eqz v3, :cond_0

    .line 1570
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1572
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 8

    .prologue
    .line 1583
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move v2, p2

    .local v2, "immediate":Z
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    move v3, v5

    .line 1584
    .local v3, "delta":I
    move v5, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1585
    .local v4, "scroll":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 1586
    move v5, v2

    if-eqz v5, :cond_2

    .line 1587
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1592
    :cond_0
    :goto_1
    move v5, v4

    move v0, v5

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .line 1584
    .end local v4    # "scroll":Z
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1589
    .restart local v4    # "scroll":Z
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 444
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "ScrollView can host only one direct child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 448
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 453
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ScrollView can host only one direct child"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 457
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 471
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "ScrollView can host only one direct child"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 474
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 475
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 462
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ScrollView can host only one direct child"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 14

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "direction":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v10

    move-object v2, v10

    .line 1287
    .local v2, "currentFocused":Landroid/view/View;
    move-object v10, v2

    move-object v11, v0

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    move-object v2, v10

    .line 1289
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v10

    move-object v11, v0

    move-object v12, v2

    move v13, v1

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 1291
    .local v3, "nextFocused":Landroid/view/View;
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v10

    move v4, v10

    .line 1293
    .local v4, "maxJump":I
    move-object v10, v3

    if-eqz v10, :cond_2

    move-object v10, v0

    move-object v11, v3

    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1294
    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1295
    move-object v10, v0

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1296
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v10

    move v5, v10

    .line 1297
    .local v5, "scrollDelta":I
    move-object v10, v0

    move v11, v5

    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1298
    move-object v10, v3

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    .line 1299
    .line 1320
    :goto_0
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    move-object v11, v2

    .line 1321
    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1327
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v10

    move v5, v10

    .line 1328
    .local v5, "descendantFocusability":I
    move-object v10, v0

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1329
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->requestFocus()Z

    move-result v10

    .line 1330
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1332
    .end local v5    # "descendantFocusability":I
    :cond_1
    const/4 v10, 0x1

    move v0, v10

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_1
    return v0

    .line 1301
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_2
    move v10, v4

    move v5, v10

    .line 1303
    .local v5, "scrollDelta":I
    move v10, v1

    const/16 v11, 0x21

    if-ne v10, v11, :cond_4

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v11, v5

    if-ge v10, v11, :cond_4

    .line 1304
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v5, v10

    .line 1314
    :cond_3
    :goto_2
    move v10, v5

    if-nez v10, :cond_5

    .line 1315
    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1305
    :cond_4
    move v10, v1

    const/16 v11, 0x82

    if-ne v10, v11, :cond_3

    .line 1306
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 1307
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 1308
    .local v6, "child":Landroid/view/View;
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v10

    .line 1309
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move-object v11, v7

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v8, v10

    .line 1310
    .local v8, "daBottom":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move v9, v10

    .line 1311
    .local v9, "screenBottom":I
    move v10, v8

    move v11, v9

    sub-int/2addr v10, v11

    move v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v5, v10

    goto :goto_2

    .line 1317
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "daBottom":I
    .end local v9    # "screenBottom":I
    :cond_5
    move-object v10, v0

    move v11, v1

    const/16 v12, 0x82

    if-ne v11, v12, :cond_6

    move v11, v5

    :goto_3
    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    goto/16 :goto_0

    :cond_6
    move v11, v5

    neg-int v11, v11

    goto :goto_3
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1472
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1465
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1458
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public computeScroll()V
    .locals 20

    .prologue
    .line 1507
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v10}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1508
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    move v1, v10

    .line 1509
    .local v1, "x":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    move v2, v10

    .line 1511
    .local v2, "y":I
    move v10, v2

    move-object v11, v0

    iget v11, v11, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    sub-int/2addr v10, v11

    move v3, v10

    .line 1514
    .local v3, "dy":I
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1515
    move v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    move v3, v10

    .line 1518
    :cond_0
    move v10, v3

    if-eqz v10, :cond_2

    .line 1519
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v10

    move v4, v10

    .line 1520
    .local v4, "range":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v5, v10

    .line 1522
    .local v5, "oldScrollY":I
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v3

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v13

    move v14, v5

    const/4 v15, 0x0

    move/from16 v16, v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v10 .. v19}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v10

    .line 1524
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v11, v5

    sub-int/2addr v10, v11

    move v6, v10

    .line 1525
    .local v6, "scrolledDeltaY":I
    move v10, v3

    move v11, v6

    sub-int/2addr v10, v11

    move v7, v10

    .line 1527
    .local v7, "unconsumedY":I
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v6

    const/4 v13, 0x0

    move v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1529
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v10

    move v8, v10

    .line 1530
    .local v8, "mode":I
    move v10, v8

    if-eqz v10, :cond_1

    move v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    move v10, v4

    if-lez v10, :cond_3

    :cond_1
    const/4 v10, 0x1

    :goto_0
    move v9, v10

    .line 1532
    .local v9, "canOverscroll":Z
    move v10, v9

    if-eqz v10, :cond_2

    .line 1533
    move-object v10, v0

    invoke-direct {v10}, Landroidx/core/widget/NestedScrollView;->ensureGlows()V

    .line 1534
    move v10, v2

    if-gtz v10, :cond_4

    move v10, v5

    if-lez v10, :cond_4

    .line 1535
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1544
    .end local v4    # "range":I
    .end local v5    # "oldScrollY":I
    .end local v6    # "scrolledDeltaY":I
    .end local v7    # "unconsumedY":I
    .end local v8    # "mode":I
    .end local v9    # "canOverscroll":Z
    :cond_2
    :goto_1
    move-object v10, v0

    move v11, v2

    iput v11, v10, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1545
    move-object v10, v0

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1546
    .line 1554
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "dy":I
    :goto_2
    return-void

    .line 1530
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    .restart local v3    # "dy":I
    .restart local v4    # "range":I
    .restart local v5    # "oldScrollY":I
    .restart local v6    # "scrolledDeltaY":I
    .restart local v7    # "unconsumedY":I
    .restart local v8    # "mode":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 1536
    .restart local v9    # "canOverscroll":Z
    :cond_4
    move v10, v2

    move v11, v4

    if-lt v10, v11, :cond_2

    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 1537
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1548
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "dy":I
    .end local v4    # "range":I
    .end local v5    # "oldScrollY":I
    .end local v6    # "scrolledDeltaY":I
    .end local v7    # "unconsumedY":I
    .end local v8    # "mode":I
    .end local v9    # "canOverscroll":Z
    :cond_5
    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1549
    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1552
    :cond_6
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 15

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object/from16 v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move v0, v12

    .line 1665
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_0
    return v0

    .line 1606
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v12

    move v2, v12

    .line 1607
    .local v2, "height":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    move v3, v12

    .line 1608
    .local v3, "screenTop":I
    move v12, v3

    move v13, v2

    add-int/2addr v12, v13

    move v4, v12

    .line 1609
    .local v4, "screenBottom":I
    move v12, v4

    move v5, v12

    .line 1611
    .local v5, "actualScreenBottom":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v12

    move v6, v12

    .line 1616
    .local v6, "fadingEdge":I
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-lez v12, :cond_1

    .line 1617
    move v12, v3

    move v13, v6

    add-int/2addr v12, v13

    move v3, v12

    .line 1623
    :cond_1
    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1624
    .local v7, "child":Landroid/view/View;
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v12

    .line 1625
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move-object v13, v7

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_2

    .line 1626
    move v12, v4

    move v13, v6

    sub-int/2addr v12, v13

    move v4, v12

    .line 1629
    :cond_2
    const/4 v12, 0x0

    move v9, v12

    .line 1631
    .local v9, "scrollYDelta":I
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move v13, v4

    if-le v12, v13, :cond_5

    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v3

    if-le v12, v13, :cond_5

    .line 1636
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    move v13, v2

    if-le v12, v13, :cond_4

    .line 1638
    move v12, v9

    move-object v13, v1

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v3

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    move v9, v12

    .line 1645
    :goto_1
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object v13, v8

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    move v10, v12

    .line 1646
    .local v10, "bottom":I
    move v12, v10

    move v13, v5

    sub-int/2addr v12, v13

    move v11, v12

    .line 1647
    .local v11, "distanceToBottom":I
    move v12, v9

    move v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v9, v12

    .line 1665
    .end local v10    # "bottom":I
    .end local v11    # "distanceToBottom":I
    :cond_3
    :goto_2
    move v12, v9

    move v0, v12

    goto :goto_0

    .line 1641
    :cond_4
    move v12, v9

    move-object v13, v1

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v4

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1649
    :cond_5
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v3

    if-ge v12, v13, :cond_3

    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move v13, v4

    if-ge v12, v13, :cond_3

    .line 1654
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    move v13, v2

    if-le v12, v13, :cond_6

    .line 1656
    move v12, v9

    move v13, v4

    move-object v14, v1

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 1663
    :goto_3
    move v12, v9

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v13

    neg-int v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v9, v12

    goto :goto_2

    .line 1659
    :cond_6
    move v12, v9

    move v13, v3

    move-object v14, v1

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    goto :goto_3
.end method

.method public computeVerticalScrollExtent()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1451
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1444
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    const/4 v1, 0x0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 11
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1420
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v8

    move v1, v8

    .line 1421
    .local v1, "count":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    move v2, v8

    .line 1422
    .local v2, "parentSpace":I
    move v8, v1

    if-nez v8, :cond_0

    .line 1423
    move v8, v2

    move v0, v8

    .line 1437
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_0
    return v0

    .line 1426
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 1427
    .local v3, "child":Landroid/view/View;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v8

    .line 1428
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move v5, v8

    .line 1429
    .local v5, "scrollRange":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    move v6, v8

    .line 1430
    .local v6, "scrollY":I
    const/4 v8, 0x0

    move v9, v5

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v8

    .line 1431
    .local v7, "overscrollBottom":I
    move v8, v6

    if-gez v8, :cond_2

    .line 1432
    move v8, v5

    move v9, v6

    sub-int/2addr v8, v9

    move v5, v8

    .line 1437
    :cond_1
    :goto_1
    move v8, v5

    move v0, v8

    goto :goto_0

    .line 1433
    :cond_2
    move v8, v6

    move v9, v7

    if-le v8, v9, :cond_1

    .line 1434
    move v8, v5

    move v9, v6

    move v10, v7

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move v3, p3

    .local v3, "consumed":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 11

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "consumed":[I
    move-object v4, p4

    .local v4, "offsetInWindow":[I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 12

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
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

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 13

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "dxConsumed":I
    move v2, p2

    .local v2, "dyConsumed":I
    move/from16 v3, p3

    .local v3, "dxUnconsumed":I
    move/from16 v4, p4

    .local v4, "dyUnconsumed":I
    move-object/from16 v5, p5

    .local v5, "offsetInWindow":[I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 14

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
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

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 1888
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1889
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_9

    .line 1890
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    move v2, v8

    .line 1891
    .local v2, "scrollY":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1892
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v3, v8

    .line 1893
    .local v3, "restoreCount":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v8

    move v4, v8

    .line 1894
    .local v4, "width":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move v5, v8

    .line 1895
    .local v5, "height":I
    const/4 v8, 0x0

    move v6, v8

    .line 1896
    .local v6, "xTranslation":I
    const/4 v8, 0x0

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v7, v8

    .line 1897
    .local v7, "yTranslation":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1898
    :cond_0
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v4, v8

    .line 1899
    move v8, v6

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 1901
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1902
    move v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 1903
    move v8, v7

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 1905
    :cond_2
    move-object v8, v1

    move v9, v6

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1906
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1907
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1908
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1910
    :cond_3
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1912
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "xTranslation":I
    .end local v7    # "yTranslation":I
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1913
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v3, v8

    .line 1914
    .restart local v3    # "restoreCount":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v8

    move v4, v8

    .line 1915
    .restart local v4    # "width":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move v5, v8

    .line 1916
    .restart local v5    # "height":I
    const/4 v8, 0x0

    move v6, v8

    .line 1917
    .restart local v6    # "xTranslation":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v5

    add-int/2addr v8, v9

    move v7, v8

    .line 1918
    .restart local v7    # "yTranslation":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1919
    :cond_5
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v4, v8

    .line 1920
    move v8, v6

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 1922
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1923
    move v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 1924
    move v8, v7

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    move v7, v8

    .line 1926
    :cond_7
    move-object v8, v1

    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1927
    move-object v8, v1

    const/high16 v9, 0x43340000    # 180.0f

    move v10, v4

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1928
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1929
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1930
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1932
    :cond_8
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1935
    .end local v2    # "scrollY":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "xTranslation":I
    .end local v7    # "yTranslation":I
    :cond_9
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 606
    move-object v4, v0

    invoke-direct {v4}, Landroidx/core/widget/NestedScrollView;->canScroll()Z

    move-result v4

    if-nez v4, :cond_3

    .line 607
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 608
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 609
    .local v2, "currentFocused":Landroid/view/View;
    move-object v4, v2

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    move-object v2, v4

    .line 610
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x82

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 612
    .local v3, "nextFocused":Landroid/view/View;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_1

    move-object v4, v3

    const/16 v5, 0x82

    .line 614
    invoke-virtual {v4, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 642
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    .end local v2    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :goto_1
    return v0

    .line 614
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    .restart local v2    # "currentFocused":Landroid/view/View;
    .restart local v3    # "nextFocused":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 616
    .end local v2    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 619
    :cond_3
    const/4 v4, 0x0

    move v2, v4

    .line 620
    .local v2, "handled":Z
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 621
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 642
    :cond_4
    :goto_2
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 623
    :sswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 624
    move-object v4, v0

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v4

    move v2, v4

    goto :goto_2

    .line 626
    :cond_5
    move-object v4, v0

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v4

    move v2, v4

    .line 628
    goto :goto_2

    .line 630
    :sswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 631
    move-object v4, v0

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v4

    move v2, v4

    goto :goto_2

    .line 633
    :cond_6
    move-object v4, v0

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v4

    move v2, v4

    .line 635
    goto :goto_2

    .line 637
    :sswitch_2
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x21

    :goto_3
    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    move-result v4

    goto :goto_2

    :cond_7
    const/16 v5, 0x82

    goto :goto_3

    .line 621
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13

    .prologue
    .line 1816
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "velocityY":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1817
    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v2

    .line 1818
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1823
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1824
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1826
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 11

    .prologue
    .line 1222
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "direction":I
    move v7, v1

    const/16 v8, 0x82

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 1223
    .local v2, "down":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    move v3, v7

    .line 1225
    .local v3, "height":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1226
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move v8, v3

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1228
    move v7, v2

    if-eqz v7, :cond_0

    .line 1229
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1230
    .local v4, "count":I
    move v7, v4

    if-lez v7, :cond_0

    .line 1231
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 1232
    .local v5, "view":Landroid/view/View;
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v7

    .line 1233
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1234
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move v9, v3

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1238
    .end local v4    # "count":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .line 1222
    .end local v2    # "down":Z
    .end local v3    # "height":I
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 407
    const/4 v6, 0x0

    move v0, v6

    .line 419
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    .local v1, "child":Landroid/view/View;
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    .local v3, "length":I
    .local v4, "bottomEdge":I
    .local v5, "span":I
    :goto_0
    return v0

    .line 410
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "length":I
    .end local v4    # "bottomEdge":I
    .end local v5    # "span":I
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 411
    .restart local v1    # "child":Landroid/view/View;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v6

    .line 412
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v6

    move v3, v6

    .line 413
    .restart local v3    # "length":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move v4, v6

    .line 414
    .restart local v4    # "bottomEdge":I
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v7, v2

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    move v7, v4

    sub-int/2addr v6, v7

    move v5, v6

    .line 415
    .restart local v5    # "span":I
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 416
    move v6, v5

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 419
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    move v0, v6

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    const/high16 v1, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method getScrollRange()I
    .locals 9

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    const/4 v6, 0x0

    move v1, v6

    .line 1080
    .local v1, "scrollRange":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1081
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    .line 1082
    .local v2, "child":Landroid/view/View;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    move-object v3, v6

    .line 1083
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v7, v3

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object v7, v3

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    move v4, v6

    .line 1084
    .local v4, "childSize":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move v5, v6

    .line 1085
    .local v5, "parentSpace":I
    const/4 v6, 0x0

    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 1087
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "childSize":I
    .end local v5    # "parentSpace":I
    :cond_0
    move v6, v1

    move v0, v6

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 392
    const/4 v3, 0x0

    move v0, v3

    .line 401
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    .local v1, "length":I
    .local v2, "scrollY":I
    :goto_0
    return v0

    .line 395
    .end local v1    # "length":I
    .end local v2    # "scrollY":I
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    move v1, v3

    .line 396
    .restart local v1    # "length":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    move v2, v3

    .line 397
    .restart local v2    # "scrollY":I
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 398
    move v3, v2

    int-to-float v3, v3

    move v4, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 401
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    move v0, v3

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 3

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public isFillViewport()Z
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 2

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 10

    .prologue
    .line 1478
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "parentWidthMeasureSpec":I
    move v3, p3

    .local v3, "parentHeightMeasureSpec":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v4, v7

    .line 1483
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    .line 1484
    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v4

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1483
    invoke-static {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v7

    move v5, v7

    .line 1486
    .local v5, "childWidthMeasureSpec":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v6, v7

    .line 1488
    .local v6, "childHeightMeasureSpec":I
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1489
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 1494
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "parentWidthMeasureSpec":I
    move v3, p3

    .local v3, "widthUsed":I
    move/from16 v4, p4

    .local v4, "parentHeightMeasureSpec":I
    move/from16 v5, p5

    .local v5, "heightUsed":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v6, v9

    .line 1496
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v9, v2

    move-object v10, v0

    .line 1497
    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1496
    invoke-static {v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v9

    move v7, v9

    .line 1499
    .local v7, "childWidthMeasureSpec":I
    move-object v9, v6

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v10, v6

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v8, v9

    .line 1502
    .local v8, "childHeightMeasureSpec":I
    move-object v9, v1

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1503
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1771
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1773
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1774
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 973
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 996
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_0
    return v0

    .line 975
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :pswitch_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v7, :cond_0

    .line 976
    move-object v7, v1

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    move v2, v7

    .line 977
    .local v2, "vscroll":F
    move v7, v2

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 978
    move v7, v2

    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move v3, v7

    .line 979
    .local v3, "delta":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    move v4, v7

    .line 980
    .local v4, "range":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v5, v7

    .line 981
    .local v5, "oldScrollY":I
    move v7, v5

    move v8, v3

    sub-int/2addr v7, v8

    move v6, v7

    .line 982
    .local v6, "newScrollY":I
    move v7, v6

    if-gez v7, :cond_2

    .line 983
    const/4 v7, 0x0

    move v6, v7

    .line 987
    :cond_1
    :goto_1
    move v7, v6

    move v8, v5

    if-eq v7, v8, :cond_0

    .line 988
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v8

    move v9, v6

    invoke-super {v7, v8, v9}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 989
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 984
    :cond_2
    move v7, v6

    move v8, v4

    if-le v7, v8, :cond_1

    .line 985
    move v7, v4

    move v6, v7

    goto :goto_1

    .line 973
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 699
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object/from16 v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    move v2, v8

    .line 700
    .local v2, "action":I
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v8, :cond_0

    .line 701
    const/4 v8, 0x1

    move v0, v8

    .line 794
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_0
    return v0

    .line 704
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    move v8, v2

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    .line 794
    :cond_1
    :goto_1
    :pswitch_0
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move v0, v8

    goto :goto_0

    .line 715
    :pswitch_1
    move-object v8, v0

    iget v8, v8, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move v3, v8

    .line 716
    .local v3, "activePointerId":I
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 718
    goto :goto_1

    .line 721
    :cond_2
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    move v4, v8

    .line 722
    .local v4, "pointerIndex":I
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 723
    const-string/jumbo v8, "NestedScrollView"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid pointerId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in onInterceptTouchEvent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 725
    goto :goto_1

    .line 728
    :cond_3
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    move v5, v8

    .line 729
    .local v5, "y":I
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v6, v8

    .line 730
    .local v6, "yDiff":I
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v8, v9, :cond_1

    move-object v8, v0

    .line 731
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v8

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 732
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 733
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 734
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 735
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 736
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 737
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move-object v7, v8

    .line 738
    .local v7, "parent":Landroid/view/ViewParent;
    move-object v8, v7

    if-eqz v8, :cond_4

    .line 739
    move-object v8, v7

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 741
    :cond_4
    goto/16 :goto_1

    .line 746
    .end local v3    # "activePointerId":I
    .end local v4    # "pointerIndex":I
    .end local v5    # "y":I
    .end local v6    # "yDiff":I
    .end local v7    # "parent":Landroid/view/ViewParent;
    :pswitch_2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move v3, v8

    .line 747
    .local v3, "y":I
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_5

    .line 748
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 749
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 750
    goto/16 :goto_1

    .line 757
    :cond_5
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 758
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 760
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 761
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 768
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    .line 769
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v9}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 770
    move-object v8, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v8

    .line 771
    goto/16 :goto_1

    .line 769
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 777
    .end local v3    # "y":I
    :pswitch_3
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 778
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 779
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 780
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 781
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 783
    :cond_7
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 784
    goto/16 :goto_1

    .line 786
    :pswitch_4
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 1733
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "l":I
    move/from16 v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-super/range {v10 .. v15}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1734
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1736
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    move-object v11, v0

    invoke-static {v10, v11}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1737
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1739
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1741
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez v10, :cond_3

    .line 1743
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    if-eqz v10, :cond_1

    .line 1744
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    iget v12, v12, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1745
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 1750
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 1751
    .local v6, "childSize":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_2

    .line 1752
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1753
    .local v7, "child":Landroid/view/View;
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v10

    .line 1754
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move-object v11, v8

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move-object v11, v8

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v6, v10

    .line 1756
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 1757
    .local v7, "parentSpace":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v8, v10

    .line 1758
    .local v8, "currentScrollY":I
    move v10, v8

    move v11, v7

    move v12, v6

    invoke-static {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result v10

    move v9, v10

    .line 1759
    .local v9, "newScrollY":I
    move v10, v9

    move v11, v8

    if-eq v10, v11, :cond_3

    .line 1760
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1765
    .end local v6    # "childSize":I
    .end local v7    # "parentSpace":I
    .end local v8    # "currentScrollY":I
    .end local v9    # "newScrollY":I
    :cond_3
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1766
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1767
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v10, v0

    move v11, v1

    move v12, v2

    invoke-super {v10, v11, v12}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 558
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    if-nez v10, :cond_0

    .line 559
    .line 587
    :goto_0
    return-void

    .line 562
    :cond_0
    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    move v3, v10

    .line 563
    .local v3, "heightMode":I
    move v10, v3

    if-nez v10, :cond_1

    .line 564
    goto :goto_0

    .line 567
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_2

    .line 568
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 569
    .local v4, "child":Landroid/view/View;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, v10

    .line 571
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move v6, v10

    .line 572
    .local v6, "childSize":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v10

    move-object v11, v0

    .line 573
    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    .line 574
    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    move v7, v10

    .line 578
    .local v7, "parentSpace":I
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_2

    .line 579
    move v10, v1

    move-object v11, v0

    .line 580
    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v5

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    move-object v12, v5

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    move-object v12, v5

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 579
    invoke-static {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v10

    move v8, v10

    .line 582
    .local v8, "childWidthMeasureSpec":I
    move v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    .line 583
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v9, v10

    .line 584
    .local v9, "childHeightMeasureSpec":I
    move-object v10, v4

    move v11, v8

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->measure(II)V

    .line 587
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "childSize":I
    .end local v7    # "parentSpace":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childHeightMeasureSpec":I
    :cond_2
    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    move v4, p4

    .local v4, "consumed":Z
    move v5, v4

    if-nez v5, :cond_0

    .line 366
    move-object v5, v0

    move v6, v3

    float-to-int v6, v6

    invoke-direct {v5, v6}, Landroidx/core/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 367
    const/4 v5, 0x1

    move v0, v5

    .line 369
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 11

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dx":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, p4

    .local v4, "consumed":[I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 361
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dx":I
    move v3, p3

    .local v3, "dy":I
    move-object/from16 v4, p4

    .local v4, "consumed":[I
    move/from16 v5, p5

    .local v5, "type":I
    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    .line 332
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroidx/core/widget/NestedScrollView;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 356
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 17

    .prologue
    .line 320
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object/from16 v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move/from16 v6, p6

    .local v6, "type":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v7, v10

    .line 321
    .local v7, "oldScrollY":I
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v5

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 322
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    .line 323
    .local v8, "myConsumed":I
    move v10, v5

    move v11, v8

    sub-int/2addr v10, v11

    move v9, v10

    .line 324
    .local v9, "myUnconsumed":I
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v8

    const/4 v13, 0x0

    move v14, v9

    const/4 v15, 0x0

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v10

    .line 326
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 344
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move v4, p4

    .local v4, "type":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 308
    move-object v5, v0

    const/4 v6, 0x2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v5

    .line 309
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 8

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "scrollX":I
    move v2, p2

    .local v2, "scrollY":I
    move v3, p3

    .local v3, "clampedX":Z
    move v4, p4

    .local v4, "clampedY":Z
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1018
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    .line 1693
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "direction":I
    move-object v2, p2

    .local v2, "previouslyFocusedRect":Landroid/graphics/Rect;
    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1694
    const/16 v4, 0x82

    move v1, v4

    .line 1699
    :cond_0
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    .line 1700
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v0

    const/4 v6, 0x0

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1701
    :goto_1
    move-object v3, v4

    .line 1704
    .local v3, "nextFocus":Landroid/view/View;
    move-object v4, v3

    if-nez v4, :cond_3

    .line 1705
    const/4 v4, 0x0

    move v0, v4

    .line 1712
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_2
    return v0

    .line 1695
    .end local v3    # "nextFocus":Landroid/view/View;
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1696
    const/16 v4, 0x21

    move v1, v4

    goto :goto_0

    .line 1701
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1708
    .restart local v3    # "nextFocus":Landroid/view/View;
    :cond_3
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1709
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2

    .line 1712
    :cond_4
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1969
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView$SavedState;

    if-nez v3, :cond_0

    .line 1970
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1971
    .line 1978
    :goto_0
    return-void

    .line 1974
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/core/widget/NestedScrollView$SavedState;

    move-object v2, v3

    .line 1975
    .local v2, "ss":Landroidx/core/widget/NestedScrollView$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1976
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 1977
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 1978
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1982
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1983
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Landroidx/core/widget/NestedScrollView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1984
    .local v2, "ss":Landroidx/core/widget/NestedScrollView$SavedState;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    iput v4, v3, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 1985
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 11

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "l":I
    move v2, p2

    .local v2, "t":I
    move v3, p3

    .local v3, "oldl":I
    move v4, p4

    .local v4, "oldt":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 549
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v5, :cond_0

    .line 550
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V

    .line 552
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 12

    .prologue
    .line 1778
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move v3, p3

    .local v3, "oldw":I
    move/from16 v4, p4

    .local v4, "oldh":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-super {v7, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1780
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 1781
    .local v5, "currentFocused":Landroid/view/View;
    const/4 v7, 0x0

    move-object v8, v5

    if-eq v7, v8, :cond_0

    move-object v7, v0

    move-object v8, v5

    if-ne v7, v8, :cond_1

    .line 1782
    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1789
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1790
    move-object v7, v0

    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1791
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v7

    move v6, v7

    .line 1792
    .local v6, "scrollDelta":I
    move-object v7, v0

    move v8, v6

    invoke-direct {v7, v8}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1794
    .end local v6    # "scrollDelta":I
    :cond_2
    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move v4, p4

    .local v4, "type":I
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 349
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "type":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 314
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 315
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28

    .prologue
    .line 799
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/core/widget/NestedScrollView;
    move-object/from16 v3, p1

    .local v3, "ev":Landroid/view/MotionEvent;
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 801
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v4, v16

    .line 803
    .local v4, "vtev":Landroid/view/MotionEvent;
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    move/from16 v5, v16

    .line 805
    .local v5, "actionMasked":I
    move/from16 v16, v5

    if-nez v16, :cond_0

    .line 806
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 808
    :cond_0
    move-object/from16 v16, v4

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 810
    move/from16 v16, v5

    packed-switch v16, :pswitch_data_0

    .line 947
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 948
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 950
    :cond_2
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 951
    const/16 v16, 0x1

    move/from16 v2, v16

    .end local v2    # "this":Landroidx/core/widget/NestedScrollView;
    :goto_1
    return v2

    .line 812
    .restart local v2    # "this":Landroidx/core/widget/NestedScrollView;
    :pswitch_1
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v16

    if-nez v16, :cond_3

    .line 813
    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_1

    .line 815
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v26, v16

    move/from16 v27, v17

    move/from16 v16, v27

    move-object/from16 v17, v26

    move/from16 v18, v27

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v16, :cond_4

    .line 816
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v6, v16

    .line 817
    .local v6, "parent":Landroid/view/ViewParent;
    move-object/from16 v16, v6

    if-eqz v16, :cond_4

    .line 818
    move-object/from16 v16, v6

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 826
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_5

    .line 827
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 831
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 832
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 833
    move-object/from16 v16, v2

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v16

    .line 834
    goto/16 :goto_0

    .line 815
    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    .line 837
    :pswitch_2
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    move/from16 v6, v16

    .line 838
    .local v6, "activePointerIndex":I
    move/from16 v16, v6

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 839
    const-string/jumbo v16, "NestedScrollView"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid pointerId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " in onTouchEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 840
    goto/16 :goto_0

    .line 843
    :cond_7
    move-object/from16 v16, v3

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    .line 844
    .local v7, "y":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    move/from16 v16, v0

    move/from16 v17, v7

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 845
    .local v8, "deltaY":I
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 847
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 848
    move-object/from16 v16, v4

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 849
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 851
    :cond_8
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 852
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v9, v16

    .line 853
    .local v9, "parent":Landroid/view/ViewParent;
    move-object/from16 v16, v9

    if-eqz v16, :cond_9

    .line 854
    move-object/from16 v16, v9

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 856
    :cond_9
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 857
    move/from16 v16, v8

    if-lez v16, :cond_e

    .line 858
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 863
    .end local v9    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 865
    move-object/from16 v16, v2

    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 867
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    move/from16 v9, v16

    .line 868
    .local v9, "oldY":I
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v16

    move/from16 v10, v16

    .line 869
    .local v10, "range":I
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v16

    move/from16 v11, v16

    .line 870
    .local v11, "overscrollMode":I
    move/from16 v16, v11

    if-eqz v16, :cond_b

    move/from16 v16, v11

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    move/from16 v16, v10

    if-lez v16, :cond_f

    :cond_b
    const/16 v16, 0x1

    :goto_4
    move/from16 v12, v16

    .line 875
    .local v12, "canOverscroll":Z
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v8

    const/16 v19, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v22, v10

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v25}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v16, v2

    const/16 v17, 0x0

    .line 876
    invoke-virtual/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v16

    if-nez v16, :cond_c

    .line 878
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->clear()V

    .line 881
    :cond_c
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    move/from16 v17, v9

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 882
    .local v13, "scrolledDeltaY":I
    move/from16 v16, v8

    move/from16 v17, v13

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 883
    .local v14, "unconsumedY":I
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v13

    const/16 v19, 0x0

    move/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 885
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 886
    move-object/from16 v16, v4

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 887
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 910
    :cond_d
    :goto_5
    goto/16 :goto_0

    .line 860
    .end local v10    # "range":I
    .end local v11    # "overscrollMode":I
    .end local v12    # "canOverscroll":Z
    .end local v13    # "scrolledDeltaY":I
    .end local v14    # "unconsumedY":I
    .local v9, "parent":Landroid/view/ViewParent;
    :cond_e
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v8, v16

    goto/16 :goto_3

    .line 870
    .local v9, "oldY":I
    .restart local v10    # "range":I
    .restart local v11    # "overscrollMode":I
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 888
    .restart local v12    # "canOverscroll":Z
    .restart local v13    # "scrolledDeltaY":I
    .restart local v14    # "unconsumedY":I
    :cond_10
    move/from16 v16, v12

    if-eqz v16, :cond_d

    .line 889
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->ensureGlows()V

    .line 890
    move/from16 v16, v9

    move/from16 v17, v8

    add-int v16, v16, v17

    move/from16 v15, v16

    .line 891
    .local v15, "pulledToY":I
    move/from16 v16, v15

    if-gez v16, :cond_13

    .line 892
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    move/from16 v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v18, v3

    move/from16 v19, v6

    .line 893
    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 892
    invoke-static/range {v16 .. v18}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 894
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-nez v16, :cond_11

    .line 895
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 905
    :cond_11
    :goto_6
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    .line 906
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_12

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-nez v16, :cond_d

    .line 907
    :cond_12
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_5

    .line 897
    :cond_13
    move/from16 v16, v15

    move/from16 v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_11

    .line 898
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    move/from16 v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v19, v3

    move/from16 v20, v6

    .line 899
    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move-object/from16 v20, v2

    .line 900
    invoke-virtual/range {v20 .. v20}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-float v18, v18, v19

    .line 898
    invoke-static/range {v16 .. v18}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 901
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-nez v16, :cond_11

    .line 902
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_6

    .line 913
    .end local v6    # "activePointerIndex":I
    .end local v7    # "y":I
    .end local v8    # "deltaY":I
    .end local v9    # "oldY":I
    .end local v10    # "range":I
    .end local v11    # "overscrollMode":I
    .end local v12    # "canOverscroll":Z
    .end local v13    # "scrolledDeltaY":I
    .end local v14    # "unconsumedY":I
    .end local v15    # "pulledToY":I
    :pswitch_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 914
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v16, v9

    const/16 v17, 0x3e8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 915
    move-object/from16 v16, v9

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 916
    .local v10, "initialVelocity":I
    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    .line 917
    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 922
    :cond_14
    :goto_7
    move-object/from16 v16, v2

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 923
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    .line 924
    goto/16 :goto_0

    .line 918
    :cond_15
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v17

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v2

    .line 919
    invoke-virtual/range {v22 .. v22}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v22

    .line 918
    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 920
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_7

    .line 926
    .end local v9    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v10    # "initialVelocity":I
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_16

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v16

    if-lez v16, :cond_16

    .line 927
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v17

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v2

    .line 928
    invoke-virtual/range {v22 .. v22}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v22

    .line 927
    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 929
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 932
    :cond_16
    move-object/from16 v16, v2

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 933
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    .line 934
    goto/16 :goto_0

    .line 936
    :pswitch_5
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move/from16 v11, v16

    .line 937
    .local v11, "index":I
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 938
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 939
    goto/16 :goto_0

    .line 942
    .end local v11    # "index":I
    :pswitch_6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 943
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 810
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

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 32

    .prologue
    .line 1025
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/core/widget/NestedScrollView;
    move/from16 v3, p1

    .local v3, "deltaX":I
    move/from16 v4, p2

    .local v4, "deltaY":I
    move/from16 v5, p3

    .local v5, "scrollX":I
    move/from16 v6, p4

    .local v6, "scrollY":I
    move/from16 v7, p5

    .local v7, "scrollRangeX":I
    move/from16 v8, p6

    .local v8, "scrollRangeY":I
    move/from16 v9, p7

    .local v9, "maxOverScrollX":I
    move/from16 v10, p8

    .local v10, "maxOverScrollY":I
    move/from16 v11, p9

    .local v11, "isTouchEvent":Z
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v25

    move/from16 v12, v25

    .line 1026
    .local v12, "overScrollMode":I
    move-object/from16 v25, v2

    .line 1027
    invoke-virtual/range {v25 .. v25}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v25

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    const/16 v25, 0x1

    :goto_0
    move/from16 v13, v25

    .line 1028
    .local v13, "canScrollHorizontal":Z
    move-object/from16 v25, v2

    .line 1029
    invoke-virtual/range {v25 .. v25}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v25

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    const/16 v25, 0x1

    :goto_1
    move/from16 v14, v25

    .line 1030
    .local v14, "canScrollVertical":Z
    move/from16 v25, v12

    if-eqz v25, :cond_0

    move/from16 v25, v12

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    move/from16 v25, v13

    if-eqz v25, :cond_a

    :cond_0
    const/16 v25, 0x1

    :goto_2
    move/from16 v15, v25

    .line 1032
    .local v15, "overScrollHorizontal":Z
    move/from16 v25, v12

    if-eqz v25, :cond_1

    move/from16 v25, v12

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    move/from16 v25, v14

    if-eqz v25, :cond_b

    :cond_1
    const/16 v25, 0x1

    :goto_3
    move/from16 v16, v25

    .line 1035
    .local v16, "overScrollVertical":Z
    move/from16 v25, v5

    move/from16 v26, v3

    add-int v25, v25, v26

    move/from16 v17, v25

    .line 1036
    .local v17, "newScrollX":I
    move/from16 v25, v15

    if-nez v25, :cond_2

    .line 1037
    const/16 v25, 0x0

    move/from16 v9, v25

    .line 1040
    :cond_2
    move/from16 v25, v6

    move/from16 v26, v4

    add-int v25, v25, v26

    move/from16 v18, v25

    .line 1041
    .local v18, "newScrollY":I
    move/from16 v25, v16

    if-nez v25, :cond_3

    .line 1042
    const/16 v25, 0x0

    move/from16 v10, v25

    .line 1046
    :cond_3
    move/from16 v25, v9

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v19, v25

    .line 1047
    .local v19, "left":I
    move/from16 v25, v9

    move/from16 v26, v7

    add-int v25, v25, v26

    move/from16 v20, v25

    .line 1048
    .local v20, "right":I
    move/from16 v25, v10

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v21, v25

    .line 1049
    .local v21, "top":I
    move/from16 v25, v10

    move/from16 v26, v8

    add-int v25, v25, v26

    move/from16 v22, v25

    .line 1051
    .local v22, "bottom":I
    const/16 v25, 0x0

    move/from16 v23, v25

    .line 1052
    .local v23, "clampedX":Z
    move/from16 v25, v17

    move/from16 v26, v20

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 1053
    move/from16 v25, v20

    move/from16 v17, v25

    .line 1054
    const/16 v25, 0x1

    move/from16 v23, v25

    .line 1060
    :cond_4
    :goto_4
    const/16 v25, 0x0

    move/from16 v24, v25

    .line 1061
    .local v24, "clampedY":Z
    move/from16 v25, v18

    move/from16 v26, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    .line 1062
    move/from16 v25, v22

    move/from16 v18, v25

    .line 1063
    const/16 v25, 0x1

    move/from16 v24, v25

    .line 1069
    :cond_5
    :goto_5
    move/from16 v25, v24

    if-eqz v25, :cond_6

    move-object/from16 v25, v2

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1070
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v25, v0

    move/from16 v26, v17

    move/from16 v27, v18

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v31

    invoke-virtual/range {v25 .. v31}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v25

    .line 1073
    :cond_6
    move-object/from16 v25, v2

    move/from16 v26, v17

    move/from16 v27, v18

    move/from16 v28, v23

    move/from16 v29, v24

    invoke-virtual/range {v25 .. v29}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1075
    move/from16 v25, v23

    if-nez v25, :cond_7

    move/from16 v25, v24

    if-eqz v25, :cond_e

    :cond_7
    const/16 v25, 0x1

    :goto_6
    move/from16 v2, v25

    .end local v2    # "this":Landroidx/core/widget/NestedScrollView;
    return v2

    .line 1027
    .end local v13    # "canScrollHorizontal":Z
    .end local v14    # "canScrollVertical":Z
    .end local v15    # "overScrollHorizontal":Z
    .end local v16    # "overScrollVertical":Z
    .end local v17    # "newScrollX":I
    .end local v18    # "newScrollY":I
    .end local v19    # "left":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    .end local v22    # "bottom":I
    .end local v23    # "clampedX":Z
    .end local v24    # "clampedY":Z
    .restart local v2    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1029
    .restart local v13    # "canScrollHorizontal":Z
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1030
    .restart local v14    # "canScrollVertical":Z
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 1032
    .restart local v15    # "overScrollHorizontal":Z
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 1055
    .restart local v16    # "overScrollVertical":Z
    .restart local v17    # "newScrollX":I
    .restart local v18    # "newScrollY":I
    .restart local v19    # "left":I
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    .restart local v22    # "bottom":I
    .restart local v23    # "clampedX":Z
    :cond_c
    move/from16 v25, v17

    move/from16 v26, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 1056
    move/from16 v25, v19

    move/from16 v17, v25

    .line 1057
    const/16 v25, 0x1

    move/from16 v23, v25

    goto :goto_4

    .line 1064
    .restart local v24    # "clampedY":Z
    :cond_d
    move/from16 v25, v18

    move/from16 v26, v21

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1065
    move/from16 v25, v21

    move/from16 v18, v25

    .line 1066
    const/16 v25, 0x1

    move/from16 v24, v25

    goto :goto_5

    .line 1075
    :cond_e
    const/16 v25, 0x0

    goto :goto_6
.end method

.method public pageScroll(I)Z
    .locals 12

    .prologue
    .line 1184
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "direction":I
    move v8, v1

    const/16 v9, 0x82

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v2, v8

    .line 1185
    .local v2, "down":Z
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move v3, v8

    .line 1187
    .local v3, "height":I
    move v8, v2

    if-eqz v8, :cond_2

    .line 1188
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v9

    move v10, v3

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1189
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v8

    move v4, v8

    .line 1190
    .local v4, "count":I
    move v8, v4

    if-lez v8, :cond_0

    .line 1191
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1192
    .local v5, "view":Landroid/view/View;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v8

    .line 1193
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 1194
    .local v7, "bottom":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move v9, v3

    add-int/2addr v8, v9

    move v9, v7

    if-le v8, v9, :cond_0

    .line 1195
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move v9, v7

    move v10, v3

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1198
    .line 1204
    .end local v4    # "count":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "bottom":I
    :cond_0
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move v10, v3

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1206
    move-object v8, v0

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v8

    move v0, v8

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0

    .line 1184
    .end local v2    # "down":Z
    .end local v3    # "height":I
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1199
    .restart local v2    # "down":Z
    .restart local v3    # "height":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v9

    move v10, v3

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1200
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_0

    .line 1201
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1670
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "focused":Landroid/view/View;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v3, :cond_0

    .line 1671
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1676
    :goto_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1677
    return-void

    .line 1674
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 8

    .prologue
    .line 1719
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "rectangle":Landroid/graphics/Rect;
    move v3, p3

    .local v3, "immediate":Z
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v1

    .line 1720
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1719
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1722
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "disallowIntercept":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 681
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 683
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 684
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 1727
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1728
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1729
    return-void
.end method

.method public scrollTo(II)V
    .locals 12

    .prologue
    .line 1858
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 1859
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 1860
    .local v3, "child":Landroid/view/View;
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v9

    .line 1861
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move v5, v9

    .line 1862
    .local v5, "parentSpaceHorizontal":I
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    move v6, v9

    .line 1863
    .local v6, "childSizeHorizontal":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v7, v9

    .line 1864
    .local v7, "parentSpaceVertical":I
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v8, v9

    .line 1865
    .local v8, "childSizeVertical":I
    move v9, v1

    move v10, v5

    move v11, v6

    invoke-static {v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result v9

    move v1, v9

    .line 1866
    move v9, v2

    move v10, v7

    move v11, v8

    invoke-static {v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result v9

    move v2, v9

    .line 1867
    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v10

    if-ne v9, v10, :cond_0

    move v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1868
    :cond_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1871
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "parentSpaceHorizontal":I
    .end local v6    # "childSizeHorizontal":I
    .end local v7    # "parentSpaceVertical":I
    .end local v8    # "childSizeVertical":I
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 4

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "fillViewport":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    if-eq v2, v3, :cond_0

    .line 525
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    .line 526
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 528
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 252
    return-void
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 4
    .param p1    # Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, p1

    .local v1, "l":Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    .line 488
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "smoothScrollingEnabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 543
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 17

    .prologue
    .line 1377
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/core/widget/NestedScrollView;
    move/from16 v2, p1

    .local v2, "dx":I
    move/from16 v3, p2

    .local v3, "dy":I
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v12

    if-nez v12, :cond_0

    .line 1379
    .line 1400
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    move-object v14, v1

    iget-wide v14, v14, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v12, v14

    move-wide v4, v12

    .line 1382
    .local v4, "duration":J
    move-wide v12, v4

    const-wide/16 v14, 0xfa

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 1383
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v6, v12

    .line 1384
    .local v6, "child":Landroid/view/View;
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v12

    .line 1385
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    move-object v13, v7

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    move-object v13, v7

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    move v8, v12

    .line 1386
    .local v8, "childSize":I
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v9, v12

    .line 1387
    .local v9, "parentSpace":I
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    move v10, v12

    .line 1388
    .local v10, "scrollY":I
    const/4 v12, 0x0

    move v13, v8

    move v14, v9

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v11, v12

    .line 1389
    .local v11, "maxY":I
    const/4 v12, 0x0

    move v13, v10

    move v14, v3

    add-int/2addr v13, v14

    move v14, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v13, v10

    sub-int/2addr v12, v13

    move v3, v12

    .line 1390
    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v13

    iput v13, v12, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1391
    move-object v12, v1

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v13

    move v14, v10

    const/4 v15, 0x0

    move/from16 v16, v3

    invoke-virtual/range {v12 .. v16}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1392
    move-object v12, v1

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1393
    .line 1399
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "childSize":I
    .end local v9    # "parentSpace":I
    .end local v10    # "scrollY":I
    .end local v11    # "maxY":I
    :goto_1
    move-object v12, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    iput-wide v13, v12, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    .line 1400
    goto/16 :goto_0

    .line 1394
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1395
    move-object v12, v1

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1397
    :cond_2
    move-object v12, v1

    move v13, v2

    move v14, v3

    invoke-virtual {v12, v13, v14}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 7

    .prologue
    .line 1409
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1410
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "axes":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "axes":I
    move v2, p2

    .local v2, "type":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/NestedScrollView;
    return v0
.end method

.method public stopNestedScroll()V
    .locals 3

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 267
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 227
    return-void
.end method
