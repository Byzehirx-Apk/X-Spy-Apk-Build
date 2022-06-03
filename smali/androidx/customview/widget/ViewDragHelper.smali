.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 332
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/customview/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "forParent":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "cb":Landroidx/customview/widget/ViewDragHelper$Callback;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 340
    move-object v6, v0

    new-instance v7, Landroidx/customview/widget/ViewDragHelper$2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v7, v6, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 384
    move-object v6, v2

    if-nez v6, :cond_0

    .line 385
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Parent view may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 387
    :cond_0
    move-object v6, v3

    if-nez v6, :cond_1

    .line 388
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Callback may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_1
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 392
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 394
    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    move-object v4, v6

    .line 395
    .local v4, "vc":Landroid/view/ViewConfiguration;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v5, v6

    .line 396
    .local v5, "density":F
    move-object v6, v0

    const/high16 v7, 0x41a00000    # 20.0f

    move v8, v5

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 398
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, v6, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 399
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 400
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 401
    move-object v6, v0

    new-instance v7, Landroid/widget/OverScroller;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    sget-object v10, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v8, v9, v10}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v7, v6, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 402
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 13

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "delta":F
    move v2, p2

    .local v2, "odelta":F
    move/from16 v3, p3

    .local v3, "pointerId":I
    move/from16 v4, p4

    .local v4, "edge":I
    move v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v5, v7

    .line 1277
    .local v5, "absDelta":F
    move v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v6, v7

    .line 1279
    .local v6, "absODelta":F
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    move v8, v4

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    move v8, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    move v8, v4

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    move v8, v4

    if-eq v7, v8, :cond_0

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 1283
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 1289
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 1285
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_1
    move v7, v5

    move v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1286
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    move v8, v3

    move-object v11, v7

    move v12, v8

    move-object v7, v11

    move v8, v12

    move-object v9, v11

    move v10, v12

    aget v9, v9, v10

    move v10, v4

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 1287
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1289
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 9

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "dx":F
    move v3, p3

    .local v3, "dy":F
    move-object v6, v1

    if-nez v6, :cond_0

    .line 1304
    const/4 v6, 0x0

    move v0, v6

    .line 1316
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 1306
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 1307
    .local v4, "checkHorizontal":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 1309
    .local v5, "checkVertical":Z
    move v6, v4

    if-eqz v6, :cond_4

    move v6, v5

    if-eqz v6, :cond_4

    .line 1310
    move v6, v2

    move v7, v2

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    move v0, v6

    goto :goto_0

    .line 1306
    .end local v4    # "checkHorizontal":Z
    .end local v5    # "checkVertical":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1307
    .restart local v4    # "checkHorizontal":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 1310
    .restart local v5    # "checkVertical":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 1311
    :cond_4
    move v6, v4

    if-eqz v6, :cond_6

    .line 1312
    move v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    move v0, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 1313
    :cond_6
    move v6, v5

    if-eqz v6, :cond_8

    .line 1314
    move v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_5
    move v0, v6

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 1316
    :cond_8
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 7

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "value":F
    move v2, p2

    .local v2, "absMin":F
    move v3, p3

    .local v3, "absMax":F
    move v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v4, v5

    .line 688
    .local v4, "absValue":F
    move v5, v4

    move v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 690
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 689
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move v5, v4

    move v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move v5, v3

    neg-float v5, v5

    goto :goto_1

    .line 690
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 7

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "absMin":I
    move v3, p3

    .local v3, "absMax":I
    move v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v5

    .line 671
    .local v4, "absValue":I
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 673
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 672
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_2

    move v5, v1

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move v5, v3

    neg-int v5, v5

    goto :goto_1

    .line 673
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v1, :cond_0

    .line 791
    .line 801
    :goto_0
    return-void

    .line 793
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 794
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 795
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 796
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 797
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 798
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 799
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 800
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 801
    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 7

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "pointerId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v2, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 805
    .line 815
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 808
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 809
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 810
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 811
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 812
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 813
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 814
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 815
    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 14

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "delta":I
    move/from16 v2, p2

    .local v2, "velocity":I
    move/from16 v3, p3

    .local v3, "motionRange":I
    move v10, v1

    if-nez v10, :cond_0

    .line 639
    const/4 v10, 0x0

    move v0, v10

    .line 656
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 642
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    move v4, v10

    .line 643
    .local v4, "width":I
    move v10, v4

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v5, v10

    .line 644
    .local v5, "halfWidth":I
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    move v12, v4

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move v6, v10

    .line 645
    .local v6, "distanceRatio":F
    move v10, v5

    int-to-float v10, v10

    move v11, v5

    int-to-float v11, v11

    move-object v12, v0

    move v13, v6

    .line 646
    invoke-direct {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v7, v10

    .line 649
    .local v7, "distance":F
    move v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v2, v10

    .line 650
    move v10, v2

    if-lez v10, :cond_1

    .line 651
    const/4 v10, 0x4

    const/high16 v11, 0x447a0000    # 1000.0f

    move v12, v7

    move v13, v2

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/2addr v10, v11

    move v8, v10

    .line 656
    .local v8, "duration":I
    :goto_1
    move v10, v8

    const/16 v11, 0x258

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v0, v10

    goto :goto_0

    .line 653
    .end local v8    # "duration":I
    :cond_1
    move v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v9, v10

    .line 654
    .local v9, "range":F
    move v10, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .restart local v8    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 22

    .prologue
    .line 617
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object/from16 v2, p1

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "dx":I
    move/from16 v4, p3

    .local v4, "dy":I
    move/from16 v5, p4

    .local v5, "xvel":I
    move/from16 v6, p5

    .local v6, "yvel":I
    move-object/from16 v17, v1

    move/from16 v18, v5

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v17

    move/from16 v5, v17

    .line 618
    move-object/from16 v17, v1

    move/from16 v18, v6

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v17

    move/from16 v6, v17

    .line 619
    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v7, v17

    .line 620
    .local v7, "absDx":I
    move/from16 v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v8, v17

    .line 621
    .local v8, "absDy":I
    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v9, v17

    .line 622
    .local v9, "absXVel":I
    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v10, v17

    .line 623
    .local v10, "absYVel":I
    move/from16 v17, v9

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v11, v17

    .line 624
    .local v11, "addedVel":I
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v12, v17

    .line 626
    .local v12, "addedDistance":I
    move/from16 v17, v5

    if-eqz v17, :cond_0

    move/from16 v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    :goto_0
    move/from16 v13, v17

    .line 628
    .local v13, "xweight":F
    move/from16 v17, v6

    if-eqz v17, :cond_1

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    :goto_1
    move/from16 v14, v17

    .line 631
    .local v14, "yweight":F
    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v20

    invoke-direct/range {v17 .. v20}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v17

    move/from16 v15, v17

    .line 632
    .local v15, "xduration":I
    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v20

    invoke-direct/range {v17 .. v20}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v17

    move/from16 v16, v17

    .line 634
    .local v16, "yduration":I
    move/from16 v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v13

    mul-float v17, v17, v18

    move/from16 v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v14

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v1, v17

    .end local v1    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v1

    .line 626
    .end local v13    # "xweight":F
    .end local v14    # "yweight":F
    .end local v15    # "xduration":I
    .end local v16    # "yduration":I
    .restart local v1    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    goto :goto_0

    .line 628
    .restart local v13    # "xweight":F
    :cond_1
    move/from16 v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 8
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "forParent":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "sensitivity":F
    move-object v2, p2

    .local v2, "cb":Landroidx/customview/widget/ViewDragHelper$Callback;
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v4

    move-object v3, v4

    .line 370
    .local v3, "helper":Landroidx/customview/widget/ViewDragHelper;
    move-object v4, v3

    move-object v5, v3

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 371
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "forParent":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 8
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "forParent":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "cb":Landroidx/customview/widget/ViewDragHelper$Callback;
    new-instance v2, Landroidx/customview/widget/ViewDragHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    move-object v0, v2

    .end local v0    # "forParent":Landroid/view/ViewGroup;
    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 7

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "xvel":F
    move v2, p2

    .local v2, "yvel":F
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 780
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 781
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 783
    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 785
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 787
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "f":F
    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move v1, v2

    .line 695
    move v2, v1

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    move v1, v2

    .line 696
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method private dragTo(IIII)V
    .locals 17

    .prologue
    .line 1424
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move/from16 v1, p1

    .local v1, "left":I
    move/from16 v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "dx":I
    move/from16 v4, p4

    .local v4, "dy":I
    move v11, v1

    move v5, v11

    .line 1425
    .local v5, "clampedX":I
    move v11, v2

    move v6, v11

    .line 1426
    .local v6, "clampedY":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    move v7, v11

    .line 1427
    .local v7, "oldLeft":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    move v8, v11

    .line 1428
    .local v8, "oldTop":I
    move v11, v3

    if-eqz v11, :cond_0

    .line 1429
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v13, v1

    move v14, v3

    invoke-virtual {v11, v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    move v5, v11

    .line 1430
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v5

    move v13, v7

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1432
    :cond_0
    move v11, v4

    if-eqz v11, :cond_1

    .line 1433
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v13, v2

    move v14, v4

    invoke-virtual {v11, v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v11

    move v6, v11

    .line 1434
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v6

    move v13, v8

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1437
    :cond_1
    move v11, v3

    if-nez v11, :cond_2

    move v11, v4

    if-eqz v11, :cond_3

    .line 1438
    :cond_2
    move v11, v5

    move v12, v7

    sub-int/2addr v11, v12

    move v9, v11

    .line 1439
    .local v9, "clampedDx":I
    move v11, v6

    move v12, v8

    sub-int/2addr v11, v12

    move v10, v11

    .line 1440
    .local v10, "clampedDy":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v13, v5

    move v14, v6

    move v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1443
    .end local v9    # "clampedDx":I
    .end local v10    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 14

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "pointerId":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v9, v9

    move v10, v1

    if-gt v9, v10, :cond_2

    .line 819
    :cond_0
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v2, v9

    .line 820
    .local v2, "imx":[F
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v3, v9

    .line 821
    .local v3, "imy":[F
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v4, v9

    .line 822
    .local v4, "lmx":[F
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v5, v9

    .line 823
    .local v5, "lmy":[F
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v6, v9

    .line 824
    .local v6, "iit":[I
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v7, v9

    .line 825
    .local v7, "edip":[I
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v8, v9

    .line 827
    .local v8, "edl":[I
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v9, :cond_1

    .line 828
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    const/4 v10, 0x0

    move-object v11, v3

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    const/4 v10, 0x0

    move-object v11, v4

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    const/4 v10, 0x0

    move-object v11, v5

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v10, 0x0

    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    const/4 v10, 0x0

    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    const/4 v10, 0x0

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    :cond_1
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 838
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 839
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 840
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 841
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 842
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 843
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 845
    .end local v2    # "imx":[F
    .end local v3    # "imy":[F
    .end local v4    # "lmx":[F
    .end local v5    # "lmy":[F
    .end local v6    # "iit":[I
    .end local v7    # "edip":[I
    .end local v8    # "edl":[I
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 16

    .prologue
    .line 597
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move/from16 v1, p1

    .local v1, "finalLeft":I
    move/from16 v2, p2

    .local v2, "finalTop":I
    move/from16 v3, p3

    .local v3, "xvel":I
    move/from16 v4, p4

    .local v4, "yvel":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v5, v10

    .line 598
    .local v5, "startLeft":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v6, v10

    .line 599
    .local v6, "startTop":I
    move v10, v1

    move v11, v5

    sub-int/2addr v10, v11

    move v7, v10

    .line 600
    .local v7, "dx":I
    move v10, v2

    move v11, v6

    sub-int/2addr v10, v11

    move v8, v10

    .line 602
    .local v8, "dy":I
    move v10, v7

    if-nez v10, :cond_0

    move v10, v8

    if-nez v10, :cond_0

    .line 604
    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v10}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 605
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 606
    const/4 v10, 0x0

    move v0, v10

    .line 613
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 609
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v7

    move v13, v8

    move v14, v3

    move v15, v4

    invoke-direct/range {v10 .. v15}, Landroidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v10

    move v9, v10

    .line 610
    .local v9, "duration":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 612
    move-object v10, v0

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 613
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 7

    .prologue
    .line 1499
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    const/4 v4, 0x0

    move v3, v4

    .line 1501
    .local v3, "result":I
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 1502
    :cond_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    move v4, v3

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    move v3, v4

    .line 1503
    :cond_1
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v3

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 1504
    :cond_2
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    move v3, v4

    .line 1506
    :cond_3
    move v4, v3

    move v0, v4

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 6

    .prologue
    .line 1510
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "pointerId":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1511
    const-string/jumbo v2, "ViewDragHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " because ACTION_DOWN was not received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1514
    const/4 v2, 0x0

    move v0, v2

    .line 1516
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private releaseViewForPointerUp()V
    .locals 7

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1414
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1415
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    move-object v6, v0

    iget v6, v6, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1414
    invoke-direct {v3, v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v3

    move v1, v3

    .line 1417
    .local v1, "xvel":F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1418
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    move-object v6, v0

    iget v6, v6, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1417
    invoke-direct {v3, v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v3

    move v2, v3

    .line 1420
    .local v2, "yvel":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1421
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 12

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "dx":F
    move v2, p2

    .local v2, "dy":F
    move v3, p3

    .local v3, "pointerId":I
    const/4 v5, 0x0

    move v4, v5

    .line 1256
    .local v4, "dragsStarted":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1257
    move v5, v4

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 1259
    :cond_0
    move-object v5, v0

    move v6, v2

    move v7, v1

    move v8, v3

    const/4 v9, 0x4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1260
    move v5, v4

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    move v4, v5

    .line 1262
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    const/4 v9, 0x2

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1263
    move v5, v4

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    move v4, v5

    .line 1265
    :cond_2
    move-object v5, v0

    move v6, v2

    move v7, v1

    move v8, v3

    const/16 v9, 0x8

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1266
    move v5, v4

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    move v4, v5

    .line 1269
    :cond_3
    move v5, v4

    if-eqz v5, :cond_4

    .line 1270
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v6, v3

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    move v8, v4

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 1271
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1273
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 13

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "pointerId":I
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 849
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    move v7, v3

    move v8, v1

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    aput v6, v4, v5

    .line 850
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    move v7, v3

    move v8, v2

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    aput v6, v4, v5

    .line 851
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v5, v3

    move-object v6, v0

    move v7, v1

    float-to-int v7, v7

    move v8, v2

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v6

    aput v6, v4, v5

    .line 852
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v6, 0x1

    move v7, v3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, v4, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 853
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move v2, v7

    .line 857
    .local v2, "pointerCount":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 858
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    move v4, v7

    .line 860
    .local v4, "pointerId":I
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 861
    .line 857
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    :cond_0
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move v5, v7

    .line 864
    .local v5, "x":F
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move v6, v7

    .line 865
    .local v6, "y":F
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    move v8, v4

    move v9, v5

    aput v9, v7, v8

    .line 866
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    move v8, v4

    move v9, v6

    aput v9, v7, v8

    goto :goto_1

    .line 868
    .end local v4    # "pointerId":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 12

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 526
    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 527
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    move v1, v5

    .line 528
    .local v1, "oldX":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    move v2, v5

    .line 529
    .local v2, "oldY":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 530
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    move v3, v5

    .line 531
    .local v3, "newX":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    move v4, v5

    .line 532
    .local v4, "newY":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v1

    sub-int/2addr v9, v10

    move v10, v4

    move v11, v2

    sub-int/2addr v10, v11

    invoke-virtual/range {v5 .. v10}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 534
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "newX":I
    .end local v4    # "newY":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 535
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 21
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 933
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object/from16 v1, p1

    .local v1, "v":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "checkV":Z
    move/from16 v3, p3

    .local v3, "dx":I
    move/from16 v4, p4

    .local v4, "dy":I
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move-object v13, v1

    instance-of v13, v13, Landroid/view/ViewGroup;

    if-eqz v13, :cond_1

    .line 934
    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    move-object v7, v13

    .line 935
    .local v7, "group":Landroid/view/ViewGroup;
    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v13

    move v8, v13

    .line 936
    .local v8, "scrollX":I
    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    move v9, v13

    .line 937
    .local v9, "scrollY":I
    move-object v13, v7

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    move v10, v13

    .line 939
    .local v10, "count":I
    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    .local v11, "i":I
    :goto_0
    move v13, v11

    if-ltz v13, :cond_1

    .line 942
    move-object v13, v7

    move v14, v11

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object v12, v13

    .line 943
    .local v12, "child":Landroid/view/View;
    move v13, v5

    move v14, v8

    add-int/2addr v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    if-lt v13, v14, :cond_0

    move v13, v5

    move v14, v8

    add-int/2addr v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v13, v14, :cond_0

    move v13, v6

    move v14, v9

    add-int/2addr v13, v14

    move-object v14, v12

    .line 944
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v13, v14, :cond_0

    move v13, v6

    move v14, v9

    add-int/2addr v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v13, v14, :cond_0

    move-object v13, v0

    move-object v14, v12

    const/4 v15, 0x1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    add-int v18, v18, v19

    move-object/from16 v19, v12

    .line 945
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v19, v6

    move/from16 v20, v9

    add-int v19, v19, v20

    move-object/from16 v20, v12

    .line 946
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v19, v19, v20

    .line 945
    invoke-virtual/range {v13 .. v19}, Landroidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 947
    const/4 v13, 0x1

    move v0, v13

    .line 952
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "scrollX":I
    .end local v9    # "scrollY":I
    .end local v10    # "count":I
    .end local v11    # "i":I
    .end local v12    # "child":Landroid/view/View;
    :goto_1
    return v0

    .line 939
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "scrollX":I
    .restart local v9    # "scrollY":I
    .restart local v10    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 952
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "scrollX":I
    .end local v9    # "scrollY":I
    .end local v10    # "count":I
    .end local v11    # "i":I
    .end local v12    # "child":Landroid/view/View;
    :cond_1
    move v13, v2

    if-eqz v13, :cond_3

    move-object v13, v1

    move v14, v3

    neg-int v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v13

    if-nez v13, :cond_2

    move-object v13, v1

    move v14, v4

    neg-int v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const/4 v13, 0x1

    :goto_2
    move v0, v13

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 512
    move-object v1, v0

    invoke-direct {v1}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    .line 514
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 515
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 516
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 518
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "childView":Landroid/view/View;
    move v2, p2

    .local v2, "activePointerId":I
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_0

    .line 472
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 477
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 478
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 479
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 480
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 7

    .prologue
    .line 1334
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "directions":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v4, v4

    move v2, v4

    .line 1335
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1336
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1337
    const/4 v4, 0x1

    move v0, v4

    .line 1340
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_1
    return v0

    .line 1335
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1340
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 10

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "directions":I
    move v2, p2

    .local v2, "pointerId":I
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1360
    const/4 v7, 0x0

    move v0, v7

    .line 1376
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 1363
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move v7, v1

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v3, v7

    .line 1364
    .local v3, "checkHorizontal":Z
    move v7, v1

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    move v4, v7

    .line 1366
    .local v4, "checkVertical":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    move v8, v2

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    move v9, v2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move v5, v7

    .line 1367
    .local v5, "dx":F
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    move v8, v2

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    move v9, v2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move v6, v7

    .line 1369
    .local v6, "dy":F
    move v7, v3

    if-eqz v7, :cond_4

    move v7, v4

    if-eqz v7, :cond_4

    .line 1370
    move v7, v5

    move v8, v5

    mul-float/2addr v7, v8

    move v8, v6

    move v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    move-object v9, v0

    iget v9, v9, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    move v0, v7

    goto :goto_0

    .line 1363
    .end local v3    # "checkHorizontal":Z
    .end local v4    # "checkVertical":Z
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1364
    .restart local v3    # "checkHorizontal":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1370
    .restart local v4    # "checkVertical":Z
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 1371
    :cond_4
    move v7, v3

    if-eqz v7, :cond_6

    .line 1372
    move v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    const/4 v7, 0x1

    :goto_4
    move v0, v7

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 1373
    :cond_6
    move v7, v4

    if-eqz v7, :cond_8

    .line 1374
    move v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    const/4 v7, 0x1

    :goto_5
    move v0, v7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 1376
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 13

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "deferCallbacks":Z
    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 736
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v7

    move v2, v7

    .line 737
    .local v2, "keepGoing":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    move v3, v7

    .line 738
    .local v3, "x":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    move v4, v7

    .line 739
    .local v4, "y":I
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 740
    .local v5, "dx":I
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 742
    .local v6, "dy":I
    move v7, v5

    if-eqz v7, :cond_0

    .line 743
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v8, v5

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 745
    :cond_0
    move v7, v6

    if-eqz v7, :cond_1

    .line 746
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v8, v6

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 749
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    move v7, v6

    if-eqz v7, :cond_3

    .line 750
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 753
    :cond_3
    move v7, v2

    if-eqz v7, :cond_4

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v8

    if-ne v7, v8, :cond_4

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 756
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 757
    const/4 v7, 0x0

    move v2, v7

    .line 760
    :cond_4
    move v7, v2

    if-nez v7, :cond_5

    .line 761
    move v7, v1

    if-eqz v7, :cond_6

    .line 762
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v7

    .line 769
    .end local v2    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_5
    :goto_0
    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0

    .line 764
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    .restart local v2    # "keepGoing":Z
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v5    # "dx":I
    .restart local v6    # "dy":I
    :cond_6
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .line 769
    .end local v2    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1487
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 1488
    .local v3, "childCount":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 1489
    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1490
    .local v5, "child":Landroid/view/View;
    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    .line 1491
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1492
    move-object v6, v5

    move-object v0, v6

    .line 1495
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    .end local v5    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1488
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    .restart local v5    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1495
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 15

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move/from16 v1, p1

    .local v1, "minLeft":I
    move/from16 v2, p2

    .local v2, "minTop":I
    move/from16 v3, p3

    .local v3, "maxLeft":I
    move/from16 v4, p4

    .local v4, "maxTop":I
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v5, :cond_0

    .line 711
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const-string/jumbo v7, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 715
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 716
    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    float-to-int v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v10, v0

    iget v10, v10, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 717
    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    move v10, v1

    move v11, v3

    move v12, v2

    move v13, v4

    .line 715
    invoke-virtual/range {v5 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 720
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 721
    return-void
.end method

.method public getActivePointerId()I
    .locals 2

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return-object v0
.end method

.method public getEdgeSize()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public getMinVelocity()F
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public getTouchSlop()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public getViewDragState()I
    .locals 2

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 7

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 7

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "edges":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v4, v4

    move v2, v4

    .line 1390
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1391
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1392
    const/4 v4, 0x1

    move v0, v4

    .line 1395
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_1
    return v0

    .line 1390
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1395
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 5

    .prologue
    .line 1409
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "edges":I
    move v2, p2

    .local v2, "pointerId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v4, v2

    aget v3, v3, v4

    move v4, v1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0

    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 5

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "pointerId":I
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0

    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1469
    const/4 v4, 0x0

    move v0, v4

    .line 1474
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 1471
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v4, v2

    move-object v5, v1

    .line 1472
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v4, v3

    move-object v5, v1

    .line 1473
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v4, v3

    move-object v5, v1

    .line 1474
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1097
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object/from16 v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    move v2, v12

    .line 1098
    .local v2, "action":I
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move v3, v12

    .line 1100
    .local v3, "actionIndex":I
    move v12, v2

    if-nez v12, :cond_0

    .line 1103
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1106
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_1

    .line 1107
    move-object v12, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    iput-object v13, v12, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1109
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1111
    move v12, v2

    packed-switch v12, :pswitch_data_0

    .line 1252
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1113
    :pswitch_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1114
    .local v4, "x":F
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1115
    .local v5, "y":F
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v6, v12

    .line 1116
    .local v6, "pointerId":I
    move-object v12, v0

    move v13, v4

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1118
    .local v7, "toCapture":Landroid/view/View;
    move-object v12, v0

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-direct {v12, v13, v14, v15}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1123
    move-object v12, v0

    move-object v13, v7

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    .line 1125
    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v13, v6

    aget v12, v12, v13

    move v8, v12

    .line 1126
    .local v8, "edgesTouched":I
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_2

    .line 1127
    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v13, v14

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1133
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "edgesTouched":I
    :pswitch_2
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v4, v12

    .line 1134
    .local v4, "pointerId":I
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v5, v12

    .line 1135
    .local v5, "x":F
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v6, v12

    .line 1137
    .local v6, "y":F
    move-object v12, v0

    move v13, v5

    move v14, v6

    move v15, v4

    invoke-direct {v12, v13, v14, v15}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1140
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v12, :cond_4

    .line 1143
    move-object v12, v0

    move v13, v5

    float-to-int v13, v13

    move v14, v6

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1144
    .restart local v7    # "toCapture":Landroid/view/View;
    move-object v12, v0

    move-object v13, v7

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    .line 1146
    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v13, v4

    aget v12, v12, v13

    move v8, v12

    .line 1147
    .restart local v8    # "edgesTouched":I
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 1148
    move-object v12, v0

    iget-object v12, v12, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v13, v14

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1150
    :cond_3
    goto/16 :goto_0

    .end local v7    # "toCapture":Landroid/view/View;
    .end local v8    # "edgesTouched":I
    :cond_4
    move-object v12, v0

    move v13, v5

    float-to-int v13, v13

    move v14, v6

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1155
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    goto/16 :goto_0

    .line 1161
    .end local v4    # "pointerId":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_3
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 1163
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_0

    .line 1165
    :cond_5
    move-object v12, v1

    move-object v13, v0

    iget v13, v13, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    move v4, v12

    .line 1166
    .local v4, "index":I
    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v5, v12

    .line 1167
    .restart local v5    # "x":F
    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v6, v12

    .line 1168
    .restart local v6    # "y":F
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    move-object v14, v0

    iget v14, v14, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    aget v13, v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v7, v12

    .line 1169
    .local v7, "idx":I
    move v12, v6

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    move-object v14, v0

    iget v14, v14, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    aget v13, v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v8, v12

    .line 1171
    .local v8, "idy":I
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move v14, v7

    add-int/2addr v13, v14

    move-object v14, v0

    iget-object v14, v14, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move v15, v8

    add-int/2addr v14, v15

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Landroidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1173
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1174
    goto/16 :goto_0

    .line 1176
    .end local v4    # "index":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "idx":I
    .end local v8    # "idy":I
    :cond_6
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    move v4, v12

    .line 1177
    .local v4, "pointerCount":I
    const/4 v12, 0x0

    move v5, v12

    .local v5, "i":I
    :goto_1
    move v12, v5

    move v13, v4

    if-ge v12, v13, :cond_9

    .line 1178
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v6, v12

    .line 1181
    .local v6, "pointerId":I
    move-object v12, v0

    move v13, v6

    invoke-direct {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1177
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1183
    :cond_8
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v7, v12

    .line 1184
    .local v7, "x":F
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v8, v12

    .line 1185
    .local v8, "y":F
    move v12, v7

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    move v14, v6

    aget v13, v13, v14

    sub-float/2addr v12, v13

    move v9, v12

    .line 1186
    .local v9, "dx":F
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    move v14, v6

    aget v13, v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1188
    .local v10, "dy":F
    move-object v12, v0

    move v13, v9

    move v14, v10

    move v15, v6

    invoke-direct {v12, v13, v14, v15}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1189
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 1191
    .line 1200
    .end local v6    # "pointerId":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    :cond_9
    :goto_2
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1202
    goto/16 :goto_0

    .line 1194
    .restart local v6    # "pointerId":I
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    .restart local v9    # "dx":F
    .restart local v10    # "dy":F
    :cond_a
    move-object v12, v0

    move v13, v7

    float-to-int v13, v13

    move v14, v8

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1195
    .local v11, "toCapture":Landroid/view/View;
    move-object v12, v0

    move-object v13, v11

    move v14, v9

    move v15, v10

    invoke-direct {v12, v13, v14, v15}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v0

    move-object v13, v11

    move v14, v6

    .line 1196
    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1197
    goto :goto_2

    .line 1206
    .end local v4    # "pointerCount":I
    .end local v5    # "i":I
    .end local v6    # "pointerId":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    .end local v11    # "toCapture":Landroid/view/View;
    :pswitch_4
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v4, v12

    .line 1207
    .local v4, "pointerId":I
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    move v12, v4

    move-object v13, v0

    iget v13, v13, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v12, v13, :cond_e

    .line 1209
    const/4 v12, -0x1

    move v5, v12

    .line 1210
    .local v5, "newActivePointer":I
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    move v6, v12

    .line 1211
    .local v6, "pointerCount":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    :goto_3
    move v12, v7

    move v13, v6

    if-ge v12, v13, :cond_d

    .line 1212
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v8, v12

    .line 1213
    .local v8, "id":I
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v12, v13, :cond_c

    .line 1215
    .line 1211
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1218
    :cond_c
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v9, v12

    .line 1219
    .local v9, "x":F
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v10, v12

    .line 1220
    .local v10, "y":F
    move-object v12, v0

    move v13, v9

    float-to-int v13, v13

    move v14, v10

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v12, v13, :cond_b

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v14, v8

    .line 1221
    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1222
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    move v5, v12

    .line 1227
    .end local v8    # "id":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_d
    move v12, v5

    const/4 v13, -0x1

    if-ne v12, v13, :cond_e

    .line 1229
    move-object v12, v0

    invoke-direct {v12}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1232
    .end local v5    # "newActivePointer":I
    .end local v6    # "pointerCount":I
    .end local v7    # "i":I
    :cond_e
    move-object v12, v0

    move v13, v4

    invoke-direct {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1233
    goto/16 :goto_0

    .line 1237
    .end local v4    # "pointerId":I
    :pswitch_5
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 1238
    move-object v12, v0

    invoke-direct {v12}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1240
    :cond_f
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1241
    goto/16 :goto_0

    .line 1245
    :pswitch_6
    move-object v12, v0

    iget v12, v12, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1246
    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1248
    :cond_10
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 4

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 889
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 890
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 891
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 892
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v2, :cond_0

    .line 893
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 896
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 4

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "edgeFlags":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    .line 448
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "minVel":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 412
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 10

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move v1, p1

    .local v1, "finalLeft":I
    move v2, p2

    .local v2, "finalTop":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v3, :cond_0

    .line 578
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 582
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 583
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    float-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v0

    iget v8, v8, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 584
    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v7, v7

    .line 582
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 963
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object/from16 v3, p1

    .local v3, "ev":Landroid/view/MotionEvent;
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v23

    move/from16 v4, v23

    .line 964
    .local v4, "action":I
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    move/from16 v5, v23

    .line 966
    .local v5, "actionIndex":I
    move/from16 v23, v4

    if-nez v23, :cond_0

    .line 969
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 972
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 973
    move-object/from16 v23, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 977
    move/from16 v23, v4

    packed-switch v23, :pswitch_data_0

    .line 1087
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 v23, 0x1

    :goto_1
    move/from16 v2, v23

    .end local v2    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v2

    .line 979
    .restart local v2    # "this":Landroidx/customview/widget/ViewDragHelper;
    :pswitch_1
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v6, v23

    .line 980
    .local v6, "x":F
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v7, v23

    .line 981
    .local v7, "y":F
    move-object/from16 v23, v3

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v8, v23

    .line 982
    .local v8, "pointerId":I
    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-direct/range {v23 .. v26}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 984
    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v7

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v23

    move-object/from16 v9, v23

    .line 987
    .local v9, "toCapture":Landroid/view/View;
    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 988
    move-object/from16 v23, v2

    move-object/from16 v24, v9

    move/from16 v25, v8

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v23

    .line 991
    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v23, v0

    move/from16 v24, v8

    aget v23, v23, v24

    move/from16 v10, v23

    .line 992
    .local v10, "edgesTouched":I
    move/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 993
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move/from16 v24, v10

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v24, v24, v25

    move/from16 v25, v8

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 999
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "pointerId":I
    .end local v9    # "toCapture":Landroid/view/View;
    .end local v10    # "edgesTouched":I
    :pswitch_2
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v6, v23

    .line 1000
    .local v6, "pointerId":I
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v7, v23

    .line 1001
    .local v7, "x":F
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v8, v23

    .line 1003
    .local v8, "y":F
    move-object/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v6

    invoke-direct/range {v23 .. v26}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1006
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 1007
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v23, v0

    move/from16 v24, v6

    aget v23, v23, v24

    move/from16 v9, v23

    .line 1008
    .local v9, "edgesTouched":I
    move/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_4

    .line 1009
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move/from16 v24, v9

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v24, v24, v25

    move/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1011
    :cond_4
    goto/16 :goto_0

    .end local v9    # "edgesTouched":I
    :cond_5
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1013
    move-object/from16 v23, v2

    move/from16 v24, v7

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v23

    move-object/from16 v9, v23

    .line 1014
    .local v9, "toCapture":Landroid/view/View;
    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1015
    move-object/from16 v23, v2

    move-object/from16 v24, v9

    move/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v23

    .line 1017
    :cond_6
    goto/16 :goto_0

    .line 1022
    .end local v6    # "pointerId":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "toCapture":Landroid/view/View;
    :pswitch_3
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    goto/16 :goto_0

    .line 1025
    :cond_7
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    move/from16 v6, v23

    .line 1026
    .local v6, "pointerCount":I
    const/16 v23, 0x0

    move/from16 v7, v23

    .local v7, "i":I
    :goto_2
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 1027
    move-object/from16 v23, v3

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v8, v23

    .line 1030
    .local v8, "pointerId":I
    move-object/from16 v23, v2

    move/from16 v24, v8

    invoke-direct/range {v23 .. v24}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v23

    if-nez v23, :cond_9

    .line 1026
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1032
    :cond_9
    move-object/from16 v23, v3

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v9, v23

    .line 1033
    .local v9, "x":F
    move-object/from16 v23, v3

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v10, v23

    .line 1034
    .local v10, "y":F
    move/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    move/from16 v25, v8

    aget v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v11, v23

    .line 1035
    .local v11, "dx":F
    move/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    move/from16 v25, v8

    aget v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v12, v23

    .line 1037
    .local v12, "dy":F
    move-object/from16 v23, v2

    move/from16 v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v10

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v23

    move-object/from16 v13, v23

    .line 1038
    .local v13, "toCapture":Landroid/view/View;
    move-object/from16 v23, v13

    if-eqz v23, :cond_c

    move-object/from16 v23, v2

    move-object/from16 v24, v13

    move/from16 v25, v11

    move/from16 v26, v12

    invoke-direct/range {v23 .. v26}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_3
    move/from16 v14, v23

    .line 1039
    .local v14, "pastSlop":Z
    move/from16 v23, v14

    if-eqz v23, :cond_d

    .line 1045
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v15, v23

    .line 1046
    .local v15, "oldLeft":I
    move/from16 v23, v15

    move/from16 v24, v11

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v16, v23

    .line 1047
    .local v16, "targetLeft":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v23

    move/from16 v17, v23

    .line 1049
    .local v17, "newLeft":I
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v18, v23

    .line 1050
    .local v18, "oldTop":I
    move/from16 v23, v18

    move/from16 v24, v12

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v19, v23

    .line 1051
    .local v19, "targetTop":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    move/from16 v25, v19

    move/from16 v26, v12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v23

    move/from16 v20, v23

    .line 1053
    .local v20, "newTop":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v23

    move/from16 v21, v23

    .line 1054
    .local v21, "hDragRange":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v23

    move/from16 v22, v23

    .line 1055
    .local v22, "vDragRange":I
    move/from16 v23, v21

    if-eqz v23, :cond_a

    move/from16 v23, v21

    if-lez v23, :cond_d

    move/from16 v23, v17

    move/from16 v24, v15

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    :cond_a
    move/from16 v23, v22

    if-eqz v23, :cond_b

    move/from16 v23, v22

    if-lez v23, :cond_d

    move/from16 v23, v20

    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1057
    .line 1070
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v14    # "pastSlop":Z
    .end local v15    # "oldLeft":I
    .end local v16    # "targetLeft":I
    .end local v17    # "newLeft":I
    .end local v18    # "oldTop":I
    .end local v19    # "targetTop":I
    .end local v20    # "newTop":I
    .end local v21    # "hDragRange":I
    .end local v22    # "vDragRange":I
    :cond_b
    :goto_4
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v24}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1071
    goto/16 :goto_0

    .line 1038
    .restart local v8    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    .restart local v11    # "dx":F
    .restart local v12    # "dy":F
    .restart local v13    # "toCapture":Landroid/view/View;
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1060
    .restart local v14    # "pastSlop":Z
    :cond_d
    move-object/from16 v23, v2

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v8

    invoke-direct/range {v23 .. v26}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1061
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1063
    goto :goto_4

    .line 1066
    :cond_e
    move/from16 v23, v14

    if-eqz v23, :cond_8

    move-object/from16 v23, v2

    move-object/from16 v24, v13

    move/from16 v25, v8

    invoke-virtual/range {v23 .. v25}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1067
    goto :goto_4

    .line 1075
    .end local v6    # "pointerCount":I
    .end local v7    # "i":I
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v14    # "pastSlop":Z
    :pswitch_4
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v6, v23

    .line 1076
    .local v6, "pointerId":I
    move-object/from16 v23, v2

    move/from16 v24, v6

    invoke-direct/range {v23 .. v24}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1077
    goto/16 :goto_0

    .line 1082
    .end local v6    # "pointerId":I
    :pswitch_5
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1087
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "finalLeft":I
    move v3, p3

    .local v3, "finalTop":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 553
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 555
    move-object v5, v0

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v5

    move v4, v5

    .line 556
    .local v4, "continueSliding":Z
    move v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 559
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 562
    :cond_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper;
    move-object v1, p1

    .local v1, "toCapture":Landroid/view/View;
    move v2, p2

    .local v2, "pointerId":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 910
    const/4 v3, 0x1

    move v0, v3

    .line 917
    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :goto_0
    return v0

    .line 912
    .restart local v0    # "this":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 914
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 915
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 917
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
