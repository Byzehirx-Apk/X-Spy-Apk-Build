.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 7

    .prologue
    .line 2517
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2511
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2512
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2513
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2514
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2518
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2519
    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2602
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2603
    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2604
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2605
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2606
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2607
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2609
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2610
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2612
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 10

    .prologue
    .line 2617
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "reverseLayout":Z
    move v2, p2

    .local v2, "offset":I
    move v4, v1

    if-eqz v4, :cond_0

    .line 2618
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 2622
    .local v3, "reference":I
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2623
    move v4, v3

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_1

    .line 2624
    .line 2634
    :goto_1
    return-void

    .line 2620
    .end local v3    # "reference":I
    :cond_0
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    .restart local v3    # "reference":I
    goto :goto_0

    .line 2626
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-lt v4, v5, :cond_3

    :cond_2
    move v4, v1

    if-nez v4, :cond_4

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2627
    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 2628
    :cond_3
    goto :goto_1

    .line 2630
    :cond_4
    move v4, v2

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 2631
    move v4, v3

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 2633
    :cond_5
    move-object v4, v0

    move-object v5, v0

    move v6, v3

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2634
    goto :goto_1
.end method

.method calculateCachedEnd()V
    .locals 9

    .prologue
    .line 2567
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 2568
    .local v1, "endView":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 2569
    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2570
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 2571
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v2

    .line 2572
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    move-object v3, v4

    .line 2573
    .local v3, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2574
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2577
    .end local v3    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 9

    .prologue
    .line 2533
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 2534
    .local v1, "startView":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 2535
    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2536
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 2537
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v2

    .line 2538
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    move-object v3, v4

    .line 2539
    .local v3, "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2540
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2543
    .end local v3    # "fsi":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    .line 2637
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2638
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2639
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2640
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2708
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2709
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2710
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0

    .line 2709
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2710
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2702
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2703
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v1

    .line 2704
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0

    .line 2703
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2704
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2696
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2697
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2698
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0

    .line 2697
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2698
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2726
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2727
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2728
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0

    .line 2727
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2728
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2720
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2721
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v1

    .line 2722
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0

    .line 2721
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2722
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2714
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2715
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2716
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0

    .line 2715
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2716
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .locals 19

    .prologue
    .line 2758
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move/from16 v3, p1

    .local v3, "fromIndex":I
    move/from16 v4, p2

    .local v4, "toIndex":I
    move/from16 v5, p3

    .local v5, "completelyVisible":Z
    move/from16 v6, p4

    .local v6, "acceptCompletelyVisible":Z
    move/from16 v7, p5

    .local v7, "acceptEndPointInclusion":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    move/from16 v8, v17

    .line 2759
    .local v8, "start":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move/from16 v9, v17

    .line 2760
    .local v9, "end":I
    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v10, v17

    .line 2761
    .local v10, "next":I
    move/from16 v17, v3

    move/from16 v11, v17

    .local v11, "i":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 2762
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v12, v17

    .line 2763
    .local v12, "child":Landroid/view/View;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v13, v17

    .line 2764
    .local v13, "childStart":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v14, v17

    .line 2765
    .local v14, "childEnd":I
    move/from16 v17, v7

    if-eqz v17, :cond_2

    move/from16 v17, v13

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_2
    move/from16 v15, v17

    .line 2767
    .local v15, "childStartInclusion":Z
    move/from16 v17, v7

    if-eqz v17, :cond_5

    move/from16 v17, v14

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_3
    move/from16 v16, v17

    .line 2769
    .local v16, "childEndInclusion":Z
    move/from16 v17, v15

    if-eqz v17, :cond_a

    move/from16 v17, v16

    if-eqz v17, :cond_a

    .line 2770
    move/from16 v17, v5

    if-eqz v17, :cond_7

    move/from16 v17, v6

    if-eqz v17, :cond_7

    .line 2772
    move/from16 v17, v13

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    move/from16 v17, v14

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    .line 2773
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v2, v17

    .line 2785
    .end local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childStart":I
    .end local v14    # "childEnd":I
    .end local v15    # "childStartInclusion":Z
    .end local v16    # "childEndInclusion":Z
    :goto_4
    return v2

    .line 2760
    .end local v10    # "next":I
    .end local v11    # "i":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    const/16 v17, -0x1

    goto/16 :goto_0

    .line 2765
    .restart local v10    # "next":I
    .restart local v11    # "i":I
    .restart local v12    # "child":Landroid/view/View;
    .restart local v13    # "childStart":I
    .restart local v14    # "childEnd":I
    :cond_1
    const/16 v17, 0x0

    goto :goto_2

    :cond_2
    move/from16 v17, v13

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    const/16 v17, 0x1

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 2767
    .restart local v15    # "childStartInclusion":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    :cond_5
    move/from16 v17, v14

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v17, 0x1

    goto :goto_3

    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 2775
    .restart local v16    # "childEndInclusion":Z
    :cond_7
    move/from16 v17, v6

    if-eqz v17, :cond_8

    .line 2777
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v2, v17

    goto :goto_4

    .line 2778
    :cond_8
    move/from16 v17, v13

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    move/from16 v17, v14

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 2781
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v2, v17

    goto :goto_4

    .line 2761
    :cond_a
    move/from16 v17, v11

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v11, v17

    goto/16 :goto_1

    .line 2785
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childStart":I
    .end local v14    # "childEnd":I
    .end local v15    # "childStartInclusion":Z
    .end local v16    # "childEndInclusion":Z
    :cond_b
    const/16 v17, -0x1

    move/from16 v2, v17

    goto :goto_4
.end method

.method findOnePartiallyVisibleChild(IIZ)I
    .locals 10

    .prologue
    .line 2795
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, p3

    .local v3, "acceptEndPointInclusion":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 10

    .prologue
    .line 2789
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, p3

    .local v3, "completelyVisible":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0
.end method

.method public getDeletedSize()I
    .locals 2

    .prologue
    .line 2679
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return v0
.end method

.method getEndLine()I
    .locals 3

    .prologue
    .line 2581
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2582
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v1

    .line 2585
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :goto_0
    return v0

    .line 2584
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2585
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v1

    goto :goto_0
.end method

.method getEndLine(I)I
    .locals 5

    .prologue
    .line 2555
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "def":I
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    .line 2556
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v3

    .line 2563
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :goto_0
    return v0

    .line 2558
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    .line 2559
    .local v2, "size":I
    move v3, v2

    if-nez v3, :cond_1

    .line 2560
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 2562
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2563
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v3

    goto :goto_0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 9

    .prologue
    .line 2803
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "referenceChildPosition":I
    move v2, p2

    .local v2, "layoutDir":I
    const/4 v7, 0x0

    move-object v3, v7

    .line 2804
    .local v3, "candidate":Landroid/view/View;
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 2805
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 2806
    .local v4, "limit":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 2807
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v6, v7

    .line 2808
    .local v6, "view":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v8, v1

    if-le v7, v8, :cond_1

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object v8, v6

    .line 2809
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v8, v1

    if-lt v7, v8, :cond_2

    .line 2810
    .line 2818
    .line 2832
    .end local v4    # "limit":I
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return-object v0

    .line 2812
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .restart local v4    # "limit":I
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_2
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2813
    move-object v7, v6

    move-object v3, v7

    .line 2806
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2819
    .end local v4    # "limit":I
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_2
    move v7, v4

    if-ltz v7, :cond_1

    .line 2820
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v5, v7

    .line 2821
    .local v5, "view":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v8, v1

    if-ge v7, v8, :cond_1

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-object v8, v5

    .line 2822
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v8, v1

    if-gt v7, v8, :cond_5

    .line 2823
    goto :goto_1

    .line 2825
    :cond_5
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2826
    move-object v7, v5

    move-object v3, v7

    .line 2819
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .prologue
    .line 2683
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    return-object v0
.end method

.method getStartLine()I
    .locals 3

    .prologue
    .line 2547
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2548
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v1

    .line 2551
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :goto_0
    return v0

    .line 2550
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2551
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v1

    goto :goto_0
.end method

.method getStartLine(I)I
    .locals 4

    .prologue
    .line 2522
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "def":I
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 2523
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v2

    .line 2529
    .end local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :goto_0
    return v0

    .line 2525
    .restart local v0    # "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2526
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 2528
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2529
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v2

    goto :goto_0
.end method

.method invalidateCache()V
    .locals 3

    .prologue
    .line 2643
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2644
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2645
    return-void
.end method

.method onOffset(I)V
    .locals 6

    .prologue
    .line 2687
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "dt":I
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 2688
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2690
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    .line 2691
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2693
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 9

    .prologue
    .line 2652
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 2653
    .local v1, "size":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 2654
    .local v2, "end":Landroid/view/View;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 2655
    .local v3, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2656
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2657
    :cond_0
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2659
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2660
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2662
    :cond_2
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2663
    return-void
.end method

.method popStart()V
    .locals 8

    .prologue
    .line 2666
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 2667
    .local v1, "start":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2668
    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2669
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2670
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2672
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2673
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2675
    :cond_2
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2676
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2589
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2590
    .local v2, "lp":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2591
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2592
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2593
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2594
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2596
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2597
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2599
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 8

    .prologue
    .line 2648
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move v1, p1

    .local v1, "line":I
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2649
    return-void
.end method
