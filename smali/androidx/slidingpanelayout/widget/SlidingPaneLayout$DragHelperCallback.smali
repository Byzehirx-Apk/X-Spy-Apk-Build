.class Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 4

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 1327
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 11

    .prologue
    .line 1393
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "dx":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 1396
    .local v4, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1397
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 1398
    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v6, v8

    .line 1399
    .local v6, "startBound":I
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int/2addr v8, v9

    move v7, v8

    .line 1400
    .local v7, "endBound":I
    move v8, v2

    move v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 1406
    .local v5, "newLeft":I
    :goto_0
    move v8, v5

    move v0, v8

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    return v0

    .line 1402
    .end local v5    # "newLeft":I
    .end local v6    # "startBound":I
    .end local v7    # "endBound":I
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1403
    .restart local v6    # "startBound":I
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v8, v9

    move v7, v8

    .line 1404
    .restart local v7    # "endBound":I
    move v8, v2

    move v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v5, v8

    .restart local v5    # "newLeft":I
    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    move v0, v2

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 6

    .prologue
    .line 1418
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move v1, p1

    .local v1, "edgeFlags":I
    move v2, p2

    .local v2, "pointerId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v4, v0

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1419
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "capturedChild":Landroid/view/View;
    move v2, p2

    .local v2, "activePointerId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1356
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    .prologue
    .line 1340
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 1342
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 1343
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    .line 1344
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    .line 1347
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 1360
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "changedView":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move v4, p4

    .local v4, "dx":I
    move v5, p5

    .local v5, "dy":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 1361
    move-object v6, v0

    iget-object v6, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 1362
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 11

    .prologue
    .line 1366
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "releasedChild":Landroid/view/View;
    move v2, p2

    .local v2, "xvel":F
    move v3, p3

    .local v3, "yvel":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 1369
    .local v4, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1370
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1371
    .local v6, "startToRight":I
    move v8, v2

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 1372
    :cond_0
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1374
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1375
    .local v7, "childWidth":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v8

    move v9, v6

    sub-int/2addr v8, v9

    move v9, v7

    sub-int/2addr v8, v9

    move v5, v8

    .line 1382
    .end local v6    # "startToRight":I
    .end local v7    # "childWidth":I
    .local v5, "left":I
    :cond_2
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move v9, v5

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v8

    .line 1383
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 1384
    return-void

    .line 1377
    .end local v5    # "left":I
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    move v5, v8

    .line 1378
    .restart local v5    # "left":I
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_4

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1379
    :cond_4
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 1331
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "pointerId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v3, :cond_0

    .line 1332
    const/4 v3, 0x0

    move v0, v3

    .line 1335
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move v0, v3

    goto :goto_0
.end method
