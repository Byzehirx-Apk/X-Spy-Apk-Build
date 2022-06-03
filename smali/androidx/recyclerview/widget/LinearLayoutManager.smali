.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "orientation":I
    move v3, p3

    .local v3, "reverseLayout":Z
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 66
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 93
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 135
    move-object v4, v0

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 140
    move-object v4, v0

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 145
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 164
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 165
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
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

    .line 66
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 93
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 135
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 140
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 145
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 178
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 179
    .local v5, "properties":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 180
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 181
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 182
    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1121
    const/4 v2, 0x0

    move v0, v2

    .line 1124
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 1123
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1124
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1125
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1126
    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1124
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1125
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    const/4 v2, 0x0

    move v0, v2

    .line 1113
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 1112
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1113
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1114
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1115
    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1113
    invoke-static/range {v2 .. v8}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1114
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    const/4 v2, 0x0

    move v0, v2

    .line 1135
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 1134
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1135
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1136
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1137
    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1135
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1136
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1830
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0
.end method

.method private findFirstReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1775
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1731
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "completelyVisible":Z
    move v2, p2

    .local v2, "acceptPartiallyVisible":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1732
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1735
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1713
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "completelyVisible":Z
    move v2, p2

    .local v2, "acceptPartiallyVisible":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1714
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1717
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1835
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0
.end method

.method private findLastReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1779
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1816
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1817
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .line 1816
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1817
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1824
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1825
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .line 1824
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1825
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private findReferenceChildClosestToEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1753
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1754
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .line 1753
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1754
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1770
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1771
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .line 1770
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1771
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "endOffset":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v4, p4

    .local v4, "canOffsetChildren":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 909
    .local v5, "gap":I
    const/4 v7, 0x0

    move v6, v7

    .line 910
    .local v6, "fixOffset":I
    move v7, v5

    if-lez v7, :cond_0

    .line 911
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 916
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 917
    move v7, v4

    if-eqz v7, :cond_1

    .line 919
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 920
    move v7, v5

    if-lez v7, :cond_1

    .line 921
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 922
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    move v0, v7

    .line 925
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 913
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 925
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "startOffset":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v4, p4

    .local v4, "canOffsetChildren":Z
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 934
    .local v5, "gap":I
    const/4 v7, 0x0

    move v6, v7

    .line 935
    .local v6, "fixOffset":I
    move v7, v5

    if-lez v7, :cond_0

    .line 937
    move-object v7, v0

    move v8, v5

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 941
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 942
    move v7, v4

    if-eqz v7, :cond_1

    .line 944
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 945
    move v7, v5

    if-lez v7, :cond_1

    .line 946
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 947
    move v7, v6

    move v8, v5

    sub-int/2addr v7, v8

    move v0, v7

    .line 950
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 939
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 950
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 4

    .prologue
    .line 1701
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 4

    .prologue
    .line 1691
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 20

    .prologue
    .line 702
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object/from16 v2, p1

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v3, p2

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move/from16 v4, p3

    .local v4, "startOffset":I
    move/from16 v5, p4

    .local v5, "endOffset":I
    move-object v15, v3

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v3

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v1

    .line 703
    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v15

    if-nez v15, :cond_1

    .line 704
    .line 749
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const/4 v15, 0x0

    move v6, v15

    .local v6, "scrapExtraStart":I
    const/4 v15, 0x0

    move v7, v15

    .line 708
    .local v7, "scrapExtraEnd":I
    move-object v15, v2

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v15

    move-object v8, v15

    .line 709
    .local v8, "scrapList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v15, v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v9, v15

    .line 710
    .local v9, "scrapSize":I
    move-object v15, v1

    move-object/from16 v16, v1

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v15

    move v10, v15

    .line 711
    .local v10, "firstChildPos":I
    const/4 v15, 0x0

    move v11, v15

    .local v11, "i":I
    :goto_1
    move v15, v11

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 712
    move-object v15, v8

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v12, v15

    .line 713
    .local v12, "scrap":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v15, v12

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 714
    .line 711
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 716
    :cond_2
    move-object v15, v12

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v15

    move v13, v15

    .line 717
    .local v13, "position":I
    move v15, v13

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v15, -0x1

    :goto_4
    move v14, v15

    .line 719
    .local v14, "direction":I
    move v15, v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 720
    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v6, v15

    goto :goto_2

    .line 717
    .end local v14    # "direction":I
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    .line 722
    .restart local v14    # "direction":I
    :cond_5
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v7, v15

    goto :goto_2

    .line 730
    .end local v12    # "scrap":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v13    # "position":I
    .end local v14    # "direction":I
    :cond_6
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 731
    move v15, v6

    if-lez v15, :cond_7

    .line 732
    move-object v15, v1

    invoke-direct {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 733
    .local v11, "anchor":Landroid/view/View;
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 734
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v6

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 735
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 736
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 737
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v15

    .line 740
    .end local v11    # "anchor":Landroid/view/View;
    :cond_7
    move v15, v7

    if-lez v15, :cond_8

    .line 741
    move-object v15, v1

    invoke-direct {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 742
    .restart local v11    # "anchor":Landroid/view/View;
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 743
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v7

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 744
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 745
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 746
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v15

    .line 748
    .end local v11    # "anchor":Landroid/view/View;
    :cond_8
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 749
    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 8

    .prologue
    .line 2024
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    const-string/jumbo v3, "LinearLayoutManager"

    const-string/jumbo v4, "internal representation of views on the screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2025
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2026
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 2027
    .local v2, "child":Landroid/view/View;
    const-string/jumbo v3, "LinearLayoutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", coord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v2

    .line 2028
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2027
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2025
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2030
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    const-string/jumbo v3, "LinearLayoutManager"

    const-string/jumbo v4, "=============="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2031
    return-void
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V
    .locals 6

    .prologue
    .line 1478
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "layoutState":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    move-object v3, v2

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v3, :cond_1

    .line 1479
    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    move-object v3, v2

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1482
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 1486
    :goto_1
    goto :goto_0

    .line 1484
    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_1
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 8

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "startIndex":I
    move v3, p3

    .local v3, "endIndex":I
    move v5, v2

    move v6, v3

    if-ne v5, v6, :cond_0

    .line 1362
    .line 1376
    :goto_0
    return-void

    .line 1367
    :cond_0
    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_2

    .line 1368
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-lt v5, v6, :cond_1

    .line 1369
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1368
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1376
    :cond_1
    goto :goto_0

    .line 1372
    .end local v4    # "i":I
    :cond_2
    move v5, v2

    move v4, v5

    .restart local v4    # "i":I
    :goto_2
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_1

    .line 1373
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1372
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1434
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "dt":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move v3, v7

    .line 1435
    .local v3, "childCount":I
    move v7, v2

    if-gez v7, :cond_0

    .line 1440
    .line 1464
    :goto_0
    return-void

    .line 1442
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v2

    sub-int/2addr v7, v8

    move v4, v7

    .line 1443
    .local v4, "limit":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    .line 1444
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 1445
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1446
    .local v6, "child":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-lt v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    .line 1447
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 1449
    :cond_1
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1450
    goto :goto_0

    .line 1444
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1464
    .end local v6    # "child":Landroid/view/View;
    :cond_3
    goto :goto_0

    .line 1454
    .end local v5    # "i":I
    :cond_4
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .restart local v5    # "i":I
    :goto_2
    move v7, v5

    if-ltz v7, :cond_3

    .line 1455
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1456
    .restart local v6    # "child":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-lt v7, v8, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    .line 1457
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_6

    .line 1459
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1460
    goto :goto_0

    .line 1454
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "dt":I
    move v7, v2

    if-gez v7, :cond_0

    .line 1394
    .line 1420
    :goto_0
    return-void

    .line 1397
    :cond_0
    move v7, v2

    move v3, v7

    .line 1398
    .local v3, "limit":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1399
    .local v4, "childCount":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    .line 1400
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    if-ltz v7, :cond_3

    .line 1401
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1402
    .local v6, "child":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-gt v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    .line 1403
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-le v7, v8, :cond_2

    .line 1405
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1406
    goto :goto_0

    .line 1400
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1420
    .end local v6    # "child":Landroid/view/View;
    :cond_3
    goto :goto_0

    .line 1410
    .end local v5    # "i":I
    :cond_4
    const/4 v7, 0x0

    move v5, v7

    .restart local v5    # "i":I
    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 1411
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1412
    .restart local v6    # "child":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-gt v7, v8, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    .line 1413
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-le v7, v8, :cond_6

    .line 1415
    :cond_5
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1416
    goto :goto_0

    .line 1410
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 11

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 782
    const/4 v7, 0x0

    move v0, v7

    .line 814
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 784
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 785
    .local v4, "focused":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 786
    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    .line 787
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 789
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v7, v8, :cond_2

    .line 790
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 792
    :cond_2
    move-object v7, v3

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 793
    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    .line 794
    :goto_1
    move-object v5, v7

    .line 795
    .local v5, "referenceChild":Landroid/view/View;
    move-object v7, v5

    if-eqz v7, :cond_8

    .line 796
    move-object v7, v3

    move-object v8, v5

    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 799
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 801
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v5

    .line 802
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 803
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    if-ge v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v5

    .line 804
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 805
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    if-ge v7, v8, :cond_6

    :cond_3
    const/4 v7, 0x1

    :goto_2
    move v6, v7

    .line 806
    .local v6, "notVisible":Z
    move v7, v6

    if-eqz v7, :cond_4

    .line 807
    move-object v7, v3

    move-object v8, v3

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 808
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    .line 809
    :goto_3
    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 812
    .end local v6    # "notVisible":Z
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 793
    .end local v5    # "referenceChild":Landroid/view/View;
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 794
    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    goto :goto_1

    .line 805
    .restart local v5    # "referenceChild":Landroid/view/View;
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 808
    .restart local v6    # "notVisible":Z
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 809
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 814
    .end local v6    # "notVisible":Z
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method private updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 10

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 823
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 900
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 826
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 827
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 828
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 832
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 837
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 838
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 841
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 842
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_4

    .line 843
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 849
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 846
    :cond_4
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1

    .line 852
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 853
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 854
    .local v3, "child":Landroid/view/View;
    move-object v7, v3

    if-eqz v7, :cond_a

    .line 855
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 856
    .local v4, "childSize":I
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 858
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 859
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 861
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 862
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 863
    .local v5, "startGap":I
    move v7, v5

    if-gez v7, :cond_7

    .line 864
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 865
    move-object v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 866
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 868
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    .line 869
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 870
    .local v6, "endGap":I
    move v7, v6

    if-gez v7, :cond_8

    .line 871
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 872
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 873
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 875
    :cond_8
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    .line 876
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 877
    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v8, v9

    .line 878
    :goto_2
    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 879
    .line 888
    .end local v4    # "childSize":I
    .end local v5    # "startGap":I
    .end local v6    # "endGap":I
    :goto_3
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 877
    .restart local v4    # "childSize":I
    .restart local v5    # "startGap":I
    .restart local v6    # "endGap":I
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    .line 878
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    goto :goto_2

    .line 880
    .end local v4    # "childSize":I
    .end local v5    # "startGap":I
    .end local v6    # "endGap":I
    :cond_a
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b

    .line 882
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 883
    .local v4, "pos":I
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move v9, v4

    if-ge v8, v9, :cond_c

    const/4 v8, 0x1

    :goto_4
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 886
    .end local v4    # "pos":I
    :cond_b
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_3

    .line 883
    .restart local v4    # "pos":I
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 891
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "pos":I
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 893
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_f

    .line 894
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 900
    :goto_6
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 897
    :cond_f
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_6
.end method

.method private updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 8

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    .line 771
    :goto_0
    return-void

    .line 760
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    goto :goto_0

    .line 769
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 770
    move-object v4, v3

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 771
    goto :goto_0

    .line 770
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "layoutDirection":I
    move v2, p2

    .local v2, "requiredSpace":I
    move v3, p3

    .local v3, "canUseExistingSpace":Z
    move-object v4, p4

    .local v4, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v8

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1177
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1178
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v8, v1

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1180
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1181
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1183
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1185
    .local v6, "child":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1187
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1188
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1190
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1191
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1203
    .local v5, "scrollingOffset":I
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v8, v2

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1204
    move v7, v3

    if-eqz v7, :cond_0

    .line 1205
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v9, v5

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1207
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v8, v5

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1208
    return-void

    .line 1185
    .end local v5    # "scrollingOffset":I
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1194
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1195
    .restart local v6    # "child":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1196
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1198
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1199
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1200
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    neg-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1201
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    .restart local v5    # "scrollingOffset":I
    goto :goto_1

    .line 1196
    .end local v5    # "scrollingOffset":I
    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 6

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "itemPosition":I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 959
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 961
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 962
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 963
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 964
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 965
    return-void

    .line 959
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 955
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 6

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "itemPosition":I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 973
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 974
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 976
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 977
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 978
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 980
    return-void

    .line 974
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 969
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 1350
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1352
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 3

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 13

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object/from16 v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v4, p4

    .local v4, "layoutPrefetchRegistry":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v8, :cond_1

    move v8, v1

    :goto_0
    move v5, v8

    .line 1309
    .local v5, "delta":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v5

    if-nez v8, :cond_2

    .line 1311
    .line 1319
    :cond_0
    :goto_1
    return-void

    .line 1308
    .end local v5    # "delta":I
    :cond_1
    move v8, v2

    goto :goto_0

    .line 1314
    .restart local v5    # "delta":I
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1315
    move v8, v5

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 1316
    .local v6, "layoutDirection":I
    move v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v7, v8

    .line 1317
    .local v7, "absDy":I
    move-object v8, v0

    move v9, v6

    move v10, v7

    const/4 v11, 0x1

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1318
    move-object v8, v0

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 1319
    goto :goto_1

    .line 1315
    .end local v6    # "layoutDirection":I
    .end local v7    # "absDy":I
    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 11

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "adapterItemCount":I
    move-object v2, p2

    .local v2, "layoutPrefetchRegistry":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1230
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    move v3, v8

    .line 1231
    .local v3, "fromEnd":Z
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move v4, v8

    .line 1242
    .local v4, "anchorPos":I
    :goto_0
    move v8, v3

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    :goto_1
    move v5, v8

    .line 1245
    .local v5, "direction":I
    move v8, v4

    move v6, v8

    .line 1246
    .local v6, "targetPos":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_2
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v8, v9, :cond_4

    .line 1247
    move v8, v6

    if-ltz v8, :cond_4

    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 1248
    move-object v8, v2

    move v9, v6

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1252
    move v8, v6

    move v9, v5

    add-int/2addr v8, v9

    move v6, v8

    .line 1246
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1233
    .end local v3    # "fromEnd":Z
    .end local v4    # "anchorPos":I
    .end local v5    # "direction":I
    .end local v6    # "targetPos":I
    .end local v7    # "i":I
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1234
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move v3, v8

    .line 1235
    .restart local v3    # "fromEnd":Z
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 1236
    move v8, v3

    if-eqz v8, :cond_1

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_3
    move v4, v8

    .restart local v4    # "anchorPos":I
    goto :goto_0

    .end local v4    # "anchorPos":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    .line 1238
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move v4, v8

    .restart local v4    # "anchorPos":I
    goto :goto_0

    .line 1242
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 1254
    .restart local v5    # "direction":I
    .restart local v6    # "targetPos":I
    .restart local v7    # "i":I
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 9

    .prologue
    .line 1217
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "layoutState":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    move-object v3, p3

    .local v3, "layoutPrefetchRegistry":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v4, v5

    .line 1218
    .local v4, "pos":I
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1219
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x0

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1221
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1080
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 9

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "targetPosition":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 457
    const/4 v4, 0x0

    move-object v0, v4

    .line 464
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return-object v0

    .line 459
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    move v2, v4

    .line 460
    .local v2, "firstChildPos":I
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v4, v5, :cond_2

    const/4 v4, -0x1

    :goto_2
    move v3, v4

    .line 461
    .local v3, "direction":I
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_3

    .line 462
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0

    .line 460
    .end local v3    # "direction":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 464
    .restart local v3    # "direction":I
    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "focusDirection":I
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1679
    const/high16 v2, -0x80000000

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 1648
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :sswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1649
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1650
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1653
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1656
    :sswitch_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1657
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1658
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1659
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1661
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1664
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 1667
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 1670
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 1673
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_7
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 1646
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

.method createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .locals 4

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0
.end method

.method ensureLayoutState()V
    .locals 3

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    if-nez v1, :cond_0

    .line 988
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 990
    :cond_0
    return-void
.end method

.method fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 14

    .prologue
    .line 1502
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "layoutState":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    move-object/from16 v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move/from16 v4, p4

    .local v4, "stopOnFocusable":Z
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v5, v8

    .line 1503
    .local v5, "start":I
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_1

    .line 1505
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_0

    .line 1506
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1508
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1510
    :cond_1
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1511
    .local v6, "remainingSpace":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v7, v8

    .line 1512
    .local v7, "layoutChunkResult":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
    :cond_2
    move-object v8, v2

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v8, :cond_3

    move v8, v6

    if-lez v8, :cond_4

    :cond_3
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1513
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1517
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1521
    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v8, :cond_5

    .line 1522
    .line 1552
    :cond_4
    :goto_0
    move v8, v5

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v8, v9

    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .line 1524
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_5
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v10, v7

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    move-object v11, v2

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1531
    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v8, :cond_6

    move-object v8, v3

    .line 1532
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1533
    :cond_6
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v10, v7

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1535
    move v8, v6

    move-object v9, v7

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v8, v9

    move v6, v8

    .line 1538
    :cond_7
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_9

    .line 1539
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v7

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1540
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_8

    .line 1541
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1543
    :cond_8
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1545
    :cond_9
    move v8, v4

    if-eqz v8, :cond_2

    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v8, :cond_2

    .line 1546
    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1874
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1875
    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1857
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1858
    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1914
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1915
    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1897
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1898
    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 11

    .prologue
    .line 1946
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1947
    move v6, v2

    move v7, v1

    if-le v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 1948
    .local v3, "next":I
    move v6, v3

    if-nez v6, :cond_2

    .line 1949
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    .line 1968
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_1
    return-object v0

    .line 1947
    .end local v3    # "next":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1951
    .restart local v3    # "next":I
    :cond_2
    const/4 v6, 0x0

    move v4, v6

    .line 1952
    .local v4, "preferredBoundsFlag":I
    const/4 v6, 0x0

    move v5, v6

    .line 1953
    .local v5, "acceptableBoundsFlag":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1954
    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1955
    const/16 v6, 0x4104

    move v4, v6

    .line 1957
    const/16 v6, 0x4004

    move v5, v6

    .line 1965
    :goto_2
    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    .line 1966
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v6

    .line 1968
    :goto_3
    move-object v0, v6

    goto :goto_1

    .line 1960
    :cond_3
    const/16 v6, 0x1041

    move v4, v6

    .line 1962
    const/16 v6, 0x1001

    move v5, v6

    goto :goto_2

    .line 1966
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    .line 1968
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v6

    goto :goto_3
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 12

    .prologue
    .line 1924
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, p3

    .local v3, "completelyVisible":Z
    move/from16 v4, p4

    .local v4, "acceptPartiallyVisible":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1925
    const/4 v7, 0x0

    move v5, v7

    .line 1926
    .local v5, "preferredBoundsFlag":I
    const/4 v7, 0x0

    move v6, v7

    .line 1927
    .local v6, "acceptableBoundsFlag":I
    move v7, v3

    if-eqz v7, :cond_1

    .line 1928
    const/16 v7, 0x6003

    move v5, v7

    .line 1934
    :goto_0
    move v7, v4

    if-eqz v7, :cond_0

    .line 1935
    const/16 v7, 0x140

    move v6, v7

    .line 1938
    :cond_0
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    .line 1939
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v7

    .line 1941
    :goto_1
    move-object v0, v7

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0

    .line 1931
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_1
    const/16 v7, 0x140

    move v5, v7

    goto :goto_0

    .line 1939
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    .line 1941
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v7

    goto :goto_1
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 16

    .prologue
    .line 1785
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object/from16 v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move/from16 v3, p3

    .local v3, "start":I
    move/from16 v4, p4

    .local v4, "end":I
    move/from16 v5, p5

    .local v5, "itemCount":I
    move-object v14, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1786
    const/4 v14, 0x0

    move-object v6, v14

    .line 1787
    .local v6, "invalidMatch":Landroid/view/View;
    const/4 v14, 0x0

    move-object v7, v14

    .line 1788
    .local v7, "outOfBoundsMatch":Landroid/view/View;
    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    move v8, v14

    .line 1789
    .local v8, "boundsStart":I
    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    move v9, v14

    .line 1790
    .local v9, "boundsEnd":I
    move v14, v4

    move v15, v3

    if-le v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_0
    move v10, v14

    .line 1791
    .local v10, "diff":I
    move v14, v3

    move v11, v14

    .local v11, "i":I
    :goto_1
    move v14, v11

    move v15, v4

    if-eq v14, v15, :cond_5

    .line 1792
    move-object v14, v0

    move v15, v11

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v12, v14

    .line 1793
    .local v12, "view":Landroid/view/View;
    move-object v14, v0

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    move v13, v14

    .line 1794
    .local v13, "position":I
    move v14, v13

    if-ltz v14, :cond_0

    move v14, v13

    move v15, v5

    if-ge v14, v15, :cond_0

    .line 1795
    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1796
    move-object v14, v6

    if-nez v14, :cond_0

    .line 1797
    move-object v14, v12

    move-object v6, v14

    .line 1791
    :cond_0
    :goto_2
    move v14, v11

    move v15, v10

    add-int/2addr v14, v15

    move v11, v14

    goto :goto_1

    .line 1790
    .end local v10    # "diff":I
    .end local v11    # "i":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "position":I
    :cond_1
    const/4 v14, -0x1

    goto :goto_0

    .line 1799
    .restart local v10    # "diff":I
    .restart local v11    # "i":I
    .restart local v12    # "view":Landroid/view/View;
    .restart local v13    # "position":I
    :cond_2
    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move v15, v9

    if-ge v14, v15, :cond_3

    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v15, v12

    .line 1800
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v14

    move v15, v8

    if-ge v14, v15, :cond_4

    .line 1801
    :cond_3
    move-object v14, v7

    if-nez v14, :cond_0

    .line 1802
    move-object v14, v12

    move-object v7, v14

    goto :goto_2

    .line 1805
    :cond_4
    move-object v14, v12

    move-object v0, v14

    .line 1809
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "position":I
    :goto_3
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_5
    move-object v14, v7

    if-eqz v14, :cond_6

    move-object v14, v7

    :goto_4
    move-object v0, v14

    goto :goto_3

    :cond_6
    move-object v14, v6

    goto :goto_4
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 402
    .local v2, "childCount":I
    move v6, v2

    if-nez v6, :cond_0

    .line 403
    const/4 v6, 0x0

    move-object v0, v6

    .line 414
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return-object v0

    .line 405
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v6, v0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v3, v6

    .line 406
    .local v3, "firstChild":I
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 407
    .local v4, "viewPosition":I
    move v6, v4

    if-ltz v6, :cond_1

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 408
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 409
    .local v5, "child":Landroid/view/View;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 410
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 414
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    move v0, v2

    .line 441
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 2

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public getStackFromEnd()Z
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 3

    .prologue
    .line 983
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 2

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 17

    .prologue
    .line 1557
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object/from16 v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "layoutState":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    move-object/from16 v4, p4

    .local v4, "result":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 1558
    .local v5, "view":Landroid/view/View;
    move-object v11, v5

    if-nez v11, :cond_0

    .line 1564
    move-object v11, v4

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1565
    .line 1626
    :goto_0
    return-void

    .line 1567
    :cond_0
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v6, v11

    .line 1568
    .local v6, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v11, v3

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v11, :cond_5

    .line 1569
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_1
    if-ne v11, v12, :cond_4

    .line 1571
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1583
    :goto_2
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1584
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1586
    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 1587
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1588
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidth()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 1589
    .local v9, "right":I
    move v11, v9

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    move v7, v11

    .line 1594
    .local v7, "left":I
    :goto_3
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_9

    .line 1595
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v10, v11

    .line 1596
    .local v10, "bottom":I
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v11, v12

    move v8, v11

    .line 1615
    .local v8, "top":I
    :goto_4
    move-object v11, v0

    move-object v12, v5

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1622
    move-object v11, v6

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1623
    :cond_1
    move-object v11, v4

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1625
    :cond_2
    move-object v11, v4

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v12

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1626
    goto/16 :goto_0

    .line 1569
    .end local v7    # "left":I
    .end local v8    # "top":I
    .end local v9    # "right":I
    .end local v10    # "bottom":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1573
    :cond_4
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1576
    :cond_5
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_5
    if-ne v11, v12, :cond_7

    .line 1578
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1576
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 1580
    :cond_7
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1591
    :cond_8
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v11

    move v7, v11

    .line 1592
    .restart local v7    # "left":I
    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .restart local v9    # "right":I
    goto :goto_3

    .line 1598
    :cond_9
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v11

    .line 1599
    .restart local v8    # "top":I
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v11, v12

    move v10, v11

    .restart local v10    # "bottom":I
    goto :goto_4

    .line 1602
    .end local v7    # "left":I
    .end local v8    # "top":I
    .end local v9    # "right":I
    .end local v10    # "bottom":I
    :cond_a
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v11

    move v8, v11

    .line 1603
    .restart local v8    # "top":I
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 1605
    .restart local v10    # "bottom":I
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1606
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v9, v11

    .line 1607
    .restart local v9    # "right":I
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v11, v12

    move v7, v11

    .restart local v7    # "left":I
    goto/16 :goto_4

    .line 1609
    .end local v7    # "left":I
    .end local v9    # "right":I
    :cond_b
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v11

    .line 1610
    .restart local v7    # "left":I
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v11, v12

    move v9, v11

    .restart local v9    # "right":I
    goto/16 :goto_4
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .prologue
    .line 690
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 229
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v3, :cond_0

    .line 230
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 231
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 233
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 14

    .prologue
    .line 1975
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "focused":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "focusDirection":I
    move-object/from16 v3, p3

    .local v3, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v4, p4

    .local v4, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1976
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 1977
    const/4 v9, 0x0

    move-object v0, v9

    .line 2016
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return-object v0

    .line 1980
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    move v5, v9

    .line 1981
    .local v5, "layoutDir":I
    move v9, v5

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    .line 1982
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1984
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1985
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1986
    const v9, 0x3eaaaaab

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v6, v9

    .line 1987
    .local v6, "maxScroll":I
    move-object v9, v0

    move v10, v5

    move v11, v6

    const/4 v12, 0x0

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1988
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v10, -0x80000000

    iput v10, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1989
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1990
    move-object v9, v0

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v12, v4

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v9

    .line 1997
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1998
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2005
    .local v7, "nextCandidate":Landroid/view/View;
    :goto_1
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 2006
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 2010
    .local v8, "nextFocus":Landroid/view/View;
    :goto_2
    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2011
    move-object v9, v7

    if-nez v9, :cond_4

    .line 2012
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 2000
    .end local v7    # "nextCandidate":Landroid/view/View;
    .end local v8    # "nextFocus":Landroid/view/View;
    :cond_2
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .restart local v7    # "nextCandidate":Landroid/view/View;
    goto :goto_1

    .line 2008
    :cond_3
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .restart local v8    # "nextFocus":Landroid/view/View;
    goto :goto_2

    .line 2014
    :cond_4
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 2016
    :cond_5
    move-object v9, v7

    move-object v0, v9

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 239
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 240
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 17

    .prologue
    .line 483
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object/from16 v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v11, :cond_0

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 484
    :cond_0
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 485
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 486
    .line 668
    :goto_0
    return-void

    .line 489
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 490
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 493
    :cond_2
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 494
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 496
    move-object v11, v0

    invoke-direct {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 498
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v11

    move-object v3, v11

    .line 499
    .local v3, "focused":Landroid/view/View;
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v11, :cond_3

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v11, :cond_9

    .line 501
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 502
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v13, v0

    iget-boolean v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v12, v13

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 504
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 505
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 531
    :cond_4
    :goto_1
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v11

    move v6, v11

    .line 534
    .local v6, "extra":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v11, :cond_b

    .line 535
    move v11, v6

    move v5, v11

    .line 536
    .local v5, "extraForEnd":I
    const/4 v11, 0x0

    move v4, v11

    .line 541
    .local v4, "extraForStart":I
    :goto_2
    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    add-int/2addr v11, v12

    move v4, v11

    .line 542
    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v12

    add-int/2addr v11, v12

    move v5, v11

    .line 543
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v12, -0x80000000

    if-eq v11, v12, :cond_5

    .line 548
    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    .line 549
    .local v7, "existing":Landroid/view/View;
    move-object v11, v7

    if-eqz v11, :cond_5

    .line 552
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v11, :cond_c

    .line 553
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v7

    .line 554
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    move v8, v11

    .line 555
    .local v8, "current":I
    move v11, v8

    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v11, v12

    move v9, v11

    .line 561
    .local v9, "upcomingOffset":I
    :goto_3
    move v11, v9

    if-lez v11, :cond_d

    .line 562
    move v11, v4

    move v12, v9

    add-int/2addr v11, v12

    move v4, v11

    .line 571
    .end local v7    # "existing":Landroid/view/View;
    .end local v8    # "current":I
    .end local v9    # "upcomingOffset":I
    :cond_5
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v11, :cond_f

    .line 572
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    :goto_5
    move v9, v11

    .line 579
    .local v9, "firstLayoutDirection":I
    :goto_6
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move v15, v9

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 580
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 581
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v12

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 582
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v12

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 583
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v11, :cond_11

    .line 585
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 586
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v12, v4

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 587
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    .line 588
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v11

    .line 589
    .local v7, "startOffset":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v10, v11

    .line 590
    .local v10, "firstElement":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v11, :cond_6

    .line 591
    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v11, v12

    move v5, v11

    .line 594
    :cond_6
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 595
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v12, v5

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 596
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v12, v13

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 597
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    .line 598
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v11

    .line 600
    .local v8, "endOffset":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v11, :cond_7

    .line 602
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v4, v11

    .line 603
    move-object v11, v0

    move v12, v10

    move v13, v7

    invoke-direct {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 604
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v12, v4

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 605
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    .line 606
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v11

    .line 608
    .line 638
    .end local v10    # "firstElement":I
    :cond_7
    :goto_7
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v11

    if-lez v11, :cond_8

    .line 642
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v11, v12

    if-eqz v11, :cond_13

    .line 643
    move-object v11, v0

    move v12, v8

    move-object v13, v1

    move-object v14, v2

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    move v10, v11

    .line 644
    .local v10, "fixOffset":I
    move v11, v7

    move v12, v10

    add-int/2addr v11, v12

    move v7, v11

    .line 645
    move v11, v8

    move v12, v10

    add-int/2addr v11, v12

    move v8, v11

    .line 646
    move-object v11, v0

    move v12, v7

    move-object v13, v1

    move-object v14, v2

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    move v10, v11

    .line 647
    move v11, v7

    move v12, v10

    add-int/2addr v11, v12

    move v7, v11

    .line 648
    move v11, v8

    move v12, v10

    add-int/2addr v11, v12

    move v8, v11

    .line 658
    .end local v10    # "fixOffset":I
    :cond_8
    :goto_8
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v7

    move v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 659
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_14

    .line 660
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    .line 664
    :goto_9
    move-object v11, v0

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 668
    goto/16 :goto_0

    .line 506
    .end local v4    # "extraForStart":I
    .end local v5    # "extraForEnd":I
    .end local v6    # "extra":I
    .end local v7    # "startOffset":I
    .end local v8    # "endOffset":I
    .end local v9    # "firstLayoutDirection":I
    :cond_9
    move-object v11, v3

    if-eqz v11, :cond_4

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 507
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    if-ge v11, v12, :cond_a

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v3

    .line 508
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 509
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    if-gt v11, v12, :cond_4

    .line 521
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v12, v3

    move-object v13, v0

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 538
    .restart local v6    # "extra":I
    :cond_b
    move v11, v6

    move v4, v11

    .line 539
    .restart local v4    # "extraForStart":I
    const/4 v11, 0x0

    move v5, v11

    .restart local v5    # "extraForEnd":I
    goto/16 :goto_2

    .line 557
    .local v7, "existing":Landroid/view/View;
    :cond_c
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 558
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    sub-int/2addr v11, v12

    move v8, v11

    .line 559
    .local v8, "current":I
    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v12, v8

    sub-int/2addr v11, v12

    move v9, v11

    .local v9, "upcomingOffset":I
    goto/16 :goto_3

    .line 564
    :cond_d
    move v11, v5

    move v12, v9

    sub-int/2addr v11, v12

    move v5, v11

    goto/16 :goto_4

    .line 572
    .end local v7    # "existing":Landroid/view/View;
    .end local v8    # "current":I
    .end local v9    # "upcomingOffset":I
    :cond_e
    const/4 v11, -0x1

    goto/16 :goto_5

    .line 575
    :cond_f
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v11, :cond_10

    const/4 v11, -0x1

    :goto_a
    move v9, v11

    .local v9, "firstLayoutDirection":I
    goto/16 :goto_6

    .end local v9    # "firstLayoutDirection":I
    :cond_10
    const/4 v11, 0x1

    goto :goto_a

    .line 610
    .restart local v9    # "firstLayoutDirection":I
    :cond_11
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 611
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v12, v5

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 612
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    .line 613
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v11

    .line 614
    .local v8, "endOffset":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v10, v11

    .line 615
    .local v10, "lastElement":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v11, :cond_12

    .line 616
    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v11, v12

    move v4, v11

    .line 619
    :cond_12
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 620
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v12, v4

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 621
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v12, v13

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 622
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    .line 623
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v11

    .line 625
    .local v7, "startOffset":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v11, :cond_7

    .line 626
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v5, v11

    .line 628
    move-object v11, v0

    move v12, v10

    move v13, v8

    invoke-direct {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 629
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v12, v5

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 630
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    .line 631
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v11

    goto/16 :goto_7

    .line 650
    .end local v10    # "lastElement":I
    :cond_13
    move-object v11, v0

    move v12, v7

    move-object v13, v1

    move-object v14, v2

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    move v10, v11

    .line 651
    .local v10, "fixOffset":I
    move v11, v7

    move v12, v10

    add-int/2addr v11, v12

    move v7, v11

    .line 652
    move v11, v8

    move v12, v10

    add-int/2addr v11, v12

    move v8, v11

    .line 653
    move-object v11, v0

    move v12, v8

    move-object v13, v1

    move-object v14, v2

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v11

    move v10, v11

    .line 654
    move v11, v7

    move v12, v10

    add-int/2addr v11, v12

    move v7, v11

    .line 655
    move v11, v8

    move v12, v10

    add-int/2addr v11, v12

    move v8, v11

    goto/16 :goto_8

    .line 662
    .end local v10    # "fixOffset":I
    :cond_14
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    goto/16 :goto_9
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 673
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 674
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 675
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 676
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 677
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 274
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 275
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 282
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 247
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;)V

    move-object v0, v4

    .line 268
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    .local v1, "state":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    :goto_0
    return-object v0

    .line 249
    .end local v1    # "state":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 250
    .restart local v1    # "state":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 251
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 252
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v4, v5

    move v2, v4

    .line 253
    .local v2, "didLayoutFromEnd":Z
    move-object v4, v1

    move v5, v2

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 254
    move v4, v2

    if-eqz v4, :cond_1

    .line 255
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 256
    .local v3, "refChild":Landroid/view/View;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v3

    .line 257
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 258
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 259
    .line 265
    .line 268
    .end local v2    # "didLayoutFromEnd":Z
    .end local v3    # "refChild":Landroid/view/View;
    :goto_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 260
    .restart local v2    # "didLayoutFromEnd":Z
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 261
    .restart local v3    # "refChild":Landroid/view/View;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 262
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 263
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_1

    .line 266
    .end local v2    # "didLayoutFromEnd":Z
    .end local v3    # "refChild":Landroid/view/View;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_1
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2094
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "target":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move-object v8, v0

    const-string/jumbo v9, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2095
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2096
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2097
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v5, v8

    .line 2098
    .local v5, "myPos":I
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v6, v8

    .line 2099
    .local v6, "targetPos":I
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 2101
    .local v7, "dropDirection":I
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    .line 2102
    move v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2103
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2104
    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v2

    .line 2105
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v1

    .line 2106
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 2103
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2121
    :goto_1
    return-void

    .line 2099
    .end local v7    # "dropDirection":I
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 2108
    .restart local v7    # "dropDirection":I
    :cond_1
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2109
    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v2

    .line 2110
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 2108
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2113
    :cond_2
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 2114
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2116
    :cond_3
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v2

    .line 2117
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v1

    .line 2118
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 2116
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method resolveIsInfinite()Z
    .locals 2

    .prologue
    .line 1211
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1212
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 14

    .prologue
    .line 1322
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object/from16 v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-nez v8, :cond_1

    .line 1323
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 1344
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .line 1325
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1326
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1327
    move v8, v1

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 1328
    .local v4, "layoutDirection":I
    move v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v5, v8

    .line 1329
    .local v5, "absDy":I
    move-object v8, v0

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1330
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v9, v0

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v12, v3

    const/4 v13, 0x0

    .line 1331
    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 1332
    .local v6, "consumed":I
    move v8, v6

    if-gez v8, :cond_3

    .line 1336
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 1327
    .end local v4    # "layoutDirection":I
    .end local v5    # "absDy":I
    .end local v6    # "consumed":I
    :cond_2
    const/4 v8, -0x1

    goto :goto_1

    .line 1338
    .restart local v4    # "layoutDirection":I
    .restart local v5    # "absDy":I
    .restart local v6    # "consumed":I
    :cond_3
    move v8, v5

    move v9, v6

    if-le v8, v9, :cond_4

    move v8, v4

    move v9, v6

    mul-int/2addr v8, v9

    :goto_2
    move v7, v8

    .line 1339
    .local v7, "scrolled":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move v9, v7

    neg-int v9, v9

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1343
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v9, v7

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1344
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 1338
    .end local v7    # "scrolled":I
    :cond_4
    move v8, v1

    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "dx":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1061
    const/4 v4, 0x0

    move v0, v4

    .line 1063
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1018
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1019
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 1020
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1022
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 1023
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1046
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1047
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 1048
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1050
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 1051
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_0

    .line 1073
    const/4 v4, 0x0

    move v0, v4

    .line 1075
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 4

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "itemCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 1287
    return-void
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid orientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 340
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v2, :cond_2

    .line 341
    :cond_1
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    .line 342
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 343
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 344
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 345
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 347
    :cond_2
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "recycleChildrenOnDetach":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 224
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "reverseLayout":Z
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 389
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne v2, v3, :cond_0

    .line 390
    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 393
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 394
    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 4

    .prologue
    .line 1159
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1160
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move v1, p1

    .local v1, "stackFromEnd":Z
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 305
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 306
    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 309
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 310
    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 3

    .prologue
    .line 1630
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getHeightMode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 1631
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidthMode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 1632
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 9

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
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

    .line 449
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 450
    .local v4, "linearSmoothScroller":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 451
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 452
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 3

    .prologue
    .line 2085
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 13

    .prologue
    .line 2044
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager;
    const-string/jumbo v7, "LinearLayoutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validating child count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2045
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 2046
    .line 2081
    :goto_0
    return-void

    .line 2048
    :cond_0
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v1, v7

    .line 2049
    .local v1, "lastPos":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 2050
    .local v2, "lastScreenLoc":I
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_5

    .line 2051
    const/4 v7, 0x1

    move v3, v7

    .local v3, "i":I
    :goto_1
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 2052
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2053
    .local v4, "child":Landroid/view/View;
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 2054
    .local v5, "pos":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 2055
    .local v6, "screenLoc":I
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 2056
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2057
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 2060
    :cond_2
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_3

    .line 2061
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2062
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2051
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2081
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "pos":I
    .end local v6    # "screenLoc":I
    :cond_4
    goto/16 :goto_0

    .line 2066
    .end local v3    # "i":I
    :cond_5
    const/4 v7, 0x1

    move v3, v7

    .restart local v3    # "i":I
    :goto_3
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 2067
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2068
    .restart local v4    # "child":Landroid/view/View;
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 2069
    .restart local v5    # "pos":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 2070
    .restart local v6    # "screenLoc":I
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_7

    .line 2071
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2072
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 2075
    :cond_7
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_8

    .line 2076
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2077
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2066
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
