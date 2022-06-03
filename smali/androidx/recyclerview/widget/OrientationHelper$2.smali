.class final Landroidx/recyclerview/widget/OrientationHelper$2;
.super Landroidx/recyclerview/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 5

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    .line 396
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 397
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    .line 380
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 381
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    .line 388
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 389
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v1

    .line 403
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 404
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getEndAfterPadding()I
    .locals 3

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getEndPadding()I
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getModeInOther()I
    .locals 2

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getStartAfterPadding()I
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getTotalSpace()I
    .locals 3

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 422
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 410
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 416
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 428
    return-void
.end method

.method public offsetChildren(I)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OrientationHelper$2;
    move v1, p1

    .local v1, "amount":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 370
    return-void
.end method
