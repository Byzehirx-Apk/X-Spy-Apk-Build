.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroidx/recyclerview/widget/LayoutState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "spanCount":I
    move v2, p2

    .local v2, "orientation":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 107
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 130
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 135
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 146
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 152
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 158
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 163
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 189
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 194
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 202
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 208
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 216
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 246
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 247
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 248
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 249
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move v4, p4

    .local v4, "defStyleRes":I
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 107
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 130
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 135
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 146
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 152
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 158
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 163
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 189
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 194
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 202
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 208
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 216
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 230
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 231
    .local v5, "properties":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 232
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 233
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 234
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 235
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 236
    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1808
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1809
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1808
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1811
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "anchorInfo":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v4, :cond_2

    .line 787
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_4

    .line 788
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_2

    .line 789
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 790
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 791
    .local v3, "line":I
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 792
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v4, :cond_1

    .line 793
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 798
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    :cond_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    goto :goto_1

    .line 788
    .line 805
    .end local v2    # "i":I
    .end local v3    # "line":I
    :cond_2
    :goto_2
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 806
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 807
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 809
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 810
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 811
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 815
    :goto_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 816
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 817
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 819
    :cond_3
    return-void

    .line 801
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 802
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_2

    .line 813
    :cond_5
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3
.end method

.method private attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 6

    .prologue
    .line 1752
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v3, p3

    .local v3, "layoutState":Landroidx/recyclerview/widget/LayoutState;
    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1753
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 1754
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1765
    :goto_0
    return-void

    .line 1756
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1759
    :cond_1
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    .line 1760
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1762
    :cond_2
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5

    .prologue
    .line 2045
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2046
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 2049
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_1
    return v0

    .line 2046
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 2048
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    move v2, v3

    .line 2049
    .local v2, "firstChildPos":I
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    const/4 v3, -0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 7

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "span":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    .line 404
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 406
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 407
    .local v2, "endView":Landroid/view/View;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 408
    .local v3, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 416
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v2    # "endView":Landroid/view/View;
    .end local v3    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :goto_1
    return v0

    .line 408
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .restart local v2    # "endView":Landroid/view/View;
    .restart local v3    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 410
    .end local v2    # "endView":Landroid/view/View;
    .end local v3    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 412
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 413
    .local v2, "startView":Landroid/view/View;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 414
    .restart local v3    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 416
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    const/4 v2, 0x0

    move v0, v2

    .line 1095
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1096
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 1097
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1095
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1096
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1073
    const/4 v2, 0x0

    move v0, v2

    .line 1075
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1076
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 1077
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 1075
    invoke-static/range {v2 .. v8}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1076
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1113
    const/4 v2, 0x0

    move v0, v2

    .line 1115
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1116
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 1117
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1115
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1116
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 2394
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "focusDirection":I
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 2427
    const/high16 v2, -0x80000000

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .line 2396
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :sswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2397
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2398
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2399
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2401
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2404
    :sswitch_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2405
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2406
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2407
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2409
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2412
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 2415
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 2418
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 2421
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_7
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 2394
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "newItemTop":I
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1735
    .local v2, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1736
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1737
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v8, v3

    aget-object v7, v7, v8

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1736
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1739
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 9

    .prologue
    .line 1743
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "newItemBottom":I
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1744
    .local v2, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1745
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1746
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v7, v3

    aget-object v6, v6, v7

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1745
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1748
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 5

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 259
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v3, v4, 0x1

    .line 260
    invoke-static {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 261
    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 25

    .prologue
    .line 1577
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object/from16 v3, p1

    .local v3, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v4, p2

    .local v4, "layoutState":Landroidx/recyclerview/widget/LayoutState;
    move-object/from16 v5, p3

    .local v5, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Ljava/util/BitSet;->set(IIZ)V

    .line 1582
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1583
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1584
    const v19, 0x7fffffff

    move/from16 v6, v19

    .line 1596
    .local v6, "targetLine":I
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1603
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1604
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    .line 1605
    :goto_1
    move/from16 v7, v19

    .line 1606
    .local v7, "defaultNewViewLine":I
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 1607
    .local v8, "added":Z
    :goto_2
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    .line 1608
    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1a

    .line 1609
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1610
    .local v9, "view":Landroid/view/View;
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v10, v19

    .line 1611
    .local v10, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v19

    move/from16 v11, v19

    .line 1612
    .local v11, "position":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v19

    move/from16 v12, v19

    .line 1614
    .local v12, "spanIndex":I
    move/from16 v19, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_3
    move/from16 v14, v19

    .line 1615
    .local v14, "assignSpan":Z
    move/from16 v19, v14

    if-eqz v19, :cond_a

    .line 1616
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    :goto_4
    move-object/from16 v13, v19

    .line 1617
    .local v13, "currentSpan":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 1628
    :goto_5
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1629
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1630
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1634
    :goto_6
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1638
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1639
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    .line 1640
    :goto_7
    move/from16 v15, v19

    .line 1641
    .local v15, "start":I
    move/from16 v19, v15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v16, v19

    .line 1642
    .local v16, "end":I
    move/from16 v19, v14

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1644
    move-object/from16 v19, v2

    move/from16 v20, v15

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1645
    .local v17, "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object/from16 v19, v17

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1646
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1647
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1648
    .line 1663
    .end local v17    # "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_1
    :goto_8
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1664
    move/from16 v19, v14

    if-eqz v19, :cond_f

    .line 1665
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1683
    :cond_2
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1686
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1687
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    .line 1688
    :goto_a
    move/from16 v18, v19

    .line 1690
    .local v18, "otherEnd":I
    move/from16 v19, v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 1698
    .local v17, "otherStart":I
    :goto_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1699
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v17

    move/from16 v22, v15

    move/from16 v23, v18

    move/from16 v24, v16

    invoke-virtual/range {v19 .. v24}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1704
    :goto_c
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1705
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1709
    :goto_d
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1710
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1711
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1712
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->clear()V

    .line 1717
    :cond_3
    :goto_e
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1718
    goto/16 :goto_2

    .line 1586
    .end local v6    # "targetLine":I
    .end local v7    # "defaultNewViewLine":I
    .end local v8    # "added":Z
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v11    # "position":I
    .end local v12    # "spanIndex":I
    .end local v13    # "currentSpan":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v14    # "assignSpan":Z
    .end local v15    # "start":I
    .end local v16    # "end":I
    .end local v17    # "otherStart":I
    .end local v18    # "otherEnd":I
    :cond_4
    const/high16 v19, -0x80000000

    move/from16 v6, v19

    .restart local v6    # "targetLine":I
    goto/16 :goto_0

    .line 1589
    .end local v6    # "targetLine":I
    :cond_5
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1590
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v6, v19

    .restart local v6    # "targetLine":I
    goto/16 :goto_0

    .line 1592
    .end local v6    # "targetLine":I
    :cond_6
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v6, v19

    .restart local v6    # "targetLine":I
    goto/16 :goto_0

    .line 1604
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1605
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    goto/16 :goto_1

    .line 1614
    .restart local v7    # "defaultNewViewLine":I
    .restart local v8    # "added":Z
    .restart local v9    # "view":Landroid/view/View;
    .restart local v10    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v11    # "position":I
    .restart local v12    # "spanIndex":I
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1616
    .restart local v14    # "assignSpan":Z
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-result-object v19

    goto/16 :goto_4

    .line 1625
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v13, v19

    .restart local v13    # "currentSpan":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    goto/16 :goto_5

    .line 1632
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1639
    :cond_c
    move-object/from16 v19, v13

    move/from16 v20, v7

    .line 1640
    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v19

    goto/16 :goto_7

    .line 1650
    :cond_d
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    .line 1651
    :goto_f
    move/from16 v16, v19

    .line 1652
    .restart local v16    # "end":I
    move/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 1653
    .restart local v15    # "start":I
    move/from16 v19, v14

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1655
    move-object/from16 v19, v2

    move/from16 v20, v16

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1656
    .local v17, "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object/from16 v19, v17

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1657
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1658
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    .line 1650
    .end local v15    # "start":I
    .end local v16    # "end":I
    .end local v17    # "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_e
    move-object/from16 v19, v13

    move/from16 v20, v7

    .line 1651
    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v19

    goto :goto_f

    .line 1668
    .restart local v15    # "start":I
    .restart local v16    # "end":I
    :cond_f
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1669
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v19, 0x1

    :goto_10
    move/from16 v17, v19

    .line 1673
    .local v17, "hasInvalidGap":Z
    :goto_11
    move/from16 v19, v17

    if-eqz v19, :cond_2

    .line 1674
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    .line 1675
    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1676
    .local v18, "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object/from16 v19, v18

    if-eqz v19, :cond_10

    .line 1677
    move-object/from16 v19, v18

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1679
    :cond_10
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1669
    .end local v17    # "hasInvalidGap":Z
    .end local v18    # "fullSpanItem":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_11
    const/16 v19, 0x0

    goto :goto_10

    .line 1671
    :cond_12
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v19

    if-nez v19, :cond_13

    const/16 v19, 0x1

    :goto_12
    move/from16 v17, v19

    .restart local v17    # "hasInvalidGap":Z
    goto :goto_11

    .end local v17    # "hasInvalidGap":Z
    :cond_13
    const/16 v19, 0x0

    goto :goto_12

    .line 1687
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1688
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    sub-int v19, v19, v20

    goto/16 :goto_a

    .line 1692
    :cond_15
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    .line 1694
    :goto_13
    move/from16 v17, v19

    .line 1695
    .local v17, "otherStart":I
    move/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v18, v19

    .local v18, "otherEnd":I
    goto/16 :goto_b

    .line 1692
    .end local v17    # "otherStart":I
    .end local v18    # "otherEnd":I
    :cond_16
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    .line 1694
    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    add-int v19, v19, v20

    goto :goto_13

    .line 1701
    .restart local v17    # "otherStart":I
    .restart local v18    # "otherEnd":I
    :cond_17
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v16

    move/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1707
    :cond_18
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v21, v0

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    .line 1714
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1719
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v11    # "position":I
    .end local v12    # "spanIndex":I
    .end local v13    # "currentSpan":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v14    # "assignSpan":Z
    .end local v15    # "start":I
    .end local v16    # "end":I
    .end local v17    # "otherStart":I
    .end local v18    # "otherEnd":I
    :cond_1a
    move/from16 v19, v8

    if-nez v19, :cond_1b

    .line 1720
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1723
    :cond_1b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1724
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    move/from16 v10, v19

    .line 1725
    .local v10, "minStart":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v9, v19

    .line 1730
    .end local v10    # "minStart":I
    .local v9, "diff":I
    :goto_14
    move/from16 v19, v9

    if-lez v19, :cond_1d

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move/from16 v19, v0

    move/from16 v20, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_15
    move/from16 v2, v19

    .end local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v2

    .line 1727
    .end local v9    # "diff":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_1c
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    move/from16 v10, v19

    .line 1728
    .local v10, "maxEnd":I
    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v9, v19

    .restart local v9    # "diff":I
    goto :goto_14

    .line 1730
    .end local v10    # "maxEnd":I
    :cond_1d
    const/16 v19, 0x0

    goto :goto_15
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 8

    .prologue
    .line 2220
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "itemCount":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 2221
    .local v2, "limit":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 2222
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2223
    .local v4, "view":Landroid/view/View;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 2224
    .local v5, "position":I
    move v6, v5

    if-ltz v6, :cond_0

    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 2225
    move v6, v5

    move v0, v6

    .line 2228
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :goto_1
    return v0

    .line 2221
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "position":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2228
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 7

    .prologue
    .line 2237
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "itemCount":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 2238
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2239
    .local v3, "view":Landroid/view/View;
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    move v4, v5

    .line 2240
    .local v4, "position":I
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 2241
    move v5, v4

    move v0, v5

    .line 2244
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "position":I
    :goto_1
    return v0

    .line 2237
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "position":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2244
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "position":I
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "canOffsetChildren":Z
    move-object v7, v0

    const/high16 v8, -0x80000000

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v7

    move v4, v7

    .line 1414
    .local v4, "maxEndLine":I
    move v7, v4

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_0

    .line 1415
    .line 1428
    :goto_0
    return-void

    .line 1417
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 1419
    .local v5, "gap":I
    move v7, v5

    if-lez v7, :cond_2

    .line 1420
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 1424
    .local v6, "fixOffset":I
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1425
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    if-lez v7, :cond_1

    .line 1426
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1428
    :cond_1
    goto :goto_0

    .line 1422
    .end local v6    # "fixOffset":I
    :cond_2
    goto :goto_0
.end method

.method private fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1432
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "canOffsetChildren":Z
    move-object v7, v0

    const v8, 0x7fffffff

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v7

    move v4, v7

    .line 1433
    .local v4, "minStartLine":I
    move v7, v4

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_0

    .line 1434
    .line 1447
    :goto_0
    return-void

    .line 1436
    :cond_0
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1438
    .local v5, "gap":I
    move v7, v5

    if-lez v7, :cond_2

    .line 1439
    move-object v7, v0

    move v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    move v6, v7

    .line 1443
    .local v6, "fixOffset":I
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1444
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    if-lez v7, :cond_1

    .line 1445
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1447
    :cond_1
    goto :goto_0

    .line 1441
    .end local v6    # "fixOffset":I
    :cond_2
    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 7

    .prologue
    .line 1887
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "def":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1888
    .local v2, "maxEnd":I
    const/4 v5, 0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1889
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1890
    .local v4, "spanEnd":I
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1891
    move v5, v4

    move v2, v5

    .line 1888
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1894
    .end local v4    # "spanEnd":I
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method private getMaxStart(I)I
    .locals 7

    .prologue
    .line 1845
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "def":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1846
    .local v2, "maxStart":I
    const/4 v5, 0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1847
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1848
    .local v4, "spanStart":I
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1849
    move v5, v4

    move v2, v5

    .line 1846
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1852
    .end local v4    # "spanStart":I
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method private getMinEnd(I)I
    .locals 7

    .prologue
    .line 1898
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "def":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1899
    .local v2, "minEnd":I
    const/4 v5, 0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1900
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1901
    .local v4, "spanEnd":I
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1902
    move v5, v4

    move v2, v5

    .line 1899
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1905
    .end local v4    # "spanEnd":I
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method private getMinStart(I)I
    .locals 7

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "def":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1857
    .local v2, "minStart":I
    const/4 v5, 0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1858
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1859
    .local v4, "spanStart":I
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1860
    move v5, v4

    move v2, v5

    .line 1857
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1863
    .end local v4    # "spanStart":I
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method private getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .locals 14

    .prologue
    .line 1982
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "layoutState":Landroidx/recyclerview/widget/LayoutState;
    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v12, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v12

    move v2, v12

    .line 1984
    .local v2, "preferLastSpan":Z
    move v12, v2

    if-eqz v12, :cond_1

    .line 1985
    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v3, v12

    .line 1986
    .local v3, "startIndex":I
    const/4 v12, -0x1

    move v4, v12

    .line 1987
    .local v4, "endIndex":I
    const/4 v12, -0x1

    move v5, v12

    .line 1993
    .local v5, "diff":I
    :goto_0
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1994
    const/4 v12, 0x0

    move-object v6, v12

    .line 1995
    .local v6, "min":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    const v12, 0x7fffffff

    move v7, v12

    .line 1996
    .local v7, "minLine":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    move v8, v12

    .line 1997
    .local v8, "defaultLine":I
    move v12, v3

    move v9, v12

    .local v9, "i":I
    :goto_1
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_2

    .line 1998
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1999
    .local v10, "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v12

    move v11, v12

    .line 2000
    .local v11, "otherLine":I
    move v12, v11

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 2001
    move-object v12, v10

    move-object v6, v12

    .line 2002
    move v12, v11

    move v7, v12

    .line 1997
    :cond_0
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1989
    .end local v3    # "startIndex":I
    .end local v4    # "endIndex":I
    .end local v5    # "diff":I
    .end local v6    # "min":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v7    # "minLine":I
    .end local v8    # "defaultLine":I
    .end local v9    # "i":I
    .end local v10    # "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v11    # "otherLine":I
    :cond_1
    const/4 v12, 0x0

    move v3, v12

    .line 1990
    .restart local v3    # "startIndex":I
    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v4, v12

    .line 1991
    .restart local v4    # "endIndex":I
    const/4 v12, 0x1

    move v5, v12

    .restart local v5    # "diff":I
    goto :goto_0

    .line 2005
    .restart local v6    # "min":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .restart local v7    # "minLine":I
    .restart local v8    # "defaultLine":I
    .restart local v9    # "i":I
    :cond_2
    move-object v12, v6

    move-object v0, v12

    .line 2018
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v6    # "min":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v7    # "minLine":I
    :goto_2
    return-object v0

    .line 2007
    .end local v8    # "defaultLine":I
    .end local v9    # "i":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_3
    const/4 v12, 0x0

    move-object v6, v12

    .line 2008
    .local v6, "max":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    const/high16 v12, -0x80000000

    move v7, v12

    .line 2009
    .local v7, "maxLine":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    move v8, v12

    .line 2010
    .restart local v8    # "defaultLine":I
    move v12, v3

    move v9, v12

    .restart local v9    # "i":I
    :goto_3
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_5

    .line 2011
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 2012
    .restart local v10    # "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v12

    move v11, v12

    .line 2013
    .restart local v11    # "otherLine":I
    move v12, v11

    move v13, v7

    if-le v12, v13, :cond_4

    .line 2014
    move-object v12, v10

    move-object v6, v12

    .line 2015
    move v12, v11

    move v7, v12

    .line 2010
    :cond_4
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_3

    .line 2018
    .end local v10    # "other":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v11    # "otherLine":I
    :cond_5
    move-object v12, v6

    move-object v0, v12

    goto :goto_2
.end method

.method private handleUpdate(III)V
    .locals 11

    .prologue
    .line 1533
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCountOrToPosition":I
    move v3, p3

    .local v3, "cmd":I
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    :goto_0
    move v4, v8

    .line 1537
    .local v4, "minPosition":I
    move v8, v3

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    .line 1538
    move v8, v1

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 1539
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1540
    .local v5, "affectedRangeEnd":I
    move v8, v1

    move v6, v8

    .line 1550
    .local v6, "affectedRangeStart":I
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v8

    .line 1551
    move v8, v3

    sparse-switch v8, :sswitch_data_0

    .line 1565
    :goto_2
    move v8, v5

    move v9, v4

    if-gt v8, v9, :cond_3

    .line 1566
    .line 1573
    :goto_3
    return-void

    .line 1533
    .end local v4    # "minPosition":I
    .end local v5    # "affectedRangeEnd":I
    .end local v6    # "affectedRangeStart":I
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_0

    .line 1542
    .restart local v4    # "minPosition":I
    :cond_1
    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1543
    .restart local v5    # "affectedRangeEnd":I
    move v8, v2

    move v6, v8

    .restart local v6    # "affectedRangeStart":I
    goto :goto_1

    .line 1546
    .end local v5    # "affectedRangeEnd":I
    .end local v6    # "affectedRangeStart":I
    :cond_2
    move v8, v1

    move v6, v8

    .line 1547
    .restart local v6    # "affectedRangeStart":I
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v5, v8

    .restart local v5    # "affectedRangeEnd":I
    goto :goto_1

    .line 1553
    :sswitch_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    .line 1554
    goto :goto_2

    .line 1556
    :sswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1557
    goto :goto_2

    .line 1560
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1561
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1569
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    :goto_4
    move v7, v8

    .line 1570
    .local v7, "maxPosition":I
    move v8, v6

    move v9, v7

    if-gt v8, v9, :cond_4

    .line 1571
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1573
    :cond_4
    goto :goto_3

    .line 1569
    .end local v7    # "maxPosition":I
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    goto :goto_4

    .line 1551
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 12

    .prologue
    .line 1193
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "widthSpec":I
    move v3, p3

    .local v3, "heightSpec":I
    move/from16 v4, p4

    .local v4, "alreadyMeasured":Z
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1194
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v7

    .line 1195
    .local v5, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v7, v0

    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v7

    move v2, v7

    .line 1197
    move-object v7, v0

    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v7

    move v3, v7

    .line 1199
    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    .line 1200
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    .line 1201
    :goto_0
    move v6, v7

    .line 1202
    .local v6, "measure":Z
    move v7, v6

    if-eqz v7, :cond_0

    .line 1203
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1206
    :cond_0
    return-void

    .line 1200
    .end local v6    # "measure":Z
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    .line 1201
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 12

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move v3, p3

    .local v3, "alreadyMeasured":Z
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_1

    .line 1129
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1130
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move-object v7, v0

    .line 1132
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    .line 1133
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    move-object v9, v0

    .line 1134
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x1

    .line 1131
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1130
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1189
    :goto_0
    return-void

    .line 1139
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 1142
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v6

    move-object v7, v0

    .line 1143
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    move-object v8, v0

    .line 1144
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x1

    .line 1141
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move v8, v3

    .line 1139
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1151
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1154
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v7, v0

    .line 1158
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x0

    .line 1156
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    .line 1163
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    .line 1164
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    move-object v9, v0

    .line 1165
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x1

    .line 1162
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1154
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1172
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 1175
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v6

    move-object v7, v0

    .line 1176
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    move-object v8, v0

    .line 1177
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x1

    .line 1174
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v8, v0

    .line 1182
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x0

    .line 1180
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1172
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto/16 :goto_0
.end method

.method private onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 12

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "shouldCheckForGaps":Z
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v4, v8

    .line 612
    .local v4, "anchorInfo":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v8, :cond_0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 613
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 614
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 615
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 616
    .line 722
    :goto_0
    return-void

    .line 620
    :cond_1
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_8

    :cond_2
    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 622
    .local v5, "recalculateAnchor":Z
    move v8, v5

    if-eqz v8, :cond_3

    .line 623
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 624
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_9

    .line 625
    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 630
    :goto_2
    move-object v8, v0

    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 631
    move-object v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 633
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v8, :cond_5

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 634
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v8, v9, :cond_4

    move-object v8, v0

    .line 635
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v8

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v8, v9, :cond_5

    .line 636
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 637
    move-object v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 641
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_a

    .line 643
    :cond_6
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v8, :cond_10

    .line 644
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_3
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_a

    .line 646
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 647
    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_7

    .line 648
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 644
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 620
    .end local v5    # "recalculateAnchor":Z
    .end local v6    # "i":I
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 627
    .restart local v5    # "recalculateAnchor":Z
    :cond_9
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 628
    move-object v8, v4

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    .line 644
    .line 667
    :cond_a
    :goto_4
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 668
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 669
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 670
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 671
    move-object v8, v0

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 672
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_14

    .line 674
    move-object v8, v0

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 675
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 677
    move-object v8, v0

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 678
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 679
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 690
    :goto_5
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 692
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 693
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_15

    .line 694
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 695
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 701
    :cond_b
    :goto_6
    const/4 v8, 0x0

    move v6, v8

    .line 702
    .local v6, "hasGaps":Z
    move v8, v3

    if-eqz v8, :cond_d

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_d

    .line 703
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v8, :cond_16

    move-object v8, v0

    .line 704
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_16

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v8, :cond_c

    move-object v8, v0

    .line 705
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_16

    :cond_c
    const/4 v8, 0x1

    :goto_7
    move v7, v8

    .line 706
    .local v7, "needToCheckForGaps":Z
    move v8, v7

    if-eqz v8, :cond_d

    .line 707
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v8

    .line 708
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 709
    const/4 v8, 0x1

    move v6, v8

    .line 713
    .end local v7    # "needToCheckForGaps":Z
    :cond_d
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 714
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 716
    :cond_e
    move-object v8, v0

    move-object v9, v4

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 717
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v9

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 718
    move v8, v6

    if-eqz v8, :cond_f

    .line 719
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 720
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 722
    :cond_f
    goto/16 :goto_0

    .line 652
    .end local v6    # "hasGaps":Z
    :cond_10
    move v8, v5

    if-nez v8, :cond_11

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v8, :cond_13

    .line 653
    :cond_11
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_8
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_12

    .line 654
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v10, v4

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 653
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 657
    :cond_12
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    goto/16 :goto_4

    .line 659
    .end local v6    # "i":I
    :cond_13
    const/4 v8, 0x0

    move v6, v8

    .restart local v6    # "i":I
    :goto_9
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_a

    .line 660
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 661
    .local v7, "span":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 662
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    move v10, v6

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 682
    .end local v6    # "i":I
    .end local v7    # "span":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_14
    move-object v8, v0

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 683
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 685
    move-object v8, v0

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 686
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 687
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    goto/16 :goto_5

    .line 697
    :cond_15
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 698
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto/16 :goto_6

    .line 705
    .local v6, "hasGaps":Z
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_7
.end method

.method private preferLastSpan(I)Z
    .locals 4

    .prologue
    .line 1972
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "layoutDir":I
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 1973
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 1975
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_2
    return v0

    .line 1973
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1975
    :cond_2
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_5
    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1815
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1816
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1815
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1818
    :cond_0
    return-void
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 8

    .prologue
    .line 1768
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "layoutState":Landroidx/recyclerview/widget/LayoutState;
    move-object v5, v2

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v5, :cond_1

    .line 1769
    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    if-nez v5, :cond_3

    .line 1773
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1774
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 1804
    :goto_1
    goto :goto_0

    .line 1776
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_1

    .line 1781
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1783
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 1785
    .local v3, "scrolled":I
    move v5, v3

    if-gez v5, :cond_4

    .line 1786
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move v4, v5

    .line 1790
    .local v4, "line":I
    :goto_2
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 1791
    goto :goto_1

    .line 1788
    .end local v4    # "line":I
    :cond_4
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .restart local v4    # "line":I
    goto :goto_2

    .line 1793
    .end local v3    # "scrolled":I
    .end local v4    # "line":I
    :cond_5
    move-object v5, v0

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 1795
    .restart local v3    # "scrolled":I
    move v5, v3

    if-gez v5, :cond_6

    .line 1796
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move v4, v5

    .line 1800
    .restart local v4    # "line":I
    :goto_3
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_1

    .line 1798
    .end local v4    # "line":I
    :cond_6
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .restart local v4    # "line":I
    goto :goto_3
.end method

.method private recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1938
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "line":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1940
    .local v3, "childCount":I
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    if-ltz v8, :cond_6

    .line 1941
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1942
    .local v5, "child":Landroid/view/View;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v5

    .line 1943
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    .line 1944
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 1946
    .local v6, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v8, v6

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v8, :cond_3

    .line 1947
    const/4 v8, 0x0

    move v7, v8

    .local v7, "j":I
    :goto_1
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_1

    .line 1948
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1949
    .line 1966
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v7    # "j":I
    :goto_2
    return-void

    .line 1947
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v7    # "j":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1952
    :cond_1
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_2

    .line 1953
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1952
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1961
    .end local v7    # "j":I
    :cond_2
    :goto_4
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1962
    .line 1940
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1956
    :cond_3
    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1957
    goto :goto_2

    .line 1959
    :cond_4
    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    goto :goto_4

    .line 1963
    .end local v6    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_5
    goto :goto_2

    .line 1966
    .end local v5    # "child":Landroid/view/View;
    :cond_6
    goto :goto_2
.end method

.method private recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 9

    .prologue
    .line 1909
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "line":I
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1910
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1911
    .local v3, "child":Landroid/view/View;
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v3

    .line 1912
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    .line 1913
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v4, v6

    .line 1915
    .local v4, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v6, :cond_3

    .line 1916
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_1

    .line 1917
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1918
    .line 1935
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v5    # "j":I
    :goto_2
    return-void

    .line 1916
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v5    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1921
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    :goto_3
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_2

    .line 1922
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1921
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1930
    .end local v5    # "j":I
    :cond_2
    :goto_4
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1931
    .line 1934
    goto :goto_0

    .line 1925
    :cond_3
    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1926
    goto :goto_2

    .line 1928
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    goto :goto_4

    .line 1932
    .end local v4    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_5
    goto :goto_2

    .line 1935
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    goto :goto_2
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 13

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_0

    .line 735
    .line 780
    :goto_0
    return-void

    .line 737
    :cond_0
    const/4 v10, 0x0

    move v1, v10

    .line 738
    .local v1, "maxSize":F
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    move v2, v10

    .line 739
    .local v2, "childCount":I
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_1
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 740
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 741
    .local v4, "child":Landroid/view/View;
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    move v5, v10

    .line 742
    .local v5, "size":F
    move v10, v5

    move v11, v1

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 743
    .line 739
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 745
    :cond_1
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v10

    .line 746
    .local v6, "layoutParams":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v10, v6

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 747
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v5, v10

    .line 749
    :cond_2
    move v10, v1

    move v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v1, v10

    goto :goto_2

    .line 751
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "size":F
    .end local v6    # "layoutParams":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_3
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move v3, v10

    .line 752
    .local v3, "before":I
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move v4, v10

    .line 753
    .local v4, "desired":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v10

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4

    .line 754
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v4, v10

    .line 756
    :cond_4
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 757
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move v11, v3

    if-ne v10, v11, :cond_5

    .line 758
    goto :goto_0

    .line 760
    :cond_5
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_3
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_9

    .line 761
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 762
    .local v6, "child":Landroid/view/View;
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v10

    .line 763
    .local v7, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v10, v7

    iget-boolean v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v10, :cond_6

    .line 764
    .line 760
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 766
    :cond_6
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 767
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v7

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 768
    .local v8, "newOffset":I
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v7

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    move v11, v3

    mul-int/2addr v10, v11

    move v9, v10

    .line 769
    .local v9, "prevOffset":I
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 770
    goto :goto_4

    .line 771
    .end local v8    # "newOffset":I
    .end local v9    # "prevOffset":I
    :cond_7
    move-object v10, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 772
    .restart local v8    # "newOffset":I
    move-object v10, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move v11, v3

    mul-int/2addr v10, v11

    move v9, v10

    .line 773
    .restart local v9    # "prevOffset":I
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 774
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 776
    :cond_8
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    .line 780
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v8    # "newOffset":I
    .end local v9    # "prevOffset":I
    :cond_9
    goto/16 :goto_0
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 6

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "direction":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 1482
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput v3, v2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 1484
    return-void

    .line 1482
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 8

    .prologue
    .line 1821
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "layoutDir":I
    move v2, p2

    .local v2, "targetLine":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    .line 1822
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1823
    .line 1821
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1825
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1827
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 6

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "anchorInfo":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    .line 841
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v4

    .line 842
    :goto_0
    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 843
    move-object v3, v2

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 844
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .line 841
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    .line 842
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v4

    goto :goto_0
.end method

.method private updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "anchorPosition":I
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v7, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 1451
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v7, v1

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 1452
    const/4 v6, 0x0

    move v3, v6

    .line 1453
    .local v3, "startExtra":I
    const/4 v6, 0x0

    move v4, v6

    .line 1454
    .local v4, "endExtra":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1455
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v6

    move v5, v6

    .line 1456
    .local v5, "targetPos":I
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1457
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-ne v6, v7, :cond_2

    .line 1458
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v4, v6

    .line 1466
    .end local v5    # "targetPos":I
    :cond_0
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v6

    move v5, v6

    .line 1467
    .local v5, "clipToPadding":Z
    move v6, v5

    if-eqz v6, :cond_3

    .line 1468
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 1469
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 1474
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 1475
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 1476
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1477
    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 1478
    return-void

    .line 1457
    .local v5, "targetPos":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1460
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1471
    .local v5, "clipToPadding":Z
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 1472
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v7, v3

    neg-int v7, v7

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    goto :goto_2

    .line 1477
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 9

    .prologue
    .line 1830
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "span":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v2, p2

    .local v2, "layoutDir":I
    move v3, p3

    .local v3, "targetLine":I
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v6

    move v4, v6

    .line 1831
    .local v4, "deletedSize":I
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1832
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v6

    move v5, v6

    .line 1833
    .local v5, "line":I
    move v6, v5

    move v7, v4

    add-int/2addr v6, v7

    move v7, v3

    if-gt v6, v7, :cond_0

    .line 1834
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    .line 1836
    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1837
    .end local v5    # "line":I
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v6

    move v5, v6

    .line 1838
    .restart local v5    # "line":I
    move v6, v5

    move v7, v4

    sub-int/2addr v6, v7

    move v7, v3

    if-lt v6, v7, :cond_0

    .line 1839
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 8

    .prologue
    .line 1209
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "spec":I
    move v2, p2

    .local v2, "startInset":I
    move v3, p3

    .local v3, "endInset":I
    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 1210
    move v5, v1

    move v0, v5

    .line 1217
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .line 1212
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v4, v5

    .line 1213
    .local v4, "mode":I
    move v5, v4

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1

    move v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    .line 1214
    :cond_1
    const/4 v5, 0x0

    move v6, v1

    .line 1215
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    move v7, v3

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v4

    .line 1214
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1217
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    .line 1867
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v1, v3

    .line 1868
    .local v1, "end":I
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1869
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1870
    const/4 v3, 0x0

    move v0, v3

    .line 1873
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_1
    return v0

    .line 1868
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1873
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v1, v3

    .line 1878
    .local v1, "start":I
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1879
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1880
    const/4 v3, 0x0

    move v0, v3

    .line 1883
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_1
    return v0

    .line 1878
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1883
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 529
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 2029
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 3

    .prologue
    .line 2024
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkForGaps()Z
    .locals 11

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 271
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 311
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .local v1, "minPos":I
    .local v2, "maxPos":I
    :goto_0
    return v0

    .line 274
    .end local v1    # "minPos":I
    .end local v2    # "maxPos":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 275
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v1, v6

    .line 276
    .restart local v1    # "minPos":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v2, v6

    .line 281
    .restart local v2    # "maxPos":I
    :goto_1
    move v6, v1

    if-nez v6, :cond_3

    .line 282
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 283
    .local v3, "gapView":Landroid/view/View;
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 284
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 285
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 286
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 287
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 278
    .end local v1    # "minPos":I
    .end local v2    # "maxPos":I
    .end local v3    # "gapView":Landroid/view/View;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v1, v6

    .line 279
    .restart local v1    # "minPos":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v2, v6

    .restart local v2    # "maxPos":I
    goto :goto_1

    .line 290
    :cond_3
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v6, :cond_4

    .line 291
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 293
    :cond_4
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    :goto_2
    move v3, v6

    .line 294
    .local v3, "invalidGapDir":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v3

    const/4 v10, 0x1

    .line 295
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v4, v6

    .line 296
    .local v4, "invalidFsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v6, v4

    if-nez v6, :cond_6

    .line 297
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 298
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 299
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 293
    .end local v3    # "invalidGapDir":I
    .end local v4    # "invalidFsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 301
    .restart local v3    # "invalidGapDir":I
    .restart local v4    # "invalidFsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v3

    const/4 v10, -0x1

    mul-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    .line 302
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v5, v6

    .line 304
    .local v5, "validFsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v6, v5

    if-nez v6, :cond_7

    .line 305
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 309
    :goto_3
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 310
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 311
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 307
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    goto :goto_3
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 14
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2125
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "dx":I
    move/from16 v2, p2

    .local v2, "dy":I
    move-object/from16 v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v4, p4

    .local v4, "layoutPrefetchRegistry":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v9, :cond_1

    move v9, v1

    :goto_0
    move v5, v9

    .line 2126
    .local v5, "delta":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_0

    move v9, v5

    if-nez v9, :cond_2

    .line 2128
    .line 2157
    :cond_0
    :goto_1
    return-void

    .line 2125
    .end local v5    # "delta":I
    :cond_1
    move v9, v2

    goto :goto_0

    .line 2130
    .restart local v5    # "delta":I
    :cond_2
    move-object v9, v0

    move v10, v5

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2133
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    array-length v9, v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v9, v10, :cond_4

    .line 2134
    :cond_3
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 2137
    :cond_4
    const/4 v9, 0x0

    move v6, v9

    .line 2138
    .local v6, "itemPrefetchCount":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_2
    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v9, v10, :cond_7

    .line 2140
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v9, v9, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v9, v9, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v11, v7

    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 2141
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 2142
    :goto_3
    move v8, v9

    .line 2143
    .local v8, "distance":I
    move v9, v8

    if-ltz v9, :cond_5

    .line 2145
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    move v10, v6

    move v11, v8

    aput v11, v9, v10

    .line 2146
    add-int/lit8 v6, v6, 0x1

    .line 2138
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2141
    .end local v8    # "distance":I
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v10, v7

    aget-object v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 2142
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v9, v10

    goto :goto_3

    .line 2149
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->sort([III)V

    .line 2152
    const/4 v9, 0x0

    move v7, v9

    :goto_4
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2153
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    move v12, v7

    aget v11, v11, v12

    invoke-interface {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2155
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 2152
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2157
    :cond_8
    goto/16 :goto_1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1088
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1108
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7

    .prologue
    .line 2054
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "targetPosition":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v4

    move v2, v4

    .line 2055
    .local v2, "direction":I
    new-instance v4, Landroid/graphics/PointF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object v3, v4

    .line 2056
    .local v3, "outVector":Landroid/graphics/PointF;
    move v4, v2

    if-nez v4, :cond_0

    .line 2057
    const/4 v4, 0x0

    move-object v0, v4

    .line 2066
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return-object v0

    .line 2059
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    .line 2060
    move-object v4, v3

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 2061
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 2066
    :goto_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 2063
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 2064
    move-object v4, v3

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1103
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1083
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "into":[I
    move-object v3, v1

    if-nez v3, :cond_1

    .line 991
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 996
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 997
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 996
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 992
    .end local v2    # "i":I
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 993
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 999
    .restart local v2    # "i":I
    :cond_2
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 11

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "fullyVisible":Z
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    move v2, v9

    .line 1390
    .local v2, "boundsStart":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    move v3, v9

    .line 1391
    .local v3, "boundsEnd":I
    const/4 v9, 0x0

    move-object v4, v9

    .line 1392
    .local v4, "partiallyVisible":Landroid/view/View;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .local v5, "i":I
    :goto_0
    move v9, v5

    if-ltz v9, :cond_4

    .line 1393
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1394
    .local v6, "child":Landroid/view/View;
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    move v7, v9

    .line 1395
    .local v7, "childStart":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    move v8, v9

    .line 1396
    .local v8, "childEnd":I
    move v9, v8

    move v10, v2

    if-le v9, v10, :cond_0

    move v9, v7

    move v10, v3

    if-lt v9, v10, :cond_1

    .line 1397
    .line 1392
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1399
    :cond_1
    move v9, v8

    move v10, v3

    if-le v9, v10, :cond_2

    move v9, v1

    if-nez v9, :cond_3

    .line 1402
    :cond_2
    move-object v9, v6

    move-object v0, v9

    .line 1408
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childStart":I
    .end local v8    # "childEnd":I
    :goto_2
    return-object v0

    .line 1404
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childStart":I
    .restart local v8    # "childEnd":I
    :cond_3
    move-object v9, v4

    if-nez v9, :cond_0

    .line 1405
    move-object v9, v6

    move-object v4, v9

    goto :goto_1

    .line 1408
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childStart":I
    .end local v8    # "childEnd":I
    :cond_4
    move-object v9, v4

    move-object v0, v9

    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 12

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "fullyVisible":Z
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    move v2, v10

    .line 1360
    .local v2, "boundsStart":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move v3, v10

    .line 1361
    .local v3, "boundsEnd":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    move v4, v10

    .line 1362
    .local v4, "limit":I
    const/4 v10, 0x0

    move-object v5, v10

    .line 1363
    .local v5, "partiallyVisible":Landroid/view/View;
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_4

    .line 1364
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1365
    .local v7, "child":Landroid/view/View;
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move v8, v10

    .line 1366
    .local v8, "childStart":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move v9, v10

    .line 1367
    .local v9, "childEnd":I
    move v10, v9

    move v11, v2

    if-le v10, v11, :cond_0

    move v10, v8

    move v11, v3

    if-lt v10, v11, :cond_1

    .line 1368
    .line 1363
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1370
    :cond_1
    move v10, v8

    move v11, v2

    if-ge v10, v11, :cond_2

    move v10, v1

    if-nez v10, :cond_3

    .line 1373
    :cond_2
    move-object v10, v7

    move-object v0, v10

    .line 1379
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childStart":I
    .end local v9    # "childEnd":I
    :goto_2
    return-object v0

    .line 1375
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childStart":I
    .restart local v9    # "childEnd":I
    :cond_3
    move-object v10, v5

    if-nez v10, :cond_0

    .line 1376
    move-object v10, v7

    move-object v5, v10

    goto :goto_1

    .line 1379
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childStart":I
    .end local v9    # "childEnd":I
    :cond_4
    move-object v10, v5

    move-object v0, v10

    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 4

    .prologue
    .line 1329
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v2

    .line 1330
    :goto_0
    move-object v1, v2

    .line 1331
    .local v1, "first":Landroid/view/View;
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .line 1329
    .end local v1    # "first":Landroid/view/View;
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    .line 1330
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1331
    .restart local v1    # "first":Landroid/view/View;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "into":[I
    move-object v3, v1

    if-nez v3, :cond_1

    .line 959
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 964
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 965
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    .end local v2    # "i":I
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 961
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 967
    .restart local v2    # "i":I
    :cond_2
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "into":[I
    move-object v3, v1

    if-nez v3, :cond_1

    .line 1055
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1060
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1061
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1060
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    .end local v2    # "i":I
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1057
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1063
    .restart local v2    # "i":I
    :cond_2
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "into":[I
    move-object v3, v1

    if-nez v3, :cond_1

    .line 1023
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1028
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1029
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    .end local v2    # "i":I
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1025
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1031
    .restart local v2    # "i":I
    :cond_2
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2250
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    .line 2251
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2254
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 2261
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2266
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 2267
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 2269
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 1346
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1347
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 1349
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method getFirstChildPosition()I
    .locals 5

    .prologue
    .line 2210
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 2211
    .local v1, "childCount":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 2

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method getLastChildPosition()I
    .locals 6

    .prologue
    .line 2205
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 2206
    .local v1, "childCount":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 2279
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 1337
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 1338
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 1340
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 22

    .prologue
    .line 339
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    const/16 v17, 0x0

    move/from16 v3, v17

    .line 340
    .local v3, "startChildIndex":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    .line 341
    .local v4, "endChildIndex":I
    new-instance v17, Ljava/util/BitSet;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v5, v17

    .line 342
    .local v5, "mSpansToCheck":Ljava/util/BitSet;
    move-object/from16 v17, v5

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Ljava/util/BitSet;->set(IIZ)V

    .line 345
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v8, v17

    .line 347
    .local v8, "preferredSpanDir":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 348
    move/from16 v17, v4

    move/from16 v6, v17

    .line 349
    .local v6, "firstChildIndex":I
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 354
    .local v7, "childLimit":I
    :goto_1
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v9, v17

    .line 355
    .local v9, "nextChildDiff":I
    move/from16 v17, v6

    move/from16 v10, v17

    .local v10, "i":I
    :goto_3
    move/from16 v17, v10

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 356
    move-object/from16 v17, v2

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v11, v17

    .line 357
    .local v11, "child":Landroid/view/View;
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v12, v17

    .line 358
    .local v12, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 359
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 360
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .line 399
    .end local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :goto_4
    return-object v2

    .line 345
    .end local v6    # "firstChildIndex":I
    .end local v7    # "childLimit":I
    .end local v8    # "preferredSpanDir":I
    .end local v9    # "nextChildDiff":I
    .end local v10    # "i":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/16 v17, -0x1

    goto :goto_0

    .line 351
    .restart local v8    # "preferredSpanDir":I
    :cond_1
    move/from16 v17, v3

    move/from16 v6, v17

    .line 352
    .restart local v6    # "firstChildIndex":I
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v17

    .restart local v7    # "childLimit":I
    goto :goto_1

    .line 354
    :cond_2
    const/16 v17, -0x1

    goto :goto_2

    .line 362
    .restart local v9    # "nextChildDiff":I
    .restart local v10    # "i":I
    .restart local v11    # "child":Landroid/view/View;
    .restart local v12    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->clear(I)V

    .line 364
    :cond_4
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 365
    .line 355
    :cond_5
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v10, v17

    goto/16 :goto_3

    .line 368
    :cond_6
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 369
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v9

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v13, v17

    .line 370
    .local v13, "nextChild":Landroid/view/View;
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 371
    .local v14, "compareSpans":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 373
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 374
    .local v15, "myEnd":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 375
    .local v16, "nextEnd":I
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 376
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 377
    :cond_7
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 378
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 380
    .line 389
    .end local v15    # "myEnd":I
    .end local v16    # "nextEnd":I
    :cond_8
    :goto_5
    move/from16 v17, v14

    if-eqz v17, :cond_5

    .line 391
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v15, v17

    .line 392
    .local v15, "nextLp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-gez v17, :cond_b

    const/16 v17, 0x1

    :goto_6
    move/from16 v18, v8

    if-gez v18, :cond_c

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 393
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 381
    .end local v15    # "nextLp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 382
    .local v15, "myStart":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 383
    .local v16, "nextStart":I
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 384
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 385
    :cond_a
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 386
    const/16 v17, 0x1

    move/from16 v14, v17

    goto :goto_5

    .line 392
    .end local v16    # "nextStart":I
    .local v15, "nextLp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    .line 399
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v14    # "compareSpans":Z
    .end local v15    # "nextLp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 2

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 550
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 551
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isLayoutRTL()Z
    .locals 3

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 5

    .prologue
    .line 1488
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "dx":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1489
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1490
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1492
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 5

    .prologue
    .line 1496
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1497
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1498
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1497
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 7

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 325
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    .line 326
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 327
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 331
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 20
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2286
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object/from16 v3, p1

    .local v3, "focused":Landroid/view/View;
    move/from16 v4, p2

    .local v4, "direction":I
    move-object/from16 v5, p3

    .local v5, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v6, p4

    .local v6, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 2287
    const/16 v16, 0x0

    move-object/from16 v2, v16

    .line 2380
    .end local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return-object v2

    .line 2290
    .restart local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    .line 2291
    .local v7, "directChild":Landroid/view/View;
    move-object/from16 v16, v7

    if-nez v16, :cond_1

    .line 2292
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_0

    .line 2295
    :cond_1
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2296
    move-object/from16 v16, v2

    move/from16 v17, v4

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v16

    move/from16 v8, v16

    .line 2297
    .local v8, "layoutDir":I
    move/from16 v16, v8

    const/high16 v17, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2298
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_0

    .line 2300
    :cond_2
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v9, v16

    .line 2301
    .local v9, "prevFocusLayoutParams":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v16, v0

    move/from16 v10, v16

    .line 2302
    .local v10, "prevFocusFullSpan":Z
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 2304
    .local v11, "prevFocusSpan":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move/from16 v16, v8

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2305
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v16

    move/from16 v12, v16

    .line 2309
    .local v12, "referenceChildPosition":I
    :goto_1
    move-object/from16 v16, v2

    move/from16 v17, v12

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2310
    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2312
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 2313
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    const v17, 0x3eaaaaab

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 2314
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 2315
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 2316
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v16

    .line 2317
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2318
    move/from16 v16, v10

    if-nez v16, :cond_4

    .line 2319
    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v13, v16

    .line 2320
    .local v13, "view":Landroid/view/View;
    move-object/from16 v16, v13

    if-eqz v16, :cond_4

    move-object/from16 v16, v13

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 2321
    move-object/from16 v16, v13

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2307
    .end local v12    # "referenceChildPosition":I
    .end local v13    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v16

    move/from16 v12, v16

    .restart local v12    # "referenceChildPosition":I
    goto/16 :goto_1

    .line 2327
    :cond_4
    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2328
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v13, v16

    .local v13, "i":I
    :goto_2
    move/from16 v16, v13

    if-ltz v16, :cond_6

    .line 2329
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v16, v0

    move/from16 v17, v13

    aget-object v16, v16, v17

    move/from16 v17, v12

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2330
    .local v14, "view":Landroid/view/View;
    move-object/from16 v16, v14

    if-eqz v16, :cond_5

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 2331
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2328
    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 2347
    .end local v14    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_3
    move/from16 v17, v8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    :goto_5
    move/from16 v13, v16

    .line 2348
    .local v13, "shouldSearchFromStart":Z
    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 2349
    .local v14, "unfocusableCandidate":Landroid/view/View;
    move/from16 v16, v10

    if-nez v16, :cond_d

    .line 2350
    move-object/from16 v16, v2

    move/from16 v17, v13

    if-eqz v17, :cond_c

    move-object/from16 v17, v11

    .line 2351
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v17

    .line 2350
    :goto_6
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2353
    move-object/from16 v16, v14

    if-eqz v16, :cond_d

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 2354
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2335
    .end local v13    # "shouldSearchFromStart":Z
    .end local v14    # "unfocusableCandidate":Landroid/view/View;
    :cond_7
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "i":I
    :goto_7
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 2336
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v16, v0

    move/from16 v17, v13

    aget-object v16, v16, v17

    move/from16 v17, v12

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2337
    .local v14, "view":Landroid/view/View;
    move-object/from16 v16, v14

    if-eqz v16, :cond_8

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 2338
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2335
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2347
    .end local v14    # "view":Landroid/view/View;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 2351
    .local v13, "shouldSearchFromStart":Z
    .local v14, "unfocusableCandidate":Landroid/view/View;
    :cond_c
    move-object/from16 v17, v11

    .line 2352
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v17

    goto :goto_6

    .line 2358
    :cond_d
    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 2359
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v15, v16

    .local v15, "i":I
    :goto_8
    move/from16 v16, v15

    if-ltz v16, :cond_11

    .line 2360
    move/from16 v16, v15

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 2361
    .line 2359
    :cond_e
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 2363
    :cond_f
    move-object/from16 v16, v2

    move/from16 v17, v13

    if-eqz v17, :cond_10

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    .line 2364
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v17

    .line 2363
    :goto_9
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2366
    move-object/from16 v16, v14

    if-eqz v16, :cond_e

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_e

    .line 2367
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2364
    :cond_10
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    .line 2365
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v17

    goto :goto_9

    .line 2359
    .line 2380
    :cond_11
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2371
    .end local v15    # "i":I
    :cond_12
    const/16 v16, 0x0

    move/from16 v15, v16

    .restart local v15    # "i":I
    :goto_a
    move/from16 v16, v15

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 2372
    move-object/from16 v16, v2

    move/from16 v17, v13

    if-eqz v17, :cond_13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    .line 2373
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v17

    .line 2372
    :goto_b
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2375
    move-object/from16 v16, v14

    if-eqz v16, :cond_14

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_14

    .line 2376
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2373
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    .line 2374
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v17

    goto :goto_b

    .line 2371
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_a
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .prologue
    .line 1304
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1305
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 1306
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    .line 1307
    .local v2, "start":Landroid/view/View;
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1308
    .local v3, "end":Landroid/view/View;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_1

    .line 1309
    .line 1321
    .end local v2    # "start":Landroid/view/View;
    .end local v3    # "end":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1311
    .restart local v2    # "start":Landroid/view/View;
    .restart local v3    # "end":Landroid/view/View;
    :cond_1
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v4, v6

    .line 1312
    .local v4, "startPos":I
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 1313
    .local v5, "endPos":I
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_3

    .line 1314
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1315
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1321
    .end local v2    # "start":Landroid/view/View;
    .end local v3    # "end":Landroid/view/View;
    .end local v4    # "startPos":I
    .end local v5    # "endPos":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 1317
    .restart local v2    # "start":Landroid/view/View;
    .restart local v3    # "end":Landroid/view/View;
    .restart local v4    # "startPos":I
    .restart local v5    # "endPos":I
    :cond_3
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1318
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14

    .prologue
    .line 1283
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "host":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 1284
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v7, v5

    instance-of v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v7, :cond_0

    .line 1285
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-super {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1286
    .line 1300
    :goto_0
    return-void

    .line 1288
    :cond_0
    move-object v7, v5

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v7

    .line 1289
    .local v6, "sglp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v7, :cond_2

    .line 1290
    move-object v7, v4

    move-object v8, v6

    .line 1291
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v8

    move-object v9, v6

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1
    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v12, v6

    iget-boolean v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v13, 0x0

    .line 1290
    invoke-static/range {v8 .. v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 1300
    :goto_2
    goto :goto_0

    .line 1291
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 1295
    :cond_2
    move-object v7, v4

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v10, v6

    .line 1297
    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v10

    move-object v11, v6

    iget-boolean v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v11, :cond_3

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_3
    move-object v12, v6

    iget-boolean v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v13, 0x0

    .line 1295
    invoke-static/range {v8 .. v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    .line 1297
    :cond_3
    const/4 v11, 0x1

    goto :goto_3
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1509
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1510
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 1514
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1515
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1516
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 9

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "from":I
    move v3, p3

    .local v3, "to":I
    move v4, p4

    .local v4, "itemCount":I
    move-object v5, v0

    move v6, v2

    move v7, v3

    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1521
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1504
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1505
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 1526
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, p4

    .local v4, "payload":Ljava/lang/Object;
    move-object v5, v0

    move v6, v2

    move v7, v3

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1527
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 606
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 727
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 728
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 729
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 730
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 731
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1222
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 1223
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 1224
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1228
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1232
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 1233
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    move-object v0, v4

    .line 1277
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .local v1, "state":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    :goto_0
    return-object v0

    .line 1235
    .end local v1    # "state":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 1236
    .restart local v1    # "state":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1237
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1238
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1240
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v4, :cond_2

    .line 1241
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1242
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v5, v5

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1243
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1248
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1249
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v5

    .line 1250
    :goto_2
    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1251
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1252
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1253
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1254
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_3
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_5

    .line 1256
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_4

    .line 1257
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 1258
    .local v3, "line":I
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1259
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1267
    :cond_1
    :goto_4
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1245
    .end local v2    # "i":I
    .end local v3    # "line":I
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1249
    :cond_3
    move-object v5, v0

    .line 1250
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v5

    goto :goto_2

    .line 1262
    .restart local v2    # "i":I
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    .line 1263
    .restart local v3    # "line":I
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1264
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_4

    .line 1254
    .line 1277
    .end local v2    # "i":I
    .end local v3    # "line":I
    :cond_5
    :goto_5
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    .line 1270
    :cond_6
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1271
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1272
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto :goto_5
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "state":I
    move v2, v1

    if-nez v2, :cond_0

    .line 317
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v2

    .line 319
    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    .line 2162
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "delta":I
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v5, v1

    if-lez v5, :cond_0

    .line 2163
    const/4 v5, 0x1

    move v4, v5

    .line 2164
    .local v4, "layoutDir":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v5

    move v3, v5

    .line 2169
    .local v3, "referenceChildPosition":I
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 2170
    move-object v5, v0

    move v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2171
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2172
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 2173
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 2174
    return-void

    .line 2166
    .end local v3    # "referenceChildPosition":I
    .end local v4    # "layoutDir":I
    :cond_0
    const/4 v5, -0x1

    move v4, v5

    .line 2167
    .restart local v4    # "layoutDir":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v5

    move v3, v5

    .restart local v3    # "referenceChildPosition":I
    goto :goto_0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 11

    .prologue
    .line 2177
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "dt":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v1

    if-nez v7, :cond_1

    .line 2178
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2201
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .line 2181
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_1
    move-object v7, v0

    move v8, v1

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2182
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    move v4, v7

    .line 2183
    .local v4, "consumed":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move v5, v7

    .line 2185
    .local v5, "available":I
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 2186
    move v7, v1

    move v6, v7

    .line 2196
    .local v6, "totalScroll":I
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v6

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 2198
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2199
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v8, 0x0

    iput v8, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 2200
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 2201
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 2187
    .end local v6    # "totalScroll":I
    :cond_2
    move v7, v1

    if-gez v7, :cond_3

    .line 2188
    move v7, v4

    neg-int v7, v7

    move v6, v7

    .restart local v6    # "totalScroll":I
    goto :goto_1

    .line 2190
    .end local v6    # "totalScroll":I
    :cond_3
    move v7, v4

    move v6, v7

    .restart local v6    # "totalScroll":I
    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 2035
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "dx":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 2079
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2080
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2082
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2083
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2084
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2085
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 2102
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2104
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2105
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2106
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2107
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 2041
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0
.end method

.method public setGapStrategy(I)V
    .locals 6

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "gapStrategy":I
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 514
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne v2, v3, :cond_0

    .line 515
    .line 524
    :goto_0
    return-void

    .line 517
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 523
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 524
    goto :goto_0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 12

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "childrenBounds":Landroid/graphics/Rect;
    move v2, p2

    .local v2, "wSpec":I
    move v3, p3

    .local v3, "hSpec":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 588
    .local v6, "horizontalPadding":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 589
    .local v7, "verticalPadding":I
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 590
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 591
    .local v8, "usedHeight":I
    move v9, v3

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .line 592
    .local v5, "height":I
    move v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    .line 593
    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v11

    .line 592
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 600
    .end local v8    # "usedHeight":I
    .local v4, "width":I
    :goto_0
    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 601
    return-void

    .line 595
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    move v8, v9

    .line 596
    .local v8, "usedWidth":I
    move v9, v2

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 597
    .restart local v4    # "width":I
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v10, v11

    move v11, v7

    add-int/2addr v10, v11

    move-object v11, v0

    .line 598
    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v11

    .line 597
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .restart local v5    # "height":I
    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "orientation":I
    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 450
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid orientation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 452
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 453
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 454
    .line 461
    :goto_0
    return-void

    .line 456
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 457
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v2, v3

    .line 458
    .local v2, "tmp":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 459
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 460
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 461
    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "reverseLayout":Z
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 478
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 479
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 481
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 482
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 483
    return-void
.end method

.method public setSpanCount(I)V
    .locals 10

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "spanCount":I
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 430
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq v3, v4, :cond_1

    .line 431
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 432
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 433
    move-object v3, v0

    new-instance v4, Ljava/util/BitSet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 434
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v4, v4, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 435
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 436
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    new-instance v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v5, v3, v4

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 440
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 9

    .prologue
    .line 2072
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "position":I
    new-instance v5, Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 2073
    .local v4, "scroller":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2074
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2075
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 11

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "anchorInfo":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 850
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 923
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :goto_0
    return v0

    .line 853
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 854
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 855
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 856
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 859
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_f

    .line 862
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 863
    .local v3, "child":Landroid/view/View;
    move-object v7, v3

    if-eqz v7, :cond_c

    .line 866
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    .line 867
    :goto_1
    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 868
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_7

    .line 869
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_6

    .line 870
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 872
    .local v4, "target":I
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 873
    .line 878
    :goto_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 866
    .end local v4    # "target":I
    :cond_5
    move-object v8, v0

    .line 867
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_1

    .line 874
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v7, v8

    move v4, v7

    .line 876
    .restart local v4    # "target":I
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    .line 882
    .end local v4    # "target":I
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 883
    .local v4, "childSize":I
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_9

    .line 885
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_8

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 886
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    .line 887
    :goto_3
    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 888
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 886
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 887
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 891
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 892
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 893
    .local v5, "startGap":I
    move v7, v5

    if-gez v7, :cond_a

    .line 894
    move-object v7, v2

    move v8, v5

    neg-int v8, v8

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 895
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 897
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    .line 898
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 899
    .local v6, "endGap":I
    move v7, v6

    if-gez v7, :cond_b

    .line 900
    move-object v7, v2

    move v8, v6

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 901
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 904
    :cond_b
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 905
    .line 919
    .line 923
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childSize":I
    .end local v5    # "startGap":I
    .end local v6    # "endGap":I
    :goto_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 908
    .restart local v3    # "child":Landroid/view/View;
    :cond_c
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 909
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 910
    move-object v7, v0

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v7

    move v4, v7

    .line 912
    .local v4, "position":I
    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 913
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 914
    .line 917
    .end local v4    # "position":I
    :goto_6
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto :goto_4

    .line 912
    .restart local v4    # "position":I
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 915
    .end local v4    # "position":I
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_6

    .line 920
    .end local v3    # "child":Landroid/view/View;
    :cond_f
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 921
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_4
.end method

.method updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "anchorInfo":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 823
    .line 833
    :goto_0
    return-void

    .line 825
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    goto :goto_0

    .line 831
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 832
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 833
    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 5

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v1, p1

    .local v1, "totalSpace":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 929
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 930
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v4

    .line 929
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 931
    return-void
.end method
