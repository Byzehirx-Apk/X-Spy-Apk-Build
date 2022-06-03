.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "spanCount":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 44
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 85
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "spanCount":I
    move v3, p3

    .local v3, "orientation":I
    move v4, p4

    .local v4, "reverseLayout":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 44
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    move-object v5, v0

    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 98
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 73
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 74
    .local v5, "properties":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 75
    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V
    .locals 19

    .prologue
    .line 771
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move/from16 v3, p3

    .local v3, "count":I
    move/from16 v4, p4

    .local v4, "consumedSpanCount":I
    move/from16 v5, p5

    .local v5, "layingOutInPrimaryDirection":Z
    move v13, v5

    if-eqz v13, :cond_0

    .line 772
    const/4 v13, 0x0

    move v7, v13

    .line 773
    .local v7, "start":I
    move v13, v3

    move v8, v13

    .line 774
    .local v8, "end":I
    const/4 v13, 0x1

    move v9, v13

    .line 780
    .local v9, "diff":I
    :goto_0
    const/4 v13, 0x0

    move v6, v13

    .line 781
    .local v6, "span":I
    move v13, v7

    move v10, v13

    .local v10, "i":I
    :goto_1
    move v13, v10

    move v14, v8

    if-eq v13, v14, :cond_1

    .line 782
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move v14, v10

    aget-object v13, v13, v14

    move-object v11, v13

    .line 783
    .local v11, "view":Landroid/view/View;
    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v12, v13

    .line 784
    .local v12, "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v13, v12

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    invoke-direct/range {v14 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v14

    iput v14, v13, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 785
    move-object v13, v12

    move v14, v6

    iput v14, v13, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 786
    move v13, v6

    move-object v14, v12

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v13, v14

    move v6, v13

    .line 781
    move v13, v10

    move v14, v9

    add-int/2addr v13, v14

    move v10, v13

    goto :goto_1

    .line 776
    .end local v6    # "span":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "diff":I
    .end local v10    # "i":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    :cond_0
    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v7, v13

    .line 777
    .restart local v7    # "start":I
    const/4 v13, -0x1

    move v8, v13

    .line 778
    .restart local v8    # "end":I
    const/4 v13, -0x1

    move v9, v13

    .restart local v9    # "diff":I
    goto :goto_0

    .line 788
    .restart local v6    # "span":I
    .restart local v10    # "i":I
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v1, v5

    .line 191
    .local v1, "childCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 192
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v3, v5

    .line 193
    .local v3, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    move v4, v5

    .line 194
    .local v4, "viewPosition":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v4    # "viewPosition":I
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "totalSpace":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 311
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 12

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "cachedBorders":[I
    move v1, p1

    .local v1, "spanCount":I
    move v2, p2

    .local v2, "totalSpace":I
    move-object v9, v0

    if-eqz v9, :cond_0

    move-object v9, v0

    array-length v9, v9

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v9, v0

    move-object v10, v0

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    move v10, v2

    if-eq v9, v10, :cond_1

    .line 323
    :cond_0
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v0, v9

    .line 325
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 326
    move v9, v2

    move v10, v1

    div-int/2addr v9, v10

    move v3, v9

    .line 327
    .local v3, "sizePerSpan":I
    move v9, v2

    move v10, v1

    rem-int/2addr v9, v10

    move v4, v9

    .line 328
    .local v4, "sizePerSpanRemainder":I
    const/4 v9, 0x0

    move v5, v9

    .line 329
    .local v5, "consumedPixels":I
    const/4 v9, 0x0

    move v6, v9

    .line 330
    .local v6, "additionalSize":I
    const/4 v9, 0x1

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v1

    if-gt v9, v10, :cond_3

    .line 331
    move v9, v3

    move v8, v9

    .line 332
    .local v8, "itemSize":I
    move v9, v6

    move v10, v4

    add-int/2addr v9, v10

    move v6, v9

    .line 333
    move v9, v6

    if-lez v9, :cond_2

    move v9, v1

    move v10, v6

    sub-int/2addr v9, v10

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 334
    add-int/lit8 v8, v8, 0x1

    .line 335
    move v9, v6

    move v10, v1

    sub-int/2addr v9, v10

    move v6, v9

    .line 337
    :cond_2
    move v9, v5

    move v10, v8

    add-int/2addr v9, v10

    move v5, v9

    .line 338
    move-object v9, v0

    move v10, v7

    move v11, v5

    aput v11, v9, v10

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 340
    .end local v8    # "itemSize":I
    :cond_3
    move-object v9, v0

    move-object v0, v9

    .end local v0    # "cachedBorders":[I
    return-object v0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 187
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 17

    .prologue
    .line 387
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move/from16 v4, p4

    .local v4, "itemDirection":I
    move v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v5, v11

    .line 389
    .local v5, "layingOutInPrimaryDirection":Z
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    iget v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    move v6, v11

    .line 390
    .local v6, "span":I
    move v11, v5

    if-eqz v11, :cond_1

    .line 392
    :goto_1
    move v11, v6

    if-lez v11, :cond_3

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v11, :cond_3

    .line 393
    move-object v11, v3

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 394
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    iget v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    move v6, v11

    goto :goto_1

    .line 387
    .end local v5    # "layingOutInPrimaryDirection":Z
    .end local v6    # "span":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 398
    .restart local v5    # "layingOutInPrimaryDirection":Z
    .restart local v6    # "span":I
    :cond_1
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .line 399
    .local v7, "indexLimit":I
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v8, v11

    .line 400
    .local v8, "pos":I
    move v11, v6

    move v9, v11

    .line 401
    .local v9, "bestSpan":I
    :goto_2
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_2

    .line 402
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    move v10, v11

    .line 403
    .local v10, "next":I
    move v11, v10

    move v12, v9

    if-le v11, v12, :cond_2

    .line 404
    add-int/lit8 v8, v8, 0x1

    .line 405
    move v11, v10

    move v9, v11

    .line 409
    goto :goto_2

    .line 410
    .end local v10    # "next":I
    :cond_2
    move-object v11, v3

    move v12, v8

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 412
    .end local v7    # "indexLimit":I
    .end local v8    # "pos":I
    .end local v9    # "bestSpan":I
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 3

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v1, v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v1, v2, :cond_1

    .line 365
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 367
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 9

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "viewPosition":I
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 452
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    .line 463
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return v0

    .line 454
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v5

    move v4, v5

    .line 455
    .local v4, "adapterPosition":I
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 460
    const-string/jumbo v5, "GridLayoutManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find span size for pre layout position. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 461
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 463
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "pos":I
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 468
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    .line 484
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return v0

    .line 470
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 471
    .local v4, "cached":I
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 472
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 474
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 475
    .local v5, "adapterPosition":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 480
    const-string/jumbo v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 482
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 484
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "pos":I
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 489
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    .line 505
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return v0

    .line 491
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 492
    .local v4, "cached":I
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 493
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 495
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 496
    .local v5, "adapterPosition":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 501
    const-string/jumbo v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 503
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 505
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 7

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "maxSizeInOther":F
    move v2, p2

    .local v2, "currentOtherDirSize":I
    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v4

    .line 748
    .local v3, "contentSize":I
    move-object v4, v0

    move v5, v3

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 749
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 16

    .prologue
    .line 712
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v1, p1

    .local v1, "view":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "otherDirParentSpecMode":I
    move/from16 v3, p3

    .local v3, "alreadyMeasured":Z
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v4, v11

    .line 713
    .local v4, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v11, v4

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v5, v11

    .line 714
    .local v5, "decorInsets":Landroid/graphics/Rect;
    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v6, v11

    .line 716
    .local v6, "verticalInsets":I
    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    move v7, v11

    .line 718
    .local v7, "horizontalInsets":I
    move-object v11, v0

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object v13, v4

    iget v13, v13, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v11

    move v8, v11

    .line 721
    .local v8, "availableSpaceInOther":I
    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 722
    move v11, v8

    move v12, v2

    move v13, v7

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v9, v11

    .line 724
    .local v9, "wSpec":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    move-result v12

    move v13, v6

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v10, v11

    .line 732
    .local v10, "hSpec":I
    :goto_0
    move-object v11, v0

    move-object v12, v1

    move v13, v9

    move v14, v10

    move v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 733
    return-void

    .line 727
    .end local v9    # "wSpec":I
    .end local v10    # "hSpec":I
    :cond_0
    move v11, v8

    move v12, v2

    move v13, v6

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v10, v11

    .line 729
    .restart local v10    # "hSpec":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    move-result v12

    move v13, v7

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v9, v11

    .restart local v9    # "wSpec":I
    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 12

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "widthSpec":I
    move v3, p3

    .local v3, "heightSpec":I
    move/from16 v4, p4

    .local v4, "alreadyMeasured":Z
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 755
    .local v5, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move v7, v4

    if-eqz v7, :cond_1

    .line 756
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    move v6, v7

    .line 760
    .local v6, "measure":Z
    :goto_0
    move v7, v6

    if-eqz v7, :cond_0

    .line 761
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 763
    :cond_0
    return-void

    .line 758
    .end local v6    # "measure":Z
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    move v6, v7

    .restart local v6    # "measure":Z
    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 277
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 281
    .local v1, "totalSpace":I
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 282
    return-void

    .line 279
    .end local v1    # "totalSpace":I
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .restart local v1    # "totalSpace":I
    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 13

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, p2

    .local v2, "layoutState":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    move-object/from16 v3, p3

    .local v3, "layoutPrefetchRegistry":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v4, v8

    .line 512
    .local v4, "remainingSpan":I
    const/4 v8, 0x0

    move v5, v8

    .line 513
    .local v5, "count":I
    :goto_0
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_0

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v4

    if-lez v8, :cond_0

    .line 514
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v6, v8

    .line 515
    .local v6, "pos":I
    move-object v8, v3

    move v9, v6

    const/4 v10, 0x0

    move-object v11, v2

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 516
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 517
    .local v7, "spanSize":I
    move v8, v4

    move v9, v7

    sub-int/2addr v8, v9

    move v4, v8

    .line 518
    move-object v8, v2

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 519
    add-int/lit8 v5, v5, 0x1

    .line 520
    goto :goto_0

    .line 521
    .end local v6    # "pos":I
    .end local v7    # "spanSize":I
    :cond_0
    return-void
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 21

    .prologue
    .line 417
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v3, p1

    .local v3, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v4, p2

    .local v4, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move/from16 v5, p3

    .local v5, "start":I
    move/from16 v6, p4

    .local v6, "end":I
    move/from16 v7, p5

    .local v7, "itemCount":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 418
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 419
    .local v8, "invalidMatch":Landroid/view/View;
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 420
    .local v9, "outOfBoundsMatch":Landroid/view/View;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    move/from16 v10, v17

    .line 421
    .local v10, "boundsStart":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move/from16 v11, v17

    .line 422
    .local v11, "boundsEnd":I
    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_0
    move/from16 v12, v17

    .line 424
    .local v12, "diff":I
    move/from16 v17, v5

    move/from16 v13, v17

    .local v13, "i":I
    :goto_1
    move/from16 v17, v13

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 425
    move-object/from16 v17, v2

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v14, v17

    .line 426
    .local v14, "view":Landroid/view/View;
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 427
    .local v15, "position":I
    move/from16 v17, v15

    if-ltz v17, :cond_0

    move/from16 v17, v15

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 428
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v15

    invoke-direct/range {v17 .. v20}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v17

    move/from16 v16, v17

    .line 429
    .local v16, "span":I
    move/from16 v17, v16

    if-eqz v17, :cond_2

    .line 430
    .line 424
    .end local v16    # "span":I
    :cond_0
    :goto_2
    move/from16 v17, v13

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v13, v17

    goto :goto_1

    .line 422
    .end local v12    # "diff":I
    .end local v13    # "i":I
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "position":I
    :cond_1
    const/16 v17, -0x1

    goto :goto_0

    .line 432
    .restart local v12    # "diff":I
    .restart local v13    # "i":I
    .restart local v14    # "view":Landroid/view/View;
    .restart local v15    # "position":I
    .restart local v16    # "span":I
    :cond_2
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 433
    move-object/from16 v17, v8

    if-nez v17, :cond_0

    .line 434
    move-object/from16 v17, v14

    move-object/from16 v8, v17

    goto :goto_2

    .line 436
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    .line 437
    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 438
    :cond_4
    move-object/from16 v17, v9

    if-nez v17, :cond_0

    .line 439
    move-object/from16 v17, v14

    move-object/from16 v9, v17

    goto :goto_2

    .line 442
    :cond_5
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    .line 446
    .end local v2    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "position":I
    .end local v16    # "span":I
    :goto_3
    return-object v2

    .restart local v2    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_6
    move-object/from16 v17, v9

    if-eqz v17, :cond_7

    move-object/from16 v17, v9

    :goto_4
    move-object/from16 v2, v17

    goto :goto_3

    :cond_7
    move-object/from16 v17, v8

    goto :goto_4
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 231
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 244
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 246
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 133
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 140
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return v0

    .line 135
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 136
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 140
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 119
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 126
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return v0

    .line 121
    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 122
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 126
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "startSpan":I
    move v2, p2

    .local v2, "spanSize":I
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v5, v1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v6, v1

    sub-int/2addr v5, v6

    move v6, v2

    sub-int/2addr v5, v6

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move v0, v3

    .line 348
    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move v5, v1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return-object v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 32

    .prologue
    .line 526
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v3, p1

    .local v3, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v4, p2

    .local v4, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v5, p3

    .local v5, "layoutState":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    move-object/from16 v6, p4

    .local v6, "result":Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v25

    move/from16 v7, v25

    .line 527
    .local v7, "otherDirSpecMode":I
    move/from16 v25, v7

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v25, 0x1

    :goto_0
    move/from16 v8, v25

    .line 528
    .local v8, "flexibleInOtherDir":Z
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v25

    if-lez v25, :cond_3

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    aget v25, v25, v26

    :goto_1
    move/from16 v9, v25

    .line 532
    .local v9, "currentOtherDirSize":I
    move/from16 v25, v8

    if-eqz v25, :cond_0

    .line 533
    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 535
    :cond_0
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    :goto_2
    move/from16 v10, v25

    .line 537
    .local v10, "layingOutInPrimaryDirection":Z
    const/16 v25, 0x0

    move/from16 v11, v25

    .line 538
    .local v11, "count":I
    const/16 v25, 0x0

    move/from16 v12, v25

    .line 539
    .local v12, "consumedSpanCount":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v25, v0

    move/from16 v13, v25

    .line 540
    .local v13, "remainingSpan":I
    move/from16 v25, v10

    if-nez v25, :cond_1

    .line 541
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v25

    move/from16 v14, v25

    .line 542
    .local v14, "itemSpanIndex":I
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v25

    move/from16 v15, v25

    .line 543
    .local v15, "itemSpanSize":I
    move/from16 v25, v14

    move/from16 v26, v15

    add-int v25, v25, v26

    move/from16 v13, v25

    .line 545
    .end local v14    # "itemSpanIndex":I
    .end local v15    # "itemSpanSize":I
    :cond_1
    :goto_3
    move/from16 v25, v11

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v25

    if-eqz v25, :cond_6

    move/from16 v25, v13

    if-lez v25, :cond_6

    .line 546
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v25, v0

    move/from16 v14, v25

    .line 547
    .local v14, "pos":I
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v14

    invoke-direct/range {v25 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v25

    move/from16 v15, v25

    .line 548
    .local v15, "spanSize":I
    move/from16 v25, v15

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 549
    new-instance v25, Ljava/lang/IllegalArgumentException;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v31, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v31

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Item at position "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move/from16 v28, v14

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " requires "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move/from16 v28, v15

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " spans but GridLayoutManager has only "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " spans."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 527
    .end local v8    # "flexibleInOtherDir":Z
    .end local v9    # "currentOtherDirSize":I
    .end local v10    # "layingOutInPrimaryDirection":Z
    .end local v11    # "count":I
    .end local v12    # "consumedSpanCount":I
    .end local v13    # "remainingSpan":I
    .end local v14    # "pos":I
    .end local v15    # "spanSize":I
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 528
    .restart local v8    # "flexibleInOtherDir":Z
    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 535
    .restart local v9    # "currentOtherDirSize":I
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 553
    .restart local v10    # "layingOutInPrimaryDirection":Z
    .restart local v11    # "count":I
    .restart local v12    # "consumedSpanCount":I
    .restart local v13    # "remainingSpan":I
    .restart local v14    # "pos":I
    .restart local v15    # "spanSize":I
    :cond_5
    move/from16 v25, v13

    move/from16 v26, v15

    sub-int v25, v25, v26

    move/from16 v13, v25

    .line 554
    move/from16 v25, v13

    if-gez v25, :cond_7

    .line 555
    .line 566
    .end local v14    # "pos":I
    .end local v15    # "spanSize":I
    :cond_6
    :goto_4
    move/from16 v25, v11

    if-nez v25, :cond_9

    .line 567
    move-object/from16 v25, v6

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 568
    .line 700
    :goto_5
    return-void

    .line 557
    .restart local v14    # "pos":I
    .restart local v15    # "spanSize":I
    :cond_7
    move-object/from16 v25, v5

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v16, v25

    .line 558
    .local v16, "view":Landroid/view/View;
    move-object/from16 v25, v16

    if-nez v25, :cond_8

    .line 559
    goto :goto_4

    .line 561
    :cond_8
    move/from16 v25, v12

    move/from16 v26, v15

    add-int v25, v25, v26

    move/from16 v12, v25

    .line 562
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v11

    move-object/from16 v27, v16

    aput-object v27, v25, v26

    .line 563
    add-int/lit8 v11, v11, 0x1

    .line 564
    goto/16 :goto_3

    .line 571
    .end local v14    # "pos":I
    .end local v15    # "spanSize":I
    .end local v16    # "view":Landroid/view/View;
    :cond_9
    const/16 v25, 0x0

    move/from16 v14, v25

    .line 572
    .local v14, "maxSize":I
    const/16 v25, 0x0

    move/from16 v15, v25

    .line 575
    .local v15, "maxSizeInOther":F
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v10

    invoke-direct/range {v25 .. v30}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V

    .line 576
    const/16 v25, 0x0

    move/from16 v16, v25

    .local v16, "i":I
    :goto_6
    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 577
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v16

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 578
    .local v17, "view":Landroid/view/View;
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    move-object/from16 v25, v0

    if-nez v25, :cond_d

    .line 579
    move/from16 v25, v10

    if-eqz v25, :cond_c

    .line 580
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 591
    :goto_7
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 593
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move/from16 v27, v7

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 594
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v25

    move/from16 v18, v25

    .line 595
    .local v18, "size":I
    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 596
    move/from16 v25, v18

    move/from16 v14, v25

    .line 598
    :cond_a
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v19, v25

    .line 599
    .local v19, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v20, v25

    .line 601
    .local v20, "otherSize":F
    move/from16 v25, v20

    move/from16 v26, v15

    cmpl-float v25, v25, v26

    if-lez v25, :cond_b

    .line 602
    move/from16 v25, v20

    move/from16 v15, v25

    .line 576
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 582
    .end local v18    # "size":I
    .end local v19    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v20    # "otherSize":F
    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 585
    :cond_d
    move/from16 v25, v10

    if-eqz v25, :cond_e

    .line 586
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 588
    :cond_e
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 605
    .end local v17    # "view":Landroid/view/View;
    :cond_f
    move/from16 v25, v8

    if-eqz v25, :cond_11

    .line 607
    move-object/from16 v25, v2

    move/from16 v26, v15

    move/from16 v27, v9

    invoke-direct/range {v25 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 609
    const/16 v25, 0x0

    move/from16 v14, v25

    .line 610
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_8
    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    .line 611
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v16

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 612
    .restart local v17    # "view":Landroid/view/View;
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    const/high16 v27, 0x40000000    # 2.0f

    const/16 v28, 0x1

    invoke-direct/range {v25 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 613
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v25

    move/from16 v18, v25

    .line 614
    .restart local v18    # "size":I
    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 615
    move/from16 v25, v18

    move/from16 v14, v25

    .line 610
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 622
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "size":I
    :cond_11
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_9
    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 623
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v16

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 624
    .restart local v17    # "view":Landroid/view/View;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v25

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 625
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v18, v25

    .line 626
    .local v18, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v19, v25

    .line 627
    .local v19, "decorInsets":Landroid/graphics/Rect;
    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v20, v25

    .line 629
    .local v20, "verticalInsets":I
    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 631
    .local v21, "horizontalInsets":I
    move-object/from16 v25, v2

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v26, v0

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v25

    move/from16 v22, v25

    .line 634
    .local v22, "totalSpaceInOther":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 635
    move/from16 v25, v22

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v27, v21

    move-object/from16 v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v29}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v25

    move/from16 v23, v25

    .line 637
    .local v23, "wSpec":I
    move/from16 v25, v14

    move/from16 v26, v20

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v24, v25

    .line 645
    .local v24, "hSpec":I
    :goto_a
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move/from16 v27, v23

    move/from16 v28, v24

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 622
    .end local v18    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v19    # "decorInsets":Landroid/graphics/Rect;
    .end local v20    # "verticalInsets":I
    .end local v21    # "horizontalInsets":I
    .end local v22    # "totalSpaceInOther":I
    .end local v23    # "wSpec":I
    .end local v24    # "hSpec":I
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 640
    .restart local v18    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .restart local v19    # "decorInsets":Landroid/graphics/Rect;
    .restart local v20    # "verticalInsets":I
    .restart local v21    # "horizontalInsets":I
    .restart local v22    # "totalSpaceInOther":I
    :cond_13
    move/from16 v25, v14

    move/from16 v26, v21

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v23, v25

    .line 642
    .restart local v23    # "wSpec":I
    move/from16 v25, v22

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v27, v20

    move-object/from16 v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v29}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v25

    move/from16 v24, v25

    .restart local v24    # "hSpec":I
    goto :goto_a

    .line 649
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v19    # "decorInsets":Landroid/graphics/Rect;
    .end local v20    # "verticalInsets":I
    .end local v21    # "horizontalInsets":I
    .end local v22    # "totalSpaceInOther":I
    .end local v23    # "wSpec":I
    .end local v24    # "hSpec":I
    :cond_14
    move-object/from16 v25, v6

    move/from16 v26, v14

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 651
    const/16 v25, 0x0

    move/from16 v16, v25

    .local v16, "left":I
    const/16 v25, 0x0

    move/from16 v17, v25

    .local v17, "right":I
    const/16 v25, 0x0

    move/from16 v18, v25

    .local v18, "top":I
    const/16 v25, 0x0

    move/from16 v19, v25

    .line 652
    .local v19, "bottom":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 653
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 654
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v19, v25

    .line 655
    move/from16 v25, v19

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v18, v25

    .line 669
    :goto_b
    const/16 v25, 0x0

    move/from16 v20, v25

    .local v20, "i":I
    :goto_c
    move/from16 v25, v20

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1c

    .line 670
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v20

    aget-object v25, v25, v26

    move-object/from16 v21, v25

    .line 671
    .local v21, "view":Landroid/view/View;
    move-object/from16 v25, v21

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v22, v25

    .line 672
    .local v22, "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    .line 673
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 674
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v27, v0

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v17, v25

    .line 675
    move/from16 v25, v17

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v16, v25

    .line 686
    :goto_d
    move-object/from16 v25, v2

    move-object/from16 v26, v21

    move/from16 v27, v16

    move/from16 v28, v18

    move/from16 v29, v17

    move/from16 v30, v19

    invoke-virtual/range {v25 .. v30}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 694
    move-object/from16 v25, v22

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v25, v22

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 695
    :cond_15
    move-object/from16 v25, v6

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 697
    :cond_16
    move-object/from16 v25, v6

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    move/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->hasFocusable()Z

    move-result v27

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 669
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .line 657
    .end local v20    # "i":I
    .end local v21    # "view":Landroid/view/View;
    .end local v22    # "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    :cond_17
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v18, v25

    .line 658
    move/from16 v25, v18

    move/from16 v26, v14

    add-int v25, v25, v26

    move/from16 v19, v25

    goto/16 :goto_b

    .line 661
    :cond_18
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 662
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v17, v25

    .line 663
    move/from16 v25, v17

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v16, v25

    goto/16 :goto_b

    .line 665
    :cond_19
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v16, v25

    .line 666
    move/from16 v25, v16

    move/from16 v26, v14

    add-int v25, v25, v26

    move/from16 v17, v25

    goto/16 :goto_b

    .line 677
    .restart local v20    # "i":I
    .restart local v21    # "view":Landroid/view/View;
    .restart local v22    # "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    :cond_1a
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v27, v0

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v16, v25

    .line 678
    move/from16 v25, v16

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v17, v25

    goto/16 :goto_d

    .line 681
    :cond_1b
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v27, v0

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v18, v25

    .line 682
    move/from16 v25, v18

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v19, v25

    goto/16 :goto_d

    .line 699
    .end local v21    # "view":Landroid/view/View;
    .end local v22    # "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    :cond_1c
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    goto/16 :goto_5
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 10

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "anchorInfo":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move v4, p4

    .local v4, "itemDirection":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 356
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 357
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 360
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 361
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 40

    .prologue
    .line 995
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v3, p1

    .local v3, "focused":Landroid/view/View;
    move/from16 v4, p2

    .local v4, "focusDirection":I
    move-object/from16 v5, p3

    .local v5, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v6, p4

    .local v6, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    invoke-virtual/range {v35 .. v36}, Landroidx/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v35

    move-object/from16 v7, v35

    .line 996
    .local v7, "prevFocusedChild":Landroid/view/View;
    move-object/from16 v35, v7

    if-nez v35, :cond_0

    .line 997
    const/16 v35, 0x0

    move-object/from16 v2, v35

    .line 1112
    .end local v2    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :goto_0
    return-object v2

    .line 999
    .restart local v2    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    move-object/from16 v35, v7

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    check-cast v35, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v8, v35

    .line 1000
    .local v8, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v35, v8

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v9, v35

    .line 1001
    .local v9, "prevSpanStart":I
    move-object/from16 v35, v8

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v10, v35

    .line 1002
    .local v10, "prevSpanEnd":I
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    invoke-super/range {v35 .. v39}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v35

    move-object/from16 v11, v35

    .line 1003
    .local v11, "view":Landroid/view/View;
    move-object/from16 v35, v11

    if-nez v35, :cond_1

    .line 1004
    const/16 v35, 0x0

    move-object/from16 v2, v35

    goto :goto_0

    .line 1008
    :cond_1
    move-object/from16 v35, v2

    move/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v35

    move/from16 v12, v35

    .line 1009
    .local v12, "layoutDir":I
    move/from16 v35, v12

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    const/16 v35, 0x1

    :goto_1
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    const/16 v35, 0x1

    :goto_2
    move/from16 v13, v35

    .line 1011
    .local v13, "ascend":Z
    move/from16 v35, v13

    if-eqz v35, :cond_5

    .line 1012
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v35

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v14, v35

    .line 1013
    .local v14, "start":I
    const/16 v35, -0x1

    move/from16 v15, v35

    .line 1014
    .local v15, "inc":I
    const/16 v35, -0x1

    move/from16 v16, v35

    .line 1020
    .local v16, "limit":I
    :goto_3
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v35

    if-eqz v35, :cond_6

    const/16 v35, 0x1

    :goto_4
    move/from16 v17, v35

    .line 1025
    .local v17, "preferLastSpan":Z
    const/16 v35, 0x0

    move-object/from16 v18, v35

    .line 1026
    .local v18, "focusableWeakCandidate":Landroid/view/View;
    const/16 v35, -0x1

    move/from16 v19, v35

    .line 1027
    .local v19, "focusableWeakCandidateSpanIndex":I
    const/16 v35, 0x0

    move/from16 v20, v35

    .line 1035
    .local v20, "focusableWeakCandidateOverlap":I
    const/16 v35, 0x0

    move-object/from16 v21, v35

    .line 1036
    .local v21, "unfocusableWeakCandidate":Landroid/view/View;
    const/16 v35, -0x1

    move/from16 v22, v35

    .line 1037
    .local v22, "unfocusableWeakCandidateSpanIndex":I
    const/16 v35, 0x0

    move/from16 v23, v35

    .line 1044
    .local v23, "unfocusableWeakCandidateOverlap":I
    move-object/from16 v35, v2

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v14

    invoke-direct/range {v35 .. v38}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v35

    move/from16 v24, v35

    .line 1045
    .local v24, "focusableSpanGroupIndex":I
    move/from16 v35, v14

    move/from16 v25, v35

    .local v25, "i":I
    :goto_5
    move/from16 v35, v25

    move/from16 v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    .line 1046
    move-object/from16 v35, v2

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v25

    invoke-direct/range {v35 .. v38}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v35

    move/from16 v26, v35

    .line 1047
    .local v26, "spanGroupIndex":I
    move-object/from16 v35, v2

    move/from16 v36, v25

    invoke-virtual/range {v35 .. v36}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    move-object/from16 v27, v35

    .line 1048
    .local v27, "candidate":Landroid/view/View;
    move-object/from16 v35, v27

    move-object/from16 v36, v7

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 1049
    .line 1112
    .end local v26    # "spanGroupIndex":I
    .end local v27    # "candidate":Landroid/view/View;
    :cond_2
    :goto_6
    move-object/from16 v35, v18

    if-eqz v35, :cond_15

    move-object/from16 v35, v18

    :goto_7
    move-object/from16 v2, v35

    goto/16 :goto_0

    .line 1009
    .end local v13    # "ascend":Z
    .end local v14    # "start":I
    .end local v15    # "inc":I
    .end local v16    # "limit":I
    .end local v17    # "preferLastSpan":Z
    .end local v18    # "focusableWeakCandidate":Landroid/view/View;
    .end local v19    # "focusableWeakCandidateSpanIndex":I
    .end local v20    # "focusableWeakCandidateOverlap":I
    .end local v21    # "unfocusableWeakCandidate":Landroid/view/View;
    .end local v22    # "unfocusableWeakCandidateSpanIndex":I
    .end local v23    # "unfocusableWeakCandidateOverlap":I
    .end local v24    # "focusableSpanGroupIndex":I
    .end local v25    # "i":I
    :cond_3
    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 1016
    .restart local v13    # "ascend":Z
    :cond_5
    const/16 v35, 0x0

    move/from16 v14, v35

    .line 1017
    .restart local v14    # "start":I
    const/16 v35, 0x1

    move/from16 v15, v35

    .line 1018
    .restart local v15    # "inc":I
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v35

    move/from16 v16, v35

    .restart local v16    # "limit":I
    goto/16 :goto_3

    .line 1020
    :cond_6
    const/16 v35, 0x0

    goto :goto_4

    .line 1052
    .restart local v17    # "preferLastSpan":Z
    .restart local v18    # "focusableWeakCandidate":Landroid/view/View;
    .restart local v19    # "focusableWeakCandidateSpanIndex":I
    .restart local v20    # "focusableWeakCandidateOverlap":I
    .restart local v21    # "unfocusableWeakCandidate":Landroid/view/View;
    .restart local v22    # "unfocusableWeakCandidateSpanIndex":I
    .restart local v23    # "unfocusableWeakCandidateOverlap":I
    .restart local v24    # "focusableSpanGroupIndex":I
    .restart local v25    # "i":I
    .restart local v26    # "spanGroupIndex":I
    .restart local v27    # "candidate":Landroid/view/View;
    :cond_7
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_8

    move/from16 v35, v26

    move/from16 v36, v24

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    .line 1057
    move-object/from16 v35, v18

    if-eqz v35, :cond_d

    .line 1058
    goto :goto_6

    .line 1063
    :cond_8
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    check-cast v35, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v28, v35

    .line 1064
    .local v28, "candidateLp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v29, v35

    .line 1065
    .local v29, "candidateStart":I
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v30, v35

    .line 1066
    .local v30, "candidateEnd":I
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_9

    move/from16 v35, v29

    move/from16 v36, v9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    move/from16 v35, v30

    move/from16 v36, v10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 1068
    move-object/from16 v35, v27

    move-object/from16 v2, v35

    goto/16 :goto_0

    .line 1070
    :cond_9
    const/16 v35, 0x0

    move/from16 v31, v35

    .line 1071
    .local v31, "assignAsWeek":Z
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_a

    move-object/from16 v35, v18

    if-eqz v35, :cond_b

    :cond_a
    move-object/from16 v35, v27

    .line 1072
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_e

    move-object/from16 v35, v21

    if-nez v35, :cond_e

    .line 1073
    :cond_b
    const/16 v35, 0x1

    move/from16 v31, v35

    .line 1098
    :cond_c
    :goto_8
    move/from16 v35, v31

    if-eqz v35, :cond_d

    .line 1099
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_14

    .line 1100
    move-object/from16 v35, v27

    move-object/from16 v18, v35

    .line 1101
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v19, v35

    .line 1102
    move/from16 v35, v30

    move/from16 v36, v10

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v36, v29

    move/from16 v37, v9

    .line 1103
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v20, v35

    .line 1045
    .end local v28    # "candidateLp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v29    # "candidateStart":I
    .end local v30    # "candidateEnd":I
    .end local v31    # "assignAsWeek":Z
    :cond_d
    :goto_9
    move/from16 v35, v25

    move/from16 v36, v15

    add-int v35, v35, v36

    move/from16 v25, v35

    goto/16 :goto_5

    .line 1075
    .restart local v28    # "candidateLp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .restart local v29    # "candidateStart":I
    .restart local v30    # "candidateEnd":I
    .restart local v31    # "assignAsWeek":Z
    :cond_e
    move/from16 v35, v29

    move/from16 v36, v9

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v32, v35

    .line 1076
    .local v32, "maxStart":I
    move/from16 v35, v30

    move/from16 v36, v10

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v33, v35

    .line 1077
    .local v33, "minEnd":I
    move/from16 v35, v33

    move/from16 v36, v32

    sub-int v35, v35, v36

    move/from16 v34, v35

    .line 1078
    .local v34, "overlap":I
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_11

    .line 1079
    move/from16 v35, v34

    move/from16 v36, v20

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_f

    .line 1080
    const/16 v35, 0x1

    move/from16 v31, v35

    goto :goto_8

    .line 1081
    :cond_f
    move/from16 v35, v34

    move/from16 v36, v20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    move/from16 v35, v17

    move/from16 v36, v29

    move/from16 v37, v19

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_10

    const/16 v36, 0x1

    :goto_a
    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 1084
    const/16 v35, 0x1

    move/from16 v31, v35

    goto/16 :goto_8

    .line 1081
    :cond_10
    const/16 v36, 0x0

    goto :goto_a

    .line 1086
    :cond_11
    move-object/from16 v35, v18

    if-nez v35, :cond_c

    move-object/from16 v35, v2

    move-object/from16 v36, v27

    const/16 v37, 0x0

    const/16 v38, 0x1

    .line 1087
    invoke-virtual/range {v35 .. v38}, Landroidx/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 1088
    move/from16 v35, v34

    move/from16 v36, v23

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    .line 1089
    const/16 v35, 0x1

    move/from16 v31, v35

    goto/16 :goto_8

    .line 1090
    :cond_12
    move/from16 v35, v34

    move/from16 v36, v23

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    move/from16 v35, v17

    move/from16 v36, v29

    move/from16 v37, v22

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_13

    const/16 v36, 0x1

    :goto_b
    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 1093
    const/16 v35, 0x1

    move/from16 v31, v35

    goto/16 :goto_8

    .line 1090
    :cond_13
    const/16 v36, 0x0

    goto :goto_b

    .line 1105
    .end local v32    # "maxStart":I
    .end local v33    # "minEnd":I
    .end local v34    # "overlap":I
    :cond_14
    move-object/from16 v35, v27

    move-object/from16 v21, v35

    .line 1106
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v22, v35

    .line 1107
    move/from16 v35, v30

    move/from16 v36, v10

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v36, v29

    move/from16 v37, v9

    .line 1108
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v23, v35

    goto/16 :goto_9

    .line 1112
    .end local v26    # "spanGroupIndex":I
    .end local v27    # "candidate":Landroid/view/View;
    .end local v28    # "candidateLp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v29    # "candidateStart":I
    .end local v30    # "candidateEnd":I
    .end local v31    # "assignAsWeek":Z
    :cond_15
    move-object/from16 v35, v21

    goto/16 :goto_7
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 15

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "host":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v5, v8

    .line 147
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v8, v5

    instance-of v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v8, :cond_0

    .line 148
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    invoke-super {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 149
    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object v8, v5

    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 152
    .local v6, "glp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v8

    move v7, v8

    .line 153
    .local v7, "spanGroupIndex":I
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v8, :cond_2

    .line 154
    move-object v8, v4

    move-object v9, v6

    .line 155
    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v9

    move-object v10, v6

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v10

    move v11, v7

    const/4 v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    move-object v13, v6

    .line 157
    invoke-virtual {v13}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    .line 154
    invoke-static/range {v9 .. v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 164
    :goto_2
    goto :goto_0

    .line 157
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 159
    :cond_2
    move-object v8, v4

    move v9, v7

    const/4 v10, 0x1

    move-object v11, v6

    .line 161
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v11

    move-object v12, v6

    invoke-virtual {v12}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v12

    move-object v13, v0

    iget v13, v13, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    move-object v13, v6

    .line 162
    invoke-virtual {v13}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x0

    .line 159
    invoke-static/range {v9 .. v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    .line 162
    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 202
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 207
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 6

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "from":I
    move v3, p3

    .local v3, "to":I
    move v4, p4

    .local v4, "itemCount":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 223
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 212
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, p4

    .local v4, "payload":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 218
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 171
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 175
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 176
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 181
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 182
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "dx":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 373
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 374
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return v0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 381
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 382
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 13

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "childrenBounds":Landroid/graphics/Rect;
    move v2, p2

    .local v2, "wSpec":I
    move/from16 v3, p3

    .local v3, "hSpec":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v9, :cond_0

    .line 287
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-super {v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 290
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 291
    .local v6, "horizontalPadding":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 292
    .local v7, "verticalPadding":I
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 293
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 294
    .local v8, "usedHeight":I
    move v9, v3

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .line 295
    .local v5, "height":I
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    .line 296
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v11

    .line 295
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 303
    .end local v8    # "usedHeight":I
    .local v4, "width":I
    :goto_0
    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 304
    return-void

    .line 298
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    move v8, v9

    .line 299
    .local v8, "usedWidth":I
    move v9, v2

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 300
    .restart local v4    # "width":I
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v7

    add-int/2addr v10, v11

    move-object v11, v0

    .line 301
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v11

    .line 300
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .restart local v5    # "height":I
    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 7

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "spanCount":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_0

    .line 811
    .line 821
    :goto_0
    return-void

    .line 813
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 814
    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 815
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Span count should be at least 1. Provided "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 818
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 819
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 820
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->requestLayout()V

    .line 821
    goto :goto_0
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, p1

    .local v1, "spanSizeLookup":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 263
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move v1, p1

    .local v1, "stackFromEnd":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 113
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1117
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
