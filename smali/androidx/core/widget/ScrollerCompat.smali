.class public final Landroidx/core/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mScroller:Landroid/widget/OverScroller;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_0

    new-instance v4, Landroid/widget/OverScroller;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    iput-object v4, v3, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v4, Landroid/widget/OverScroller;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Landroidx/core/widget/ScrollerCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/core/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 274
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move/from16 v1, p1

    .local v1, "startX":I
    move/from16 v2, p2

    .local v2, "startY":I
    move/from16 v3, p3

    .local v3, "velocityX":I
    move/from16 v4, p4

    .local v4, "velocityY":I
    move/from16 v5, p5

    .local v5, "minX":I
    move/from16 v6, p6

    .local v6, "maxX":I
    move/from16 v7, p7

    .local v7, "minY":I
    move/from16 v8, p8

    .local v8, "maxY":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 211
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move/from16 v1, p1

    .local v1, "startX":I
    move/from16 v2, p2

    .local v2, "startY":I
    move/from16 v3, p3

    .local v3, "velocityX":I
    move/from16 v4, p4

    .local v4, "velocityY":I
    move/from16 v5, p5

    .local v5, "minX":I
    move/from16 v6, p6

    .local v6, "maxX":I
    move/from16 v7, p7

    .local v7, "minY":I
    move/from16 v8, p8

    .local v8, "maxY":I
    move/from16 v9, p9

    .local v9, "overX":I
    move/from16 v10, p10

    .local v10, "overY":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 244
    return-void
.end method

.method public getCurrVelocity()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public getCurrX()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public getCurrY()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public getFinalX()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public getFinalY()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public isFinished()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public isOverScrolled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move v1, p1

    .local v1, "startX":I
    move v2, p2

    .local v2, "finalX":I
    move v3, p3

    .local v3, "overX":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 295
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move v1, p1

    .local v1, "startY":I
    move v2, p2

    .local v2, "finalY":I
    move v3, p3

    .local v3, "overY":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 315
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move v1, p1

    .local v1, "startX":I
    move/from16 v2, p2

    .local v2, "startY":I
    move/from16 v3, p3

    .local v3, "minX":I
    move/from16 v4, p4

    .local v4, "maxX":I
    move/from16 v5, p5

    .local v5, "minY":I
    move/from16 v6, p6

    .local v6, "maxY":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Landroidx/core/widget/ScrollerCompat;
    return v0
.end method

.method public startScroll(IIII)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move v1, p1

    .local v1, "startX":I
    move v2, p2

    .local v2, "startY":I
    move v3, p3

    .local v3, "dx":I
    move v4, p4

    .local v4, "dy":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 164
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ScrollerCompat;
    move v1, p1

    .local v1, "startX":I
    move v2, p2

    .local v2, "startY":I
    move v3, p3

    .local v3, "dx":I
    move/from16 v4, p4

    .local v4, "dy":I
    move/from16 v5, p5

    .local v5, "duration":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 184
    return-void
.end method
