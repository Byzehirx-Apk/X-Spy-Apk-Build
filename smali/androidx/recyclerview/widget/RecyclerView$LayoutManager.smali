.class public abstract Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 7296
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7304
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 7350
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 7400
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/ViewBoundsCheck;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck;-><init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    .line 7401
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/ViewBoundsCheck;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck;-><init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    .line 7406
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7408
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7414
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7420
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 7422
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 10422
    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 13

    .prologue
    .line 8298
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move/from16 v3, p3

    .local v3, "disappearing":Z
    move-object v7, v1

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v4, v7

    .line 8299
    .local v4, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v7, v3

    if-nez v7, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8301
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8310
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 8311
    .local v5, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8312
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 8313
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 8317
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v8, v1

    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8342
    :cond_2
    :goto_2
    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v7, :cond_3

    .line 8346
    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 8347
    move-object v7, v5

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8349
    :cond_3
    return-void

    .line 8308
    .end local v5    # "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8315
    .restart local v5    # "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_5
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 8321
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v7, v8, :cond_a

    .line 8323
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 8324
    .local v6, "currentIndex":I
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 8325
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v7

    move v2, v7

    .line 8327
    :cond_7
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 8328
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v1

    .line 8330
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 8332
    :cond_8
    move v7, v6

    move v8, v2

    if-eq v7, v8, :cond_9

    .line 8333
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v8, v6

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 8335
    :cond_9
    goto/16 :goto_2

    .line 8336
    .end local v6    # "currentIndex":I
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 8337
    move-object v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8338
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8339
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public static chooseSize(III)I
    .locals 8

    .prologue
    .line 7610
    move v0, p0

    .local v0, "spec":I
    move v1, p1

    .local v1, "desired":I
    move v2, p2

    .local v2, "min":I
    move v5, v0

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 7611
    .local v3, "mode":I
    move v5, v0

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 7612
    .local v4, "size":I
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 7619
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    .end local v0    # "spec":I
    :goto_0
    return v0

    .line 7614
    .restart local v0    # "spec":I
    :sswitch_0
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 7616
    :sswitch_1
    move v5, v4

    move v6, v1

    move v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 7612
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 5
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8526
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    .line 8527
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 11

    .prologue
    .line 9181
    move v0, p0

    .local v0, "parentSize":I
    move v1, p1

    .local v1, "parentMode":I
    move v2, p2

    .local v2, "padding":I
    move v3, p3

    .local v3, "childDimension":I
    move v4, p4

    .local v4, "canScroll":Z
    const/4 v8, 0x0

    move v9, v0

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 9182
    .local v5, "size":I
    const/4 v8, 0x0

    move v6, v8

    .line 9183
    .local v6, "resultSize":I
    const/4 v8, 0x0

    move v7, v8

    .line 9184
    .local v7, "resultMode":I
    move v8, v4

    if-eqz v8, :cond_3

    .line 9185
    move v8, v3

    if-ltz v8, :cond_1

    .line 9186
    move v8, v3

    move v6, v8

    .line 9187
    const/high16 v8, 0x40000000    # 2.0f

    move v7, v8

    .line 9222
    :cond_0
    :goto_0
    move v8, v6

    move v9, v7

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v0, v8

    .end local v0    # "parentSize":I
    return v0

    .line 9188
    .restart local v0    # "parentSize":I
    :cond_1
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 9189
    move v8, v1

    sparse-switch v8, :sswitch_data_0

    .line 9198
    :goto_1
    goto :goto_0

    .line 9192
    :sswitch_0
    move v8, v5

    move v6, v8

    .line 9193
    move v8, v1

    move v7, v8

    .line 9194
    goto :goto_1

    .line 9196
    :sswitch_1
    const/4 v8, 0x0

    move v6, v8

    .line 9197
    const/4 v8, 0x0

    move v7, v8

    goto :goto_1

    .line 9200
    :cond_2
    move v8, v3

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 9201
    const/4 v8, 0x0

    move v6, v8

    .line 9202
    const/4 v8, 0x0

    move v7, v8

    goto :goto_0

    .line 9205
    :cond_3
    move v8, v3

    if-ltz v8, :cond_4

    .line 9206
    move v8, v3

    move v6, v8

    .line 9207
    const/high16 v8, 0x40000000    # 2.0f

    move v7, v8

    goto :goto_0

    .line 9208
    :cond_4
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 9209
    move v8, v5

    move v6, v8

    .line 9210
    move v8, v1

    move v7, v8

    goto :goto_0

    .line 9211
    :cond_5
    move v8, v3

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 9212
    move v8, v5

    move v6, v8

    .line 9213
    move v8, v1

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_6

    move v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_7

    .line 9214
    :cond_6
    const/high16 v8, -0x80000000

    move v7, v8

    goto :goto_0

    .line 9216
    :cond_7
    const/4 v8, 0x0

    move v7, v8

    goto :goto_0

    .line 9189
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9138
    move v0, p0

    .local v0, "parentSize":I
    move v1, p1

    .local v1, "padding":I
    move v2, p2

    .local v2, "childDimension":I
    move v3, p3

    .local v3, "canScroll":Z
    const/4 v7, 0x0

    move v8, v0

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v7

    .line 9139
    .local v4, "size":I
    const/4 v7, 0x0

    move v5, v7

    .line 9140
    .local v5, "resultSize":I
    const/4 v7, 0x0

    move v6, v7

    .line 9141
    .local v6, "resultMode":I
    move v7, v3

    if-eqz v7, :cond_2

    .line 9142
    move v7, v2

    if-ltz v7, :cond_1

    .line 9143
    move v7, v2

    move v5, v7

    .line 9144
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    .line 9164
    :cond_0
    :goto_0
    move v7, v5

    move v8, v6

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v0, v7

    .end local v0    # "parentSize":I
    return v0

    .line 9148
    .restart local v0    # "parentSize":I
    :cond_1
    const/4 v7, 0x0

    move v5, v7

    .line 9149
    const/4 v7, 0x0

    move v6, v7

    goto :goto_0

    .line 9152
    :cond_2
    move v7, v2

    if-ltz v7, :cond_3

    .line 9153
    move v7, v2

    move v5, v7

    .line 9154
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    goto :goto_0

    .line 9155
    :cond_3
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 9156
    move v7, v4

    move v5, v7

    .line 9158
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    goto :goto_0

    .line 9159
    :cond_4
    move v7, v2

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 9160
    move v7, v4

    move v5, v7

    .line 9161
    const/high16 v7, -0x80000000

    move v6, v7

    goto :goto_0
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 25

    .prologue
    .line 9573
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object/from16 v3, p1

    .local v3, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v4, p2

    .local v4, "child":Landroid/view/View;
    move-object/from16 v5, p3

    .local v5, "rect":Landroid/graphics/Rect;
    move/from16 v6, p4

    .local v6, "immediate":Z
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v7, v22

    .line 9574
    .local v7, "out":[I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v22

    move/from16 v8, v22

    .line 9575
    .local v8, "parentLeft":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v22

    move/from16 v9, v22

    .line 9576
    .local v9, "parentTop":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v10, v22

    .line 9577
    .local v10, "parentRight":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v11, v22

    .line 9578
    .local v11, "parentBottom":I
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getScrollX()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v12, v22

    .line 9579
    .local v12, "childLeft":I
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getScrollY()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v13, v22

    .line 9580
    .local v13, "childTop":I
    move/from16 v22, v12

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v14, v22

    .line 9581
    .local v14, "childRight":I
    move/from16 v22, v13

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v15, v22

    .line 9583
    .local v15, "childBottom":I
    const/16 v22, 0x0

    move/from16 v23, v12

    move/from16 v24, v8

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v16, v22

    .line 9584
    .local v16, "offScreenLeft":I
    const/16 v22, 0x0

    move/from16 v23, v13

    move/from16 v24, v9

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v17, v22

    .line 9585
    .local v17, "offScreenTop":I
    const/16 v22, 0x0

    move/from16 v23, v14

    move/from16 v24, v10

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v18, v22

    .line 9586
    .local v18, "offScreenRight":I
    const/16 v22, 0x0

    move/from16 v23, v15

    move/from16 v24, v11

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v19, v22

    .line 9592
    .local v19, "offScreenBottom":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 9593
    move/from16 v22, v18

    if-eqz v22, :cond_0

    move/from16 v22, v18

    .line 9594
    :goto_0
    move/from16 v20, v22

    .line 9602
    .local v20, "dx":I
    :goto_1
    move/from16 v22, v17

    if-eqz v22, :cond_3

    move/from16 v22, v17

    .line 9603
    :goto_2
    move/from16 v21, v22

    .line 9604
    .local v21, "dy":I
    move-object/from16 v22, v7

    const/16 v23, 0x0

    move/from16 v24, v20

    aput v24, v22, v23

    .line 9605
    move-object/from16 v22, v7

    const/16 v23, 0x1

    move/from16 v24, v21

    aput v24, v22, v23

    .line 9606
    move-object/from16 v22, v7

    move-object/from16 v2, v22

    .end local v2    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v2

    .line 9593
    .end local v20    # "dx":I
    .end local v21    # "dy":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    move/from16 v22, v16

    move/from16 v23, v14

    move/from16 v24, v10

    sub-int v23, v23, v24

    .line 9594
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_0

    .line 9596
    :cond_1
    move/from16 v22, v16

    if-eqz v22, :cond_2

    move/from16 v22, v16

    .line 9597
    :goto_3
    move/from16 v20, v22

    .restart local v20    # "dx":I
    goto :goto_1

    .line 9596
    .end local v20    # "dx":I
    :cond_2
    move/from16 v22, v12

    move/from16 v23, v8

    sub-int v22, v22, v23

    move/from16 v23, v18

    .line 9597
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_3

    .line 9602
    .restart local v20    # "dx":I
    :cond_3
    move/from16 v22, v13

    move/from16 v23, v9

    sub-int v22, v22, v23

    move/from16 v23, v19

    .line 9603
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_2
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10374
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move v3, p3

    .local v3, "defStyleRes":I
    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    move-object v4, v6

    .line 10375
    .local v4, "properties":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    move v9, v2

    move v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 10377
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 10379
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroidx/recyclerview/R$styleable;->RecyclerView_spanCount:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 10380
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroidx/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 10381
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroidx/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 10382
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 10383
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 13

    .prologue
    .line 9705
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "dx":I
    move/from16 v3, p3

    .local v3, "dy":I
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 9706
    .local v4, "focusedChild":Landroid/view/View;
    move-object v10, v4

    if-nez v10, :cond_0

    .line 9707
    const/4 v10, 0x0

    move v0, v10

    .line 9720
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return v0

    .line 9709
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    move v5, v10

    .line 9710
    .local v5, "parentLeft":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    move v6, v10

    .line 9711
    .local v6, "parentTop":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 9712
    .local v7, "parentRight":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move v8, v10

    .line 9713
    .local v8, "parentBottom":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v10

    .line 9714
    .local v9, "bounds":Landroid/graphics/Rect;
    move-object v10, v0

    move-object v11, v4

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9716
    move-object v10, v9

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move v11, v2

    sub-int/2addr v10, v11

    move v11, v7

    if-ge v10, v11, :cond_1

    move-object v10, v9

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move v11, v2

    sub-int/2addr v10, v11

    move v11, v5

    if-le v10, v11, :cond_1

    move-object v10, v9

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v3

    sub-int/2addr v10, v11

    move v11, v8

    if-ge v10, v11, :cond_1

    move-object v10, v9

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move v11, v3

    sub-int/2addr v10, v11

    move v11, v6

    if-gt v10, v11, :cond_2

    .line 9718
    :cond_1
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 9720
    :cond_2
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 7

    .prologue
    .line 9075
    move v0, p0

    .local v0, "childSize":I
    move v1, p1

    .local v1, "spec":I
    move v2, p2

    .local v2, "dimension":I
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 9076
    .local v3, "specMode":I
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 9077
    .local v4, "specSize":I
    move v5, v2

    if-lez v5, :cond_0

    move v5, v0

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 9078
    const/4 v5, 0x0

    move v0, v5

    .line 9088
    .end local v0    # "childSize":I
    :goto_0
    return v0

    .line 9080
    .restart local v0    # "childSize":I
    :cond_0
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 9088
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 9082
    :sswitch_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 9084
    :sswitch_1
    move v5, v4

    move v6, v0

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 9086
    :sswitch_2
    move v5, v4

    move v6, v0

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 9080
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 7

    .prologue
    .line 8935
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "view":Landroid/view/View;
    move-object v5, v3

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 8936
    .local v4, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8940
    .line 8951
    :goto_0
    return-void

    .line 8942
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8943
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v5

    if-nez v5, :cond_1

    .line 8944
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8945
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8951
    :goto_1
    goto :goto_0

    .line 8947
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8948
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 8949
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->onViewDetached(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 8253
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 8254
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 8271
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 8272
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 8282
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 8283
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 8294
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 8295
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 7594
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7595
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7597
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 7631
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7632
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7634
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8571
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8572
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8560
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 8561
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8539
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v5, v1

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 8540
    .local v4, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8541
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8545
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8549
    return-void

    .line 8543
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9442
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "outRect":Landroid/graphics/Rect;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_0

    .line 9443
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 9444
    .line 9448
    :goto_0
    return-void

    .line 9446
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v3, v4

    .line 9447
    .local v3, "insets":Landroid/graphics/Rect;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9448
    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 8149
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    .line 8159
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 8064
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 7816
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 7844
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9892
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9907
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9922
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9937
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9952
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9967
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8927
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    move v2, v5

    .line 8928
    .local v2, "childCount":I
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_0

    .line 8929
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 8930
    .local v4, "v":Landroid/view/View;
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8928
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8932
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8610
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 8611
    .local v3, "index":I
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8612
    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 8
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8624
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 8625
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8626
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8497
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 8498
    .local v2, "ind":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 8499
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8501
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 6

    .prologue
    .line 8519
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8520
    return-void
.end method

.method dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 7847
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7848
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7849
    return-void
.end method

.method dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 7852
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7853
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 7854
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 8234
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 8235
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8237
    :cond_0
    return-void
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
    .line 8438
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_0

    .line 8439
    const/4 v3, 0x0

    move-object v0, v3

    .line 8448
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return-object v0

    .line 8441
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 8442
    .local v2, "found":Landroid/view/View;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 8443
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 8445
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8446
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 8448
    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 8466
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 8467
    .local v2, "childCount":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 8468
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 8469
    .local v4, "child":Landroid/view/View;
    move-object v6, v4

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 8470
    .local v5, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 8471
    .line 8467
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8473
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 8474
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8475
    :cond_2
    move-object v6, v4

    move-object v0, v6

    .line 8478
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 8105
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 8081
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    .line 8082
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    move-object v0, v2

    .line 8086
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return-object v0

    .line 8083
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 8084
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 8086
    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 8397
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9477
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 8668
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 8658
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 2

    .prologue
    .line 7964
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10267
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v3, :cond_1

    .line 10268
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 10270
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9421
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
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
    .line 9373
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/Rect;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9374
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9385
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9249
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v2, v3

    .line 9250
    .local v2, "insets":Landroid/graphics/Rect;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9235
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v2, v3

    .line 9236
    .local v2, "insets":Landroid/graphics/Rect;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9409
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9397
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 8824
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    .line 8825
    const/4 v2, 0x0

    move-object v0, v2

    .line 8831
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .local v1, "focused":Landroid/view/View;
    :goto_0
    return-object v0

    .line 8827
    .end local v1    # "focused":Landroid/view/View;
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 8828
    .restart local v1    # "focused":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8829
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 8831
    :cond_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8734
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getHeightMode()I
    .locals 2

    .prologue
    .line 8702
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 8847
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 8848
    .local v1, "a":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    :goto_1
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .line 8847
    .end local v1    # "a":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 8848
    .restart local v1    # "a":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8418
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 8224
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9492
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getMinimumHeight()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 10022
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getMinimumWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 10014
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getPaddingBottom()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8774
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8794
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8744
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8764
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8784
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8754
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8408
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9507
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10247
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v3, :cond_1

    .line 10248
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 10250
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10231
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9462
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9340
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "includeDecorInsets":Z
    move-object v3, p3

    .local v3, "out":Landroid/graphics/Rect;
    move v6, v2

    if-eqz v6, :cond_1

    .line 9341
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v4, v6

    .line 9342
    .local v4, "insets":Landroid/graphics/Rect;
    move-object v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    move-object v9, v1

    .line 9343
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    move-object v11, v4

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    .line 9342
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 9344
    .line 9348
    .end local v4    # "insets":Landroid/graphics/Rect;
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 9349
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object v4, v6

    .line 9350
    .local v4, "childMatrix":Landroid/graphics/Matrix;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_0

    .line 9351
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    move-object v5, v6

    .line 9352
    .local v5, "tempRectF":Landroid/graphics/RectF;
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9353
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    .line 9354
    move-object v6, v3

    move-object v7, v5

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v7, v7

    .line 9355
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object v8, v5

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    .line 9356
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    move-object v9, v5

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v9, v9

    .line 9357
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    move-object v10, v5

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v10

    .line 9358
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 9354
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 9362
    .end local v4    # "childMatrix":Landroid/graphics/Matrix;
    .end local v5    # "tempRectF":Landroid/graphics/RectF;
    :cond_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 9363
    return-void

    .line 9345
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 8718
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public getWidthMode()I
    .locals 2

    .prologue
    .line 8685
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 7

    .prologue
    .line 10408
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    move v1, v5

    .line 10409
    .local v1, "childCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 10410
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 10411
    .local v3, "child":Landroid/view/View;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 10412
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v4

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v5, :cond_0

    .line 10413
    const/4 v5, 0x1

    move v0, v5

    .line 10416
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return v0

    .line 10409
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10416
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public hasFocus()Z
    .locals 2

    .prologue
    .line 8814
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8892
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 8895
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "View should be fully attached to be ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8896
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8898
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 8899
    .local v2, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8900
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8901
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .prologue
    .line 7864
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 2

    .prologue
    .line 7725
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 8804
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 2

    .prologue
    .line 7792
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10284
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 2

    .prologue
    .line 9059
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 2

    .prologue
    .line 8211
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9683
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "completelyVisible":Z
    move v3, p3

    .local v3, "acceptEndPointInclusion":Z
    const/16 v6, 0x6003

    move v4, v6

    .line 9685
    .local v4, "boundsFlag":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move-object v7, v1

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move-object v7, v1

    move v8, v4

    .line 9687
    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 9688
    .local v5, "isViewFullyVisible":Z
    move v6, v2

    if-eqz v6, :cond_1

    .line 9689
    move v6, v5

    move v0, v6

    .line 9691
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_1
    return v0

    .line 9687
    .end local v5    # "isViewFullyVisible":Z
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 9691
    .restart local v5    # "isViewFullyVisible":Z
    :cond_1
    move v6, v5

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9284
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v6, v7

    .line 9285
    .local v6, "insets":Landroid/graphics/Rect;
    move-object v7, v1

    move v8, v2

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move v9, v3

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move v10, v4

    move-object v11, v6

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    move v11, v5

    move-object v12, v6

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 9287
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9320
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v6, v8

    .line 9321
    .local v6, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v7, v8

    .line 9322
    .local v7, "insets":Landroid/graphics/Rect;
    move-object v8, v1

    move v9, v2

    move-object v10, v7

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move v10, v3

    move-object v11, v7

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move v11, v4

    move-object v12, v7

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    move v12, v5

    move-object v13, v7

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    move-object v13, v6

    iget v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 9325
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9005
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "widthUsed":I
    move/from16 v3, p3

    .local v3, "heightUsed":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v4, v8

    .line 9007
    .local v4, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v5, v8

    .line 9008
    .local v5, "insets":Landroid/graphics/Rect;
    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 9009
    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 9010
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v9

    move-object v10, v0

    .line 9011
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v2

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    move-object v12, v0

    .line 9012
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v12

    .line 9010
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v6, v8

    .line 9013
    .local v6, "widthSpec":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v9

    move-object v10, v0

    .line 9014
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    move-object v12, v0

    .line 9015
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    .line 9013
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v7, v8

    .line 9016
    .local v7, "heightSpec":I
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move v11, v7

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9017
    move-object v8, v1

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 9019
    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9104
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "widthUsed":I
    move/from16 v3, p3

    .local v3, "heightUsed":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v4, v8

    .line 9106
    .local v4, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v5, v8

    .line 9107
    .local v5, "insets":Landroid/graphics/Rect;
    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 9108
    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 9110
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v9

    move-object v10, v0

    .line 9111
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move v11, v2

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    move-object v12, v0

    .line 9113
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v12

    .line 9110
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v6, v8

    .line 9114
    .local v6, "widthSpec":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v9

    move-object v10, v0

    .line 9115
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    move-object v12, v0

    .line 9117
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    .line 9114
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v7, v8

    .line 9118
    .local v7, "heightSpec":I
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move v11, v7

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9119
    move-object v8, v1

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 9121
    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 9

    .prologue
    .line 8591
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 8592
    .local v3, "view":Landroid/view/View;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 8593
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot move a child from non-existing index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8594
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8596
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8597
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8598
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 8858
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "dx":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 8859
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8861
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 8870
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 8871
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8873
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9770
    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9798
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v3, p3

    .local v3, "direction":I
    move v4, p4

    .local v4, "focusableMode":I
    const/4 v5, 0x0

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7919
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7928
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7955
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7956
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 9535
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "focused":Landroid/view/View;
    move v2, p2

    .local v2, "direction":I
    move-object v3, p3

    .local v3, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, p4

    .local v4, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10136
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10137
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10152
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_1

    .line 10153
    .line 10163
    :cond_0
    :goto_0
    return-void

    .line 10155
    :cond_1
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x1

    .line 10156
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x1

    .line 10157
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    .line 10158
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v5, 0x1

    .line 10155
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10160
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_3

    .line 10161
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10163
    :cond_3
    goto :goto_0

    .line 10158
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 10087
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 10088
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10117
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10118
    :cond_0
    move-object v5, v3

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 10119
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 10121
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10122
    :cond_2
    move-object v5, v3

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 10123
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 10125
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 10127
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 10128
    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 10129
    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    .line 10130
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 10127
    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v5

    move-object v4, v5

    .line 10131
    .local v4, "collectionInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 10132
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .prologue
    .line 10167
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v4, v1

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 10169
    .local v3, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v5, v3

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10170
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 10173
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10192
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object/from16 v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "host":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    :goto_0
    move v5, v8

    .line 10193
    .local v5, "rowIndexGuess":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    :goto_1
    move v6, v8

    .line 10194
    .local v6, "columnIndexGuess":I
    move v8, v5

    const/4 v9, 0x1

    move v10, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 10195
    invoke-static/range {v8 .. v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    move-object v7, v8

    .line 10197
    .local v7, "itemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 10198
    return-void

    .line 10192
    .end local v5    # "rowIndexGuess":I
    .end local v6    # "columnIndexGuess":I
    .end local v7    # "itemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 10193
    .restart local v5    # "rowIndexGuess":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 9556
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "focused":Landroid/view/View;
    move v2, p2

    .local v2, "direction":I
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9822
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9809
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 9877
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9833
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9846
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9859
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, p4

    .local v4, "payload":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9860
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 8019
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const-string/jumbo v3, "RecyclerView"

    const-string/jumbo v4, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 8020
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .prologue
    .line 8034
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9995
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "widthSpec":I
    move v4, p4

    .local v4, "heightSpec":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9996
    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9730
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "focused":Landroid/view/View;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9752
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "child":Landroid/view/View;
    move-object v4, p4

    .local v4, "focused":Landroid/view/View;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 10042
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 10036
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 10062
    return-void
.end method

.method onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 4

    .prologue
    .line 10051
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 10052
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 10054
    :cond_0
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10289
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "action":I
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10305
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "action":I
    move-object v4, p4

    .local v4, "args":Landroid/os/Bundle;
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v7, :cond_0

    .line 10306
    const/4 v7, 0x0

    move v0, v7

    .line 10331
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return v0

    .line 10308
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    .local v5, "vScroll":I
    const/4 v7, 0x0

    move v6, v7

    .line 10309
    .local v6, "hScroll":I
    move v7, v3

    sparse-switch v7, :sswitch_data_0

    .line 10327
    :cond_1
    :goto_1
    move v7, v5

    if-nez v7, :cond_4

    move v7, v6

    if-nez v7, :cond_4

    .line 10328
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 10311
    :sswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10312
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    move v5, v7

    .line 10314
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10315
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    move v6, v7

    goto :goto_1

    .line 10319
    :sswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10320
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 10322
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10323
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 10330
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v8, v6

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 10331
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 10309
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10337
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "args":Landroid/os/Bundle;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10358
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v3, p3

    .local v3, "view":Landroid/view/View;
    move v4, p4

    .local v4, "action":I
    move-object v5, p5

    .local v5, "args":Landroid/os/Bundle;
    const/4 v6, 0x0

    move v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 7878
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7879
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7881
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 5

    .prologue
    .line 8384
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    move v1, v3

    .line 8385
    .local v1, "childCount":I
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 8386
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    .line 8385
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8388
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10077
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 10078
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 10079
    .local v3, "view":Landroid/view/View;
    move-object v4, v3

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10080
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 10077
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10083
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 9

    .prologue
    .line 8963
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v6

    move v2, v6

    .line 8965
    .local v2, "scrapCount":I
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    if-ltz v6, :cond_3

    .line 8966
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 8967
    .local v4, "scrap":Landroid/view/View;
    move-object v6, v4

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 8968
    .local v5, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8969
    .line 8965
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8976
    :cond_0
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8977
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8978
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8980
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_2

    .line 8981
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8983
    :cond_2
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8984
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 8986
    .end local v4    # "scrap":Landroid/view/View;
    .end local v5    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clearScrap()V

    .line 8987
    move v6, v2

    if-lez v6, :cond_4

    .line 8988
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 8990
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8635
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8636
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8637
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8646
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 8647
    .local v3, "view":Landroid/view/View;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8648
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8649
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4

    .prologue
    .line 7898
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7899
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    move v0, v2

    .line 7901
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8581
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8582
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 8360
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 8361
    return-void
.end method

.method public removeViewAt(I)V
    .locals 5

    .prologue
    .line 8372
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 8373
    .local v2, "child":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 8374
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    .line 8376
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9625
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "rect":Landroid/graphics/Rect;
    move v4, p4

    .local v4, "immediate":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 14
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9645
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move-object/from16 v3, p3

    .local v3, "rect":Landroid/graphics/Rect;
    move/from16 v4, p4

    .local v4, "immediate":Z
    move/from16 v5, p5

    .local v5, "focusedChildVisible":Z
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v9

    move-object v6, v9

    .line 9647
    .local v6, "scrollAmount":[I
    move-object v9, v6

    const/4 v10, 0x0

    aget v9, v9, v10

    move v7, v9

    .line 9648
    .local v7, "dx":I
    move-object v9, v6

    const/4 v10, 0x1

    aget v9, v9, v10

    move v8, v9

    .line 9649
    .local v8, "dy":I
    move v9, v5

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v10, v1

    move v11, v7

    move v12, v8

    invoke-direct {v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9650
    :cond_0
    move v9, v7

    if-nez v9, :cond_1

    move v9, v8

    if-eqz v9, :cond_3

    .line 9651
    :cond_1
    move v9, v4

    if-eqz v9, :cond_2

    .line 9652
    move-object v9, v1

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 9656
    :goto_0
    const/4 v9, 0x1

    move v0, v9

    .line 9659
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :goto_1
    return v0

    .line 9654
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_2
    move-object v9, v1

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 9659
    :cond_3
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 7581
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 7582
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 7584
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 3

    .prologue
    .line 10211
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 10212
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    .line 8122
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "dx":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 8172
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    .line 8139
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "dy":I
    move-object v2, p2

    .local v2, "recycler":Landroidx/recyclerview/widget/RecyclerView$Recycler;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7652
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7653
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .prologue
    .line 10387
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    move-object v3, v1

    .line 10388
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v4, v1

    .line 10389
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 10387
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 10391
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 4

    .prologue
    .line 7774
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "enabled":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq v2, v3, :cond_0

    .line 7775
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7776
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 7777
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7778
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 7781
    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 5

    .prologue
    .line 7491
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "wSpec":I
    move v2, p2

    .local v2, "hSpec":I
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7492
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7493
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    if-nez v3, :cond_0

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v3, :cond_0

    .line 7494
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7497
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7498
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7499
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez v3, :cond_1

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v3, :cond_1

    .line 7500
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7502
    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 6

    .prologue
    .line 10006
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "widthSize":I
    move v2, p2

    .local v2, "heightSize":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 10007
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 11

    .prologue
    .line 7570
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "childrenBounds":Landroid/graphics/Rect;
    move v2, p2

    .local v2, "wSpec":I
    move v3, p3

    .local v3, "hSpec":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 7571
    .local v4, "usedWidth":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 7572
    .local v5, "usedHeight":I
    move v8, v2

    move v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v8

    move v6, v8

    .line 7573
    .local v6, "width":I
    move v8, v3

    move v9, v5

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v8

    move v7, v8

    .line 7574
    .local v7, "height":I
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 7575
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 16

    .prologue
    .line 7518
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move/from16 v1, p1

    .local v1, "widthSpec":I
    move/from16 v2, p2

    .local v2, "heightSpec":I
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v3, v11

    .line 7519
    .local v3, "count":I
    move v11, v3

    if-nez v11, :cond_0

    .line 7520
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v12, v1

    move v13, v2

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7521
    .line 7547
    :goto_0
    return-void

    .line 7523
    :cond_0
    const v11, 0x7fffffff

    move v4, v11

    .line 7524
    .local v4, "minX":I
    const v11, 0x7fffffff

    move v5, v11

    .line 7525
    .local v5, "minY":I
    const/high16 v11, -0x80000000

    move v6, v11

    .line 7526
    .local v6, "maxX":I
    const/high16 v11, -0x80000000

    move v7, v11

    .line 7528
    .local v7, "maxY":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_1
    move v11, v8

    move v12, v3

    if-ge v11, v12, :cond_5

    .line 7529
    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v9, v11

    .line 7530
    .local v9, "child":Landroid/view/View;
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v10, v11

    .line 7531
    .local v10, "bounds":Landroid/graphics/Rect;
    move-object v11, v0

    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7532
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move v12, v4

    if-ge v11, v12, :cond_1

    .line 7533
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move v4, v11

    .line 7535
    :cond_1
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move v12, v6

    if-le v11, v12, :cond_2

    .line 7536
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move v6, v11

    .line 7538
    :cond_2
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v12, v5

    if-ge v11, v12, :cond_3

    .line 7539
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v5, v11

    .line 7541
    :cond_3
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move v12, v7

    if-le v11, v12, :cond_4

    .line 7542
    move-object v11, v10

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move v7, v11

    .line 7528
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7545
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "bounds":Landroid/graphics/Rect;
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 7546
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move v13, v1

    move v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7547
    goto :goto_0
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 9071
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move v1, p1

    .local v1, "measurementCacheEnabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 9072
    return-void
.end method

.method setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 7475
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 7476
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7477
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 7478
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7479
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7486
    :goto_0
    move-object v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7487
    move-object v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7488
    return-void

    .line 7481
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7482
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 7483
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7484
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 8

    .prologue
    .line 9042
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "widthSpec":I
    move v3, p3

    .local v3, "heightSpec":I
    move-object v4, p4

    .local v4, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 9044
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move v6, v2

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 9045
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move v6, v3

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .prologue
    .line 10404
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 8

    .prologue
    .line 9028
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "widthSpec":I
    move v3, p3

    .local v3, "heightSpec":I
    move-object v4, p4

    .local v4, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 9029
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move v6, v2

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 9030
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move v6, v3

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 6

    .prologue
    .line 8185
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move v3, p3

    .local v3, "position":I
    const-string/jumbo v4, "RecyclerView"

    const-string/jumbo v5, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 8186
    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 5

    .prologue
    .line 8199
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 8200
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8201
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 8203
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 8204
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8205
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8913
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 8914
    .local v2, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 8915
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 8916
    move-object v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8917
    return-void
.end method

.method stopSmoothScroller()V
    .locals 2

    .prologue
    .line 10045
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_0

    .line 10046
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10048
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 7751
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    return v0
.end method
