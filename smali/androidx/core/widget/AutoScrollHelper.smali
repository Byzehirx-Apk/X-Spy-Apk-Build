.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$ClampedScroller;,
        Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object v5, v0

    new-instance v6, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 141
    move-object v5, v0

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 150
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 153
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 162
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 165
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_3

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 168
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_4

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 211
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v2, v5

    .line 214
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const v5, 0x44c4e000    # 1575.0f

    move-object v6, v2

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 215
    .local v3, "maxVelocity":I
    const v5, 0x439d8000    # 315.0f

    move-object v6, v2

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 216
    .local v4, "minVelocity":I
    move-object v5, v0

    move v6, v3

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 217
    move-object v5, v0

    move v6, v4

    int-to-float v6, v6

    move v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 219
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/widget/AutoScrollHelper;->setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 220
    move-object v5, v0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 221
    move-object v5, v0

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 222
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 223
    move-object v5, v0

    sget v6, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {v5, v6}, Landroidx/core/widget/AutoScrollHelper;->setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 224
    move-object v5, v0

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Landroidx/core/widget/AutoScrollHelper;->setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 225
    move-object v5, v0

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Landroidx/core/widget/AutoScrollHelper;->setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;

    move-result-object v5

    .line 226
    return-void

    .line 150
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 162
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 165
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 168
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 17

    .prologue
    .line 549
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move/from16 v1, p1

    .local v1, "direction":I
    move/from16 v2, p2

    .local v2, "coordinate":F
    move/from16 v3, p3

    .local v3, "srcSize":F
    move/from16 v4, p4

    .local v4, "dstSize":F
    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    move v13, v1

    aget v12, v12, v13

    move v5, v12

    .line 550
    .local v5, "relativeEdge":F
    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    move v13, v1

    aget v12, v12, v13

    move v6, v12

    .line 551
    .local v6, "maximumEdge":F
    move-object v12, v0

    move v13, v5

    move v14, v3

    move v15, v6

    move/from16 v16, v2

    invoke-direct/range {v12 .. v16}, Landroidx/core/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v12

    move v7, v12

    .line 552
    .local v7, "value":F
    move v12, v7

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    .line 554
    const/4 v12, 0x0

    move v0, v12

    .line 568
    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :goto_0
    return v0

    .line 557
    .restart local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    move v13, v1

    aget v12, v12, v13

    move v8, v12

    .line 558
    .local v8, "relativeVelocity":F
    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    move v13, v1

    aget v12, v12, v13

    move v9, v12

    .line 559
    .local v9, "minimumVelocity":F
    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    move v13, v1

    aget v12, v12, v13

    move v10, v12

    .line 560
    .local v10, "maximumVelocity":F
    move v12, v8

    move v13, v4

    mul-float/2addr v12, v13

    move v11, v12

    .line 565
    .local v11, "targetVelocity":F
    move v12, v7

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 566
    move v12, v7

    move v13, v11

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v10

    invoke-static {v12, v13, v14}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v12

    move v0, v12

    goto :goto_0

    .line 568
    :cond_1
    move v12, v7

    neg-float v12, v12

    move v13, v11

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v10

    invoke-static {v12, v13, v14}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v12

    neg-float v12, v12

    move v0, v12

    goto :goto_0
.end method

.method static constrain(FFF)F
    .locals 5

    .prologue
    .line 673
    move v0, p0

    .local v0, "value":F
    move v1, p1

    .local v1, "min":F
    move v2, p2

    .local v2, "max":F
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 674
    move v3, v2

    move v0, v3

    .line 678
    .end local v0    # "value":F
    :goto_0
    return v0

    .line 675
    .restart local v0    # "value":F
    :cond_0
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 676
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 678
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method static constrain(III)I
    .locals 5

    .prologue
    .line 663
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_0

    .line 664
    move v3, v2

    move v0, v3

    .line 668
    .end local v0    # "value":I
    :goto_0
    return v0

    .line 665
    .restart local v0    # "value":I
    :cond_0
    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 666
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 668
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method private constrainEdgeValue(FF)F
    .locals 6

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "current":F
    move v2, p2

    .local v2, "leading":F
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 635
    const/4 v3, 0x0

    move v0, v3

    .line 659
    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :goto_0
    return v0

    .line 638
    .restart local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v3, :pswitch_data_0

    .line 659
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 641
    :pswitch_0
    move v3, v1

    move v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 642
    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 644
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v2

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 645
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 647
    const/high16 v3, 0x3f800000    # 1.0f

    move v0, v3

    goto :goto_0

    .line 652
    :pswitch_1
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 654
    move v3, v1

    move v4, v2

    neg-float v4, v4

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 13

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "relativeValue":F
    move v2, p2

    .local v2, "size":F
    move/from16 v3, p3

    .local v3, "maxValue":F
    move/from16 v4, p4

    .local v4, "current":F
    move v10, v1

    move v11, v2

    mul-float/2addr v10, v11

    const/4 v11, 0x0

    move v12, v3

    invoke-static {v10, v11, v12}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v10

    move v5, v10

    .line 618
    .local v5, "edgeSize":F
    move-object v10, v0

    move v11, v4

    move v12, v5

    invoke-direct {v10, v11, v12}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v10

    move v6, v10

    .line 619
    .local v6, "valueLeading":F
    move-object v10, v0

    move v11, v2

    move v12, v4

    sub-float/2addr v11, v12

    move v12, v5

    invoke-direct {v10, v11, v12}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v10

    move v7, v10

    .line 620
    .local v7, "valueTrailing":F
    move v10, v7

    move v11, v6

    sub-float/2addr v10, v11

    move v8, v10

    .line 622
    .local v8, "value":F
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 623
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    move v11, v8

    neg-float v11, v11

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    neg-float v10, v10

    move v9, v10

    .line 630
    .local v9, "interpolated":F
    :goto_0
    move v10, v9

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, v12}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v10

    move v0, v10

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    .end local v9    # "interpolated":F
    :goto_1
    return v0

    .line 624
    .restart local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :cond_0
    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 625
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    move v11, v8

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    move v9, v10

    .restart local v9    # "interpolated":F
    goto :goto_0

    .line 627
    .end local v9    # "interpolated":F
    :cond_1
    const/4 v10, 0x0

    move v0, v10

    goto :goto_1
.end method

.method private requestStop()V
    .locals 3

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v1, :cond_0

    .line 541
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 7

    .prologue
    .line 514
    move-object v1, p0

    .local v1, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v2, v1

    iget-object v2, v2, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 515
    move-object v2, v1

    new-instance v3, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    iput-object v3, v2, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 518
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    .line 519
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 521
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v2, :cond_1

    move-object v2, v1

    iget v2, v2, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v2, :cond_1

    .line 522
    move-object v2, v1

    iget-object v2, v2, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    move-object v4, v1

    iget v4, v4, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 529
    :goto_0
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 530
    return-void

    .line 524
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .locals 12

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v1, v4

    .line 688
    .local v1, "eventTime":J
    move-wide v4, v1

    move-wide v6, v1

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v3, v4

    .line 690
    .local v3, "cancel":Landroid/view/MotionEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 691
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 692
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return v0
.end method

.method public isExclusive()Z
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v6, :cond_0

    .line 467
    const/4 v6, 0x0

    move v0, v6

    .line 495
    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :goto_0
    return v0

    .line 470
    .restart local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    move v3, v6

    .line 471
    .local v3, "action":I
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 495
    :cond_1
    :goto_1
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    .line 473
    :pswitch_0
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 474
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 477
    :pswitch_1
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v2

    .line 478
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 477
    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v6

    move v4, v6

    .line 479
    .local v4, "xTargetVelocity":F
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v2

    .line 480
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 479
    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v6

    move v5, v6

    .line 481
    .local v5, "yTargetVelocity":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 485
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 486
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 491
    .end local v4    # "xTargetVelocity":F
    .end local v5    # "yTargetVelocity":F
    :pswitch_2
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    .line 495
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "delayMillis":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    .line 421
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    .line 360
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v2, :cond_0

    move v2, v1

    if-nez v2, :cond_0

    .line 237
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    .line 240
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    .line 241
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setExclusive(Z)Landroidx/core/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "exclusive":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    .line 265
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "horizontalMax":F
    move v2, p2

    .local v2, "verticalMax":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 403
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 404
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "horizontalMax":F
    move v2, p2

    .local v2, "verticalMax":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v4, 0x0

    move v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 297
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v4, 0x1

    move v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 298
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "horizontalMin":F
    move v2, p2

    .local v2, "verticalMin":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v4, 0x0

    move v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 316
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v4, 0x1

    move v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 317
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "durationMillis":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 453
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "durationMillis":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 437
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "horizontal":F
    move v2, p2

    .local v2, "vertical":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 380
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 381
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method public setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move v1, p1

    .local v1, "horizontal":F
    move v2, p2

    .local v2, "vertical":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v4, 0x0

    move v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 338
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v4, 0x1

    move v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 339
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return-object v0
.end method

.method shouldAnimate()Z
    .locals 6

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    move-object v1, v4

    .line 503
    .local v1, "scroller":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v4

    move v2, v4

    .line 504
    .local v2, "verticalDirection":I
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v4

    move v3, v4

    .line 506
    .local v3, "horizontalDirection":I
    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v0

    move v5, v3

    .line 507
    invoke-virtual {v4, v5}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    return v0

    .restart local v0    # "this":Landroidx/core/widget/AutoScrollHelper;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
