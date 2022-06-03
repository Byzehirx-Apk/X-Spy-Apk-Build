.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 84
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101000e

    aput v3, v1, v2

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 114
    move-object v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 122
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 123
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 132
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 145
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 178
    move-object v5, v0

    new-instance v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1117
    move-object v5, v0

    new-instance v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1141
    move-object v5, v0

    new-instance v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 352
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 354
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 357
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 358
    move-object v5, v0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 360
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v3, v5

    .line 361
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    move-object v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    move-object v7, v3

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 363
    move-object v5, v0

    invoke-direct {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->createProgressView()V

    .line 364
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 366
    move-object v5, v0

    const/high16 v6, 0x42800000    # 64.0f

    move-object v7, v3

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 367
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v6, v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 368
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 370
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingChildHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 371
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 373
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v7, v7

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 374
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 376
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 377
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 378
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1089
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "from":I
    move-object v2, p2

    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1090
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1091
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1092
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1093
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1094
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1096
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1097
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1098
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "from":I
    move-object v2, p2

    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v3, :cond_0

    .line 1103
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1115
    :goto_0
    return-void

    .line 1105
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1106
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1107
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1108
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1109
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1110
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1112
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1113
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 7

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, -0x50506

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 399
    move-object v1, v0

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 400
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 401
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 403
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method private ensureTarget()V
    .locals 5

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v3, :cond_0

    .line 588
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 589
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 590
    .local v2, "child":Landroid/view/View;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 591
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 592
    .line 596
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 588
    .restart local v1    # "i":I
    .restart local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 7

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "overscrollTop":F
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 969
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 998
    :goto_0
    return-void

    .line 972
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 973
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 974
    const/4 v3, 0x0

    move-object v2, v3

    .line 975
    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v3, :cond_1

    .line 976
    new-instance v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    move-object v2, v3

    .line 995
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 996
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 3

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0

    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 22

    .prologue
    .line 916
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move/from16 v4, p1

    .local v4, "overscrollTop":F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 917
    move/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v5, v16

    .line 919
    .local v5, "originalDragPercent":F
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v6, v16

    .line 920
    .local v6, "dragPercent":F
    move/from16 v16, v6

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd999999999999aL    # 0.4

    sub-double v16, v16, v18

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40a00000    # 5.0f

    mul-float v16, v16, v17

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    move/from16 v7, v16

    .line 921
    .local v7, "adjustedPercent":F
    move/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v8, v16

    .line 922
    .local v8, "extraOS":F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    move/from16 v16, v0

    if-lez v16, :cond_4

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    :goto_0
    move/from16 v9, v16

    .line 927
    .local v9, "slingshotDist":F
    const/16 v16, 0x0

    move/from16 v17, v8

    move/from16 v18, v9

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v18, v9

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v10, v16

    .line 929
    .local v10, "tensionSlingshotPercent":F
    move/from16 v16, v10

    const/high16 v17, 0x40800000    # 4.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v10

    const/high16 v19, 0x40800000    # 4.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    move/from16 v11, v16

    .line 931
    .local v11, "tensionPercent":F
    move/from16 v16, v9

    move/from16 v17, v11

    mul-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    move/from16 v12, v16

    .line 933
    .local v12, "extraMove":F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v6

    mul-float v17, v17, v18

    move/from16 v18, v12

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v13, v16

    .line 935
    .local v13, "targetY":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_0

    .line 936
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 938
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 939
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 940
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 943
    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 944
    move-object/from16 v16, v3

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 946
    :cond_2
    move/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_6

    .line 947
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v16

    const/16 v17, 0x4c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    .line 948
    invoke-direct/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 950
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 958
    :cond_3
    :goto_1
    move/from16 v16, v7

    const v17, 0x3f4ccccd    # 0.8f

    mul-float v16, v16, v17

    move/from16 v14, v16

    .line 959
    .local v14, "strokeStart":F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x3f4ccccd    # 0.8f

    move/from16 v19, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    invoke-virtual/range {v16 .. v18}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 960
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 962
    const/high16 v16, -0x41800000    # -0.25f

    const v17, 0x3ecccccd    # 0.4f

    move/from16 v18, v7

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v16, v16, v17

    move/from16 v15, v16

    .line 963
    .local v15, "rotation":F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    move/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 964
    move-object/from16 v16, v3

    move/from16 v17, v13

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 965
    return-void

    .line 922
    .end local v9    # "slingshotDist":F
    .end local v10    # "tensionSlingshotPercent":F
    .end local v11    # "tensionPercent":F
    .end local v12    # "extraMove":F
    .end local v13    # "targetY":I
    .end local v14    # "strokeStart":F
    .end local v15    # "rotation":F
    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    :goto_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move/from16 v16, v0

    goto :goto_2

    .line 953
    .restart local v9    # "slingshotDist":F
    .restart local v10    # "tensionSlingshotPercent":F
    .restart local v11    # "tensionPercent":F
    .restart local v12    # "extraMove":F
    .restart local v13    # "targetY":I
    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v16

    const/16 v17, 0xff

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 955
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto/16 :goto_1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 1175
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v2, v5

    .line 1176
    .local v2, "pointerIndex":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 1177
    .local v3, "pointerId":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 1180
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1181
    .local v4, "newPointerIndex":I
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1183
    .end local v4    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1180
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "targetAlpha":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 236
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 6

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "refreshing":Z
    move v2, p2

    .local v2, "notify":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 466
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 467
    move-object v3, v0

    invoke-direct {v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 468
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 469
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 470
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 11

    .prologue
    .line 499
    move-object v1, p0

    .local v1, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v2, p1

    .local v2, "startingAlpha":I
    move v3, p2

    .local v3, "endingAlpha":I
    new-instance v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    move-object v4, v5

    .line 506
    .local v4, "alpha":Landroid/view/animation/Animation;
    move-object v5, v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 508
    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 509
    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 510
    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 511
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return-object v1
.end method

.method private startDragging(F)V
    .locals 6

    .prologue
    .line 1080
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "y":F
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr v3, v4

    move v2, v3

    .line 1081
    .local v2, "yDiff":F
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_0

    .line 1082
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1083
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1084
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1086
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 5

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 496
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 5

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0x4c

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 492
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "from":I
    move-object v2, p2

    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1151
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getScaleX()F

    move-result v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1152
    move-object v3, v0

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1160
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1161
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1162
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1164
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1165
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1166
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 439
    move-object v1, p0

    .local v1, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v2, p1

    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 440
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 441
    move-object v3, v1

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 447
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    move-object v4, v1

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 448
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 449
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 451
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 452
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v1

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 453
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v1, :cond_0

    .line 673
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v1

    move v0, v1

    .line 678
    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :goto_0
    return v0

    .line 675
    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 676
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 678
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move v3, p3

    .local v3, "consumed":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 10

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "consumed":[I
    move-object v4, p4

    .local v4, "offsetInWindow":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 12

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "dxConsumed":I
    move v2, p2

    .local v2, "dyConsumed":I
    move v3, p3

    .local v3, "dxUnconsumed":I
    move/from16 v4, p4

    .local v4, "dyUnconsumed":I
    move-object/from16 v5, p5

    .local v5, "offsetInWindow":[I
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "childCount":I
    move v2, p2

    .local v2, "i":I
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v3, :cond_0

    .line 384
    move v3, v2

    move v0, v3

    .line 393
    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :goto_0
    return v0

    .line 385
    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :cond_0
    move v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 387
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    move v0, v3

    goto :goto_0

    .line 388
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt v3, v4, :cond_2

    .line 390
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0

    .line 393
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 2

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method moveToStart(F)V
    .locals 7

    .prologue
    .line 1135
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "interpolatedTime":F
    const/4 v4, 0x0

    move v2, v4

    .line 1136
    .local v2, "targetTop":I
    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    move v2, v4

    .line 1137
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1138
    .local v3, "offset":I
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1139
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 230
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 231
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v5, v0

    invoke-direct {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 694
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v2, v5

    .line 697
    .local v2, "action":I
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    move v5, v2

    if-nez v5, :cond_0

    .line 698
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 701
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 704
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    .line 745
    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :goto_0
    return v0

    .line 707
    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :cond_2
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 745
    :goto_1
    :pswitch_0
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    move v0, v5

    goto :goto_0

    .line 709
    :pswitch_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 710
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 711
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 713
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v3, v5

    .line 714
    .local v3, "pointerIndex":I
    move v5, v3

    if-gez v5, :cond_3

    .line 715
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 717
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 718
    goto :goto_1

    .line 721
    .end local v3    # "pointerIndex":I
    :pswitch_2
    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 722
    sget-object v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 723
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 726
    :cond_4
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v3, v5

    .line 727
    .restart local v3    # "pointerIndex":I
    move v5, v3

    if-gez v5, :cond_5

    .line 728
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 730
    :cond_5
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move v4, v5

    .line 731
    .local v4, "y":F
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 732
    goto :goto_1

    .line 735
    .end local v3    # "pointerIndex":I
    .end local v4    # "y":F
    :pswitch_3
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 736
    goto :goto_1

    .line 740
    :pswitch_4
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 741
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 609
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move/from16 v2, p1

    .local v2, "changed":Z
    move/from16 v3, p2

    .local v3, "left":I
    move/from16 v4, p3

    .local v4, "top":I
    move/from16 v5, p4

    .local v5, "right":I
    move/from16 v6, p5

    .local v6, "bottom":I
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v16

    move/from16 v7, v16

    .line 610
    .local v7, "width":I
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v16

    move/from16 v8, v16

    .line 611
    .local v8, "height":I
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 612
    .line 630
    :goto_0
    return-void

    .line 614
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 615
    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 617
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 618
    goto :goto_0

    .line 620
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 621
    .local v9, "child":Landroid/view/View;
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v16

    move/from16 v10, v16

    .line 622
    .local v10, "childLeft":I
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v16

    move/from16 v11, v16

    .line 623
    .local v11, "childTop":I
    move/from16 v16, v7

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v12, v16

    .line 624
    .local v12, "childWidth":I
    move/from16 v16, v8

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 625
    .local v13, "childHeight":I
    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v10

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v20, v11

    move/from16 v21, v13

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/view/View;->layout(IIII)V

    .line 626
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v16

    move/from16 v14, v16

    .line 627
    .local v14, "circleWidth":I
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v16

    move/from16 v15, v16

    .line 628
    .local v15, "circleHeight":I
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object/from16 v16, v0

    move/from16 v17, v7

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v14

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v18, v0

    move/from16 v19, v7

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    move/from16 v20, v14

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v20, v0

    move/from16 v21, v15

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroidx/swiperefreshlayout/widget/CircleImageView;->layout(IIII)V

    .line 630
    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 635
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_0

    .line 636
    move-object v4, v0

    invoke-direct {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 638
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 639
    .line 655
    :goto_0
    return-void

    .line 641
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object v5, v0

    .line 642
    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    .line 641
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    .line 644
    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    .line 643
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 641
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 645
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    const/high16 v7, 0x40000000    # 2.0f

    .line 646
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 645
    invoke-virtual {v4, v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->measure(II)V

    .line 647
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 649
    const/4 v4, 0x0

    move v3, v4

    .local v3, "index":I
    :goto_1
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 650
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    if-ne v4, v5, :cond_3

    .line 651
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 652
    .line 655
    :cond_2
    goto :goto_0

    .line 649
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    move v4, p4

    .local v4, "consumed":Z
    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dx":I
    move/from16 v3, p3

    .local v3, "dy":I
    move-object/from16 v4, p4

    .local v4, "consumed":[I
    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 784
    move v6, v3

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 785
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v9, v9

    sub-int/2addr v8, v9

    aput v8, v6, v7

    .line 786
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 791
    :goto_0
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 798
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v6, :cond_1

    move v6, v3

    if-lez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    move v6, v3

    move-object v7, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    .line 799
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 800
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 804
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    move-object v5, v6

    .line 805
    .local v5, "parentConsumed":[I
    move-object v6, v0

    move v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 806
    move-object v6, v4

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 807
    move-object v6, v4

    const/4 v7, 0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 809
    :cond_2
    return-void

    .line 788
    .end local v5    # "parentConsumed":[I
    :cond_3
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v8, v3

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 789
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move-object v7, v0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    invoke-virtual/range {v7 .. v12}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    move-result v7

    .line 842
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    move v6, v7

    .line 843
    .local v6, "dy":I
    move v7, v6

    if-gez v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v7

    if-nez v7, :cond_0

    .line 844
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 845
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v7, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 847
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 774
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    move-result v4

    .line 775
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 776
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 777
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_0

    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0

    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 819
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 822
    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 823
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 824
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 827
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 828
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    move v2, v6

    .line 1003
    .local v2, "action":I
    const/4 v6, -0x1

    move v3, v6

    .line 1005
    .local v3, "pointerIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v6, :cond_0

    move v6, v2

    if-nez v6, :cond_0

    .line 1006
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 1009
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v6, :cond_2

    .line 1012
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    .line 1076
    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :goto_0
    return v0

    .line 1015
    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    :cond_2
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 1076
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1017
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1018
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1019
    goto :goto_1

    .line 1022
    :pswitch_2
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move v3, v6

    .line 1023
    move v6, v3

    if-gez v6, :cond_4

    .line 1024
    sget-object v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1025
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1028
    :cond_4
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v4, v6

    .line 1029
    .local v4, "y":F
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1031
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_3

    .line 1032
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1033
    .local v5, "overscrollTop":F
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1034
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 1038
    goto :goto_1

    .line 1036
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1042
    .end local v4    # "y":F
    .end local v5    # "overscrollTop":F
    :pswitch_3
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    move v3, v6

    .line 1043
    move v6, v3

    if-gez v6, :cond_6

    .line 1044
    sget-object v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1046
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1048
    :cond_6
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1049
    goto :goto_1

    .line 1053
    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1054
    goto :goto_1

    .line 1057
    :pswitch_5
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move v3, v6

    .line 1058
    move v6, v3

    if-gez v6, :cond_7

    .line 1059
    sget-object v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1060
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1063
    :cond_7
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_8

    .line 1064
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v4, v6

    .line 1065
    .restart local v4    # "y":F
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1066
    .restart local v5    # "overscrollTop":F
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1067
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1069
    .end local v4    # "y":F
    .end local v5    # "overscrollTop":F
    :cond_8
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1070
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1073
    :pswitch_6
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "b":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 754
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 759
    :cond_1
    :goto_0
    return-void

    .line 757
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method reset()V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 207
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 208
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 209
    move-object v1, v0

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 211
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_0

    .line 212
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 216
    :goto_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v2

    iput v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 217
    return-void

    .line 214
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    goto :goto_0
.end method

.method setAnimationProgress(F)V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "progress":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 461
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 462
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "colors":[I
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 546
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "colors":[I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 573
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 574
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 10
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "colorResIds":[I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v2, v5

    .line 557
    .local v2, "context":Landroid/content/Context;
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [I

    move-object v3, v5

    .line 558
    .local v3, "colorRes":[I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 559
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 561
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 562
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "distance":I
    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 605
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 222
    move v2, v1

    if-nez v2, :cond_0

    .line 223
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 225
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 854
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 4
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "callback":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 688
    return-void
.end method

.method public setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 4
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, p1

    .local v1, "listener":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 412
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "colorRes":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 520
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 538
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "colorRes":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 529
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 5

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "scale":Z
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 297
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 298
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->invalidate()V

    .line 299
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "scale":Z
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 259
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 260
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 261
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 262
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 263
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 264
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 6

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "refreshing":Z
    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 423
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 424
    const/4 v3, 0x0

    move v2, v3

    .line 425
    .local v2, "endTarget":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v3, :cond_0

    .line 426
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr v3, v4

    move v2, v3

    .line 430
    :goto_0
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 431
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 432
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 433
    .line 436
    .end local v2    # "endTarget":I
    :goto_1
    return-void

    .line 428
    .restart local v2    # "endTarget":I
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move v2, v3

    goto :goto_0

    .line 434
    .end local v2    # "endTarget":I
    :cond_1
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "size":I
    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 318
    .line 332
    :goto_0
    return-void

    .line 320
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object v2, v3

    .line 321
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    move v3, v1

    if-nez v3, :cond_1

    .line 322
    move-object v3, v0

    const/high16 v4, 0x42600000    # 56.0f

    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 329
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 331
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    goto :goto_0

    .line 324
    :cond_1
    move-object v3, v0

    const/high16 v4, 0x42200000    # 40.0f

    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_1
.end method

.method public setSlingshotDistance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "slingshotDistance":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    .line 311
    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 4

    .prologue
    .line 1169
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->bringToFront()V

    .line 1170
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1171
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v3

    iput v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1172
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move v1, p1

    .local v1, "axes":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 478
    move-object v1, p0

    .local v1, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v2, p1

    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v1

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 484
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 485
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 486
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 487
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    move-object v4, v1

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    return-void
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 869
    return-void
.end method
