.class public Landroidx/recyclerview/widget/LinearSmoothScroller;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 81
    move-object v2, v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 83
    move-object v2, v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 94
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 95
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 6

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move v1, p1

    .local v1, "tmpDt":I
    move v2, p2

    .local v2, "dt":I
    move v4, v1

    move v3, v4

    .line 256
    .local v3, "before":I
    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    move v1, v4

    .line 257
    move v4, v3

    move v5, v1

    mul-int/2addr v4, v5

    if-gtz v4, :cond_0

    .line 258
    const/4 v4, 0x0

    move v0, v4

    .line 260
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :cond_0
    move v4, v1

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 12

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move v1, p1

    .local v1, "viewStart":I
    move v2, p2

    .local v2, "viewEnd":I
    move v3, p3

    .local v3, "boxStart":I
    move/from16 v4, p4

    .local v4, "boxEnd":I
    move/from16 v5, p5

    .local v5, "snapPreference":I
    move v8, v5

    packed-switch v8, :pswitch_data_0

    .line 285
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 271
    :pswitch_0
    move v8, v3

    move v9, v1

    sub-int/2addr v8, v9

    move v0, v8

    .line 288
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :goto_0
    return v0

    .line 273
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :pswitch_1
    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 275
    :pswitch_2
    move v8, v3

    move v9, v1

    sub-int/2addr v8, v9

    move v6, v8

    .line 276
    .local v6, "dtStart":I
    move v8, v6

    if-lez v8, :cond_0

    .line 277
    move v8, v6

    move v0, v8

    goto :goto_0

    .line 279
    :cond_0
    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 280
    .local v7, "dtEnd":I
    move v8, v7

    if-gez v8, :cond_1

    .line 281
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 288
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 15

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object/from16 v1, p1

    .local v1, "view":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "snapPreference":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v3, v9

    .line 329
    .local v3, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-nez v9, :cond_1

    .line 330
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 338
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :goto_0
    return v0

    .line 332
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :cond_1
    move-object v9, v1

    .line 333
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v4, v9

    .line 334
    .local v4, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 335
    .local v5, "left":I
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    move v6, v9

    .line 336
    .local v6, "right":I
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    move v7, v9

    .line 337
    .local v7, "start":I
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    .line 338
    .local v8, "end":I
    move-object v9, v0

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    move v14, v2

    invoke-virtual/range {v9 .. v14}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 15

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object/from16 v1, p1

    .local v1, "view":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "snapPreference":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v3, v9

    .line 304
    .local v3, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-nez v9, :cond_1

    .line 305
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 313
    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :goto_0
    return v0

    .line 307
    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :cond_1
    move-object v9, v1

    .line 308
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v4, v9

    .line 309
    .local v4, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 310
    .local v5, "top":I
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v6, v9

    .line 311
    .local v6, "bottom":I
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    move v7, v9

    .line 312
    .local v7, "start":I
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    .line 313
    .local v8, "end":I
    move-object v9, v0

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    move v14, v2

    invoke-virtual/range {v9 .. v14}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, p1

    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x41c80000    # 25.0f

    move-object v3, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move v1, p1

    .local v1, "dx":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move v1, p1

    .local v1, "dx":I
    move v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    return v0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getVerticalSnapPreference()I
    .locals 3

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 9

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, p4

    .local v4, "action":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 128
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 129
    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    move v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 138
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 140
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v5, :cond_1

    .line 141
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 144
    :cond_1
    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v2, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 153
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 13

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, p1

    .local v1, "targetView":Landroid/view/View;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "action":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v8

    move v4, v8

    .line 111
    .local v4, "dx":I
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v8

    move v5, v8

    .line 112
    .local v5, "dy":I
    move v8, v4

    move v9, v4

    mul-int/2addr v8, v9

    move v9, v5

    move v10, v5

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v6, v8

    .line 113
    .local v6, "distance":I
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v8

    move v7, v8

    .line 114
    .local v7, "time":I
    move v8, v7

    if-lez v8, :cond_0

    .line 115
    move-object v8, v3

    move v9, v4

    neg-int v9, v9

    move v10, v5

    neg-int v10, v10

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 9

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearSmoothScroller;
    move-object v1, p1

    .local v1, "action":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v4

    move-object v2, v4

    .line 234
    .local v2, "scrollVector":Landroid/graphics/PointF;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 235
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v4

    move v3, v4

    .line 236
    .local v3, "target":I
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 237
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 238
    .line 252
    .end local v3    # "target":I
    :goto_0
    return-void

    .line 240
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 241
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 243
    move-object v4, v0

    const v5, 0x461c4000    # 10000.0f

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 244
    move-object v4, v0

    const v5, 0x461c4000    # 10000.0f

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 245
    move-object v4, v0

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v4

    move v3, v4

    .line 249
    .local v3, "time":I
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v6, v6

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v3

    int-to-float v7, v7

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 252
    goto :goto_0
.end method
