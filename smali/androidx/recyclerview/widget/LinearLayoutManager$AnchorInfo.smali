.class Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPosition:I

.field mValid:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2379
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2380
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2381
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 3

    .prologue
    .line 2395
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2396
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    .line 2397
    :goto_0
    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2398
    return-void

    .line 2396
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2397
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 2464
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "position":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_0

    .line 2465
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2466
    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2471
    :goto_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2472
    return-void

    .line 2468
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V
    .locals 19

    .prologue
    .line 2417
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object/from16 v2, p1

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "position":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v14

    move v4, v14

    .line 2418
    .local v4, "spaceChange":I
    move v14, v4

    if-ltz v14, :cond_0

    .line 2419
    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 2420
    .line 2461
    :goto_0
    return-void

    .line 2422
    :cond_0
    move-object v14, v1

    move v15, v3

    iput v15, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2423
    move-object v14, v1

    iget-boolean v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v14, :cond_2

    .line 2424
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    move v15, v4

    sub-int/2addr v14, v15

    move v5, v14

    .line 2425
    .local v5, "prevLayoutEnd":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v14

    move v6, v14

    .line 2426
    .local v6, "childEnd":I
    move v14, v5

    move v15, v6

    sub-int/2addr v14, v15

    move v7, v14

    .line 2427
    .local v7, "previousEndMargin":I
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v15

    move/from16 v16, v7

    sub-int v15, v15, v16

    iput v15, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2429
    move v14, v7

    if-lez v14, :cond_1

    .line 2430
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v14

    move v8, v14

    .line 2431
    .local v8, "childSize":I
    move-object v14, v1

    iget v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move v15, v8

    sub-int/2addr v14, v15

    move v9, v14

    .line 2432
    .local v9, "estimatedChildStart":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    move v10, v14

    .line 2433
    .local v10, "layoutStart":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move v15, v10

    sub-int/2addr v14, v15

    move v11, v14

    .line 2435
    .local v11, "previousStartMargin":I
    move v14, v10

    move v15, v11

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/2addr v14, v15

    move v12, v14

    .line 2436
    .local v12, "startReference":I
    move v14, v9

    move v15, v12

    sub-int/2addr v14, v15

    move v13, v14

    .line 2437
    .local v13, "startMargin":I
    move v14, v13

    if-gez v14, :cond_1

    .line 2439
    move-object v14, v1

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    iget v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v16, v7

    move/from16 v17, v13

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2442
    .line 2461
    .end local v5    # "prevLayoutEnd":I
    .end local v6    # "childEnd":I
    .end local v7    # "previousEndMargin":I
    .end local v8    # "childSize":I
    .end local v9    # "estimatedChildStart":I
    .end local v10    # "layoutStart":I
    .end local v11    # "previousStartMargin":I
    .end local v12    # "startReference":I
    .end local v13    # "startMargin":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 2443
    :cond_2
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v15, v2

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move v5, v14

    .line 2444
    .local v5, "childStart":I
    move v14, v5

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v15

    sub-int/2addr v14, v15

    move v6, v14

    .line 2445
    .local v6, "startMargin":I
    move-object v14, v1

    move v15, v5

    iput v15, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2446
    move v14, v6

    if-lez v14, :cond_1

    .line 2447
    move v14, v5

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v16, v2

    .line 2448
    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v15

    add-int/2addr v14, v15

    move v7, v14

    .line 2449
    .local v7, "estimatedEnd":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    move v15, v4

    sub-int/2addr v14, v15

    move v8, v14

    .line 2451
    .local v8, "previousLayoutEnd":I
    move v14, v8

    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v16, v2

    .line 2452
    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    move v9, v14

    .line 2453
    .local v9, "previousEndMargin":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    const/4 v15, 0x0

    move/from16 v16, v9

    .line 2454
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 2455
    .local v10, "endReference":I
    move v14, v10

    move v15, v7

    sub-int/2addr v14, v15

    move v11, v14

    .line 2456
    .local v11, "endMargin":I
    move v14, v11

    if-gez v14, :cond_1

    .line 2457
    move-object v14, v1

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    iget v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v16, v6

    move/from16 v17, v11

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v15, v15, v16

    iput v15, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1
.end method

.method isViewValidAsAnchor(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 6

    .prologue
    .line 2411
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v3, v4

    .line 2412
    .local v3, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    if-ltz v4, :cond_0

    move-object v4, v3

    .line 2413
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 2384
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2385
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2386
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2387
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2388
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2402
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AnchorInfo{mPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCoordinate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mLayoutFromEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    return-object v0
.end method
