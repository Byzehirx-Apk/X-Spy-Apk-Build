.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 3

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "type":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 389
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :goto_0
    return-object v0

    .line 385
    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    move-object v0, v2

    goto :goto_0

    .line 387
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    move-object v0, v2

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "p":Landroid/view/ViewParent;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 395
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 396
    goto :goto_0

    .line 398
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 10

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move v3, p3

    .local v3, "consumed":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 329
    .local v4, "parent":Landroid/view/ViewParent;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 330
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v5

    move v0, v5

    .line 334
    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    .end local v4    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 8

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 349
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 350
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v6, v1

    move v7, v2

    invoke-static {v4, v5, v6, v7}, Landroidx/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v4

    move v0, v4

    .line 354
    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    .end local v3    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 11
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
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

    invoke-virtual/range {v5 .. v10}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 17
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 278
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move/from16 v1, p1

    .local v1, "dx":I
    move/from16 v2, p2

    .local v2, "dy":I
    move-object/from16 v3, p3

    .local v3, "consumed":[I
    move-object/from16 v4, p4

    .local v4, "offsetInWindow":[I
    move/from16 v5, p5

    .local v5, "type":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 279
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v9

    move-object v6, v9

    .line 280
    .local v6, "parent":Landroid/view/ViewParent;
    move-object v9, v6

    if-nez v9, :cond_0

    .line 281
    const/4 v9, 0x0

    move v0, v9

    .line 314
    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .line 284
    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    .restart local v6    # "parent":Landroid/view/ViewParent;
    :cond_0
    move v9, v1

    if-nez v9, :cond_1

    move v9, v2

    if-eqz v9, :cond_8

    .line 285
    :cond_1
    const/4 v9, 0x0

    move v7, v9

    .line 286
    .local v7, "startX":I
    const/4 v9, 0x0

    move v8, v9

    .line 287
    .local v8, "startY":I
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 288
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 289
    move-object v9, v4

    const/4 v10, 0x0

    aget v9, v9, v10

    move v7, v9

    .line 290
    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    move v8, v9

    .line 293
    :cond_2
    move-object v9, v3

    if-nez v9, :cond_4

    .line 294
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v9, :cond_3

    .line 295
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 297
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    move-object v3, v9

    .line 299
    :cond_4
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 300
    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 301
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v11, v1

    move v12, v2

    move-object v13, v3

    move v14, v5

    invoke-static/range {v9 .. v14}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 303
    move-object v9, v4

    if-eqz v9, :cond_5

    .line 304
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 305
    move-object v9, v4

    const/4 v10, 0x0

    move-object v15, v9

    move/from16 v16, v10

    move-object v9, v15

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    aget v11, v11, v12

    move v12, v7

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 306
    move-object v9, v4

    const/4 v10, 0x1

    move-object v15, v9

    move/from16 v16, v10

    move-object v9, v15

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    aget v11, v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 308
    :cond_5
    move-object v9, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    if-nez v9, :cond_6

    move-object v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    if-eqz v9, :cond_7

    :cond_6
    const/4 v9, 0x1

    :goto_1
    move v0, v9

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 309
    .end local v7    # "startX":I
    .end local v8    # "startY":I
    :cond_8
    move-object v9, v4

    if-eqz v9, :cond_9

    .line 310
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 311
    move-object v9, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 314
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_9
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 13
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
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

    invoke-virtual/range {v6 .. v12}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 19
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 220
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move/from16 v1, p1

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
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 221
    move-object v10, v0

    move v11, v6

    invoke-direct {v10, v11}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v10

    move-object v7, v10

    .line 222
    .local v7, "parent":Landroid/view/ViewParent;
    move-object v10, v7

    if-nez v10, :cond_0

    .line 223
    const/4 v10, 0x0

    move v0, v10

    .line 250
    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    .end local v7    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .line 226
    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    .restart local v7    # "parent":Landroid/view/ViewParent;
    :cond_0
    move v10, v1

    if-nez v10, :cond_1

    move v10, v2

    if-nez v10, :cond_1

    move v10, v3

    if-nez v10, :cond_1

    move v10, v4

    if-eqz v10, :cond_4

    .line 227
    :cond_1
    const/4 v10, 0x0

    move v8, v10

    .line 228
    .local v8, "startX":I
    const/4 v10, 0x0

    move v9, v10

    .line 229
    .local v9, "startY":I
    move-object v10, v5

    if-eqz v10, :cond_2

    .line 230
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 231
    move-object v10, v5

    const/4 v11, 0x0

    aget v10, v10, v11

    move v8, v10

    .line 232
    move-object v10, v5

    const/4 v11, 0x1

    aget v10, v10, v11

    move v9, v10

    .line 235
    :cond_2
    move-object v10, v7

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 238
    move-object v10, v5

    if-eqz v10, :cond_3

    .line 239
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    move-object v10, v5

    const/4 v11, 0x0

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v12, v17

    move/from16 v13, v18

    aget v12, v12, v13

    move v13, v8

    sub-int/2addr v12, v13

    aput v12, v10, v11

    .line 241
    move-object v10, v5

    const/4 v11, 0x1

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v12, v17

    move/from16 v13, v18

    aget v12, v12, v13

    move v13, v9

    sub-int/2addr v12, v13

    aput v12, v10, v11

    .line 243
    :cond_3
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 244
    .end local v8    # "startX":I
    .end local v9    # "startY":I
    :cond_4
    move-object v10, v5

    if-eqz v10, :cond_5

    .line 246
    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 247
    move-object v10, v5

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 250
    .end local v7    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    return v0

    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 380
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 73
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 74
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "axes":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 10

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "axes":I
    move v2, p2

    .local v2, "type":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    const/4 v5, 0x1

    move v0, v5

    .line 164
    .end local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :goto_0
    return v0

    .line 149
    .restart local v0    # "this":Landroidx/core/view/NestedScrollingChildHelper;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 151
    .local v3, "p":Landroid/view/ViewParent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v4, v5

    .line 152
    .local v4, "child":Landroid/view/View;
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 153
    move-object v5, v3

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v8, v1

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 155
    move-object v5, v3

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v8, v1

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 156
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 158
    :cond_1
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    .line 159
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 161
    :cond_2
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 164
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public stopNestedScroll()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 176
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingChildHelper;
    move v1, p1

    .local v1, "type":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 187
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 188
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 189
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 191
    :cond_0
    return-void
.end method
